EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
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
Text HLabel 9950 2050 0    50   Output ~ 0
5V0
Text HLabel 9700 2300 0    50   Output ~ 0
3V3
Text HLabel 9700 2450 0    50   Output ~ 0
3V0_N
Text HLabel 9700 2600 0    50   Output ~ 0
1V8
Text HLabel 850  1150 0    50   Input ~ 0
GND
Text HLabel 3600 7050 2    50   Output ~ 0
1V0
Text HLabel 3200 2300 2    50   Output ~ 0
5V0_N
Text HLabel 850  850  0    50   Input ~ 0
12V0
Text HLabel 10850 1800 0    50   Output ~ 0
3V3_N
Text HLabel 11200 1750 0    50   Output ~ 0
2V5
Text Notes 10250 3150 0    50   ~ 0
Total power budget (with safety margins included):\n* -5     0.003A\n* -3.3   0.25A\n* -3.0   0.2A\n* +1.0   3A\n* +1.8   0.3A\n* +2.5   0.6A\n* +3.3   3A\n* +5   0.03A\nPlus 5V 1.5A for INTEGRALSTICK
Text Notes 10250 3450 0    50   ~ 0
Overall power topology:\n* LDO 12V -> 5V 0.05A for +5V0_A rail\n* Buck 12V -> 5V 5A for intermediate digital rail
Text HLabel 2750 850  2    50   Output ~ 0
A5V0
Text Notes 2600 1600 0    50   ~ 0
A5V0: estimated 3 mA from 12V in\nAdd 1 mA for charge pump and\n3 mA for negative rail = 7 mA\nConservatively: 4.9C rise (70 mW) at 10 mA
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
P 1600 2850
F 0 "U27" H 2000 3725 50  0000 C CNN
F 1 "LM27761" H 2000 3634 50  0000 C CNN
F 2 "" H 1600 2850 50  0001 C CNN
F 3 "" H 1600 2850 50  0001 C CNN
	1    1600 2850
	1    0    0    -1  
$EndComp
Text Label 900  2200 2    50   ~ 0
A5V0
Text Label 900  2500 2    50   ~ 0
GND
Wire Wire Line
	1400 2300 1400 2400
$Comp
L device:C C224
U 1 1 5CDB2110
P 3200 2650
F 0 "C224" H 3315 2696 50  0000 L CNN
F 1 "1 uF 5V" H 3315 2605 50  0000 L CNN
F 2 "" H 3238 2500 50  0001 C CNN
F 3 "" H 3200 2650 50  0001 C CNN
	1    3200 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2500 3200 2500
Wire Wire Line
	2600 2600 2600 2800
Wire Wire Line
	2600 2800 3200 2800
Text Label 1250 2800 2    50   ~ 0
A5V0
$Comp
L device:C C221
U 1 1 5CDB4173
P 900 2350
F 0 "C221" H 1015 2396 50  0000 L CNN
F 1 "4.7 uF 5V" H 1015 2305 50  0000 L CNN
F 2 "" H 938 2200 50  0001 C CNN
F 3 "" H 900 2350 50  0001 C CNN
	1    900  2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2500 1400 2400
Wire Wire Line
	900  2500 1400 2500
Connection ~ 1400 2400
Wire Wire Line
	900  2200 1400 2200
Wire Wire Line
	1250 2800 1400 2800
Wire Wire Line
	3200 2300 2600 2300
$Comp
L device:C C222
U 1 1 5CDB8750
P 2600 2050
F 0 "C222" H 2715 2096 50  0000 L CNN
F 1 "4.7 uF 5V" H 2715 2005 50  0000 L CNN
F 2 "" H 2638 1900 50  0001 C CNN
F 3 "" H 2600 2050 50  0001 C CNN
	1    2600 2050
	1    0    0    -1  
