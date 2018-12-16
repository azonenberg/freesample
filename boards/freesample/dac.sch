EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 11
Title "FREESAMPLE Oscilloscope"
Date "2018-12-15"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L analog-azonenberg:LTC2664 U?
U 1 1 5C15756D
P 4150 4450
F 0 "U?" H 4650 7025 50  0000 C CNN
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
$EndSCHEMATC
