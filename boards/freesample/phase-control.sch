EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 12 12
Title "FREESAMPLE Oscilloscope"
Date "2019-03-10"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 "Fine phase shifting for sampling point X position"
Comment2 "Ready for review"
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4850 2250 2    50   Output ~ 0
FINEPHASE_P
Text HLabel 4850 2350 2    50   Output ~ 0
FINEPHASE_N
Text HLabel 2750 2200 0    50   Input ~ 0
CLKIN0_P
Text HLabel 2750 2400 0    50   Input ~ 0
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
Text HLabel 1900 2550 0    50   Input ~ 0
FINE_SEL0_P
Text HLabel 1900 2650 0    50   Input ~ 0
FINE_SEL0_N
Text HLabel 2750 2850 0    50   Input ~ 0
FINE_SEL1_P
Text HLabel 2750 2950 0    50   Input ~ 0
FINE_SEL1_N
Text HLabel 1900 3150 0    50   Input ~ 0
FINE_SEL2_P
Text HLabel 1900 3250 0    50   Input ~ 0
FINE_SEL2_N
Text HLabel 2750 3450 0    50   Input ~ 0
FINE_SEL3_P
Text HLabel 2750 3550 0    50   Input ~ 0
FINE_SEL3_N
Text HLabel 1900 3750 0    50   Input ~ 0
FINE_SEL4_P
Text HLabel 1900 3850 0    50   Input ~ 0
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
F 1 "164K" V 1200 1400 50  0000 C CNN
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
-800 mV gives 700 mV p-p output
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
Text HLabel 2000 6800 0    50   Input ~ 0
CLKIN1_N
Text HLabel 2000 6700 0    50   Input ~ 0
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
Text Notes 2750 7450 0    50   ~ 0
Need nonzero differential on IN1 per datasheet\nfootnote 1 on page 3. IN1_N must be 1050 to\n3150 mV so we can't just ground it.
Wire Notes Line width 20 style solid
	500  4200 11200 4200
Text Notes 550  4150 0    98   ~ 0
Fine delay line for PLL/CDR mode (1 Tsps max when combined w/ LMK04806)
Text Notes 550  7700 0    98   ~ 0
Coarse delay line for non-repetitive triggers (90 GSa/s max)
$Comp
L device:C C269
U 1 1 5D550DD8
P 2900 2200
F 0 "C269" V 2700 2350 50  0000 C CNN
F 1 "0.1 uF" V 2800 2400 50  0000 C CNN
F 2 "" H 2938 2050 50  0001 C CNN
F 3 "" H 2900 2200 50  0001 C CNN
	1    2900 2200
	0    1    1    0   
$EndComp
$Comp
L device:C C270
U 1 1 5D5528D8
P 2900 2400
F 0 "C270" V 2950 2600 50  0000 C CNN
F 1 "0.1 uF" V 2800 2650 50  0000 C CNN
F 2 "" H 2938 2250 50  0001 C CNN
F 3 "" H 2900 2400 50  0001 C CNN
	1    2900 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2200 3600 2200
Wire Wire Line
	3600 2200 3600 2250
Wire Wire Line
	3050 2400 3600 2400
Wire Wire Line
	3600 2400 3600 2350
Text Label 3050 2200 0    50   ~ 0
CLKIN0_AC_P
Text Label 3050 2400 0    50   ~ 0
CLKIN0_AC_N
$Comp
L device:C C263
U 1 1 5D55BC52
P 2050 2550
F 0 "C263" V 2100 2750 50  0000 C CNN
F 1 "0.1 uF" V 1950 2800 50  0000 C CNN
F 2 "" H 2088 2400 50  0001 C CNN
F 3 "" H 2050 2550 50  0001 C CNN
	1    2050 2550
	0    1    1    0   
$EndComp
$Comp
L device:C C264
U 1 1 5D55CCEC
P 2050 2650
F 0 "C264" V 2100 2850 50  0000 C CNN
F 1 "0.1 uF" V 1950 2900 50  0000 C CNN
F 2 "" H 2088 2500 50  0001 C CNN
F 3 "" H 2050 2650 50  0001 C CNN
	1    2050 2650
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 2550 3600 2550
Wire Wire Line
	2200 2650 3600 2650
$Comp
L device:C C271
U 1 1 5D5614D9
P 2900 2850
F 0 "C271" V 2950 3050 50  0000 C CNN
F 1 "0.1 uF" V 2800 3100 50  0000 C CNN
F 2 "" H 2938 2700 50  0001 C CNN
F 3 "" H 2900 2850 50  0001 C CNN
	1    2900 2850
	0    1    1    0   
$EndComp
$Comp
L device:C C272
U 1 1 5D5614E3
P 2900 2950
F 0 "C272" V 2950 3150 50  0000 C CNN
F 1 "0.1 uF" V 2800 3200 50  0000 C CNN
F 2 "" H 2938 2800 50  0001 C CNN
F 3 "" H 2900 2950 50  0001 C CNN
	1    2900 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2850 3600 2850
Wire Wire Line
	3600 2950 3050 2950