$EndComp
Text Label 2600 1900 0    50   ~ 0
GND
$Comp
L device:C C223
U 1 1 5CDB8EF7
P 3200 2050
F 0 "C223" H 3315 2096 50  0000 L CNN
F 1 "2.2 uF 5V" H 3315 2005 50  0000 L CNN
F 2 "" H 3238 1900 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2200 3200 2300
Wire Wire Line
	2600 1900 3200 1900
$Comp
L device:R R28
U 1 1 5CDB99DD
P 1150 3000
F 0 "R28" V 1150 3000 50  0000 C CNN
F 1 "309K 1%" V 1150 2650 50  0000 C CNN
F 2 "" V 1080 3000 50  0001 C CNN
F 3 "" H 1150 3000 50  0001 C CNN
	1    1150 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2600 1000 2600
Wire Wire Line
	1000 2600 1000 3000
Text Label 1000 2600 0    50   ~ 0
5V0_N_FB
$Comp
L device:R R29
U 1 1 5CDBBDD2
P 1150 3100
F 0 "R29" V 1150 3100 50  0000 C CNN
F 1 "100K 1%" V 1150 2750 50  0000 C CNN
F 2 "" V 1080 3100 50  0001 C CNN
F 3 "" H 1150 3100 50  0001 C CNN
	1    1150 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	1000 3000 1000 3100
Connection ~ 1000 3000
Text Label 1550 3000 0    50   ~ 0
5V0_N
Wire Wire Line
	1550 3000 1300 3000
Text Label 1550 3100 0    50   ~ 0
GND
Wire Wire Line
	1550 3100 1300 3100
