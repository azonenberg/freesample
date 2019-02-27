EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 6 12
Title "FREESAMPLE Oscilloscope"
Date "2019-02-26"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 "Digital one-shot and reset sync for ADC trigger"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 12400 7850 2    50   Output ~ 0
ADC_LE_P
Text HLabel 12400 7750 2    50   Output ~ 0
ADC_LE_N
Text HLabel 6850 7700 0    50   Input ~ 0
ONESHOT_RST_P
Text HLabel 6850 7800 0    50   Input ~ 0
ONESHOT_RST_N
Text HLabel 2400 8050 0    50   Input ~ 0
ONESHOT_FINEPHASE_P
Text HLabel 2400 8150 0    50   Input ~ 0
ONESHOT_FINEPHASE_N
Text HLabel 2200 2150 0    50   Input ~ 0
2V5
Text HLabel 3200 6750 0    50   Input ~ 0
GND
Text HLabel 13450 3550 2    50   Output ~ 0
ONESHOT_TRIGGERED_P
Text HLabel 13450 3650 2    50   Output ~ 0
ONESHOT_TRIGGERED_N
$Comp
L special-azonenberg:PI6C59S6005 U7
U 1 1 5C3E7E97
P 3450 8250
F 0 "U7" H 3900 10475 50  0000 C CNN
F 1 "PI6C59S6005" H 3900 10384 50  0000 C CNN
F 2 "" H 3450 7950 50  0001 C CNN
F 3 "" H 3450 7950 50  0001 C CNN
	1    3450 8250
	1    0    0    -1  
$EndComp
Text HLabel 2400 7750 0    50   Input ~ 0
ONESHOT_COARSEPHASE_P
Text HLabel 2400 7850 0    50   Input ~ 0
ONESHOT_COARSEPHASE_N
Text HLabel 3200 7150 0    50   Input ~ 0
RANGE_SEL
Text HLabel 3200 6250 0    50   Input ~ 0
3V3
Wire Wire Line
	3200 6250 3350 6250
Wire Wire Line
	3350 6250 3350 6350
Connection ~ 3350 6250
Connection ~ 3350 6350
Wire Wire Line
	3350 6350 3350 6450
Connection ~ 3350 6450
Wire Wire Line
	3350 6450 3350 6550
Wire Wire Line
	3200 6750 3350 6750
$Comp
L device:C C?
U 1 1 5CAC8F5C
P 2400 5700
AR Path="/5C0E404A/5CAC8F5C" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAC8F5C" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAC8F5C" Ref="C176"  Part="1" 
F 0 "C176" H 2515 5746 50  0000 L CNN
F 1 "4.7 uF" H 2515 5655 50  0000 L CNN
F 2 "" H 2438 5550 50  0001 C CNN
F 3 "" H 2400 5700 50  0001 C CNN
	1    2400 5700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CAC8F62
P 2900 5700
AR Path="/5C0E404A/5CAC8F62" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAC8F62" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAC8F62" Ref="C182"  Part="1" 
F 0 "C182" H 3015 5746 50  0000 L CNN
F 1 "0.47 uF" H 3015 5655 50  0000 L CNN
F 2 "" H 2938 5550 50  0001 C CNN
F 3 "" H 2900 5700 50  0001 C CNN
	1    2900 5700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CAC8F68
P 3950 5700
AR Path="/5C0E404A/5CAC8F68" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAC8F68" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAC8F68" Ref="C184"  Part="1" 
F 0 "C184" H 4065 5746 50  0000 L CNN
F 1 "0.47 uF" H 4065 5655 50  0000 L CNN
F 2 "" H 3988 5550 50  0001 C CNN
F 3 "" H 3950 5700 50  0001 C CNN
	1    3950 5700
	1    0    0    -1  
$EndComp
Connection ~ 2900 5550
Wire Wire Line
	2900 5550 2400 5550
Connection ~ 2900 5850
Wire Wire Line
	2900 5850 2400 5850
Text Label 2200 5550 2    50   ~ 0
3V3
Wire Wire Line
	2200 5550 2400 5550
Connection ~ 2400 5550
Text Label 2200 5850 2    50   ~ 0
GND
Wire Wire Line
	2200 5850 2400 5850
Connection ~ 2400 5850
Wire Wire Line
	2900 5550 3450 5550
Wire Wire Line
	2900 5850 3450 5850
$Comp
L device:C C?
U 1 1 5CAC8F7A
P 3450 5700
AR Path="/5C0E404A/5CAC8F7A" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAC8F7A" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAC8F7A" Ref="C183"  Part="1" 
F 0 "C183" H 3565 5746 50  0000 L CNN
F 1 "0.47 uF" H 3565 5655 50  0000 L CNN
F 2 "" H 3488 5550 50  0001 C CNN
F 3 "" H 3450 5700 50  0001 C CNN
	1    3450 5700
	1    0    0    -1  
$EndComp
Connection ~ 3450 5550
Wire Wire Line
	3450 5550 3950 5550
Connection ~ 3450 5850
Wire Wire Line
	3450 5850 3950 5850
$Comp
L device:C C?
U 1 1 5CAC8F84
P 4550 5700
AR Path="/5C0E404A/5CAC8F84" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAC8F84" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAC8F84" Ref="C185"  Part="1" 
F 0 "C185" H 4665 5746 50  0000 L CNN
F 1 "0.47 uF" H 4665 5655 50  0000 L CNN
F 2 "" H 4588 5550 50  0001 C CNN
F 3 "" H 4550 5700 50  0001 C CNN
	1    4550 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 5550 3950 5550
Connection ~ 3950 5550
Wire Wire Line
	4550 5850 3950 5850
Connection ~ 3950 5850
Wire Wire Line
	3350 7450 3250 7450
Wire Wire Line
	3250 7450 3250 7550
Wire Wire Line
	3250 7550 3350 7550
$Comp
L device:C C?
U 1 1 5CACA8E5
P 2800 7450
AR Path="/5C267736/5CACA8E5" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CACA8E5" Ref="C181"  Part="1" 
F 0 "C181" V 2850 7600 50  0000 C CNN
F 1 "0.01 uF" V 2750 7650 50  0000 C CNN
F 2 "" H 2838 7300 50  0001 C CNN
F 3 "" H 2800 7450 50  0001 C CNN
	1    2800 7450
	0    1    -1   0   
