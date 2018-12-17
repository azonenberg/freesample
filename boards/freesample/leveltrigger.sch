EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 12
Title "FREESAMPLE Oscilloscope"
Date "2018-12-17"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3250 1650 0    50   Input ~ 0
LTRIG_DIN
Text HLabel 5550 1650 0    50   Output ~ 0
LTRIG_CDROUT_P
Text HLabel 5550 1750 0    50   Output ~ 0
LTRIG_CDROUT_N
Text HLabel 4300 1500 0    50   Input ~ 0
3V3
Text HLabel 4300 1600 0    50   Input ~ 0
3V0_N
Text HLabel 4300 1700 0    50   Input ~ 0
GND
Text HLabel 4300 1800 0    50   Input ~ 0
1V8
Text HLabel 3400 2100 0    50   Input ~ 0
LTRIG_VT
Text HLabel 5550 2250 0    50   Output ~ 0
LTRIG_SAMPOUT_P
Text HLabel 5550 2350 0    50   Output ~ 0
LTRIG_SAMPOUT_N
$Comp
L analog-azonenberg:HMC675LP3E U?
U 1 1 5C3D1034
P 6850 3600
F 0 "U?" H 7275 5315 50  0000 C CNN
F 1 "HMC675LP3E" H 7275 5224 50  0000 C CNN
F 2 "" H 6850 3600 50  0001 C CNN
F 3 "" H 6850 3600 50  0001 C CNN
	1    6850 3600
	1    0    0    -1  
$EndComp
$EndSCHEMATC
