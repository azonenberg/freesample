EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
Title "FREESAMPLE Oscilloscope"
Date "2019-02-26"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 "Fine phase shifting for sampling point X position"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4850 2250 2    50   Output ~ 0
FINEPHASE_P
Text HLabel 4850 2350 2    50   Output ~ 0
FINEPHASE_N
Text HLabel 4650 6700 2    50   Output ~ 0
COARSEPHASE_P
Text HLabel 4650 6800 2    50   Output ~ 0
COARSEPHASE_N
Text HLabel 3600 2250 0    50   Input ~ 0
CLKIN0_P
Text HLabel 3600 2350 0    50   Input ~ 0
CLKIN0_N
Text HLabel 3400 5100 0    50   Input ~ 0
3V3
Text HLabel 4800 2550 2    50   Input ~ 0
GND
Text HLabel 4650 6200 2    50   Input ~ 0
COARSE_EN
Text HLabel 4650 6300 2    50   Input ~ 0
COARSE_SLOAD
Text HLabel 4650 6400 2    50   Input ~ 0
COARSE_SDIN
Text HLabel 4650 6500 2    50   Input ~ 0
COARSE_SCLK
Text HLabel 3500 1850 0    50   Input ~ 0
3V3_N
Text HLabel 3600 2550 0    50   Input ~ 0
FINE_SEL0_P
Text HLabel 3600 2650 0    50   Input ~ 0
FINE_SEL0_N
Text HLabel 3600 2850 0    50   Input ~ 0
FINE_SEL1_P
Text HLabel 3600 2950 0    50   Input ~ 0
FINE_SEL1_N
Text HLabel 3600 3150 0    50   Input ~ 0
FINE_SEL2_P
Text HLabel 3600 3250 0    50   Input ~ 0
FINE_SEL2_N
Text HLabel 3600 3450 0    50   Input ~ 0
FINE_SEL3_P
Text HLabel 3600 3550 0    50   Input ~ 0
FINE_SEL3_N
Text HLabel 3600 3750 0    50   Input ~ 0
FINE_SEL4_P
Text HLabel 3600 3850 0    50   Input ~ 0
FINE_SEL4_N
$Comp
L special-azonenberg:HMC856 U16
U 1 1 5CA79931
P 3700 3900
F 0 "U16" H 4150 6375 50  0000 C CNN
F 1 "HMC856" H 4150 6284 50  0000 C CNN
F 2 "" H 3700 3900 50  0001 C CNN
F 3 "" H 3700 3900 50  0001 C CNN
	1    3700 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1850 3600 1850
Wire Wire Line
	3500 1850 3500 1950
Wire Wire Line
	3500 1950 3600 1950
Wire Wire Line
	3500 1950 3500 2050
Wire Wire Line
	3500 2050 3600 2050
Connection ~ 3500 1950
Wire Wire Line
	4800 2550 4700 2550
Wire Wire Line
	4700 2550 4700 2650
Connection ~ 4700 2550
Connection ~ 4700 2650
Wire Wire Line
	4700 2650 4700 2750
Connection ~ 4700 2750
Wire Wire Line
	4700 2750 4700 2850
Connection ~ 4700 2850
Wire Wire Line
	4700 2850 4700 2950
Connection ~ 4700 2950
Wire Wire Line
	4700 2950 4700 3050
Connection ~ 4700 3050
Wire Wire Line
	4700 3050 4700 3150
Connection ~ 4700 3150
Wire Wire Line
	4700 3150 4700 3250
Connection ~ 4700 3250
Wire Wire Line
	4700 3250 4700 3350
Connection ~ 4700 3350
Wire Wire Line
	4700 3350 4700 3450
$Comp
L device:C C164
U 1 1 5CA804CD
P 1200 950
F 0 "C164" H 1315 996 50  0000 L CNN
F 1 "4.7 uF" H 1315 905 50  0000 L CNN
F 2 "" H 1238 800 50  0001 C CNN
F 3 "" H 1200 950 50  0001 C CNN
	1    1200 950 
	1    0    0    -1  
$EndComp
$Comp
L device:C C165
U 1 1 5CA8094F
P 1650 950
F 0 "C165" H 1765 996 50  0000 L CNN
F 1 "100 pF" H 1765 905 50  0000 L CNN
F 2 "" H 1688 800 50  0001 C CNN
F 3 "" H 1650 950 50  0001 C CNN
	1    1650 950 
	1    0    0    -1  
$EndComp
Text Label 950  800  2    50   ~ 0
3V3_N
Wire Wire Line
	950  800  1200 800 
Connection ~ 1200 800 
Text Label 950  1100 2    50   ~ 0
GND
Wire Wire Line
	950  1100 1200 1100
Connection ~ 1200 1100
$Comp
L device:C C168
U 1 1 5CA81205
P 2150 950
F 0 "C168" H 2265 996 50  0000 L CNN
F 1 "100 pF" H 2265 905 50  0000 L CNN
F 2 "" H 2188 800 50  0001 C CNN
F 3 "" H 2150 950 50  0001 C CNN
	1    2150 950 
	1    0    0    -1  