$EndComp
Text Label 2650 7450 2    50   ~ 0
3V3
Wire Wire Line
	2950 7450 3250 7450
Connection ~ 3250 7450
$Comp
L special-azonenberg:JUMPER_0402_SPDT JP?
U 1 1 5CACBE10
P 1850 6850
AR Path="/5C0E404A/5CACBE10" Ref="JP?"  Part="1" 
AR Path="/5C267736/5CACBE10" Ref="JP?"  Part="1" 
AR Path="/5C15809A/5CACBE10" Ref="JP4"  Part="1" 
F 0 "JP4" H 1833 7437 60  0000 C CNN
F 1 "JUMPER_0402" H 1833 7331 60  0000 C CNN
F 2 "" H 1850 6850 60  0000 C CNN
F 3 "" H 1850 6850 60  0000 C CNN
	1    1850 6850
	1    0    0    -1  
$EndComp
Text Label 2150 6650 0    50   ~ 0
BUF4_IN_SEL
Text Label 2150 6550 0    50   ~ 0
3V3
Text Label 2150 6750 0    50   ~ 0
GND
Text Label 3200 7050 2    50   ~ 0
BUF4_IN_SEL
Wire Wire Line
	3200 7050 3350 7050
Text Label 3200 6950 2    50   ~ 0
3V3
Wire Wire Line
	3200 6950 3350 6950
Wire Wire Line
	3200 7150 3350 7150
Text Label 3200 7250 2    50   ~ 0
GND
Wire Wire Line
	3200 7250 3350 7250
$Comp
L device:C C?
U 1 1 5CAD5C53
P 2550 7750
AR Path="/5C267736/5CAD5C53" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAD5C53" Ref="C177"  Part="1" 
F 0 "C177" V 2600 7900 50  0000 C CNN
F 1 "0.1 uF" V 2500 7950 50  0000 C CNN
F 2 "" H 2588 7600 50  0001 C CNN
F 3 "" H 2550 7750 50  0001 C CNN
	1    2550 7750
	0    1    -1   0   
$EndComp
$Comp
L device:C C?
U 1 1 5CAD61FA
P 2550 7850
AR Path="/5C267736/5CAD61FA" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAD61FA" Ref="C178"  Part="1" 
F 0 "C178" V 2600 8000 50  0000 C CNN
F 1 "0.1 uF" V 2500 8050 50  0000 C CNN
F 2 "" H 2588 7700 50  0001 C CNN
F 3 "" H 2550 7850 50  0001 C CNN
	1    2550 7850
	0    1    -1   0   
$EndComp
Text Label 3350 7750 2    50   ~ 0
CPHASE_P
Text Label 3350 7850 2    50   ~ 0
CPHASE_N
Wire Wire Line
	2700 7750 3350 7750
Wire Wire Line
	2700 7850 3350 7850
$Comp
L device:C C?
U 1 1 5CAD95DF
P 2550 8050
AR Path="/5C267736/5CAD95DF" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAD95DF" Ref="C179"  Part="1" 
F 0 "C179" V 2600 8200 50  0000 C CNN
F 1 "0.1 uF" V 2500 8250 50  0000 C CNN
F 2 "" H 2588 7900 50  0001 C CNN
F 3 "" H 2550 8050 50  0001 C CNN
	1    2550 8050
	0    1    -1   0   
$EndComp
$Comp
L device:C C?
U 1 1 5CAD95E9
P 2550 8150
AR Path="/5C267736/5CAD95E9" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAD95E9" Ref="C180"  Part="1" 
F 0 "C180" V 2600 8300 50  0000 C CNN
F 1 "0.1 uF" V 2500 8350 50  0000 C CNN
F 2 "" H 2588 8000 50  0001 C CNN
F 3 "" H 2550 8150 50  0001 C CNN
	1    2550 8150
	0    1    -1   0   
$EndComp
Text Label 3350 8050 2    50   ~ 0
FPHASE_P
Text Label 3350 8150 2    50   ~ 0
FPHASE_N
Wire Wire Line
	2700 8050 3350 8050
Wire Wire Line
	2700 8150 3350 8150
$Comp
L special-azonenberg:NB7V52MMNG U23
U 1 1 5CAE58D3
P 10700 4000
F 0 "U23" H 11100 6075 50  0000 C CNN
F 1 "NB7V52MMNG" H 11100 5984 50  0000 C CNN
F 2 "" H 10700 4000 50  0001 C CNN
F 3 "" H 10700 4000 50  0001 C CNN
	1    10700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 6200 6850 6200
Wire Wire Line
	6700 6700 6850 6700
$Comp
L device:C C?
U 1 1 5CAE95A5
P 6150 5700
AR Path="/5C0E404A/5CAE95A5" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAE95A5" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAE95A5" Ref="C186"  Part="1" 
F 0 "C186" H 6265 5746 50  0000 L CNN
F 1 "4.7 uF" H 6265 5655 50  0000 L CNN
F 2 "" H 6188 5550 50  0001 C CNN
F 3 "" H 6150 5700 50  0001 C CNN
	1    6150 5700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CAE95AF
P 6650 5700
AR Path="/5C0E404A/5CAE95AF" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAE95AF" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAE95AF" Ref="C188"  Part="1" 
F 0 "C188" H 6765 5746 50  0000 L CNN
F 1 "0.47 uF" H 6765 5655 50  0000 L CNN
F 2 "" H 6688 5550 50  0001 C CNN
F 3 "" H 6650 5700 50  0001 C CNN
	1    6650 5700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CAE95B9
P 7700 5700
AR Path="/5C0E404A/5CAE95B9" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAE95B9" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAE95B9" Ref="C190"  Part="1" 
F 0 "C190" H 7815 5746 50  0000 L CNN
F 1 "0.47 uF" H 7815 5655 50  0000 L CNN
F 2 "" H 7738 5550 50  0001 C CNN
F 3 "" H 7700 5700 50  0001 C CNN
	1    7700 5700
	1    0    0    -1  
