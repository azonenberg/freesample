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
Comment1 "Level triggering"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 3750 3000 0    50   Input ~ 0
LTRIG_DIN
Text HLabel 8850 2350 2    50   Output ~ 0
LTRIG_CDROUT_P
Text HLabel 8850 2450 2    50   Output ~ 0
LTRIG_CDROUT_N
Text HLabel 3750 1800 0    50   Input ~ 0
3V3
Text HLabel 3750 2200 0    50   Input ~ 0
3V0_N
Text HLabel 3750 2400 0    50   Input ~ 0
GND
Text HLabel 3750 2000 0    50   Input ~ 0
1V8
Text HLabel 3750 3100 0    50   Input ~ 0
LTRIG_VT
Text HLabel 8850 2050 2    50   Output ~ 0
LTRIG_SAMPOUT_P
Text HLabel 8850 2150 2    50   Output ~ 0
LTRIG_SAMPOUT_N
$Comp
L analog-azonenberg:HMC675LP3E U?
U 1 1 5C3D1034
P 4000 3250
F 0 "U?" H 4425 4965 50  0000 C CNN
F 1 "HMC675LP3E" H 4425 4874 50  0000 C CNN
F 2 "" H 4000 3250 50  0001 C CNN
F 3 "" H 4000 3250 50  0001 C CNN
	1    4000 3250
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C5773C7
P 2050 1000
AR Path="/5C0E404A/5C5773C7" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C5773C7" Ref="C?"  Part="1" 
F 0 "C?" H 2165 1046 50  0000 L CNN
F 1 "330 pF" H 2165 955 50  0000 L CNN
F 2 "" H 2088 850 50  0001 C CNN
F 3 "" H 2050 1000 50  0001 C CNN
	1    2050 1000
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C5773CD
P 1550 1000
AR Path="/5C0E404A/5C5773CD" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C5773CD" Ref="C?"  Part="1" 
F 0 "C?" H 1665 1046 50  0000 L CNN
F 1 "100 pF" H 1665 955 50  0000 L CNN
F 2 "" H 1588 850 50  0001 C CNN
F 3 "" H 1550 1000 50  0001 C CNN
	1    1550 1000
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C5773D3
P 1050 1000
AR Path="/5C0E404A/5C5773D3" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C5773D3" Ref="C?"  Part="1" 
F 0 "C?" H 1165 1046 50  0000 L CNN
F 1 "100 pF" H 1165 955 50  0000 L CNN
F 2 "" H 1088 850 50  0001 C CNN
F 3 "" H 1050 1000 50  0001 C CNN
	1    1050 1000
	1    0    0    -1  
$EndComp
Text Label 1050 1150 2    50   ~ 0
GND
Text Label 1050 850  2    50   ~ 0
3V3
$Comp
L device:C C?
U 1 1 5C5773DB
P 2600 1000
AR Path="/5C0E404A/5C5773DB" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C5773DB" Ref="C?"  Part="1" 
F 0 "C?" H 2715 1046 50  0000 L CNN
F 1 "4.7 uF" H 2715 955 50  0000 L CNN
F 2 "" H 2638 850 50  0001 C CNN
F 3 "" H 2600 1000 50  0001 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 850  2050 850 
Connection ~ 1550 850 
Wire Wire Line
	1550 850  1050 850 
Connection ~ 2050 850 
Wire Wire Line
	2050 850  1550 850 
Wire Wire Line
	1050 1150 1550 1150
Connection ~ 1550 1150
Wire Wire Line
	1550 1150 2050 1150
Connection ~ 2050 1150
Wire Wire Line
	2050 1150 2600 1150
$Comp
L device:C C?
U 1 1 5C5773EB
P 3100 1000
AR Path="/5C0E404A/5C5773EB" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C5773EB" Ref="C?"  Part="1" 
F 0 "C?" H 3215 1046 50  0000 L CNN
F 1 "100 pF" H 3215 955 50  0000 L CNN
F 2 "" H 3138 850 50  0001 C CNN
F 3 "" H 3100 1000 50  0001 C CNN
	1    3100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 850  2600 850 
Connection ~ 2600 850 
Wire Wire Line
	3100 1150 2600 1150
Connection ~ 2600 1150
$Comp
L device:C C?
U 1 1 5C5773F5
P 2050 1500
AR Path="/5C0E404A/5C5773F5" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C5773F5" Ref="C?"  Part="1" 
F 0 "C?" H 2165 1546 50  0000 L CNN
F 1 "330 pF" H 2165 1455 50  0000 L CNN
F 2 "" H 2088 1350 50  0001 C CNN
F 3 "" H 2050 1500 50  0001 C CNN
	1    2050 1500
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C5773FB
P 1550 1500
AR Path="/5C0E404A/5C5773FB" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C5773FB" Ref="C?"  Part="1" 
F 0 "C?" H 1665 1546 50  0000 L CNN
F 1 "100 pF" H 1665 1455 50  0000 L CNN
F 2 "" H 1588 1350 50  0001 C CNN
F 3 "" H 1550 1500 50  0001 C CNN
	1    1550 1500
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C577401
P 1050 1500
AR Path="/5C0E404A/5C577401" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C577401" Ref="C?"  Part="1" 
F 0 "C?" H 1165 1546 50  0000 L CNN
F 1 "100 pF" H 1165 1455 50  0000 L CNN
F 2 "" H 1088 1350 50  0001 C CNN
F 3 "" H 1050 1500 50  0001 C CNN
	1    1050 1500
	1    0    0    -1  
