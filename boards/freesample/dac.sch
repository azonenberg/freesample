EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 12
Title "FREESAMPLE Oscilloscope"
Date "2018-12-17"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 "DAC for setting sampling point Y position"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L analog-azonenberg:LTC2664 U4
U 1 1 5C15756D
P 4150 4450
F 0 "U4" H 4650 7025 50  0000 C CNN
F 1 "LTC2664" H 4650 6934 50  0000 C CNN
F 2 "" H 4150 4450 50  0001 C CNN
F 3 "" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
Text HLabel 7100 4900 0    50   Output ~ 0
LTRIG_VT
Text HLabel 7100 5000 0    50   Output ~ 0
REFCLK_SINGLE_VT
Text HLabel 7100 5100 0    50   Output ~ 0
ADC_VT
Text HLabel 8100 3500 0    50   Input ~ 0
5V0
Text HLabel 8100 3600 0    50   Input ~ 0
5V0_N
Text HLabel 8100 3700 0    50   Input ~ 0
GND
Text HLabel 8100 3800 0    50   Input ~ 0
3V3
Text HLabel 9650 4250 0    50   Output ~ 0
DAC_MUXOUT
Text HLabel 9650 4350 0    50   Input ~ 0
LDAC_N
Text HLabel 9650 4450 0    50   Input ~ 0
CS_N
Text HLabel 9650 4550 0    50   Input ~ 0
SCK
Text HLabel 9650 4650 0    50   Input ~ 0
MOSI
Text HLabel 9650 4750 0    50   Output ~ 0
MISO
Text HLabel 9650 4850 0    50   Input ~ 0
CLR_N
Text HLabel 8100 4050 0    50   Input ~ 0
1V8
$EndSCHEMATC