$EndComp
Connection ~ 6650 5550
Wire Wire Line
	6650 5550 6150 5550
Connection ~ 6650 5850
Wire Wire Line
	6650 5850 6150 5850
Text Label 5950 5550 2    50   ~ 0
3V3
Wire Wire Line
	5950 5550 6150 5550
Connection ~ 6150 5550
Text Label 5950 5850 2    50   ~ 0
GND
Wire Wire Line
	5950 5850 6150 5850
Connection ~ 6150 5850
Wire Wire Line
	6650 5550 7200 5550
Wire Wire Line
	6650 5850 7200 5850
$Comp
L device:C C?
U 1 1 5CAE95CF
P 7200 5700
AR Path="/5C0E404A/5CAE95CF" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAE95CF" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAE95CF" Ref="C189"  Part="1" 
F 0 "C189" H 7315 5746 50  0000 L CNN
F 1 "0.47 uF" H 7315 5655 50  0000 L CNN
F 2 "" H 7238 5550 50  0001 C CNN
F 3 "" H 7200 5700 50  0001 C CNN
	1    7200 5700
	1    0    0    -1  
$EndComp
Connection ~ 7200 5550
Wire Wire Line
	7200 5550 7700 5550
Connection ~ 7200 5850
Wire Wire Line
	7200 5850 7700 5850
$Comp
L device:C C?
U 1 1 5CAE95DD
P 8300 5700
AR Path="/5C0E404A/5CAE95DD" Ref="C?"  Part="1" 
AR Path="/5C267736/5CAE95DD" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAE95DD" Ref="C191"  Part="1" 
F 0 "C191" H 8415 5746 50  0000 L CNN
F 1 "0.47 uF" H 8415 5655 50  0000 L CNN
F 2 "" H 8338 5550 50  0001 C CNN
F 3 "" H 8300 5700 50  0001 C CNN
	1    8300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5550 7700 5550
Connection ~ 7700 5550
Wire Wire Line
	8300 5850 7700 5850
Connection ~ 7700 5850
Wire Wire Line
	6850 7400 6750 7400
Wire Wire Line
	6750 7400 6750 7500
Wire Wire Line
	6750 7500 6850 7500
$Comp
L device:C C?
U 1 1 5CAE95EE
P 6300 7400
AR Path="/5C267736/5CAE95EE" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CAE95EE" Ref="C187"  Part="1" 
F 0 "C187" V 6350 7550 50  0000 C CNN
F 1 "0.01 uF" V 6250 7600 50  0000 C CNN
F 2 "" H 6338 7250 50  0001 C CNN
F 3 "" H 6300 7400 50  0001 C CNN
	1    6300 7400
	0    1    -1   0   
$EndComp
Text Label 6150 7400 2    50   ~ 0
3V3
Wire Wire Line
	6450 7400 6750 7400
Connection ~ 6750 7400
$Comp
L special-azonenberg:JUMPER_0402_SPDT JP?
U 1 1 5CAE95FB
P 5850 6700
AR Path="/5C0E404A/5CAE95FB" Ref="JP?"  Part="1" 
AR Path="/5C267736/5CAE95FB" Ref="JP?"  Part="1" 
AR Path="/5C15809A/5CAE95FB" Ref="JP5"  Part="1" 
F 0 "JP5" H 5833 7287 60  0000 C CNN
F 1 "JUMPER_0402" H 5833 7181 60  0000 C CNN
F 2 "" H 5850 6700 60  0000 C CNN
F 3 "" H 5850 6700 60  0000 C CNN
	1    5850 6700
	1    0    0    -1  
$EndComp
Text Label 6150 6500 0    50   ~ 0
BUF5_IN_SEL
Text Label 6150 6400 0    50   ~ 0
3V3
Text Label 6150 6600 0    50   ~ 0
GND
Text Label 6700 7000 2    50   ~ 0
BUF4_IN_SEL
Wire Wire Line
	6700 7000 6850 7000
Text Label 6700 6900 2    50   ~ 0
3V3
Wire Wire Line
	6700 6900 6850 6900
Text Label 6700 7200 2    50   ~ 0
GND
Wire Wire Line
	6700 7200 6850 7200
Wire Wire Line
	6850 6400 6850 6500
Connection ~ 6850 6400
Connection ~ 6850 6300
Connection ~ 6850 6200
Wire Wire Line
	6850 6300 6850 6400
Wire Wire Line
	6850 6200 6850 6300
$Comp
L special-azonenberg:PI6C59S6005 U18
U 1 1 5CAE958F
P 6950 8200
F 0 "U18" H 7400 10425 50  0000 C CNN
F 1 "PI6C59S6005" H 7400 10334 50  0000 C CNN
F 2 "" H 6950 7900 50  0001 C CNN
F 3 "" H 6950 7900 50  0001 C CNN
	1    6950 8200
	1    0    0    -1  
$EndComp
Text Label 6700 6200 2    50   ~ 0
3V3
Text Label 6700 6700 2    50   ~ 0
GND
$Comp
L device:R R22
U 1 1 5CAF98FD
P 6150 7100
F 0 "R22" V 6050 7050 50  0000 C CNN
F 1 "1K" V 6150 7100 50  0000 C CNN
F 2 "" V 6080 7100 50  0001 C CNN
F 3 "" H 6150 7100 50  0001 C CNN
	1    6150 7100
	0    1    1    0   
$EndComp
Text Label 6000 7100 2    50   ~ 0
GND
Wire Wire Line
	6300 7100 6850 7100
NoConn ~ 6850 8000
NoConn ~ 6850 8100
Text Label 7950 6900 0    50   ~ 0
RST0_N
Text Label 7950 6800 0    50   ~ 0
RST0_P
Text Label 7950 7200 0    50   ~ 0
RST1_N
Text Label 7950 7100 0    50   ~ 0
RST1_P
Text Label 7950 7500 0    50   ~ 0
RST2_N
Text Label 7950 7400 0    50   ~ 0
RST2_P
NoConn ~ 7950 8000
NoConn ~ 7950 8100
Text Label 7950 7800 0    50   ~ 0
RST3_N
Text Label 7950 7700 0    50   ~ 0
RST3_P
Wire Wire Line
	2200 2150 2350 2150