$EndComp
Text Label 1050 1650 2    50   ~ 0
GND
Text Label 1050 1350 2    50   ~ 0
1V8
$Comp
L device:C C?
U 1 1 5C577409
P 2600 1500
AR Path="/5C0E404A/5C577409" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C577409" Ref="C?"  Part="1" 
F 0 "C?" H 2715 1546 50  0000 L CNN
F 1 "4.7 uF" H 2715 1455 50  0000 L CNN
F 2 "" H 2638 1350 50  0001 C CNN
F 3 "" H 2600 1500 50  0001 C CNN
	1    2600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1350 2050 1350
Connection ~ 1550 1350
Wire Wire Line
	1550 1350 1050 1350
Connection ~ 2050 1350
Wire Wire Line
	2050 1350 1550 1350
Wire Wire Line
	1050 1650 1550 1650
Connection ~ 1550 1650
Wire Wire Line
	1550 1650 2050 1650
Connection ~ 2050 1650
Wire Wire Line
	2050 1650 2600 1650
Text Label 1050 1850 2    50   ~ 0
3V0_N
$Comp
L device:C C?
U 1 1 5C57741A
P 1050 2000
AR Path="/5C0E404A/5C57741A" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C57741A" Ref="C?"  Part="1" 
F 0 "C?" H 1165 2046 50  0000 L CNN
F 1 "100 pF" H 1165 1955 50  0000 L CNN
F 2 "" H 1088 1850 50  0001 C CNN
F 3 "" H 1050 2000 50  0001 C CNN
	1    1050 2000
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C577420
P 1550 2000
AR Path="/5C0E404A/5C577420" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C577420" Ref="C?"  Part="1" 
F 0 "C?" H 1665 2046 50  0000 L CNN
F 1 "330 pF" H 1665 1955 50  0000 L CNN
F 2 "" H 1588 1850 50  0001 C CNN
F 3 "" H 1550 2000 50  0001 C CNN
	1    1550 2000
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C577426
P 2050 2000
AR Path="/5C0E404A/5C577426" Ref="C?"  Part="1" 
AR Path="/5C23AE1C/5C577426" Ref="C?"  Part="1" 
F 0 "C?" H 2165 2046 50  0000 L CNN
F 1 "4.7 uF" H 2165 1955 50  0000 L CNN
F 2 "" H 2088 1850 50  0001 C CNN
F 3 "" H 2050 2000 50  0001 C CNN
	1    2050 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1850 1550 1850
Connection ~ 1550 1850
Wire Wire Line
	1550 1850 1050 1850
Wire Wire Line
	2050 2150 1550 2150
Connection ~ 1550 2150
Wire Wire Line
	1550 2150 1050 2150
Text Label 1050 2150 2    50   ~ 0
GND
Wire Wire Line
	3750 2400 3900 2400
Wire Wire Line
	3750 1800 3800 1800
Wire Wire Line
	3800 1800 3800 1900
Wire Wire Line
	3800 1900 3900 1900
Connection ~ 3800 1800
Wire Wire Line
	3800 1800 3900 1800
Wire Wire Line
	3750 2200 3800 2200
Wire Wire Line
	3800 2200 3800 2300
Wire Wire Line
	3800 2300 3900 2300
Connection ~ 3800 2200
Wire Wire Line
	3800 2200 3900 2200
Wire Wire Line
	3750 2000 3800 2000
Wire Wire Line
	3800 2000 3800 2100
Wire Wire Line
	3800 2100 3900 2100
Connection ~ 3800 2000
Wire Wire Line
	3800 2000 3900 2000
NoConn ~ 4950 1800
Text Label 5050 2000 0    50   ~ 0
GND
Wire Wire Line
	5050 2000 4950 2000
$Comp
L special-azonenberg:PI6C59S6005 U?
U 1 1 5C5902BE
P 7650 3450
AR Path="/5C0E404A/5C5902BE" Ref="U?"  Part="1" 
AR Path="/5C23AE1C/5C5902BE" Ref="U?"  Part="1" 
F 0 "U?" H 8100 5675 50  0000 C CNN
F 1 "PI6C59S6005" H 8100 5584 50  0000 C CNN
F 2 "" H 7650 3150 50  0001 C CNN
F 3 "" H 7650 3150 50  0001 C CNN
	1    7650 3450
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C5902C4
P 8100 800
F 0 "C?" H 8215 846 50  0000 L CNN
F 1 "4.7 uF" H 8215 755 50  0000 L CNN
F 2 "" H 8138 650 50  0001 C CNN
F 3 "" H 8100 800 50  0001 C CNN
	1    8100 800 
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C5902CA
P 8600 800
F 0 "C?" H 8715 846 50  0000 L CNN
F 1 "0.47 uF" H 8715 755 50  0000 L CNN
F 2 "" H 8638 650 50  0001 C CNN
F 3 "" H 8600 800 50  0001 C CNN
	1    8600 800 
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5C5902D0
P 9650 800
F 0 "C?" H 9765 846 50  0000 L CNN
F 1 "0.47 uF" H 9765 755 50  0000 L CNN
F 2 "" H 9688 650 50  0001 C CNN
F 3 "" H 9650 800 50  0001 C CNN
	1    9650 800 
	1    0    0    -1  