$EndComp
Connection ~ 1650 800 
Connection ~ 1650 1100
Wire Wire Line
	1200 800  1650 800 
Wire Wire Line
	1200 1100 1650 1100
Wire Wire Line
	1650 800  2150 800 
Wire Wire Line
	1650 1100 2150 1100
Text Label 950  1400 2    50   ~ 0
3V3
$Comp
L device:R R19
U 1 1 5CA84A54
P 1200 1400
F 0 "R19" V 1100 1400 50  0000 C CNN
F 1 "100K" V 1200 1400 50  0000 C CNN
F 2 "" V 1130 1400 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1200 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	1050 1400 950  1400
Text Label 1350 1550 0    50   ~ 0
DELAY_VR
Wire Wire Line
	1350 1400 1350 1650
Wire Wire Line
	1350 1650 3250 1650
$Comp
L device:R R20
U 1 1 5CA8631C
P 1650 1400
F 0 "R20" V 1550 1400 50  0000 C CNN
F 1 "100K" V 1650 1400 50  0000 C CNN
F 2 "" V 1580 1400 50  0001 C CNN
F 3 "" H 1650 1400 50  0001 C CNN
	1    1650 1400
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 1400 1350 1400
Connection ~ 1350 1400
Text Label 1800 1400 0    50   ~ 0
3V3_N
Text Notes 1350 1650 0    50   ~ 0
-1200 to +400 mV -> 500 to 1350 mV p-p
Text Notes 1400 1750 0    50   ~ 0
Default is 0V
$Comp
L device:C C173
U 1 1 5CA8A432
P 3250 950
F 0 "C173" H 3365 996 50  0000 L CNN
F 1 "100 pF" H 3365 905 50  0000 L CNN
F 2 "" H 3288 800 50  0001 C CNN
F 3 "" H 3250 950 50  0001 C CNN
	1    3250 950 
	1    0    0    -1  
$EndComp
$Comp
L device:C C174
U 1 1 5CA8ABC8
P 3750 950
F 0 "C174" H 3865 996 50  0000 L CNN
F 1 "100 pF" H 3865 905 50  0000 L CNN
F 2 "" H 3788 800 50  0001 C CNN
F 3 "" H 3750 950 50  0001 C CNN
	1    3750 950 
	1    0    0    -1  
$EndComp
$Comp
L device:C C175
U 1 1 5CA8B064
P 4300 950
F 0 "C175" H 4415 996 50  0000 L CNN
F 1 "4.7 uF" H 4415 905 50  0000 L CNN
F 2 "" H 4338 800 50  0001 C CNN
F 3 "" H 4300 950 50  0001 C CNN
	1    4300 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 800  3750 800 
Connection ~ 3750 800 
Wire Wire Line
	3750 800  3250 800 
Wire Wire Line
	4300 1100 3750 1100
Wire Wire Line
	3250 1100 3250 1650
Connection ~ 3250 1100
Connection ~ 3750 1100
Wire Wire Line
	3750 1100 3250 1100
Connection ~ 3250 1650
Wire Wire Line
	3250 1650 3600 1650
Text Label 3250 800  2    50   ~ 0
GND
$Comp
L device:R R21
U 1 1 5CA8D26D
P 4950 3550
F 0 "R21" V 4850 3550 50  0000 C CNN
F 1 "10" V 4950 3550 50  0000 C CNN
F 2 "" V 4880 3550 50  0001 C CNN
F 3 "" H 4950 3550 50  0001 C CNN
	1    4950 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4800 3550 4700 3550
Text Label 5100 3550 0    50   ~ 0
GND
Wire Wire Line
	4850 2250 4700 2250
Wire Wire Line
	4700 2350 4850 2350
$Comp
L special-azonenberg:NB6L295 U17
U 1 1 5CA9AC29
P 3750 7150
F 0 "U17" H 4150 9425 50  0000 C CNN
F 1 "NB6L295" H 4150 9334 50  0000 C CNN
F 2 "" H 3750 7150 50  0001 C CNN
F 3 "" H 3750 7150 50  0001 C CNN
	1    3750 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 5100 3650 5100
Wire Wire Line
	3650 5100 3650 5200
Connection ~ 3650 5100
Connection ~ 3650 5200
Wire Wire Line
	3650 5200 3650 5300
Connection ~ 3650 5300
Wire Wire Line
	3650 5300 3650 5400
Connection ~ 3650 5400
Wire Wire Line
	3650 5400 3650 5500
Connection ~ 3650 5500
Wire Wire Line
	3650 5500 3650 5600
Text Label 3400 5800 2    50   ~ 0
GND
Wire Wire Line
	3400 5800 3650 5800
Wire Wire Line
	3650 5800 3650 5900
Connection ~ 3650 5800
Wire Wire Line
	3650 6300 3650 6400
Connection ~ 3650 6400
Wire Wire Line
	3650 6400 3650 6500
NoConn ~ 4650 7000
NoConn ~ 4650 7100
Text Notes 4700 6000 0    50   ~ 0
LVPECL outputs need 50 ohm load resistors
Wire Wire Line
	3650 6800 3500 6800