Text Label 2200 2250 2    50   ~ 0
GND
Wire Wire Line
	2200 2250 2350 2250
Wire Wire Line
	2350 2250 2350 2350
Text Label 2250 2550 2    50   ~ 0
GND
Wire Wire Line
	2250 2550 2350 2550
Text Label 2350 3850 2    50   ~ 0
RST0_P
Text Label 2350 3950 2    50   ~ 0
RST0_N
Text Label 4050 2150 2    50   ~ 0
2V5
Text Label 4050 2250 2    50   ~ 0
GND
Text Label 4450 6850 0    50   ~ 0
CLK0_P
Text Label 4450 6950 0    50   ~ 0
CLK0_N
Text Label 4450 7150 0    50   ~ 0
CLK1_P
Text Label 4450 7250 0    50   ~ 0
CLK1_N
Text Label 4450 7450 0    50   ~ 0
CLK2_P
Text Label 4450 7550 0    50   ~ 0
CLK2_N
Text Label 4450 7750 0    50   ~ 0
CLK3_P
Text Label 4450 7850 0    50   ~ 0
CLK3_N
NoConn ~ 4450 8050
NoConn ~ 4450 8150
Wire Wire Line
	3350 3250 4050 3250
Wire Wire Line
	3350 3350 4050 3350
Text Label 2350 3550 2    50   ~ 0
CLK0_P
Text Label 2350 3650 2    50   ~ 0
CLK0_N
Text Label 4050 3550 2    50   ~ 0
CLK1_P
Text Label 4050 3650 2    50   ~ 0
CLK1_N
Text Label 4050 3850 2    50   ~ 0
RST1_P
Text Label 4050 3950 2    50   ~ 0
RST1_N
Wire Wire Line
	2350 2750 2350 2850
Connection ~ 2350 2750
Connection ~ 2350 2650
Connection ~ 2350 2550
Wire Wire Line
	2350 2650 2350 2750
Wire Wire Line
	2350 2550 2350 2650
Connection ~ 2350 2250
$Comp
L special-azonenberg:NB7V52MMNG U19
U 1 1 5CAE4A17
P 2450 4000
F 0 "U19" H 2850 6075 50  0000 C CNN
F 1 "NB7V52MMNG" H 2850 5984 50  0000 C CNN
F 2 "" H 2450 4000 50  0001 C CNN
F 3 "" H 2450 4000 50  0001 C CNN
	1    2450 4000
	1    0    0    -1  
$EndComp
Text Label 7100 3250 2    50   ~ 0
CLK2_P
Text Label 7100 3350 2    50   ~ 0
CLK2_N
Text Label 7100 3550 2    50   ~ 0
RST2_P
Text Label 7100 3650 2    50   ~ 0
RST2_N
Text Label 10600 3850 2    50   ~ 0
RST3_P
Text Label 10600 3950 2    50   ~ 0
RST3_N
Text Label 10600 3550 2    50   ~ 0
CLK3_P
Text Label 10600 3650 2    50   ~ 0
CLK3_N
Text Label 3500 3250 0    50   ~ 0
SHREG0_P
Text Label 3500 3350 0    50   ~ 0
SHREG0_N
Text Label 5050 3250 0    50   ~ 0
SHREG1_P
Text Label 5050 3350 0    50   ~ 0
SHREG1_N
Text Label 8200 2950 0    50   ~ 0
SHREG2_P
Text Label 8200 3050 0    50   ~ 0
SHREG2_N
Wire Wire Line
	10600 2250 10600 2350
Connection ~ 10600 2350
Wire Wire Line
	10600 2350 10600 2550
Connection ~ 10600 2550
Wire Wire Line
	10600 2550 10600 2650
Connection ~ 10600 2650
Wire Wire Line
	10600 2650 10600 2750
Connection ~ 10600 2750
Wire Wire Line
	10600 2750 10600 2850
Connection ~ 10600 2850
Wire Wire Line
	10600 2850 10600 2950
Connection ~ 10600 2950
Wire Wire Line
	10600 2950 10600 3050
Text Label 10600 2250 2    50   ~ 0
GND
Text Label 7100 1950 2    50   ~ 0
GND
Text Label 7100 1850 2    50   ~ 0
2V5
Text Label 10600 2150 2    50   ~ 0
2V5
$Comp
L device:C C192
U 1 1 5CB584BC
P 2550 1650
F 0 "C192" H 2665 1696 50  0000 L CNN
F 1 "0.47 uF" H 2665 1605 50  0000 L CNN
F 2 "" H 2588 1500 50  0001 C CNN
F 3 "" H 2550 1650 50  0001 C CNN
	1    2550 1650
	1    0    0    -1  
$EndComp
Text Label 2550 1500 2    50   ~ 0
2V5
Text Label 2550 1800 2    50   ~ 0
GND
$Comp
L device:C C193
U 1 1 5CB58F14
P 3100 1650
F 0 "C193" H 3215 1696 50  0000 L CNN
F 1 "0.47 uF" H 3215 1605 50  0000 L CNN
F 2 "" H 3138 1500 50  0001 C CNN
F 3 "" H 3100 1650 50  0001 C CNN
	1    3100 1650
	1    0    0    -1  
$EndComp
$Comp
L device:C C194
U 1 1 5CB593FB
P 3650 1650
F 0 "C194" H 3765 1696 50  0000 L CNN
F 1 "0.47 uF" H 3765 1605 50  0000 L CNN
F 2 "" H 3688 1500 50  0001 C CNN
F 3 "" H 3650 1650 50  0001 C CNN
	1    3650 1650
	1    0    0    -1  
$EndComp
$Comp
L device:C C195
U 1 1 5CB59830
P 4200 1650
F 0 "C195" H 4315 1696 50  0000 L CNN
F 1 "0.47 uF" H 4315 1605 50  0000 L CNN
F 2 "" H 4238 1500 50  0001 C CNN
F 3 "" H 4200 1650 50  0001 C CNN
	1    4200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1500 3650 1500
