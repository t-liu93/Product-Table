EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "ESP-12F"
Date "2020-10-23"
Rev "0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP-12F MCU1
U 1 1 5F929592
P 5700 3900
F 0 "MCU1" H 5450 4800 50  0000 C CNN
F 1 "ESP-12F" H 5450 4700 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 5700 3900 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 5350 4000 50  0001 C CNN
	1    5700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small ER1
U 1 1 5F92A805
P 4400 3300
F 0 "ER1" V 4300 3300 50  0000 C CNN
F 1 "10K" V 4400 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 4400 3300 50  0001 C CNN
F 3 "~" H 4400 3300 50  0001 C CNN
	1    4400 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4500 3300 4900 3300
$Comp
L Device:R_Small ER2
U 1 1 5F92B5B3
P 4400 3500
F 0 "ER2" V 4300 3500 50  0000 C CNN
F 1 "10K" V 4400 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 4400 3500 50  0001 C CNN
F 3 "~" H 4400 3500 50  0001 C CNN
	1    4400 3500
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5F92D748
P 5700 2450
F 0 "#PWR0117" H 5700 2300 50  0001 C CNN
F 1 "+3.3V" H 5715 2623 50  0000 C CNN
F 2 "" H 5700 2450 50  0001 C CNN
F 3 "" H 5700 2450 50  0001 C CNN
	1    5700 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5F92E7A8
P 5700 4950
F 0 "#PWR0118" H 5700 4700 50  0001 C CNN
F 1 "GND" H 5705 4777 50  0000 C CNN
F 2 "" H 5700 4950 50  0001 C CNN
F 3 "" H 5700 4950 50  0001 C CNN
	1    5700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4600 5700 4800
$Comp
L Device:C_Small EC2
U 1 1 5F92FD9B
P 6050 3100
F 0 "EC2" V 5821 3100 50  0000 C CNN
F 1 "100nF" V 5912 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric_Pad0.74x0.62mm_HandSolder" H 6050 3100 50  0001 C CNN
F 3 "~" H 6050 3100 50  0001 C CNN
	1    6050 3100
	0    1    1    0   
$EndComp
$Comp
L Device:CP1_Small EC1
U 1 1 5F930C16
P 6050 2700
F 0 "EC1" V 6278 2700 50  0000 C CNN
F 1 "10uF" V 6187 2700 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 6050 2700 50  0001 C CNN
F 3 "~" H 6050 2700 50  0001 C CNN
	1    6050 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 3300 3800 3300
Wire Wire Line
	3800 3300 3800 3500
Wire Wire Line
	3800 3500 4300 3500
Wire Wire Line
	4500 3500 5100 3500
Wire Wire Line
	5700 2450 5700 2700
$Comp
L power:+3.3V #PWR0119
U 1 1 5F93488D
P 3450 3300
F 0 "#PWR0119" H 3450 3150 50  0001 C CNN
F 1 "+3.3V" H 3465 3473 50  0000 C CNN
F 2 "" H 3450 3300 50  0001 C CNN
F 3 "" H 3450 3300 50  0001 C CNN
	1    3450 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3300 3800 3300
Connection ~ 3800 3300
Wire Wire Line
	5700 3100 5950 3100
Connection ~ 5700 3100
Wire Wire Line
	5700 2700 5950 2700
Connection ~ 5700 2700
Wire Wire Line
	5700 2700 5700 3100
$Comp
L power:GND #PWR0120
U 1 1 5F935B92
P 6500 2900
F 0 "#PWR0120" H 6500 2650 50  0001 C CNN
F 1 "GND" H 6505 2727 50  0000 C CNN
F 2 "" H 6500 2900 50  0001 C CNN
F 3 "" H 6500 2900 50  0001 C CNN
	1    6500 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2700 6500 2700
Wire Wire Line
	6500 2700 6500 2850
Wire Wire Line
	6150 3100 6300 3100
Wire Wire Line
	6300 3100 6300 2850
Wire Wire Line
	6300 2850 6500 2850
Connection ~ 6500 2850
Wire Wire Line
	6500 2850 6500 2900
$Comp
L Device:R_Small ER4
U 1 1 5F9369E2
P 7000 3300
F 0 "ER4" V 6900 3300 50  0000 C CNN
F 1 "10K" V 7000 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 7000 3300 50  0001 C CNN
F 3 "~" H 7000 3300 50  0001 C CNN
	1    7000 3300
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0121
U 1 1 5F937928
P 7400 3300
F 0 "#PWR0121" H 7400 3150 50  0001 C CNN
F 1 "+3.3V" H 7415 3473 50  0000 C CNN
F 2 "" H 7400 3300 50  0001 C CNN
F 3 "" H 7400 3300 50  0001 C CNN
	1    7400 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3300 6900 3300
Wire Wire Line
	7100 3300 7400 3300
$Comp
L Device:R_Small ER3
U 1 1 5F93892C
P 6900 4600
F 0 "ER3" V 6850 4650 50  0000 R CNN
F 1 "10K" V 6950 4650 50  0000 R CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 6900 4600 50  0001 C CNN
F 3 "~" H 6900 4600 50  0001 C CNN
	1    6900 4600
	-1   0    0    1   
$EndComp
Connection ~ 5700 4800
Wire Wire Line
	5700 4800 5700 4950
Wire Wire Line
	6900 4800 6900 4700
Wire Wire Line
	5700 4800 6900 4800