$Comp
L device:C C265
U 1 1 5D56654C
P 2050 3150
F 0 "C265" V 2100 3350 50  0000 C CNN
F 1 "0.1 uF" V 1950 3400 50  0000 C CNN
F 2 "" H 2088 3000 50  0001 C CNN
F 3 "" H 2050 3150 50  0001 C CNN
	1    2050 3150
	0    1    1    0   
$EndComp
$Comp
L device:C C266
U 1 1 5D566556
P 2050 3250
F 0 "C266" V 2100 3450 50  0000 C CNN
F 1 "0.1 uF" V 1950 3500 50  0000 C CNN
F 2 "" H 2088 3100 50  0001 C CNN
F 3 "" H 2050 3250 50  0001 C CNN
	1    2050 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3150 3600 3150
Wire Wire Line
	3600 3250 2200 3250
$Comp
L device:C C273
U 1 1 5D56B97B
P 2900 3450
F 0 "C273" V 2950 3650 50  0000 C CNN
F 1 "0.1 uF" V 2800 3700 50  0000 C CNN
F 2 "" H 2938 3300 50  0001 C CNN
F 3 "" H 2900 3450 50  0001 C CNN
	1    2900 3450
	0    1    1    0   
$EndComp
$Comp
L device:C C274
U 1 1 5D56B985
P 2900 3550
F 0 "C274" V 2950 3750 50  0000 C CNN
F 1 "0.1 uF" V 2800 3800 50  0000 C CNN
F 2 "" H 2938 3400 50  0001 C CNN
F 3 "" H 2900 3550 50  0001 C CNN
	1    2900 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 3450 3600 3450
Wire Wire Line
	3050 3550 3600 3550
$Comp
L device:C C267
U 1 1 5D570F88
P 2050 3750
F 0 "C267" V 2100 3950 50  0000 C CNN
F 1 "0.1 uF" V 1950 4000 50  0000 C CNN
F 2 "" H 2088 3600 50  0001 C CNN
F 3 "" H 2050 3750 50  0001 C CNN
	1    2050 3750
	0    1    1    0   
$EndComp
$Comp
L device:C C268
U 1 1 5D570F92
P 2050 3850
F 0 "C268" V 2100 4050 50  0000 C CNN
F 1 "0.1 uF" V 1950 4100 50  0000 C CNN
F 2 "" H 2088 3700 50  0001 C CNN
F 3 "" H 2050 3850 50  0001 C CNN
	1    2050 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 3750 3600 3750
Wire Wire Line
	3600 3850 2200 3850
Text Label 3150 2550 0    50   ~ 0
FS0_AC_P
Text Label 3150 2650 0    50   ~ 0
FS0_AC_N
Text Label 3250 2850 0    50   ~ 0
FS1_AC_P
Text Label 3250 2950 0    50   ~ 0
FS1_AC_N
Text Label 3150 3150 0    50   ~ 0
FS2_AC_P
Text Label 3150 3250 0    50   ~ 0
FS2_AC_N
Text Label 3250 3450 0    50   ~ 0
FS3_AC_P
Text Label 3250 3550 0    50   ~ 0
FS3_AC_N
Text Label 3150 3750 0    50   ~ 0
FS4_AC_P
Text Label 3150 3850 0    50   ~ 0
FS4_AC_N
Text Notes 5650 2900 0    50   ~ 0
NOTE: FINE_SEL inputs are AC coupled despite being slow.\nThis effectively makes them dynamic logic.\nTo prevent invalid states from appearing on on the input buffers,\nthe FPGA must periodically invert the delay value and return to\nthe desired value, during the dead time in between acquisitions.\nCalculations suggest 75 us to discharge coupling cap.\nEnforcing 1 MHz min toggle rate should be conservative.
$Comp
L device:R R76
U 1 1 5D57C74A
P 6450 1300
F 0 "R76" V 6350 1300 50  0000 C CNN
F 1 "10K" V 6450 1300 50  0000 C CNN
F 2 "" V 6380 1300 50  0001 C CNN
F 3 "" H 6450 1300 50  0001 C CNN
	1    6450 1300
	0    1    1    0   
$EndComp
Text Label 6300 1300 2    50   ~ 0
FS0_AC_N
Text Label 6600 1300 0    50   ~ 0
3V3_N
Text Notes 7050 850  0    50   ~ 0
We want FS* to default to 5'b11111 at power up.\nTerminator is 600R to ground on both sides.\nP side is left floating so terminator pulls it high.\n10K gives us -186 mV at the N side.
$Comp
L device:R R77
U 1 1 5D57D35B
P 6450 1500
F 0 "R77" V 6350 1500 50  0000 C CNN
F 1 "10K" V 6450 1500 50  0000 C CNN
F 2 "" V 6380 1500 50  0001 C CNN
F 3 "" H 6450 1500 50  0001 C CNN
	1    6450 1500
	0    1    1    0   