Connection ~ 3100 1500
Wire Wire Line
	3100 1500 2550 1500
Connection ~ 3650 1500
Wire Wire Line
	3650 1500 3100 1500
Wire Wire Line
	2550 1800 3100 1800
Connection ~ 3100 1800
Wire Wire Line
	3100 1800 3650 1800
Connection ~ 3650 1800
Wire Wire Line
	3650 1800 4200 1800
Text Label 11700 3250 0    50   ~ 0
SHREG3_P
Wire Wire Line
	11600 3250 12200 3250
Text Label 11700 3350 0    50   ~ 0
SHREG3_N
Wire Wire Line
	11600 3350 12200 3350
Wire Wire Line
	8100 2950 8650 2950
Wire Wire Line
	8100 3050 8650 3050
Wire Wire Line
	9750 3250 10600 3250
Wire Wire Line
	10600 3350 9750 3350
Text Label 9950 3250 0    50   ~ 0
SHREG2B_P
Text Label 9950 3350 0    50   ~ 0
SHREG2B_N
Wire Wire Line
	13450 3550 13300 3550
Wire Wire Line
	13300 3650 13450 3650
Text Label 13450 3250 0    50   ~ 0
SHREG3A_P
Wire Wire Line
	13450 3250 13300 3250
Text Label 13450 3350 0    50   ~ 0
SHREG3A_N
Wire Wire Line
	13450 3350 13300 3350
Text Label 9950 2950 0    50   ~ 0
SHREG2A_P
Text Label 9950 3050 0    50   ~ 0
SHREG2A_N
Wire Wire Line
	9950 3050 9750 3050
Wire Wire Line
	9750 2950 9950 2950
$Comp
L device:C C?
U 1 1 5CBB4ACD
P 4700 1650
AR Path="/5C0E404A/5CBB4ACD" Ref="C?"  Part="1" 
AR Path="/5C267736/5CBB4ACD" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CBB4ACD" Ref="C196"  Part="1" 
F 0 "C196" H 4815 1696 50  0000 L CNN
F 1 "4.7 uF" H 4815 1605 50  0000 L CNN
F 2 "" H 4738 1500 50  0001 C CNN
F 3 "" H 4700 1650 50  0001 C CNN
	1    4700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1500 4200 1500
Connection ~ 4200 1500
Wire Wire Line
	4200 1800 4700 1800
Connection ~ 4200 1800
Text Notes 2600 1500 0    50   ~ 0
FF decoupling
Text Notes 11300 8600 0    50   ~ 0
Logic function: LE = SHREG2 & !SHREG3
Wire Wire Line
	7100 1950 7100 2050
Connection ~ 7100 2050
Connection ~ 7100 2450
Wire Wire Line
	7100 2450 7100 2550
Connection ~ 7100 2550
Wire Wire Line
	7100 2650 7100 2750
Wire Wire Line
	7100 2550 7100 2650
Connection ~ 7100 2650
Wire Wire Line
	7100 2050 7100 2250
Connection ~ 7100 2250
Wire Wire Line
	7100 2350 7100 2450
Wire Wire Line
	7100 2250 7100 2350
Connection ~ 7100 2350
$Comp
L special-azonenberg:NB7V52MMNG U21
U 1 1 5CAE55CF
P 7200 3700
F 0 "U21" H 7600 5775 50  0000 C CNN
F 1 "NB7V52MMNG" H 7600 5684 50  0000 C CNN
F 2 "" H 7200 3700 50  0001 C CNN
F 3 "" H 7200 3700 50  0001 C CNN
	1    7200 3700
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:PI6C59S6005 U22
U 1 1 5CBF032C
P 8750 3450
F 0 "U22" H 9200 5675 50  0000 C CNN
F 1 "PI6C59S6005" H 9200 5584 50  0000 C CNN
F 2 "" H 8750 3150 50  0001 C CNN
F 3 "" H 8750 3150 50  0001 C CNN
	1    8750 3450
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CBFE2A9
P 8750 900
AR Path="/5C0E404A/5CBFE2A9" Ref="C?"  Part="1" 
AR Path="/5C267736/5CBFE2A9" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CBFE2A9" Ref="C197"  Part="1" 
F 0 "C197" H 8865 946 50  0000 L CNN
F 1 "4.7 uF" H 8865 855 50  0000 L CNN
F 2 "" H 8788 750 50  0001 C CNN
F 3 "" H 8750 900 50  0001 C CNN
	1    8750 900 
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CBFE2AF
P 9250 900
AR Path="/5C0E404A/5CBFE2AF" Ref="C?"  Part="1" 
AR Path="/5C267736/5CBFE2AF" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CBFE2AF" Ref="C198"  Part="1" 
F 0 "C198" H 9365 946 50  0000 L CNN
F 1 "0.47 uF" H 9365 855 50  0000 L CNN
F 2 "" H 9288 750 50  0001 C CNN
F 3 "" H 9250 900 50  0001 C CNN
	1    9250 900 
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CBFE2B5
P 10300 900
AR Path="/5C0E404A/5CBFE2B5" Ref="C?"  Part="1" 
AR Path="/5C267736/5CBFE2B5" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CBFE2B5" Ref="C200"  Part="1" 
F 0 "C200" H 10415 946 50  0000 L CNN
F 1 "0.47 uF" H 10415 855 50  0000 L CNN
F 2 "" H 10338 750 50  0001 C CNN
F 3 "" H 10300 900 50  0001 C CNN
	1    10300 900 
	1    0    0    -1  
$EndComp
Connection ~ 9250 750 
Wire Wire Line
	9250 750  8750 750 
Connection ~ 9250 1050
Wire Wire Line
	9250 1050 8750 1050
Text Label 8550 750  2    50   ~ 0
3V3
Wire Wire Line
	8550 750  8750 750 
Connection ~ 8750 750 
Text Label 8550 1050 2    50   ~ 0
GND
Wire Wire Line
	8550 1050 8750 1050
Connection ~ 8750 1050
Wire Wire Line
	9250 750  9800 750 
