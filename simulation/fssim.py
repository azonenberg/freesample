#!/usr/bin/python3
import sys
import struct
import numpy
import math
import random
import matplotlib.pyplot as plt
import matplotlib.colors
from PIL import Image
import time

########################################################################################################################

#Sanity check arguments
if len(sys.argv) != 2:
	print('Usage: fssim dumpfile')
	sys.exit()

#Read the raw sample data. Remove the last sample as some of these files have issues :)
with open(sys.argv[1], "rb") as f:
	samples = numpy.fromfile(f, dtype=numpy.float32)
samples = samples[0:len(samples)-1]
print("Loaded %d samples" % len(samples))

# Truncate the original dataset so it loads faster
samples = samples[0:5000000]
print("Truncated to %d samples" % len(samples))

#Upsample configuration
print("Upsampling...")
start = time.time()
upsample_factor = 10
window = 5
kernelsize = window * upsample_factor
frac_kernel = kernelsize / upsample_factor

#Create the interpolation filter
sinc = numpy.sinc(numpy.linspace(-window/2, window/2, num=kernelsize))
kernel = numpy.multiply(sinc, numpy.blackman(kernelsize))

#Upsample by inserting zeroes, then convolving with the sinc filter.
stretched = numpy.zeros(len(samples) * upsample_factor, dtype=samples.dtype)
stretched[::upsample_factor] = samples
upsamples = numpy.convolve(stretched, kernel, mode='valid')
dt = time.time() - start
print("    Upsampled to %d samples in %.3f sec" % (len(upsamples), dt))

# Clean up memory we're not using anymore
samples = None
stretched = None

########################################################################################################################

#Normalize waveform to 0...1
print("Normalizing...")
start = time.time()
low = min(upsamples)
high = max(upsamples)
delta = high-low;
print("    low = %.3f" % low)
print("    high = %.3f" % high)
print("    delta = %.3f" % delta)
upsamples = numpy.subtract(upsamples, low)
dt = time.time() - start
print("    Subtraction took %.3f sec" % dt)
start = time.time()
upsamples = numpy.divide(upsamples, delta)
dt = time.time() - start
print("    Division took %.3f sec" % dt)

########################################################################################################################
# configuration

# all time units in 8ps sample ticks
ui_width 						= 50			#usb3 @ 5 Gbps
eye_width 						= 2*ui_width
voltage_steps					= 50
voltage_delta					= 1.0 / voltage_steps
comparator_propagation_delay 	= 10			#HMC674, 85 ps
gate_propagation_delay 			= 20			#SY58051AUMG, 160 ps
dff_clock_to_out				= 25			#NB7V52M-D, 200 ps
buffer_propagation_delay		= 14			#NB7L14M, 110 ps

#8b10b max run length is 5 bits in a row, so 10 UIs (250 samples) worst case between consecutive rising edges
#Allow at least 5 rising edge times (1250 samples) from trigger to end of waveform
min_tail						= 1250

#for eventual use to model pcb trace skew? for now, assume all traces are exactly length matched
fr4_propagation_per_mm			= 0.82			#rounded as 6 inches/1ns = 6.56 ps/mm = 0.82 samples/mm

#Number of samples we collect at each Y value in the waveform
nsamples						= 15000

#Trigger level. For now, assume the midpoint
trigger							= 0.5

########################################################################################################################
# triggering

# Find the first rising edge after each point in the waveform
print("Finding trigger points...")
start = time.time()
endsamples = len(upsamples) - min_tail

# Wait for 4 UIs so we get a better eye, then offset (so we get the eye centered in the capture)
# TODO: actually model the entire trigger circuit better?
ioff = 4*ui_width + int(ui_width/2)

#Find the position of the next point >trigger or <trigger at a given time
nextgreater = numpy.zeros(len(upsamples), dtype=numpy.int64)
for i in range(0, len(upsamples)):

	#if we're near the end of the array, wrap
	if i > endsamples:
		nextgreater[i] = nextgreater[0]
		continue

	# If the previous pointer (if one exists) is after us, just use that value
	if i > 0:
		if nextgreater[i-1] > i:
			nextgreater[i] = nextgreater[i-1]
			continue

	# Nope, have to start looking
	base = i
	while upsamples[i] > trigger:
		i += 1
	nextgreater[base] = i

