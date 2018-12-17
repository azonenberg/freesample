EESchema Schematic File Version 4
LIBS:freesample-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 10 12
Title "FREESAMPLE Oscilloscope"
Date "2018-12-17"
Rev "0.1"
Comp "Andrew D. Zonenberg / Antikernel Labs"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2250 2250 0    50   Output ~ 0
5V0
Text HLabel 2000 2500 0    50   Output ~ 0
3V3
Text HLabel 2000 2650 0    50   Output ~ 0
3V0_N
Text HLabel 2000 2800 0    50   Output ~ 0
1V8
Text HLabel 1700 2150 0    50   Input ~ 0
GND
Text HLabel 2800 2400 0    50   Output ~ 0
1V0
Text HLabel 2800 2500 0    50   Output ~ 0
5V0_N
Text HLabel 1100 1750 0    50   Input ~ 0
12V0
Text Notes 1700 1600 0    50   ~ 0
TODO: figure out how many rails we can steal from INTEGRALSTICK\nand how many have to be generated locally.\nAs a minimum we need:\n* 12 -> 5\n* 5 -> -5\n* 5 -> -3\n* 5 -> -3.3\n* 5 -> 1.0\n\n3.3 and 1.8 may be stolen from INTEGRALSTICK module
Text HLabel 3150 2000 0    50   Output ~ 0
3V3_N
$EndSCHEMATC
