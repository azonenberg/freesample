EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 12
Title "FREESAMPLE Oscilloscope"
Date "2018-12-17"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 "Digital one-shot and reset sync for ADC trigger"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 8450 2450 0    50   Output ~ 0
ADC_LE_P
Text HLabel 8400 2750 0    50   Output ~ 0
ADC_LE_N
Text HLabel 6150 2650 0    50   Input ~ 0
ONESHOT_RST_P
Text HLabel 6150 2750 0    50   Input ~ 0
ONESHOT_RST_N
Text HLabel 6150 2150 0    50   Input ~ 0
ONESHOT_FINEPHASE_P
Text HLabel 6150 2250 0    50   Input ~ 0
ONESHOT_FINEPHASE_N
Text HLabel 6900 3200 0    50   Input ~ 0
1V8
Text HLabel 6750 3300 0    50   Input ~ 0
GND
Text HLabel 8450 3150 0    50   Output ~ 0
ONESHOT_TRIGGERED_P
Text HLabel 8450 3250 0    50   Output ~ 0
ONESHOT_TRIGGERED_N
$Comp
L special-azonenberg:PI6C59S6005 U7
U 1 1 5C3E7E97
P 3150 5400
F 0 "U7" H 3600 7625 50  0000 C CNN
F 1 "PI6C59S6005" H 3600 7534 50  0000 C CNN
F 2 "" H 3150 5100 50  0001 C CNN
F 3 "" H 3150 5100 50  0001 C CNN
	1    3150 5400
	1    0    0    -1  
$EndComp
Text HLabel 6150 1600 0    50   Input ~ 0
ONESHOT_COARSEPHASE_P
Text HLabel 6150 1700 0    50   Input ~ 0
ONESHOT_COARSEPHASE_N
$EndSCHEMATC
