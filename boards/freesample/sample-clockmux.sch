EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 11 12
Title "FREESAMPLE Oscilloscope"
Date "2018-12-17"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3050 1700 0    50   Input ~ 0
PLL_SAMPCLK_P
Text HLabel 3300 2150 0    50   Input ~ 0
PLL_SAMPCLK_N
Text HLabel 3000 2650 0    50   Input ~ 0
EXT_SAMPCLK_P
Text HLabel 3000 2750 0    50   Input ~ 0
EXT_SAMPCLK_N
Text HLabel 6850 1750 0    50   Input ~ 0
LVL_SAMPCLK_P
Text HLabel 6800 1850 0    50   Input ~ 0
LVL_SAMPCLK_N
Text HLabel 5750 2800 0    50   Input ~ 0
SAMPLE_MUXSEL0
Text HLabel 5750 2900 0    50   Input ~ 0
SAMPLE_MUXSEL1
$Comp
L special-azonenberg:PI6C59S6005 U?
U 1 1 5C3D401A
P 2850 6000
F 0 "U?" H 3300 8225 50  0000 C CNN
F 1 "PI6C59S6005" H 3300 8134 50  0000 C CNN
F 2 "" H 2850 5700 50  0001 C CNN
F 3 "" H 2850 5700 50  0001 C CNN
	1    2850 6000
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:PI6C59S6005 U?
U 1 1 5C3D4D31
P 5950 5700
F 0 "U?" H 6400 7925 50  0000 C CNN
F 1 "PI6C59S6005" H 6400 7834 50  0000 C CNN
F 2 "" H 5950 5400 50  0001 C CNN
F 3 "" H 5950 5400 50  0001 C CNN
	1    5950 5700
	1    0    0    -1  
$EndComp
Text HLabel 9500 2550 0    50   Output ~ 0
CLKOUT0_P
Text HLabel 9500 2650 0    50   Output ~ 0
CLKOUT0_N
Text HLabel 9500 2950 0    50   Output ~ 0
CLKOUT1_P
Text HLabel 9500 3050 0    50   Output ~ 0
CLKOUT1_N
Text HLabel 9500 3300 0    50   Input ~ 0
3V3
Text HLabel 9500 3400 0    50   Input ~ 0
GND
$EndSCHEMATC