$EndComp
Connection ~ 8600 650 
Wire Wire Line
	8600 650  8100 650 
Connection ~ 8600 950 
Wire Wire Line
	8600 950  8100 950 
Text Label 7900 650  2    50   ~ 0
3V3
Wire Wire Line
	7900 650  8100 650 
Connection ~ 8100 650 
Text Label 7900 950  2    50   ~ 0
GND
Wire Wire Line
	7900 950  8100 950 
Connection ~ 8100 950 
Wire Wire Line
	8600 650  9150 650 
Wire Wire Line
	8600 950  9150 950 
$Comp
L device:C C?
U 1 1 5C5902E2
P 9150 800
F 0 "C?" H 9265 846 50  0000 L CNN
F 1 "0.47 uF" H 9265 755 50  0000 L CNN
F 2 "" H 9188 650 50  0001 C CNN
F 3 "" H 9150 800 50  0001 C CNN
	1    9150 800 
	1    0    0    -1  
$EndComp
Connection ~ 9150 650 
Wire Wire Line
	9150 650  9650 650 
Connection ~ 9150 950 
Wire Wire Line
	9150 950  9650 950 
$Comp
L device:C C?
U 1 1 5C5902EC
P 10250 800
F 0 "C?" H 10365 846 50  0000 L CNN
F 1 "0.47 uF" H 10365 755 50  0000 L CNN
F 2 "" H 10288 650 50  0001 C CNN
F 3 "" H 10250 800 50  0001 C CNN
	1    10250 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 650  9650 650 
Connection ~ 9650 650 
Wire Wire Line
	10250 950  9650 950 
Connection ~ 9650 950 
Wire Wire Line
	3750 3100 3900 3100
Wire Wire Line
	3900 3000 3750 3000
Text Label 3750 2900 2    50   ~ 0
GND
Wire Wire Line
	3750 2900 3900 2900
NoConn ~ 3900 3200
NoConn ~ 3900 2600
NoConn ~ 3900 2700
$Comp
L device:C C?
U 1 1 5C59BBB6
P 5400 2850
F 0 "C?" V 5250 3000 50  0000 C CNN
F 1 "0.1 uF" V 5350 3050 50  0000 C CNN
F 2 "" H 5438 2700 50  0001 C CNN
F 3 "" H 5400 2850 50  0001 C CNN
	1    5400 2850
	0    1    1    0   
$EndComp
$Comp
L device:C C?
U 1 1 5C59C861
P 5400 3150
F 0 "C?" V 5250 3300 50  0000 C CNN
F 1 "0.1 uF" V 5350 3350 50  0000 C CNN
F 2 "" H 5438 3000 50  0001 C CNN
F 3 "" H 5400 3150 50  0001 C CNN
	1    5400 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 2950 4950 2850
Wire Wire Line
	4950 2850 5250 2850
Wire Wire Line
	4950 3050 4950 3150
Wire Wire Line
	4950 3150 5250 3150
Wire Wire Line
	5550 3150 6150 3150
Wire Wire Line
	6150 3150 6150 3050
Wire Wire Line
	6150 3050 7550 3050
Wire Wire Line
	5550 2850 6150 2850
Wire Wire Line
	6150 2850 6150 2950
Wire Wire Line
	6150 2950 7550 2950
Text Label 7400 1450 2    50   ~ 0
3V3
Wire Wire Line
	7400 1450 7450 1450
Wire Wire Line
	7450 1450 7450 1550
Wire Wire Line
	7450 1550 7550 1550
Connection ~ 7450 1450
Wire Wire Line
	7450 1450 7550 1450
Wire Wire Line
	7450 1550 7450 1650
Wire Wire Line
	7450 1650 7550 1650
Connection ~ 7450 1550
Wire Wire Line
	7450 1650 7450 1750
Wire Wire Line
	7450 1750 7550 1750
Connection ~ 7450 1650
Text Label 7400 1950 2    50   ~ 0
GND
Wire Wire Line
	7400 1950 7550 1950
Wire Wire Line
	8850 2050 8650 2050
Wire Wire Line
	8650 2150 8850 2150
NoConn ~ 8650 2650
NoConn ~ 8650 2750
NoConn ~ 8650 2950
NoConn ~ 8650 3050
NoConn ~ 8650 3250
NoConn ~ 8650 3350
Wire Wire Line
	8850 2350 8650 2350
Wire Wire Line
	8650 2450 8850 2450
$EndSCHEMATC