Wire Wire Line
	3500 6700 3650 6700
Text HLabel 3500 6800 0    50   Input ~ 0
CLKIN1_N
Text HLabel 3500 6700 0    50   Input ~ 0
CLKIN1_P
$Comp
L device:C C163
U 1 1 5CAAE7E5
P 1200 4850
F 0 "C163" H 1315 4896 50  0000 L CNN
F 1 "4.7 uF" H 1315 4805 50  0000 L CNN
F 2 "" H 1238 4700 50  0001 C CNN
F 3 "" H 1200 4850 50  0001 C CNN
	1    1200 4850
	1    0    0    -1  
$EndComp
Text Label 1050 4700 2    50   ~ 0
3V3
Text Label 1050 5000 2    50   ~ 0
GND
$Comp
L device:C C166
U 1 1 5CAAFCC4
P 1750 4850
F 0 "C166" H 1865 4896 50  0000 L CNN
F 1 "0.47 uF" H 1865 4805 50  0000 L CNN
F 2 "" H 1788 4700 50  0001 C CNN
F 3 "" H 1750 4850 50  0001 C CNN
	1    1750 4850
	1    0    0    -1  
$EndComp
$Comp
L device:C C169
U 1 1 5CAB0185
P 2300 4850
F 0 "C169" H 2415 4896 50  0000 L CNN
F 1 "0.47 uF" H 2415 4805 50  0000 L CNN
F 2 "" H 2338 4700 50  0001 C CNN
F 3 "" H 2300 4850 50  0001 C CNN
	1    2300 4850
	1    0    0    -1  
$EndComp
$Comp
L device:C C171
U 1 1 5CAB03B7
P 2850 4850
F 0 "C171" H 2965 4896 50  0000 L CNN
F 1 "0.47 uF" H 2965 4805 50  0000 L CNN
F 2 "" H 2888 4700 50  0001 C CNN
F 3 "" H 2850 4850 50  0001 C CNN
	1    2850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 4700 2300 4700
Connection ~ 1200 4700
Wire Wire Line
	1200 4700 1050 4700
Connection ~ 1750 4700
Wire Wire Line
	1750 4700 1200 4700
Connection ~ 2300 4700
Wire Wire Line
	2300 4700 1750 4700
Wire Wire Line
	1050 5000 1200 5000
Connection ~ 1200 5000
Wire Wire Line
	1200 5000 1750 5000
Connection ~ 1750 5000
Wire Wire Line
	1750 5000 2300 5000
Connection ~ 2300 5000
Wire Wire Line
	2300 5000 2850 5000
$Comp
L device:C C172
U 1 1 5CAB20BA
P 2850 5250
F 0 "C172" H 2965 5296 50  0000 L CNN
F 1 "0.47 uF" H 2965 5205 50  0000 L CNN
F 2 "" H 2888 5100 50  0001 C CNN
F 3 "" H 2850 5250 50  0001 C CNN
	1    2850 5250
	1    0    0    -1  
$EndComp
$Comp
L device:C C170
U 1 1 5CAB26E8
P 2300 5250
F 0 "C170" H 2415 5296 50  0000 L CNN
F 1 "0.47 uF" H 2415 5205 50  0000 L CNN
F 2 "" H 2338 5100 50  0001 C CNN
F 3 "" H 2300 5250 50  0001 C CNN
	1    2300 5250
	1    0    0    -1  
$EndComp
$Comp
L device:C C167
U 1 1 5CAB2BEF
P 1750 5250
F 0 "C167" H 1865 5296 50  0000 L CNN
F 1 "0.47 uF" H 1865 5205 50  0000 L CNN
F 2 "" H 1788 5100 50  0001 C CNN
F 3 "" H 1750 5250 50  0001 C CNN
	1    1750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5100 2300 5100
Connection ~ 2300 5100
Wire Wire Line
	2300 5100 2850 5100
Wire Wire Line
	2850 5400 2300 5400
Connection ~ 2300 5400
Wire Wire Line
	2300 5400 1750 5400
Text Label 1750 5100 2    50   ~ 0
3V3
Text Label 1750 5400 2    50   ~ 0
GND
Text Label 3500 7000 2    50   ~ 0
3V3
Wire Wire Line
	3500 7000 3650 7000
NoConn ~ 3650 6000
NoConn ~ 3650 6100
Text Label 3400 6300 2    50   ~ 0
GND
Wire Wire Line
	3400 6300 3650 6300
Connection ~ 3650 6300
Text Label 3500 7100 2    50   ~ 0
GND
Wire Wire Line
	3500 7100 3650 7100
Text Notes 3450 7350 0    50   ~ 0
Need nonzero differential per datasheet\nfootnote 1 on page 3
Wire Notes Line width 20 style solid
	500  4200 11200 4200
Text Notes 550  4150 0    98   ~ 0
Fine delay line for PLL/CDR mode (1 Tsps max when combined w/ LMK04806)
Text Notes 550  7700 0    98   ~ 0
Coarse delay line for non-repetitive triggers (90 GSa/s max)
$EndSCHEMATC