Wire Wire Line
	9250 1050 9800 1050
$Comp
L device:C C?
U 1 1 5CBFE2C7
P 9800 900
AR Path="/5C0E404A/5CBFE2C7" Ref="C?"  Part="1" 
AR Path="/5C267736/5CBFE2C7" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CBFE2C7" Ref="C199"  Part="1" 
F 0 "C199" H 9915 946 50  0000 L CNN
F 1 "0.47 uF" H 9915 855 50  0000 L CNN
F 2 "" H 9838 750 50  0001 C CNN
F 3 "" H 9800 900 50  0001 C CNN
	1    9800 900 
	1    0    0    -1  
$EndComp
Connection ~ 9800 750 
Wire Wire Line
	9800 750  10300 750 
Connection ~ 9800 1050
Wire Wire Line
	9800 1050 10300 1050
$Comp
L device:C C?
U 1 1 5CBFE2D1
P 10900 900
AR Path="/5C0E404A/5CBFE2D1" Ref="C?"  Part="1" 
AR Path="/5C267736/5CBFE2D1" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CBFE2D1" Ref="C201"  Part="1" 
F 0 "C201" H 11015 946 50  0000 L CNN
F 1 "0.47 uF" H 11015 855 50  0000 L CNN
F 2 "" H 10938 750 50  0001 C CNN
F 3 "" H 10900 900 50  0001 C CNN
	1    10900 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10900 750  10300 750 
Connection ~ 10300 750 
Wire Wire Line
	10900 1050 10300 1050
Connection ~ 10300 1050
Text Label 8550 1450 2    50   ~ 0
3V3
Wire Wire Line
	8550 1450 8650 1450
Wire Wire Line
	8650 1750 8650 1650
Connection ~ 8650 1450
Connection ~ 8650 1550
Wire Wire Line
	8650 1550 8650 1450
Connection ~ 8650 1650
Wire Wire Line
	8650 1650 8650 1550
Text Label 8550 1950 2    50   ~ 0
GND
Wire Wire Line
	8550 1950 8650 1950
Text Label 8550 2150 2    50   ~ 0
3V3
Wire Wire Line
	8550 2150 8650 2150
$Comp
L special-azonenberg:JUMPER_0402_SPDT JP?
U 1 1 5CC11C4B
P 2900 1300
AR Path="/5C0E404A/5CC11C4B" Ref="JP?"  Part="1" 
AR Path="/5C267736/5CC11C4B" Ref="JP?"  Part="1" 
AR Path="/5C15809A/5CC11C4B" Ref="JP6"  Part="1" 
F 0 "JP6" H 2883 1887 60  0000 C CNN
F 1 "JUMPER_0402" H 2883 1781 60  0000 C CNN
F 2 "" H 2900 1300 60  0000 C CNN
F 3 "" H 2900 1300 60  0000 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
Text Label 3200 1100 0    50   ~ 0
BUF6_IN_SEL
Text Label 3200 1000 0    50   ~ 0
3V3
Text Label 3200 1200 0    50   ~ 0
GND
Text Label 8650 2250 2    50   ~ 0
BUF6_IN_SEL
Text Label 8550 2350 2    50   ~ 0
GND
Wire Wire Line
	8550 2350 8650 2350
Text Label 8550 2450 2    50   ~ 0
GND
Wire Wire Line
	8550 2450 8650 2450
NoConn ~ 8650 2650
NoConn ~ 8650 3250
NoConn ~ 8650 3350
NoConn ~ 9750 2050
NoConn ~ 9750 2150
NoConn ~ 9750 2350
NoConn ~ 9750 2450
NoConn ~ 9750 2650
NoConn ~ 9750 2750
$Comp
L special-azonenberg:PI6C59S6005 U24
U 1 1 5CC4A08A
P 12300 3750
F 0 "U24" H 12750 5975 50  0000 C CNN
F 1 "PI6C59S6005" H 12750 5884 50  0000 C CNN
F 2 "" H 12300 3450 50  0001 C CNN
F 3 "" H 12300 3450 50  0001 C CNN
	1    12300 3750
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:JUMPER_0402_SPDT JP?
U 1 1 5CC63722
P 11050 1800
AR Path="/5C0E404A/5CC63722" Ref="JP?"  Part="1" 
AR Path="/5C267736/5CC63722" Ref="JP?"  Part="1" 
AR Path="/5C15809A/5CC63722" Ref="JP7"  Part="1" 
F 0 "JP7" H 11033 2387 60  0000 C CNN
F 1 "JUMPER_0402" H 11033 2281 60  0000 C CNN
F 2 "" H 11050 1800 60  0000 C CNN
F 3 "" H 11050 1800 60  0000 C CNN
	1    11050 1800
	1    0    0    -1  
$EndComp
Text Label 11350 1600 0    50   ~ 0
BUF7_IN_SEL
Text Label 11350 1500 0    50   ~ 0
3V3
Text Label 11350 1700 0    50   ~ 0
GND
Text Label 12200 2550 2    50   ~ 0
BUF7_IN_SEL
Text Label 12050 1750 2    50   ~ 0
3V3
Wire Wire Line
	12050 1750 12200 1750
Wire Wire Line
	12200 1750 12200 1850
Connection ~ 12200 1750
Connection ~ 12200 1850
Wire Wire Line
	12200 1850 12200 1950
Connection ~ 12200 1950
Wire Wire Line
	12200 1950 12200 2050