$EndComp
Text Label 6300 1500 2    50   ~ 0
FS1_AC_N
$Comp
L device:R R78
U 1 1 5D57F193
P 6450 1700
F 0 "R78" V 6350 1700 50  0000 C CNN
F 1 "10K" V 6450 1700 50  0000 C CNN
F 2 "" V 6380 1700 50  0001 C CNN
F 3 "" H 6450 1700 50  0001 C CNN
	1    6450 1700
	0    1    1    0   
$EndComp
Text Label 6300 1700 2    50   ~ 0
FS2_AC_N
$Comp
L device:R R79
U 1 1 5D5810D3
P 6450 1900
F 0 "R79" V 6350 1900 50  0000 C CNN
F 1 "10K" V 6450 1900 50  0000 C CNN
F 2 "" V 6380 1900 50  0001 C CNN
F 3 "" H 6450 1900 50  0001 C CNN
	1    6450 1900
	0    1    1    0   
$EndComp
Text Label 6300 1900 2    50   ~ 0
FS3_AC_N
$Comp
L device:R R80
U 1 1 5D582FCC
P 6450 2100
F 0 "R80" V 6350 2100 50  0000 C CNN
F 1 "10K" V 6450 2100 50  0000 C CNN
F 2 "" V 6380 2100 50  0001 C CNN
F 3 "" H 6450 2100 50  0001 C CNN
	1    6450 2100
	0    1    1    0   
$EndComp
Text Label 6300 2100 2    50   ~ 0
FS4_AC_N
Wire Wire Line
	6600 2100 6600 1900
Connection ~ 6600 1500
Wire Wire Line
	6600 1500 6600 1300
Connection ~ 6600 1700
Wire Wire Line
	6600 1700 6600 1500
Connection ~ 6600 1900
Wire Wire Line
	6600 1900 6600 1700
$Comp
L device:R R81
U 1 1 5D590270
P 2650 7000
F 0 "R81" V 2600 7150 50  0000 C CNN
F 1 "10K" V 2650 7000 50  0000 C CNN
F 2 "" V 2580 7000 50  0001 C CNN
F 3 "" H 2650 7000 50  0001 C CNN
	1    2650 7000
	0    1    1    0   
$EndComp
$Comp
L device:R R82
U 1 1 5D590B6B
P 2650 7100
F 0 "R82" V 2600 7250 50  0000 C CNN
F 1 "10K" V 2650 7100 50  0000 C CNN
F 2 "" V 2580 7100 50  0001 C CNN
F 3 "" H 2650 7100 50  0001 C CNN
	1    2650 7100
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 7000 2900 7000
Wire Wire Line
	2900 7100 2800 7100
Wire Wire Line
	2900 7000 2900 7100
Wire Wire Line
	2900 7100 3650 7100
Connection ~ 2900 7100
Text Label 2500 7000 2    50   ~ 0
3V3
Text Label 2500 7100 2    50   ~ 0
GND
$Comp
L device:C C291
U 1 1 5D59EFBC
P 2150 6700
F 0 "C291" V 2200 6900 50  0000 C CNN
F 1 "0.1 uF" V 2050 6950 50  0000 C CNN
F 2 "" H 2188 6550 50  0001 C CNN
F 3 "" H 2150 6700 50  0001 C CNN
	1    2150 6700
	0    1    1    0   
$EndComp
$Comp
L device:C C292
U 1 1 5D59FF8E
P 2150 6800
F 0 "C292" V 2200 7000 50  0000 C CNN
F 1 "0.1 uF" V 2050 7050 50  0000 C CNN
F 2 "" H 2188 6650 50  0001 C CNN
F 3 "" H 2150 6800 50  0001 C CNN
	1    2150 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 6700 3650 6700
Wire Wire Line
	2300 6800 3650 6800
Text Label 2900 6700 0    50   ~ 0
CLKIN1_AC_P
Text Label 2900 6800 0    50   ~ 0
CLKIN1_AC_N
Text HLabel 4650 6800 2    50   Output ~ 0
COARSEPHASE_N
Text HLabel 4650 6700 2    50   Output ~ 0
COARSEPHASE_P
$Comp
L device:R R83
U 1 1 5D5B93CC
P 5800 5300
F 0 "R83" V 5700 5300 50  0000 C CNN
F 1 "127" V 5800 5300 50  0000 C CNN
F 2 "" V 5730 5300 50  0001 C CNN
F 3 "" H 5800 5300 50  0001 C CNN
	1    5800 5300
	0    1    1    0   
$EndComp
Text Label 5950 5300 0    50   ~ 0
COARSEPHASE_P
Text Label 5650 5300 2    50   ~ 0
3V3
$Comp
L device:R R84
U 1 1 5D5B9EA8
P 5800 5500
F 0 "R84" V 5700 5500 50  0000 C CNN
F 1 "82" V 5800 5500 50  0000 C CNN
F 2 "" V 5730 5500 50  0001 C CNN
F 3 "" H 5800 5500 50  0001 C CNN
	1    5800 5500
	0    1    1    0   
$EndComp
Text Label 5650 5500 2    50   ~ 0
GND
Wire Wire Line
	5950 5500 5950 5300
Text Notes 5500 5100 0    50   ~ 0
LVPECL Thevenin load resistors
$EndSCHEMATC