nextless = numpy.zeros(len(upsamples), dtype=numpy.int64)
for i in range(0, len(upsamples)):

	#if we're near the end of the array, wrap
	if i > endsamples:
		nextless[i] = nextless[0]
		continue

	# If the previous pointer (if one exists) is after us, just use that value
	if i > 0:
		if nextless[i-1] > i:
			nextless[i] = nextless[i-1]
			continue

	# Nope, have to start looking
	base = i
	while upsamples[i] < trigger:
		i += 1
	nextless[base] = i

#Do the actual triggering logic
edgepositions = [0] * len(upsamples)
for i in range(0, len(upsamples)):

	base = i

	#if we're near the end of the array, wrap
	if i > endsamples:
		edgepositions[base] = edgepositions[0]
		continue

	#otherwise, go below the threshold then back up
	else:
		i = nextgreater[i]
		i = nextless[i]
		edgepositions[base] = i + ioff

dt = time.time() - start
print("    Triggering took %.3f sec" % dt)

########################################################################################################################
# actual sim

pdf = []
pos = 0
print("Simulating...")
start = time.time()
for dv in range(0, voltage_steps):
	print("    v %d / %d" % (dv, voltage_steps) )
	vdac = dv * voltage_delta
	row = []
	for dphase in range(0, eye_width):
		count = 0
		for nsample in range(0, nsamples):

			# Find the next trigger position
			pos = edgepositions[pos] + dphase

			#Finally, look at the value
			if upsamples[pos] > vdac:
				count = count + 1

		row.append(count)
	pdf.append(row)

dt = time.time() - start
print("    Simulation took %.3f sec" % dt)

########################################################################################################################
# crunch output

# Correct causality violations in the Y axis
print("Fixing causality violations...")
pdf_causal = []
for dv in range(0, voltage_steps):
	row = []
	for dphase in range(0, eye_width):
		v = pdf[dv][dphase]

		for y in range(dv, voltage_steps):
			vy = pdf[y][dphase]
			if vy > v:
				v = vy

		row.append(v)
	pdf_causal.append(row)

# Take the partial derivative
print("Differentiating...")
derivative = []
for dv in range(0, voltage_steps-1):
	row = []
	for dphase in range(0, eye_width):
		row.append(pdf_causal[dv][dphase] - pdf_causal[dv+1][dphase])
	derivative.append(row)

########################################################################################################################
# render

print("done")

img = Image.open('/home/azonenberg/Documents/misc/gradient.png')
data = img.load()
colors = []
for x in range(0,256):
	colors.append([p/255 for p in data[x,0] ])
mymap = matplotlib.colors.ListedColormap(colors)

#pick a dataset to render
ishow = pdf_causal
#ccmap = mymap
#ccmap = matplotlib.cm.get_cmap("inferno")
ccmap = matplotlib.cm.get_cmap("gray")

xlabels = []
xticks = []
for i in range(-ui_width, ui_width + 1, 10):
	xticks.append(i + ui_width)
	xlabels.append(i/int(2*ui_width))

# Render the PDFs
plt.figure(1)
plt.xticks(xticks,xlabels)
plt.xlabel("Time (UI)")
plt.ylabel("Voltage (arbitrary units)")
plt.suptitle("PDF")
plt.imshow(pdf, extent=(0, eye_width, 0, voltage_steps), cmap=ccmap)
plt.colorbar()

plt.figure(2)
plt.xticks(xticks,xlabels)
plt.xlabel("Time (UI)")
plt.ylabel("Voltage (arbitrary units)")
plt.suptitle("PDF (causality violations corrected)")
plt.imshow(pdf_causal, extent=(0, eye_width, 0, voltage_steps), cmap=ccmap)
plt.colorbar()

plt.figure(3)
plt.xticks(xticks,xlabels)
plt.xlabel("Time (UI)")
plt.ylabel("Voltage (arbitrary units)")
plt.suptitle("∂PDF/∂V")
plt.imshow(derivative, extent=(0, eye_width, 0, voltage_steps), cmap=ccmap)
plt.colorbar()


plt.show()
