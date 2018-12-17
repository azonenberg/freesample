EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 12
Title "FREESAMPLE Oscilloscope"
Date "2018-12-17"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2100 1950 0    50   Input ~ 0
ADC_DIN
Text HLabel 2000 2850 0    50   Input ~ 0
ADC_VT
Text HLabel 3950 1750 0    50   Input ~ 0
3V3
Text HLabel 4100 2050 0    50   Input ~ 0
3V0_N
Text HLabel 4050 2400 0    50   Input ~ 0
GND
Text HLabel 4050 2850 0    50   Input ~ 0
1V8
Text HLabel 5800 2000 0    50   Output ~ 0
ADC_OUT_P
Text HLabel 5800 2100 0    50   Output ~ 0
ADC_OUT_N
Text HLabel 5800 2550 0    50   Input ~ 0
ADC_LE_P
Text HLabel 5800 2650 0    50   Input ~ 0
ADC_LE_N
$Comp
L analog-azonenberg:HMC675LP3E U?
U 1 1 5C3D1D95
P 6300 3050
F 0 "U?" H 6725 4765 50  0000 C CNN
F 1 "HMC675LP3E" H 6725 4674 50  0000 C CNN
F 2 "" H 6300 3050 50  0001 C CNN
F 3 "" H 6300 3050 50  0001 C CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