Text Label 12200 2250 2    50   ~ 0
GND
Text Label 12200 2450 2    50   ~ 0
3V3
Text Label 12200 2650 2    50   ~ 0
GND
Text Label 12200 2750 2    50   ~ 0
GND
NoConn ~ 12200 2950
Text Label 12200 3050 2    50   ~ 0
2V5
Text Label 8650 2750 2    50   ~ 0
2V5
$Comp
L device:C C?
U 1 1 5CC77841
P 12050 900
AR Path="/5C0E404A/5CC77841" Ref="C?"  Part="1" 
AR Path="/5C267736/5CC77841" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CC77841" Ref="C202"  Part="1" 
F 0 "C202" H 12165 946 50  0000 L CNN
F 1 "4.7 uF" H 12165 855 50  0000 L CNN
F 2 "" H 12088 750 50  0001 C CNN
F 3 "" H 12050 900 50  0001 C CNN
	1    12050 900 
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CC7784B
P 12550 900
AR Path="/5C0E404A/5CC7784B" Ref="C?"  Part="1" 
AR Path="/5C267736/5CC7784B" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CC7784B" Ref="C203"  Part="1" 
F 0 "C203" H 12665 946 50  0000 L CNN
F 1 "0.47 uF" H 12665 855 50  0000 L CNN
F 2 "" H 12588 750 50  0001 C CNN
F 3 "" H 12550 900 50  0001 C CNN
	1    12550 900 
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 5CC77855
P 13600 900
AR Path="/5C0E404A/5CC77855" Ref="C?"  Part="1" 
AR Path="/5C267736/5CC77855" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CC77855" Ref="C207"  Part="1" 
F 0 "C207" H 13715 946 50  0000 L CNN
F 1 "0.47 uF" H 13715 855 50  0000 L CNN
F 2 "" H 13638 750 50  0001 C CNN
F 3 "" H 13600 900 50  0001 C CNN
	1    13600 900 
	1    0    0    -1  
$EndComp
Connection ~ 12550 750 
Wire Wire Line
	12550 750  12050 750 
Connection ~ 12550 1050
Wire Wire Line
	12550 1050 12050 1050
Text Label 11850 750  2    50   ~ 0
3V3
Wire Wire Line
	11850 750  12050 750 
Connection ~ 12050 750 
Text Label 11850 1050 2    50   ~ 0
GND
Wire Wire Line
	11850 1050 12050 1050
Connection ~ 12050 1050
Wire Wire Line
	12550 750  13100 750 
Wire Wire Line
	12550 1050 13100 1050
$Comp
L device:C C?
U 1 1 5CC7786B
P 13100 900
AR Path="/5C0E404A/5CC7786B" Ref="C?"  Part="1" 
AR Path="/5C267736/5CC7786B" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CC7786B" Ref="C204"  Part="1" 
F 0 "C204" H 13215 946 50  0000 L CNN
F 1 "0.47 uF" H 13215 855 50  0000 L CNN
F 2 "" H 13138 750 50  0001 C CNN
F 3 "" H 13100 900 50  0001 C CNN
	1    13100 900 
	1    0    0    -1  
$EndComp
Connection ~ 13100 750 
Wire Wire Line
	13100 750  13600 750 
Connection ~ 13100 1050
Wire Wire Line
	13100 1050 13600 1050
$Comp
L device:C C?
U 1 1 5CC77879
P 14200 900
AR Path="/5C0E404A/5CC77879" Ref="C?"  Part="1" 
AR Path="/5C267736/5CC77879" Ref="C?"  Part="1" 
AR Path="/5C15809A/5CC77879" Ref="C208"  Part="1" 
F 0 "C208" H 14315 946 50  0000 L CNN
F 1 "0.47 uF" H 14315 855 50  0000 L CNN
F 2 "" H 14238 750 50  0001 C CNN
F 3 "" H 14200 900 50  0001 C CNN
	1    14200 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	14200 750  13600 750 
Connection ~ 13600 750 
Wire Wire Line
	14200 1050 13600 1050
Connection ~ 13600 1050
NoConn ~ 13300 2350
NoConn ~ 13300 2450
NoConn ~ 13300 2650
NoConn ~ 13300 2750
NoConn ~ 13300 2950
NoConn ~ 13300 3050
$Comp
L special-azonenberg:SY58051AU U25
U 1 1 5CCAE598
P 11300 8500
F 0 "U25" H 11800 10675 50  0000 C CNN
F 1 "SY58051AU" H 11800 10584 50  0000 C CNN
F 2 "" H 11300 8500 50  0001 C CNN
F 3 "" H 11300 8500 50  0001 C CNN
	1    11300 8500
	1    0    0    -1  
$EndComp
Text Label 11200 8050 2    50   ~ 0
SHREG2A_P
Text Label 11200 8150 2    50   ~ 0
SHREG2A_N
Text Label 11050 6550 2    50   ~ 0
3V3
Wire Wire Line
	11050 6550 11200 6550
Wire Wire Line
	11200 6550 11200 6650
Connection ~ 11200 6550
Text Label 11050 6850 2    50   ~ 0
GND
Wire Wire Line
	11050 6850 11200 6850
Wire Wire Line
	11200 6850 11200 6950
Connection ~ 11200 6850
Connection ~ 11200 6950
Wire Wire Line
	11200 6950 11200 7050
Connection ~ 11200 7050
Wire Wire Line
	11200 7050 11200 7150
Text Label 11200 8450 2    50   ~ 0
SHREG3A_P
Text Label 11200 8350 2    50   ~ 0
SHREG3A_N
Text Notes 11200 8550 2    50   ~ 0
polarity flip = invert
Text Label 11200 7850 2    50   ~ 0
3V3
$Comp
L device:R R23
U 1 1 5CCED7BB
P 10850 7750
F 0 "R23" V 10800 7600 50  0000 C CNN
F 1 "1K" V 10850 7750 50  0000 C CNN
F 2 "" V 10780 7750 50  0001 C CNN
F 3 "" H 10850 7750 50  0001 C CNN
	1    10850 7750
	0    1    1    0   
$EndComp
Wire Wire Line
	11000 7750 11200 7750
Text Label 10600 7750 2    50   ~ 0
GND
Wire Wire Line
	10600 7750 10700 7750
NoConn ~ 11200 7450
Text Label 11200 7350 2    50   ~ 0
3V3
Text Label 11200 7550 2    50   ~ 0
3V3
$Comp
L device:C C210
U 1 1 5CCFF0AF
P 11850 6050
F 0 "C210" H 11965 6096 50  0000 L CNN
F 1 "0.1 uF" H 11965 6005 50  0000 L CNN
F 2 "" H 11888 5900 50  0001 C CNN
F 3 "" H 11850 6050 50  0001 C CNN
	1    11850 6050
	1    0    0    -1  
