EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 12
Title "FREESAMPLE Oscilloscope"
Date "2019-02-26"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 "DAC for setting sampling point Y position"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L analog-azonenberg:LTC2664 U4
U 1 1 5C15756D
P 4150 4450
F 0 "U4" H 4650 7025 50  0000 C CNN
F 1 "LTC2664" H 4650 6934 50  0000 C CNN
F 2 "" H 4150 4450 50  0001 C CNN
F 3 "" H 4150 4450 50  0001 C CNN
	1    4150 4450
	1    0    0    -1  
$EndComp
Text HLabel 5250 3600 2    50   Output ~ 0
LTRIG_VT
Text HLabel 5250 3700 2    50   Output ~ 0
REFCLK_SINGLE_VT
Text HLabel 5250 3800 2    50   Output ~ 0
ADC_VT
Text HLabel 4050 2200 0    50   Input ~ 0
A5V0
Text HLabel 4050 2400 0    50   Input ~ 0
5V0_N
Text HLabel 4050 2600 0    50   Input ~ 0
GND
Text HLabel 5250 3100 2    50   Output ~ 0
DAC_MUXOUT
Text HLabel 4050 3600 0    50   Input ~ 0
LDAC_N
Text HLabel 4050 3700 0    50   Input ~ 0
CS_N
Text HLabel 4050 3800 0    50   Input ~ 0
SCK
Text HLabel 4050 4000 0    50   Input ~ 0
MOSI
Text HLabel 4050 3900 0    50   Output ~ 0
MISO
Text HLabel 4050 4300 0    50   Input ~ 0
RST_N
Text HLabel 4050 2100 0    50   Input ~ 0
1V8
Wire Wire Line
	4050 2200 4050 2300
Wire Wire Line
	4050 2400 4050 2500
Wire Wire Line
	4050 2600 4050 2700
Connection ~ 4050 2700
Wire Wire Line
	4050 2700 4050 2800
Connection ~ 4050 2800
Wire Wire Line
	4050 2800 4050 2900
Text Label 4050 3100 2    50   ~ 0
GND
Wire Wire Line
	4050 3100 4050 3200
Connection ~ 4050 3200
Wire Wire Line
	4050 3200 4050 3300
Connection ~ 4050 3300
Wire Wire Line
	4050 3300 4050 3400
$Comp
L device:C C214
U 1 1 5CD2E85E
P 2050 2500
F 0 "C214" H 2165 2546 50  0000 L CNN
F 1 "1 uF" H 2165 2455 50  0000 L CNN
F 2 "" H 2088 2350 50  0001 C CNN
F 3 "" H 2050 2500 50  0001 C CNN
	1    2050 2500
	1    0    0    -1  
$EndComp
Text Label 1950 2350 2    50   ~ 0
A5V0
Text Label 1950 2650 2    50   ~ 0
GND
Wire Wire Line
	1950 2350 2050 2350
Wire Wire Line
	1950 2650 2050 2650
$Comp
L device:C C216
U 1 1 5CD2EFF8
P 2950 2500
F 0 "C216" H 3065 2546 50  0000 L CNN
F 1 "0.1 uF" H 3065 2455 50  0000 L CNN
F 2 "" H 2988 2350 50  0001 C CNN
F 3 "" H 2950 2500 50  0001 C CNN
	1    2950 2500
	1    0    0    -1  
$EndComp
Text Label 2950 2350 2    50   ~ 0
1V8
Wire Wire Line
	2050 2650 2500 2650
Connection ~ 2050 2650
$Comp
L device:C C217
U 1 1 5CD321D9
P 5400 1950
F 0 "C217" H 5515 1996 50  0000 L CNN
F 1 "0.01 uF" H 5515 1905 50  0000 L CNN
F 2 "" H 5438 1800 50  0001 C CNN
F 3 "" H 5400 1950 50  0001 C CNN
	1    5400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2100 5250 2100
Text Label 5250 1800 2    50   ~ 0
GND
Wire Wire Line
	5250 1800 5400 1800
$Comp
L device:C C218
U 1 1 5CD32B01
P 5850 2050
F 0 "C218" H 5965 2096 50  0000 L CNN
F 1 "0.1 uF" H 5965 2005 50  0000 L CNN
F 2 "" H 5888 1900 50  0001 C CNN
F 3 "" H 5850 2050 50  0001 C CNN
	1    5850 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2200 5850 2200
Text Label 5850 1900 0    50   ~ 0
GND
$Comp
L device:C C215
U 1 1 5CD336A9
P 2500 2500
F 0 "C215" H 2615 2546 50  0000 L CNN
F 1 "1 uF" H 2615 2455 50  0000 L CNN
F 2 "" H 2538 2350 50  0001 C CNN
F 3 "" H 2500 2500 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2350 2500 2350
Connection ~ 2050 2350
Wire Wire Line
	2500 2650 2950 2650
Connection ~ 2500 2650
$Comp
L device:R R27
U 1 1 5CD357FE
P 5500 2400
F 0 "R27" V 5400 2400 50  0000 C CNN
F 1 "10K" V 5500 2400 50  0000 C CNN
F 2 "" V 5430 2400 50  0001 C CNN
F 3 "" H 5500 2400 50  0001 C CNN
	1    5500 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 2400 5250 2400
Text Label 5650 2400 0    50   ~ 0
1V8
Text Label 5750 2700 0    50   ~ 0
GND
$Comp
L device:R R24
U 1 1 5CD379F3
P 5400 2700
F 0 "R24" V 5350 2850 50  0000 C CNN
F 1 "10K" V 5400 2700 50  0000 C CNN
F 2 "" V 5330 2700 50  0001 C CNN
F 3 "" H 5400 2700 50  0001 C CNN
	1    5400 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2700 5750 2700
Text Label 5750 2900 0    50   ~ 0
GND
$Comp
L device:R R26
U 1 1 5CD38388
P 5400 2900
F 0 "R26" V 5350 3050 50  0000 C CNN
F 1 "10K" V 5400 2900 50  0000 C CNN
F 2 "" V 5330 2900 50  0001 C CNN
F 3 "" H 5400 2900 50  0001 C CNN
	1    5400 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2900 5750 2900
Text Label 5750 2800 0    50   ~ 0
5V0
$Comp
L device:R R25
U 1 1 5CD38A49
P 5400 2800
F 0 "R25" V 5350 2950 50  0000 C CNN
F 1 "10K" V 5400 2800 50  0000 C CNN
F 2 "" V 5330 2800 50  0001 C CNN
F 3 "" H 5400 2800 50  0001 C CNN
	1    5400 2800
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 2800 5750 2800
Text Notes 6000 2700 0    50   ~ 0
+/- 2.5V, start up at zero
$EndSCHEMATC
