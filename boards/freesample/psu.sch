EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 12
Title "FREESAMPLE Oscilloscope"
Date "2019-02-23"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7300 3250 0    50   Output ~ 0
5V0
Text HLabel 7050 3500 0    50   Output ~ 0
3V3
Text HLabel 7050 3650 0    50   Output ~ 0
3V0_N
Text HLabel 7050 3800 0    50   Output ~ 0
1V8
Text HLabel 850  1150 0    50   Input ~ 0
GND
Text HLabel 3400 3750 2    50   Output ~ 0
1V0
Text HLabel 3200 2150 2    50   Output ~ 0
5V0_N
Text HLabel 850  850  0    50   Input ~ 0
12V0
Text HLabel 8200 3000 0    50   Output ~ 0
3V3_N
Text HLabel 8550 2950 0    50   Output ~ 0
2V5
Text Notes 7350 2100 0    50   ~ 0
Total power budget (with safety margins included):\n* -5     0.003A\n* -3.3   0.25A\n* -3.0   0.2A\n* +1.0   3A\n* +1.8   0.3A\n* +2.5   0.6A\n* +3.3   3A\n* +5   0.03A\nPlus 5V 1.5A for INTEGRALSTICK
Text Notes 7350 2400 0    50   ~ 0
Overall power topology:\n* LDO 12V -> 5V 0.05A for +5V0_A rail\n* Buck 12V -> 5V 5A for intermediate digital rail
Text HLabel 2750 850  2    50   Output ~ 0
A5V0
Text Notes 1600 1500 0    50   ~ 0
A5V0: estimated 3 mA from 12V in\nAdd 1 mA for charge pump and 3 mA for negative rail = 7 mA\nConservative 4.9C rise (70 mW) for 10 mA
$Comp
L power-azonenberg:MCP1755S-DFN U26
U 1 1 5CD9C3EE
P 1600 1100
F 0 "U26" H 1875 1575 50  0000 C CNN
F 1 "MCP1755ST-5002E/MC" H 1875 1484 50  0000 C CNN
F 2 "" H 1600 1100 50  0001 C CNN
F 3 "" H 1600 1100 50  0001 C CNN
	1    1600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 950  1400 1050
$Comp
L device:C C220
U 1 1 5CD9FF8D
P 2350 1000
F 0 "C220" H 2465 1046 50  0000 L CNN
F 1 "4.7 uF 5V" H 2465 955 50  0000 L CNN
F 2 "" H 2388 850 50  0001 C CNN
F 3 "" H 2350 1000 50  0001 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
Text Label 2350 1150 2    50   ~ 0
GND
Wire Wire Line
	2750 850  2350 850 
Connection ~ 2350 850 
$Comp
L device:C C219
U 1 1 5CDA23D2
P 850 1000
F 0 "C219" H 965 1046 50  0000 L CNN
F 1 "4.7 uF 12V" H 965 955 50  0000 L CNN
F 2 "" H 888 850 50  0001 C CNN
F 3 "" H 850 1000 50  0001 C CNN
	1    850  1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1150 1400 1150
Wire Wire Line
	1400 1150 1400 1050
Connection ~ 1400 1050
Wire Wire Line
	850  850  1400 850 
$Comp
L power-azonenberg:LM27761 U27
U 1 1 5CDAE48F
P 1600 2700
F 0 "U27" H 2000 3575 50  0000 C CNN
F 1 "LM27761" H 2000 3484 50  0000 C CNN
F 2 "" H 1600 2700 50  0001 C CNN
F 3 "" H 1600 2700 50  0001 C CNN
	1    1600 2700
	1    0    0    -1  
$EndComp
Text Label 900  2050 2    50   ~ 0
A5V0
Text Label 900  2350 2    50   ~ 0
GND
Wire Wire Line
	1400 2150 1400 2250
$Comp
L device:C C224
U 1 1 5CDB2110
P 3200 2500
F 0 "C224" H 3315 2546 50  0000 L CNN
F 1 "1 uF 5V" H 3315 2455 50  0000 L CNN
F 2 "" H 3238 2350 50  0001 C CNN
F 3 "" H 3200 2500 50  0001 C CNN
	1    3200 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2350 3200 2350
Wire Wire Line
	2600 2450 2600 2650
Wire Wire Line
	2600 2650 3200 2650
Text Label 1250 2650 2    50   ~ 0
A5V0
$Comp
L device:C C221
U 1 1 5CDB4173
P 900 2200
F 0 "C221" H 1015 2246 50  0000 L CNN
F 1 "4.7 uF 5V" H 1015 2155 50  0000 L CNN
F 2 "" H 938 2050 50  0001 C CNN
F 3 "" H 900 2200 50  0001 C CNN
	1    900  2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2350 1400 2250