Text Notes 2850 3750 0    50   ~ 0
5V0_N: estimated 3 mA from 5V in\nVout = -1.22 * (R28+R29)/R29\nR29 > 50 kR (use 100K\nUse 309K (ideal 309.836K) for -4.99V\n\nSMPS w/ 3 mA load, no thermal\nanalysis necessary
Text Notes 1150 10350 0    50   ~ 0
Connect two in parallel to spread out heat generation\n0.15V * 3A = 0.45W total, estimate 0.3W worst case per chip\nAssuming 1cm^2 plane for heatsinking, 30.8C rise.\nBigger planes will improve this\nTypical SERDES power is << 3A which will also help,\nespecially if we power down the unused channel
$Comp
L power-azonenberg:ADP1763 U28
U 1 1 5CDCA9C9
P 1850 8200
F 0 "U28" H 2225 9575 50  0000 C CNN
F 1 "ADP1763" H 2225 9484 50  0000 C CNN
F 2 "" H 1850 8150 50  0001 C CNN
F 3 "" H 1850 8150 50  0001 C CNN
	1    1850 8200
	1    0    0    -1  
$EndComp
Text Label 1650 7050 2    50   ~ 0
1V15_INT
Wire Wire Line
	1650 7050 1650 7150
Connection ~ 1650 7150
Wire Wire Line
	1650 7150 1650 7250
Connection ~ 1650 7250
Wire Wire Line
	1650 7250 1650 7350
Wire Wire Line
	2800 7050 2800 7150
Connection ~ 2800 7150
Wire Wire Line
	2800 7150 2800 7250
Connection ~ 2800 7250
Wire Wire Line
	2800 7250 2800 7350
Text Label 2800 7550 0    50   ~ 0
1V0_SENSE
$Comp
L device:R R31
U 1 1 5CDCBBB1
P 3450 7550
F 0 "R31" V 3350 7550 50  0000 C CNN
F 1 "0" V 3450 7550 50  0000 C CNN
F 2 "" V 3380 7550 50  0001 C CNN
F 3 "" H 3450 7550 50  0001 C CNN
	1    3450 7550
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 7550 3300 7550
Wire Wire Line
	3600 7050 3600 7550
NoConn ~ 2800 7650
$Comp
L device:R R30
U 1 1 5CDCE148
P 2800 8000
F 0 "R30" H 2870 8046 50  0000 L CNN
F 1 "1K" H 2870 7955 50  0000 L CNN
F 2 "" V 2730 8000 50  0001 C CNN
F 3 "" H 2800 8000 50  0001 C CNN
	1    2800 8000
	1    0    0    -1  
$EndComp
Text Label 3050 7850 0    50   ~ 0
1V0_PGOOD
Wire Wire Line
	3050 7850 2800 7850
Connection ~ 2800 7850
Text Label 3050 8150 0    50   ~ 0
D3V3
Wire Wire Line
	3050 8150 2800 8150
$Comp
L device:C C229
U 1 1 5CDD085B
P 1350 7400
F 0 "C229" H 1235 7354 50  0000 R CNN
F 1 "1 uF" H 1235 7445 50  0000 R CNN
F 2 "" H 1388 7250 50  0001 C CNN
F 3 "" H 1350 7400 50  0001 C CNN
	1    1350 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 7550 1650 7550
Text Label 1350 7250 0    50   ~ 0
GND
$Comp
L device:C C226
U 1 1 5CDD1ED2
P 950 7500
F 0 "C226" H 835 7454 50  0000 R CNN
F 1 "1 uF" H 835 7545 50  0000 R CNN
F 2 "" H 988 7350 50  0001 C CNN
F 3 "" H 950 7500 50  0001 C CNN
	1    950  7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 7250 950  7250
Wire Wire Line
	950  7250 950  7350
Wire Wire Line
	950  7650 1650 7650
$Comp
L device:C C227
U 1 1 5CDD319F
P 950 7900
F 0 "C227" H 835 7854 50  0000 R CNN
F 1 "22 nF" H 835 7945 50  0000 R CNN
F 2 "" H 988 7750 50  0001 C CNN
F 3 "" H 950 7900 50  0001 C CNN
	1    950  7900
	-1   0    0    1   
$EndComp
Text Label 950  8050 2    50   ~ 0
GND
Wire Wire Line
	950  8050 1650 8050
Wire Wire Line
	1650 8050 1650 8150
Connection ~ 1650 8050
Wire Wire Line
	950  7750 1650 7750
Text Label 1650 7850 2    50   ~ 0
5V0
$Comp
L device:C C228
U 1 1 5CDD50E0
P 1250 6900
F 0 "C228" H 1135 6854 50  0000 R CNN
F 1 "22 uF" H 1135 6945 50  0000 R CNN
F 2 "" H 1288 6750 50  0001 C CNN
F 3 "" H 1250 6900 50  0001 C CNN
	1    1250 6900
	-1   0    0    1   
$EndComp
$Comp
L device:C C225
U 1 1 5CDD5A5B
P 800 6900
F 0 "C225" H 685 6854 50  0000 R CNN
F 1 "4.7 uF" H 685 6945 50  0000 R CNN
F 2 "" H 838 6750 50  0001 C CNN
F 3 "" H 800 6900 50  0001 C CNN
	1    800  6900
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  7050 1250 7050
Connection ~ 1650 7050
Connection ~ 1250 7050
Wire Wire Line
	1250 7050 1650 7050
Wire Wire Line
	800  6750 1250 6750
Text Label 1250 6750 0    50   ~ 0
GND
$Comp
L device:C C233
U 1 1 5CDD8BB7
P 3600 6900
F 0 "C233" H 3485 6854 50  0000 R CNN
F 1 "22 uF" H 3485 6945 50  0000 R CNN
F 2 "" H 3638 6750 50  0001 C CNN
F 3 "" H 3600 6900 50  0001 C CNN
	1    3600 6900
	-1   0    0    1   
$EndComp
Text Label 3600 6750 0    50   ~ 0
GND
Text Label 1650 8650 2    50   ~ 0
1V15_INT
Text Label 2800 9150 0    50   ~ 0
1V0_SENSE
$Comp
L device:R R35
U 1 1 5CDD942C
P 3450 9150
F 0 "R35" V 3350 9150 50  0000 C CNN
F 1 "0" V 3450 9150 50  0000 C CNN
F 2 "" V 3380 9150 50  0001 C CNN
F 3 "" H 3450 9150 50  0001 C CNN
	1    3450 9150
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 9150 3300 9150
Wire Wire Line
	3600 8650 3600 9150
NoConn ~ 2800 9250
Text Label 3050 9450 0    50   ~ 0
1V0_PGOOD
Wire Wire Line
	3050 9450 2800 9450
Text Label 1650 9650 2    50   ~ 0
GND
Wire Wire Line
	1650 9650 1650 9750
Text Label 1650 9450 2    50   ~ 0
5V0
$Comp
L device:C C232
U 1 1 5CDD9473
P 1250 8500
F 0 "C232" H 1135 8454 50  0000 R CNN
F 1 "22 uF" H 1135 8545 50  0000 R CNN
F 2 "" H 1288 8350 50  0001 C CNN
F 3 "" H 1250 8500 50  0001 C CNN
	1    1250 8500
	-1   0    0    1   
$EndComp
$Comp
L device:C C230
U 1 1 5CDD947D
P 800 8500
F 0 "C230" H 685 8454 50  0000 R CNN
F 1 "4.7 uF" H 685 8545 50  0000 R CNN
F 2 "" H 838 8350 50  0001 C CNN
F 3 "" H 800 8500 50  0001 C CNN
	1    800  8500
	-1   0    0    1   
$EndComp
Wire Wire Line
	800  8650 1250 8650
Connection ~ 1250 8650
Wire Wire Line
	1250 8650 1650 8650
Wire Wire Line
	800  8350 1250 8350
Text Label 1250 8350 0    50   ~ 0
GND
$Comp
L device:C C234
U 1 1 5CDD948D
P 3600 8500
F 0 "C234" H 3485 8454 50  0000 R CNN
F 1 "22 uF" H 3485 8545 50  0000 R CNN
F 2 "" H 3638 8350 50  0001 C CNN
F 3 "" H 3600 8500 50  0001 C CNN
	1    3600 8500
	-1   0    0    1   
$EndComp
Text Label 3600 8350 0    50   ~ 0
GND
Text Label 3600 8650 0    50   ~ 0
1V0
$Comp
L device:R R33
U 1 1 5CDE268D
P 3150 7050
F 0 "R33" V 2943 7050 50  0000 C CNN
F 1 "5 mR" V 3034 7050 50  0000 C CNN
F 2 "" V 3080 7050 50  0001 C CNN
F 3 "" H 3150 7050 50  0001 C CNN
	1    3150 7050
	0    1    1    0   
$EndComp
Wire Wire Line
	2800 7050 3000 7050
Connection ~ 2800 7050
Wire Wire Line
	3300 7050 3600 7050
Connection ~ 3600 7050
$Comp
L device:R R34
U 1 1 5CDE4D14
P 3150 8650
F 0 "R34" V 2943 8650 50  0000 C CNN
F 1 "5 mR" V 3034 8650 50  0000 C CNN
F 2 "" V 3080 8650 50  0001 C CNN
F 3 "" H 3150 8650 50  0001 C CNN
	1    3150 8650
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 8650 2800 8650
Wire Wire Line
	3300 8650 3600 8650
Connection ~ 3600 8650
Text Label 1650 7750 2    50   ~ 0
1V0_SS
Text Label 1650 9350 2    50   ~ 0
1V0_SS
Wire Wire Line
	950  9250 1650 9250
$Comp
L device:C C231
U 1 1 5CDD9456
P 950 9400
F 0 "C231" H 835 9354 50  0000 R CNN
F 1 "1 uF" H 835 9445 50  0000 R CNN
F 2 "" H 988 9250 50  0001 C CNN
F 3 "" H 950 9400 50  0001 C CNN
	1    950  9400
	-1   0    0    1   
$EndComp
Text Label 950  9550 2    50   ~ 0
GND
Text Label 1650 7550 2    50   ~ 0
1V0_REF
Text Label 1650 9150 2    50   ~ 0
1V0_REF
Connection ~ 2800 8650
Wire Wire Line
	1650 8850 1650 8950
Connection ~ 1650 8850
Wire Wire Line
	1650 8750 1650 8850
Wire Wire Line
	1650 8650 1650 8750
Connection ~ 1650 8750
Wire Wire Line
	2800 8850 2800 8950
Connection ~ 2800 8850
Wire Wire Line
	2800 8750 2800 8850
Wire Wire Line
	2800 8650 2800 8750
Connection ~ 2800 8750
Connection ~ 1650 8650
$Comp
L power-azonenberg:ADP1763 U29
U 1 1 5CDD9416
P 1850 9800
F 0 "U29" H 2225 11175 50  0000 C CNN
F 1 "ADP1763" H 2225 11084 50  0000 C CNN
F 2 "" H 1850 9750 50  0001 C CNN
F 3 "" H 1850 9750 50  0001 C CNN
	1    1850 9800
	1    0    0    -1  
$EndComp
Wire Notes Line width 20 style solid
	500  1700 4400 1700
Wire Notes Line width 20 style solid
	600  3850 4400 3850
Text Notes 550  3800 0    100  ~ 0
-5V analog supply
Text Notes 500  1650 0    100  ~ 0
+5V analog supply
$Comp
L power-azonenberg:TPS62130RGTR U30
U 1 1 5D04E76D
P 1700 5650
F 0 "U30" H 2050 7125 50  0000 C CNN
F 1 "TPS62130RGTR" H 2050 7034 50  0000 C CNN
F 2 "" H 1700 5650 50  0001 C CNN
F 3 "" H 1700 5650 50  0001 C CNN
	1    1700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4800 1100 4800
Wire Wire Line
	1500 4800 1500 4900
Connection ~ 1500 4900
Wire Wire Line
	1500 4900 1500 5000
Connection ~ 1500 5000
Wire Wire Line
	1500 5000 1500 5100
Text Label 1050 4800 2    50   ~ 0
GND
Text Label 1050 4500 2    50   ~ 0
12V0
Wire Wire Line
	1500 4400 1500 4500
Connection ~ 1500 4500
Wire Wire Line
	1500 4500 1500 4600
$Comp
L device:C C237
U 1 1 5D053B36
P 1100 4650
F 0 "C237" H 1215 4696 50  0000 L CNN
F 1 "22 uF 16V" H 1215 4605 50  0000 L CNN
F 2 "" H 1138 4500 50  0001 C CNN
F 3 "" H 1100 4650 50  0001 C CNN
	1    1100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 4500 1100 4500
Text Label 1350 5300 2    50   ~ 0
GND
Wire Wire Line
	1350 5300 1500 5300
Text Label 1350 5400 2    50   ~ 0
GND
Wire Wire Line
	1350 5400 1500 5400
$Comp
L device:C C235
U 1 1 5D05C4FC
P 850 5650
F 0 "C235" H 965 5696 50  0000 L CNN
F 1 "3.3 nF" H 965 5605 50  0000 L CNN
F 2 "" H 888 5500 50  0001 C CNN
F 3 "" H 850 5650 50  0001 C CNN
	1    850  5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5500 850  5500
Text Label 1350 5600 2    50   ~ 0
12V0
Wire Wire Line
	1350 5600 1500 5600
Wire Wire Line
	2600 4400 2600 4500
Connection ~ 2600 4500
Wire Wire Line
	2600 4500 2600 4600
Text Notes 650  6250 0    100  ~ 0
1.15V intermediate rail
$Comp
L device:R R37
U 1 1 5D0675BD
P 2600 5150
F 0 "R37" H 2670 5196 50  0000 L CNN
F 1 "10K" H 2670 5105 50  0000 L CNN
F 2 "" V 2530 5150 50  0001 C CNN
F 3 "" H 2600 5150 50  0001 C CNN
	1    2600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5300 2600 5300
Text HLabel 2800 5300 2    50   Input ~ 0
D3V3
$Comp
L passive-azonenberg:INDUCTOR_PWROUT L1
U 1 1 5D069727
P 2900 4400
F 0 "L1" V 2742 4400 40  0000 C CNN
F 1 "SRP4020TA-2R2M" V 2818 4400 40  0000 C CNN
F 2 "" H 2900 4400 60  0000 C CNN
F 3 "" H 2900 4400 60  0000 C CNN
	1    2900 4400
	0    1    1    0   
$EndComp
Connection ~ 2600 4400
$Comp
L device:R R38
U 1 1 5D06AA73
P 3300 4800
F 0 "R38" V 3200 4950 50  0000 L CNN
F 1 "43.2K" V 3200 4700 50  0000 L CNN
F 2 "" V 3230 4800 50  0001 C CNN
F 3 "" H 3300 4800 50  0001 C CNN
	1    3300 4800
	0    1    1    0   
$EndComp
$Comp
L device:R R39
U 1 1 5D06ADD4
P 2800 4650
F 0 "R39" V 2700 4650 50  0000 C CNN
F 1 "100K" V 2800 4650 50  0000 C CNN
F 2 "" V 2730 4650 50  0001 C CNN
F 3 "" H 2800 4650 50  0001 C CNN
	1    2800 4650
	0    1    1    0   
$EndComp
Text Label 700  5800 2    50   ~ 0
GND
Wire Wire Line
	700  5800 850  5800
$Comp
L device:C C236
U 1 1 5D06F560
P 1100 4250
F 0 "C236" H 1215 4296 50  0000 L CNN
F 1 "0.1 uF 16V" H 1215 4205 50  0000 L CNN
F 2 "" H 1138 4100 50  0001 C CNN
F 3 "" H 1100 4250 50  0001 C CNN
	1    1100 4250
	1    0    0    -1  
$EndComp
$Comp
L device:C C238
U 1 1 5D088F28
P 3450 4250
F 0 "C238" H 3565 4296 50  0000 L CNN
F 1 "22 uF" H 3565 4205 50  0000 L CNN
F 2 "" H 3488 4100 50  0001 C CNN
F 3 "" H 3450 4250 50  0001 C CNN
	1    3450 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4400 3450 4400
Text Label 3450 4100 2    50   ~ 0
GND
Text Label 3800 4400 0    50   ~ 0
1V15_INT
Wire Wire Line
	3800 4400 3450 4400
Connection ~ 3450 4400
Text Notes 2500 5950 0    50   ~ 0
2.5 MHz switching freq\nNormal voltage range\n\nR1 = R2*(Vout/0.8V - 1)\nR2 <= 400K\nR1 = 43.2K, R2 = 100K gives 1.145V
Wire Wire Line
	1500 4400 1100 4400
Connection ~ 1500 4400
Wire Wire Line
	1100 4800 1500 4800
Connection ~ 1100 4800
Connection ~ 1500 4800
Wire Wire Line
	1100 4500 1500 4500
Connection ~ 1100 4500
Text Label 1050 4100 2    50   ~ 0
GND
Wire Wire Line
	1050 4100 1100 4100
Wire Wire Line
	2600 4900 3450 4900
Wire Wire Line
	3450 4400 3450 4800
Connection ~ 3450 4800
Wire Wire Line
	3450 4800 3450 4900
Wire Wire Line
	3150 4800 2650 4800
Wire Wire Line
	2650 4650 2650 4800
Connection ~ 2650 4800
Wire Wire Line
	2650 4800 2600 4800
Text Label 2950 4650 0    50   ~ 0
GND
Text Label 2750 4800 0    50   ~ 0
1V15_FB
Wire Notes Line width 20 style solid
	500  6400 4400 6400
Text Notes 650  11050 0    100  ~ 0
1.0V CDR SERDES supply
Wire Notes Line width 20 style solid
	4400 500  4400 11200
$EndSCHEMATC
