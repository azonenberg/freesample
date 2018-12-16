EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 11
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
L special-azonenberg:TLK10232 U?
U 1 1 5C205224
P 6300 7050
F 0 "U?" H 7128 8358 60  0000 L CNN
F 1 "TLK10232" H 7128 8252 60  0000 L CNN
F 2 "" H 6300 7050 60  0000 C CNN
F 3 "" H 6300 7050 60  0000 C CNN
	1    6300 7050
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:TLK10232 U?
U 2 1 5C20B228
P 5050 5000
F 0 "U?" H 5878 6308 60  0000 L CNN
F 1 "TLK10232" H 5878 6202 60  0000 L CNN
F 2 "" H 5050 5000 60  0000 C CNN
F 3 "" H 5050 5000 60  0000 C CNN
	2    5050 5000
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:TLK10232 U?
U 3 1 5C20D8FF
P 2250 2100
F 0 "U?" H 3178 2808 60  0000 L CNN
F 1 "TLK10232" H 3178 2702 60  0000 L CNN
F 2 "" H 2250 2100 60  0000 C CNN
F 3 "" H 2250 2100 60  0000 C CNN
	3    2250 2100
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:TLK10232 U?
U 4 1 5C20F94E
P 9150 4700
F 0 "U?" H 9828 6383 60  0000 L CNN
F 1 "TLK10232" H 9828 6277 60  0000 L CNN
F 2 "" H 9150 4700 60  0000 C CNN
F 3 "" H 9150 4700 60  0000 C CNN
	4    9150 4700
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:TLK10232 U?
U 5 1 5C212524
P 10350 5350
F 0 "U?" H 11028 7458 60  0000 L CNN
F 1 "TLK10232" H 11028 7352 60  0000 L CNN
F 2 "" H 10350 5350 60  0000 C CNN
F 3 "" H 10350 5350 60  0000 C CNN
	5    10350 5350
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:TLK10232 U?
U 6 1 5C214F95
P 2250 6450
F 0 "U?" H 2875 10447 60  0000 C CNN
F 1 "TLK10232" H 2875 10341 60  0000 C CNN
F 2 "" H 2250 6450 60  0000 C CNN
F 3 "" H 2250 6450 60  0000 C CNN
	6    2250 6450
	1    0    0    -1  
$EndComp
Text Label 2050 3500 2    50   ~ 0
GND
Text Notes 600  3400 0    50   ~ 0
Turn off channel B entirely
Text Label 2050 3300 2    50   ~ 0
GND
NoConn ~ 2050 3400
NoConn ~ 2050 3200
Text HLabel 4850 1550 0    50   Input ~ 0
CDR_EXTCLK_P
Text HLabel 4850 1650 0    50   Input ~ 0
CDR_EXTCLK_N
Text HLabel 5700 1550 0    50   Output ~ 0
PLL_CDRCLK_P
Text HLabel 5700 1650 0    50   Output ~ 0
PLL_CDRCLK_N
Text HLabel 1450 1150 0    50   Input ~ 0
CDR_DIN_P
Text HLabel 1450 1250 0    50   Input ~ 0
CDR_DIN_N
Text HLabel 1000 1500 0    50   Input ~ 0
1V0
Text HLabel 900  1650 0    50   Input ~ 0
GND
Text HLabel 900  1850 0    50   Input ~ 0
1V8
$EndSCHEMATC