Wire Wire Line
	900  2350 1400 2350
Connection ~ 1400 2250
Wire Wire Line
	900  2050 1400 2050
Wire Wire Line
	1250 2650 1400 2650
Wire Wire Line
	3200 2150 2600 2150
$Comp
L device:C C222
U 1 1 5CDB8750
P 2600 1900
F 0 "C222" H 2715 1946 50  0000 L CNN
F 1 "4.7 uF 5V" H 2715 1855 50  0000 L CNN
F 2 "" H 2638 1750 50  0001 C CNN
F 3 "" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Text Label 2600 1750 0    50   ~ 0
GND
$Comp
L device:C C223
U 1 1 5CDB8EF7
P 3200 1900
F 0 "C223" H 3315 1946 50  0000 L CNN
F 1 "2.2 uF 5V" H 3315 1855 50  0000 L CNN
F 2 "" H 3238 1750 50  0001 C CNN
F 3 "" H 3200 1900 50  0001 C CNN
	1    3200 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2050 3200 2150
Wire Wire Line
	2600 1750 3200 1750
$Comp
L device:R R28
U 1 1 5CDB99DD
P 1150 2850
F 0 "R28" V 1150 2850 50  0000 C CNN
F 1 "309K 1%" V 1150 2500 50  0000 C CNN
F 2 "" V 1080 2850 50  0001 C CNN
F 3 "" H 1150 2850 50  0001 C CNN
	1    1150 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2450 1000 2450
Wire Wire Line
	1000 2450 1000 2850
Text Label 1000 2450 0    50   ~ 0
5V0_N_FB
$Comp
L device:R R29
U 1 1 5CDBBDD2
P 1150 2950
F 0 "R29" V 1150 2950 50  0000 C CNN
F 1 "100K 1%" V 1150 2600 50  0000 C CNN
F 2 "" V 1080 2950 50  0001 C CNN
F 3 "" H 1150 2950 50  0001 C CNN
	1    1150 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 2850 1000 2950
Connection ~ 1000 2850
Text Label 1550 2850 0    50   ~ 0
5V0_N
Wire Wire Line
	1550 2850 1300 2850
Text Label 1550 2950 0    50   ~ 0
GND
Wire Wire Line
	1550 2950 1300 2950