$EndComp
Text Label 11200 5900 2    50   ~ 0
3V3
$Comp
L device:C C211
U 1 1 5CCFFC9E
P 12350 6050
F 0 "C211" H 12465 6096 50  0000 L CNN
F 1 "0.01 uF" H 12465 6005 50  0000 L CNN
F 2 "" H 12388 5900 50  0001 C CNN
F 3 "" H 12350 6050 50  0001 C CNN
	1    12350 6050
	1    0    0    -1  
$EndComp
$Comp
L device:C C212
U 1 1 5CD0B0DC
P 12900 6050
F 0 "C212" H 13015 6096 50  0000 L CNN
F 1 "0.1 uF" H 13015 6005 50  0000 L CNN
F 2 "" H 12938 5900 50  0001 C CNN
F 3 "" H 12900 6050 50  0001 C CNN
	1    12900 6050
	1    0    0    -1  
$EndComp
$Comp
L device:C C213
U 1 1 5CD0B0E6
P 13400 6050
F 0 "C213" H 13515 6096 50  0000 L CNN
F 1 "0.01 uF" H 13515 6005 50  0000 L CNN
F 2 "" H 13438 5900 50  0001 C CNN
F 3 "" H 13400 6050 50  0001 C CNN
	1    13400 6050
	1    0    0    -1  
$EndComp
$Comp
L device:C C209
U 1 1 5CD10AEF
P 11350 6050
F 0 "C209" H 11465 6096 50  0000 L CNN
F 1 "4.7 uF" H 11465 6005 50  0000 L CNN
F 2 "" H 11388 5900 50  0001 C CNN
F 3 "" H 11350 6050 50  0001 C CNN
	1    11350 6050
	1    0    0    -1  
$EndComp
Text Label 11200 6200 2    50   ~ 0
GND
Wire Wire Line
	11200 6200 11350 6200
Connection ~ 11350 6200
Wire Wire Line
	11350 6200 11850 6200
Connection ~ 11850 6200
Wire Wire Line
	11850 6200 12350 6200
Connection ~ 12350 6200
Wire Wire Line
	12350 6200 12900 6200
Connection ~ 12900 6200
Wire Wire Line
	12900 6200 13400 6200
Wire Wire Line
	13400 5900 12900 5900
Connection ~ 11350 5900
Wire Wire Line
	11350 5900 11200 5900
Connection ~ 11850 5900
Wire Wire Line
	11850 5900 11350 5900
Connection ~ 12350 5900
Wire Wire Line
	12350 5900 11850 5900
Connection ~ 12900 5900
Wire Wire Line
	12900 5900 12350 5900
Text Notes 12400 7600 0    50   ~ 0
Comparator:\nLE low: track\nLE high: hold\n\nSHRE2 & !SHREG3 is the desired track period\nSo we need to invert Q
Text Notes 700  8650 0    98   ~ 0
Fanout buffers for shift register clock/reset signals
Wire Wire Line
	4050 2250 4050 2350
Connection ~ 4050 2350
Connection ~ 4050 2550
Wire Wire Line
	4050 2350 4050 2550
Wire Wire Line
	4050 2550 4050 2650
Connection ~ 4050 2650
Connection ~ 4050 2750
Wire Wire Line
	4050 2650 4050 2750
Wire Wire Line
	4050 2750 4050 2850
Connection ~ 4050 2850
Connection ~ 4050 2950
Wire Wire Line
	4050 2850 4050 2950
Wire Wire Line
	4050 2950 4050 3050
$Comp
L special-azonenberg:NB7V52MMNG U20
U 1 1 5CAE60BB
P 4150 4000
F 0 "U20" H 4550 6075 50  0000 C CNN
F 1 "NB7V52MMNG" H 4550 5984 50  0000 C CNN
F 2 "" H 4150 4000 50  0001 C CNN
F 3 "" H 4150 4000 50  0001 C CNN
	1    4150 4000
	1    0    0    -1  
$EndComp
Text Label 7100 2950 2    50   ~ 0
SHREG1_P
Text Label 7100 3050 2    50   ~ 0
SHREG1_N
Text Notes 550  4350 0    98   ~ 0
Synchronize one-shot reset to line clock
Wire Notes Line width 20 style solid
	550  4450 16050 4450
Text Notes 6050 4300 0    98   ~ 0
Shift register for digital one-shot
NoConn ~ 2350 2950
NoConn ~ 2350 3050
Wire Notes Line width 20 style solid
	5950 4450 5950 500 
$Comp
L device:R R36
U 1 1 5CFC9B78
P 1550 3500
F 0 "R36" V 1650 3450 50  0000 L CNN
F 1 "33K" V 1550 3450 50  0000 L CNN
F 2 "" V 1480 3500 50  0001 C CNN
F 3 "" H 1550 3500 50  0001 C CNN
	1    1550 3500
	1    0    0    -1  
$EndComp
$Comp
L device:R R32
U 1 1 5CFCB162
P 1350 3500
F 0 "R32" V 1450 3450 50  0000 L CNN
F 1 "10K" V 1350 3450 50  0000 L CNN
F 2 "" V 1280 3500 50  0001 C CNN
F 3 "" H 1350 3500 50  0001 C CNN
	1    1350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3350 1550 3350
Connection ~ 1550 3350
Wire Wire Line
	1550 3350 2350 3350
Text Label 1700 3650 0    50   ~ 0
GND
Wire Wire Line
	1700 3650 1550 3650
Text Label 1150 3650 2    50   ~ 0
2V5
Wire Wire Line
	1150 3650 1350 3650
Text Label 2350 3350 2    50   ~ 0
RST_1V9
Text Label 2350 3250 2    50   ~ 0
2V5
Text Notes 900  3250 0    50   ~ 0
Can't tie D_N to ground to\nget differential 1! Max\nD_P - D_N is 1200 mV
Text Notes 9900 8850 0    98   ~ 0
Single-cycle pulse output for digital one-shot
Wire Notes Line width 20 style solid
	16050 8950 500  8950
Wire Notes Line width 20 style solid
	9550 8950 9550 4450
$EndSCHEMATC