Text Label 6500 4200 0    50   ~ 0
GPIO15
Text Label 6500 4300 0    50   ~ 0
GPIO16
Text Label 4700 4400 0    50   ~ 0
SCLK
Text Label 4700 4300 0    50   ~ 0
MOSI
Text Label 4700 4200 0    50   ~ 0
GPIO10
Text Label 4700 4100 0    50   ~ 0
GPIO9
Text Label 4700 4000 0    50   ~ 0
MISO
Text Label 4700 3900 0    50   ~ 0
CS0
Text Label 4700 3700 0    50   ~ 0
ADC
Text Label 4700 3500 0    50   ~ 0
EN
Text Label 4700 3300 0    50   ~ 0
RST
Wire Wire Line
	4700 3700 5100 3700
Wire Wire Line
	5100 3900 4700 3900
Wire Wire Line
	4700 4000 5100 4000
Wire Wire Line
	5100 4100 4700 4100
Wire Wire Line
	4700 4200 5100 4200
Wire Wire Line
	5100 4300 4700 4300
Wire Wire Line
	4700 4400 5100 4400
Wire Wire Line
	6300 4300 6500 4300
Wire Wire Line
	6300 4000 6500 4000
Wire Wire Line
	6500 3900 6300 3900
Wire Wire Line
	6300 3800 6500 3800
Wire Wire Line
	6500 3700 6300 3700
Wire Wire Line
	6300 3600 6500 3600
Wire Wire Line
	6500 3500 6300 3500
Wire Wire Line
	6300 3400 6500 3400
$Comp
L power:GND #PWR0122
U 1 1 5F93597D
P 3850 2750
F 0 "#PWR0122" H 3850 2500 50  0001 C CNN
F 1 "GND" H 3855 2577 50  0000 C CNN
F 2 "" H 3850 2750 50  0001 C CNN
F 3 "" H 3850 2750 50  0001 C CNN
	1    3850 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2750 4900 2750
Wire Wire Line
	4900 2750 4900 3300
Connection ~ 4900 3300
Wire Wire Line
	4900 3300 5100 3300
$Comp
L Device:R_Small RFLASHSW1
U 1 1 5F9378AC
P 6900 2900
F 0 "RFLASHSW1" H 6959 2946 50  0000 L CNN
F 1 "10K" H 6959 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.30x1.75mm_HandSolder" H 6900 2900 50  0001 C CNN
F 3 "~" H 6900 2900 50  0001 C CNN
	1    6900 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 2800 6900 2650
Wire Wire Line
	6900 3000 6900 3300
Connection ~ 6900 3300
$Comp
L power:GND #PWR0123
U 1 1 5F939354
P 7650 2650
F 0 "#PWR0123" H 7650 2400 50  0001 C CNN
F 1 "GND" H 7655 2477 50  0000 C CNN
F 2 "" H 7650 2650 50  0001 C CNN
F 3 "" H 7650 2650 50  0001 C CNN
	1    7650 2650
	1    0    0    -1  
$EndComp
Text HLabel 6500 3300 2    50   Input ~ 0
GPIO0
Text HLabel 6500 3400 2    50   Input ~ 0
ESPTX
Text HLabel 6500 3500 2    50   Input ~ 0
GPIO2
Text HLabel 6500 3600 2    50   Input ~ 0
ESPRX
Text HLabel 6500 3700 2    50   Input ~ 0
GPIO4
Text HLabel 6500 3800 2    50   Input ~ 0
GPIO5
Text HLabel 6500 3900 2    50   Input ~ 0
GPIO12
Text HLabel 6500 4000 2    50   Input ~ 0
GPIO13
Text HLabel 6500 4100 2    50   Input ~ 0
GPIO14
Wire Wire Line
	6900 4200 6900 4500
Wire Wire Line
	6300 4200 6900 4200
$Comp
L Switch:SW_Push_Dual FLASHSW1
U 1 1 5F968956
P 7200 2550
F 0 "FLASHSW1" H 7200 2743 50  0000 C CNN
F 1 "SW_Push_Dual" H 7200 2744 50  0001 C CNN
F 2 "custom-footprints:SW_PUSH_Omron_B3F-4055" H 7200 2750 50  0001 C CNN
F 3 "~" H 7200 2750 50  0001 C CNN
	1    7200 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2550 7000 2650
Wire Wire Line
	6900 2650 7000 2650
Wire Wire Line
	7000 2650 7000 2750
Connection ~ 7000 2650
Wire Wire Line
	7400 2650 7400 2550
Wire Wire Line
	7400 2650 7650 2650
Wire Wire Line
	7400 2650 7400 2750
Connection ~ 7400 2650
$Comp
L Switch:SW_Push_Dual RSTSW1
U 1 1 5F971F2B
P 4400 2650
F 0 "RSTSW1" H 4400 2843 50  0000 C CNN
F 1 "SW_Push_Dual" H 4400 2844 50  0001 C CNN
F 2 "custom-footprints:SW_PUSH_Omron_B3F-4055" H 4400 2850 50  0001 C CNN
F 3 "~" H 4400 2850 50  0001 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2750 4200 2650
Wire Wire Line
	3850 2750 4200 2750
Wire Wire Line
	4200 2750 4200 2850
Connection ~ 4200 2750
Wire Wire Line
	4600 2650 4700 2650
Wire Wire Line
	4700 2650 4700 2750
Wire Wire Line
	4700 2750 4600 2750
Wire Wire Line
	4600 2750 4600 2850
Connection ~ 4700 2750
Wire Wire Line
	6300 4100 6550 4100
$EndSCHEMATC