Text Notes 1450 3250 0    50   ~ 0
Vout = -1.22 * (R28+R29)/R29\nR29 > 50 kR (use 100K\nUse 309K (ideal 309.836K) for -4.99V
Text Notes 1650 7000 0    50   ~ 0
1V0: ADP1763, buck to 1V15 then regulate from that\nConnect two in parallel to spread out heat generation\n0.15V * 3A = 0.45W total, estimate 0.3W worst case per chip\nAssuming 1cm^2 heatsink plane, 30.8C rise.\nBigger planes will improve this\nIf we power down channel B that will help too
$Comp
L power-azonenberg:ADP1763 U28
U 1 1 5CDCA9C9
P 1650 4900
F 0 "U28" H 2025 6275 50  0000 C CNN
F 1 "ADP1763" H 2025 6184 50  0000 C CNN
F 2 "" H 1650 4850 50  0001 C CNN
F 3 "" H 1650 4850 50  0001 C CNN
	1    1650 4900
	1    0    0    -1  
$EndComp
Text Label 1450 3750 2    50   ~ 0
1V15_INT
Wire Wire Line
	1450 3750 1450 3850
Connection ~ 1450 3850
Wire Wire Line
	1450 3850 1450 3950
Connection ~ 1450 3950
Wire Wire Line
	1450 3950 1450 4050
Wire Wire Line
	2600 3750 2600 3850
Connection ~ 2600 3850
Wire Wire Line
	2600 3850 2600 3950
Connection ~ 2600 3950
Wire Wire Line
	2600 3950 2600 4050
Text Label 2600 4250 0    50   ~ 0
1V0_SENSE
$Comp
L device:R R31
U 1 1 5CDCBBB1
P 3250 4250
F 0 "R31" V 3150 4250 50  0000 C CNN
F 1 "0" V 3250 4250 50  0000 C CNN
F 2 "" V 3180 4250 50  0001 C CNN
F 3 "" H 3250 4250 50  0001 C CNN
	1    3250 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 4250 3100 4250
Wire Wire Line
	3400 3750 3400 4250
NoConn ~ 2600 4350
$Comp
L device:R R30
U 1 1 5CDCE148
P 2600 4700
F 0 "R30" H 2670 4746 50  0000 L CNN
F 1 "1K" H 2670 4655 50  0000 L CNN
F 2 "" V 2530 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
Text Label 2850 4550 0    50   ~ 0
1V0_PGOOD
Wire Wire Line
	2850 4550 2600 4550
Connection ~ 2600 4550
Text Label 2850 4850 0    50   ~ 0
3V3
Wire Wire Line
	2850 4850 2600 4850
$Comp
L device:C C229
U 1 1 5CDD085B
P 1150 4100
F 0 "C229" H 1035 4054 50  0000 R CNN
F 1 "1 uF" H 1035 4145 50  0000 R CNN
F 2 "" H 1188 3950 50  0001 C CNN
F 3 "" H 1150 4100 50  0001 C CNN
	1    1150 4100
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 4250 1450 4250
Text Label 1150 3950 0    50   ~ 0
GND
$Comp
L device:C C226
U 1 1 5CDD1ED2
P 750 4200
F 0 "C226" H 635 4154 50  0000 R CNN
F 1 "1 uF" H 635 4245 50  0000 R CNN
F 2 "" H 788 4050 50  0001 C CNN
F 3 "" H 750 4200 50  0001 C CNN
	1    750  4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1150 3950 750  3950
Wire Wire Line
	750  3950 750  4050
Wire Wire Line
	750  4350 1450 4350
$Comp
L device:C C227
U 1 1 5CDD319F
P 750 4600
F 0 "C227" H 635 4554 50  0000 R CNN
F 1 "22 nF" H 635 4645 50  0000 R CNN
F 2 "" H 788 4450 50  0001 C CNN
F 3 "" H 750 4600 50  0001 C CNN
	1    750  4600
	-1   0    0    1   
$EndComp
Text Label 750  4750 2    50   ~ 0
GND
Wire Wire Line
	750  4750 1450 4750
Wire Wire Line
	1450 4750 1450 4850
Connection ~ 1450 4750
Wire Wire Line
	750  4450 1450 4450
Text Label 1450 4550 2    50   ~ 0
5V0
$Comp
L device:C C228
U 1 1 5CDD50E0
P 1050 3600
F 0 "C228" H 935 3554 50  0000 R CNN
F 1 "22 uF" H 935 3645 50  0000 R CNN
F 2 "" H 1088 3450 50  0001 C CNN
F 3 "" H 1050 3600 50  0001 C CNN
	1    1050 3600
	-1   0    0    1   
$EndComp
$Comp
L device:C C225
U 1 1 5CDD5A5B
P 600 3600
F 0 "C225" H 485 3554 50  0000 R CNN
F 1 "4.7 uF" H 485 3645 50  0000 R CNN
F 2 "" H 638 3450 50  0001 C CNN
F 3 "" H 600 3600 50  0001 C CNN
	1    600  3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	600  3750 1050 3750
Connection ~ 1450 3750
Connection ~ 1050 3750
Wire Wire Line
	1050 3750 1450 3750
Wire Wire Line
	600  3450 1050 3450
Text Label 1050 3450 0    50   ~ 0
GND
$Comp
L device:C C233
U 1 1 5CDD8BB7
P 3400 3600
F 0 "C233" H 3285 3554 50  0000 R CNN
F 1 "22 uF" H 3285 3645 50  0000 R CNN
F 2 "" H 3438 3450 50  0001 C CNN
F 3 "" H 3400 3600 50  0001 C CNN
	1    3400 3600
	-1   0    0    1   
$EndComp
Text Label 3400 3450 0    50   ~ 0
GND
$Comp
L power-azonenberg:ADP1763 U29
U 1 1 5CDD9416
P 1650 6500
F 0 "U29" H 2025 7875 50  0000 C CNN
F 1 "ADP1763" H 2025 7784 50  0000 C CNN
F 2 "" H 1650 6450 50  0001 C CNN
F 3 "" H 1650 6450 50  0001 C CNN
	1    1650 6500
	1    0    0    -1  
$EndComp
Text Label 1450 5350 2    50   ~ 0
1V15_INT
Wire Wire Line
	1450 5350 1450 5450
Connection ~ 1450 5450
Wire Wire Line
	1450 5450 1450 5550
Connection ~ 1450 5550
Wire Wire Line
	1450 5550 1450 5650
Wire Wire Line
	2600 5350 2600 5450
Connection ~ 2600 5450
Wire Wire Line
	2600 5450 2600 5550
Connection ~ 2600 5550
Wire Wire Line
	2600 5550 2600 5650
Text Label 2600 5850 0    50   ~ 0
1V0_SENSE
$Comp
L device:R R35
U 1 1 5CDD942C
P 3250 5850
F 0 "R35" V 3150 5850 50  0000 C CNN
F 1 "0" V 3250 5850 50  0000 C CNN
F 2 "" V 3180 5850 50  0001 C CNN
F 3 "" H 3250 5850 50  0001 C CNN
	1    3250 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 5850 3100 5850
Wire Wire Line
	3400 5350 3400 5850
NoConn ~ 2600 5950
$Comp
L device:R R32
U 1 1 5CDD943B
P 2600 6300
F 0 "R32" H 2670 6346 50  0000 L CNN
F 1 "1K" H 2670 6255 50  0000 L CNN
F 2 "" V 2530 6300 50  0001 C CNN
F 3 "" H 2600 6300 50  0001 C CNN
	1    2600 6300
	1    0    0    -1  
$EndComp
Text Label 2850 6150 0    50   ~ 0
1V0_PGOOD
Wire Wire Line
	2850 6150 2600 6150
Connection ~ 2600 6150
Text Label 2850 6450 0    50   ~ 0
3V3
Wire Wire Line
	2850 6450 2600 6450
Text Label 1450 6350 2    50   ~ 0
GND
Wire Wire Line
	1450 6350 1450 6450
Text Label 1450 6150 2    50   ~ 0
5V0
$Comp
L device:C C232
U 1 1 5CDD9473
P 1050 5200
F 0 "C232" H 935 5154 50  0000 R CNN
F 1 "22 uF" H 935 5245 50  0000 R CNN
F 2 "" H 1088 5050 50  0001 C CNN
F 3 "" H 1050 5200 50  0001 C CNN
	1    1050 5200
	-1   0    0    1   
$EndComp
$Comp
L device:C C230
U 1 1 5CDD947D
P 600 5200
F 0 "C230" H 485 5154 50  0000 R CNN
F 1 "4.7 uF" H 485 5245 50  0000 R CNN
F 2 "" H 638 5050 50  0001 C CNN
F 3 "" H 600 5200 50  0001 C CNN
	1    600  5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	600  5350 1050 5350
Connection ~ 1450 5350
Connection ~ 1050 5350
Wire Wire Line
	1050 5350 1450 5350
Wire Wire Line
	600  5050 1050 5050
Text Label 1050 5050 0    50   ~ 0
GND
$Comp
L device:C C234
U 1 1 5CDD948D
P 3400 5200
F 0 "C234" H 3285 5154 50  0000 R CNN
F 1 "22 uF" H 3285 5245 50  0000 R CNN
F 2 "" H 3438 5050 50  0001 C CNN
F 3 "" H 3400 5200 50  0001 C CNN
	1    3400 5200
	-1   0    0    1   
$EndComp
Text Label 3400 5050 0    50   ~ 0
GND
Text Label 3400 5350 0    50   ~ 0
1V0
$Comp
L device:R R33
U 1 1 5CDE268D
P 2950 3750
F 0 "R33" V 2743 3750 50  0000 C CNN
F 1 "5 mR" V 2834 3750 50  0000 C CNN
F 2 "" V 2880 3750 50  0001 C CNN
F 3 "" H 2950 3750 50  0001 C CNN
	1    2950 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3750 2800 3750
Connection ~ 2600 3750
Wire Wire Line
	3100 3750 3400 3750
Connection ~ 3400 3750
$Comp
L device:R R34
U 1 1 5CDE4D14
P 2950 5350
F 0 "R34" V 2743 5350 50  0000 C CNN
F 1 "5 mR" V 2834 5350 50  0000 C CNN
F 2 "" V 2880 5350 50  0001 C CNN
F 3 "" H 2950 5350 50  0001 C CNN
	1    2950 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 5350 2600 5350
Connection ~ 2600 5350
Wire Wire Line
	3100 5350 3400 5350
Connection ~ 3400 5350
Text Label 1450 4450 2    50   ~ 0
1V0_SS
Text Label 1450 6050 2    50   ~ 0
1V0_SS
Wire Wire Line
	750  5950 1450 5950
$Comp
L device:C C231
U 1 1 5CDD9456
P 750 6100
F 0 "C231" H 635 6054 50  0000 R CNN
F 1 "1 uF" H 635 6145 50  0000 R CNN
F 2 "" H 788 5950 50  0001 C CNN
F 3 "" H 750 6100 50  0001 C CNN
	1    750  6100
	-1   0    0    1   
$EndComp
Text Label 750  6250 2    50   ~ 0
GND
Text Label 1450 4250 2    50   ~ 0
1V0_REF
Text Label 1450 5850 2    50   ~ 0
1V0_REF
$EndSCHEMATC
