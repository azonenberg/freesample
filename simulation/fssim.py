#!/usr/bin/python3
import sys
import struct
import numpy
import math
import random
import matplotlib.pyplot as plt
import matplotlib.colors
from PIL import Image

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
samples = samples[0:100000]
print("Truncated to %d samples" % len(samples))

#Upsample configuration
upsample_factor = 10
window = 5
kernelsize = window * upsample_factor
frac_kernel = kernelsize / upsample_factor

#Create the interpolation filter
sinc = numpy.sinc(numpy.linspace(-window/2, window/2, num=kernelsize))
kernel = numpy.multiply(sinc, numpy.blackman(kernelsize))

#Logically, we upsample by inserting zeroes, then convolve with the sinc filter.
#Optimization: don't actually waste time multiplying by zero
imax = len(samples) - window
upsamples = [0] * (imax * upsample_factor)
for i in range(0, imax):
	for j in range(0, upsample_factor):
		start = 0
		sstart = 0
		if j > 0:
			sstart = 1
			start = upsample_factor - j

		f = 0
		for k in range(start, kernelsize-1, upsample_factor):
			f += kernel[k] * samples[i + sstart]
			sstart += 1

		upsamples[i*upsample_factor + j] = f

print("Upsampled to %d samples" % len(upsamples))

########################################################################################################################

#Normalize waveform to 0...1
low = min(upsamples)
high = max(upsamples)
delta = high-low;
for i in range(0, len(upsamples)):
	upsamples[i] = (upsamples[i] - low) / delta;
print("Normalized to 0...1")

########################################################################################################################

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
nsamples						= 100

#Trigger level. For now, assume the midpoint
trigger							= 0.5

#Run the simulation.
pdf = []
pos = 0
endsamples = len(upsamples) - min_tail
for dv in range(0, voltage_steps):
	vdac = dv * voltage_delta
	row = []
	for dphase in range(0, eye_width):
		count = 0
		for nsample in range(0, nsamples):

			#If we're past the end of the waveform, reset to zero (simulate infinite waveform)
			if pos > endsamples:
				pos = 0

			#If we're above the threshold, wait until we're below
			while (upsamples[pos] > trigger) and (pos < len(upsamples)):
				pos = pos + 1

			# Now that we're below the threshold, wait until we're above
			while (upsamples[pos] < trigger) and (pos < len(upsamples)):
				pos = pos + 1

			# Wait for 4 UIs so we get a better eye
			pos = pos + 4*ui_width + int(ui_width/2)

			# TODO: actually model the entire trigger circuit

			# Add the phase delta we selected
			pos = pos + dphase

			#Finally, look at the value
			if upsamples[pos] > vdac:
				count = count + 1

		row.append(count)
	pdf.append(row)


# Correct causality violations in the Y axis
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
derivative = []
for dv in range(0, voltage_steps-1):
	row = []
	for dphase in range(0, eye_width):
		row.append(pdf_causal[dv][dphase] - pdf_causal[dv+1][dphase])
	derivative.append(row)

########################################################################################################################

img = Image.open('/home/azonenberg/Documents/misc/gradient.png')
data = img.load()
colors = []
for x in range(0,256):
	colors.append([p/255 for p in data[x,0] ])
mymap = matplotlib.colors.ListedColormap(colors)

#pick a dataset to render
ishow = pdf_causal
#ccmap = mymap
ccmap = matplotlib.cm.get_cmap("inferno")

# Render the PDFs
plt.figure(1)
plt.imshow(pdf, extent=(0, eye_width, 0, voltage_steps), cmap=ccmap)
plt.colorbar()

plt.figure(2)
plt.imshow(pdf_causal, extent=(0, eye_width, 0, voltage_steps), cmap=ccmap)
plt.colorbar()

plt.figure(3)
plt.imshow(derivative, extent=(0, eye_width, 0, voltage_steps), cmap=ccmap)
plt.colorbar()


plt.show()
