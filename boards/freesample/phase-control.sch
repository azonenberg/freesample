EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
Title "FREESAMPLE Oscilloscope"
Date "2019-02-23"
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
Text HLabel 4600 6150 2    50   Output ~ 0
COARSEPHASE_P
Text HLabel 4600 6250 2    50   Output ~ 0
COARSEPHASE_N
Text HLabel 3600 2250 0    50   Input ~ 0
CLKIN0_P
Text HLabel 3600 2350 0    50   Input ~ 0
CLKIN0_N
Text HLabel 3350 4550 0    50   Input ~ 0
3V3
Text HLabel 4800 2550 2    50   Input ~ 0
GND
Text HLabel 4600 5650 2    50   Input ~ 0
COARSE_EN
Text HLabel 4600 5750 2    50   Input ~ 0
COARSE_SLOAD
Text HLabel 4600 5850 2    50   Input ~ 0
COARSE_SDIN
Text HLabel 4600 5950 2    50   Input ~ 0
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
P 3700 6600
F 0 "U17" H 4100 8875 50  0000 C CNN
F 1 "NB6L295" H 4100 8784 50  0000 C CNN
F 2 "" H 3700 6600 50  0001 C CNN
F 3 "" H 3700 6600 50  0001 C CNN
	1    3700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4550 3600 4550
Wire Wire Line
	3600 4550 3600 4650
Connection ~ 3600 4550
Connection ~ 3600 4650
Wire Wire Line
	3600 4650 3600 4750
Connection ~ 3600 4750
Wire Wire Line
	3600 4750 3600 4850
Connection ~ 3600 4850
Wire Wire Line
	3600 4850 3600 4950
Connection ~ 3600 4950
Wire Wire Line
	3600 4950 3600 5050
Text Label 3350 5250 2    50   ~ 0
GND
Wire Wire Line
	3350 5250 3600 5250
Wire Wire Line
	3600 5250 3600 5350
Connection ~ 3600 5250
Wire Wire Line
	3600 5750 3600 5850
Connection ~ 3600 5850
Wire Wire Line
	3600 5850 3600 5950
NoConn ~ 4600 6450
NoConn ~ 4600 6550
Text Notes 5700 6150 0    50   ~ 0
LVPECL outputs need 50 ohm load resistors
Wire Wire Line
	3600 6250 3450 6250
Wire Wire Line
	3450 6150 3600 6150
Text HLabel 3450 6250 0    50   Input ~ 0
CLKIN1_N
Text HLabel 3450 6150 0    50   Input ~ 0
CLKIN1_P
$Comp
L device:C C163
U 1 1 5CAAE7E5
P 1150 4300
F 0 "C163" H 1265 4346 50  0000 L CNN
F 1 "4.7 uF" H 1265 4255 50  0000 L CNN
F 2 "" H 1188 4150 50  0001 C CNN
F 3 "" H 1150 4300 50  0001 C CNN
	1    1150 4300
	1    0    0    -1  
$EndComp
Text Label 1000 4150 2    50   ~ 0
3V3
Text Label 1000 4450 2    50   ~ 0
GND
$Comp
L device:C C166
U 1 1 5CAAFCC4
P 1700 4300
F 0 "C166" H 1815 4346 50  0000 L CNN
F 1 "0.47 uF" H 1815 4255 50  0000 L CNN
F 2 "" H 1738 4150 50  0001 C CNN
F 3 "" H 1700 4300 50  0001 C CNN
	1    1700 4300
	1    0    0    -1  
$EndComp
$Comp
L device:C C169
U 1 1 5CAB0185
P 2250 4300
F 0 "C169" H 2365 4346 50  0000 L CNN
F 1 "0.47 uF" H 2365 4255 50  0000 L CNN
F 2 "" H 2288 4150 50  0001 C CNN
F 3 "" H 2250 4300 50  0001 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
$Comp
L device:C C171
U 1 1 5CAB03B7
P 2800 4300
F 0 "C171" H 2915 4346 50  0000 L CNN
F 1 "0.47 uF" H 2915 4255 50  0000 L CNN
F 2 "" H 2838 4150 50  0001 C CNN
F 3 "" H 2800 4300 50  0001 C CNN
	1    2800 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4150 2250 4150
Connection ~ 1150 4150
Wire Wire Line
	1150 4150 1000 4150
Connection ~ 1700 4150
Wire Wire Line
	1700 4150 1150 4150
Connection ~ 2250 4150
Wire Wire Line
	2250 4150 1700 4150
Wire Wire Line
	1000 4450 1150 4450
Connection ~ 1150 4450
Wire Wire Line
	1150 4450 1700 4450
Connection ~ 1700 4450
Wire Wire Line
	1700 4450 2250 4450
Connection ~ 2250 4450
Wire Wire Line
	2250 4450 2800 4450
$Comp
L device:C C172
U 1 1 5CAB20BA
P 2800 4700
F 0 "C172" H 2915 4746 50  0000 L CNN
F 1 "0.47 uF" H 2915 4655 50  0000 L CNN
F 2 "" H 2838 4550 50  0001 C CNN
F 3 "" H 2800 4700 50  0001 C CNN
	1    2800 4700
	1    0    0    -1  
$EndComp
$Comp
L device:C C170
U 1 1 5CAB26E8
P 2250 4700
F 0 "C170" H 2365 4746 50  0000 L CNN
F 1 "0.47 uF" H 2365 4655 50  0000 L CNN
F 2 "" H 2288 4550 50  0001 C CNN
F 3 "" H 2250 4700 50  0001 C CNN
	1    2250 4700
	1    0    0    -1  
$EndComp
$Comp
L device:C C167
U 1 1 5CAB2BEF
P 1700 4700
F 0 "C167" H 1815 4746 50  0000 L CNN
F 1 "0.47 uF" H 1815 4655 50  0000 L CNN
F 2 "" H 1738 4550 50  0001 C CNN
F 3 "" H 1700 4700 50  0001 C CNN
	1    1700 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 4550 2250 4550
Connection ~ 2250 4550
Wire Wire Line
	2250 4550 2800 4550
Wire Wire Line
	2800 4850 2250 4850
Connection ~ 2250 4850
Wire Wire Line
	2250 4850 1700 4850
Text Label 1700 4550 2    50   ~ 0
3V3
Text Label 1700 4850 2    50   ~ 0
GND
Text Label 3450 6450 2    50   ~ 0
3V3
Wire Wire Line
	3450 6450 3600 6450
NoConn ~ 3600 5450
NoConn ~ 3600 5550
Text Label 3350 5750 2    50   ~ 0
GND
Wire Wire Line
	3350 5750 3600 5750
Connection ~ 3600 5750
Text Label 3450 6550 2    50   ~ 0
GND
Wire Wire Line
	3450 6550 3600 6550
Text Notes 3400 6800 0    50   ~ 0
Need nonzero differential per datasheet\nfootnote 1 on page 3
$EndSCHEMATC
