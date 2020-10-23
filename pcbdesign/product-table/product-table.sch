EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 950  800  2400 1650
U 5F9298B4
F0 "3.3v DCDC" 50
F1 "../3.3v-dc-dc-drop/3.3v-dc-dc-drop.sch" 50
$EndSheet
$Sheet
S 3850 750  4200 2000
U 5F929E45
F0 "ESP-12F" 50
F1 "../esp8266-esp-12f/esp8266-esp-12f.sch" 50
$EndSheet
$Comp
L Driver_Motor:Pololu_Breakout_A4988 A4988
U 1 1 5F92DBEF
P 4350 4300
F 0 "A4988" H 4900 4850 50  0000 C CNN
F 1 "Pololu_Breakout_A4988" V 5150 4750 50  0001 C CNN
F 2 "Module:Pololu_Breakout-16_15.2x20.3mm" H 4625 3550 50  0001 L CNN
F 3 "https://www.pololu.com/product/2980/pictures" H 4450 4000 50  0001 C CNN
	1    4350 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 MOTOR1
U 1 1 5F93027C
P 5350 4300
F 0 "MOTOR1" H 5430 4246 50  0000 L CNN
F 1 "Conn_01x04" H 5430 4201 50  0001 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-AM_1x04_P2.50mm_Vertical" H 5350 4300 50  0001 C CNN
F 3 "~" H 5350 4300 50  0001 C CNN
	1    5350 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 DISPLAY1
U 1 1 5F930859
P 6400 4750
F 0 "DISPLAY1" H 6480 4696 50  0000 L CNN
F 1 "Conn_01x04" H 6480 4651 50  0001 L CNN
F 2 "Connector_JST:JST_XH_B4B-XH-AM_1x04_P2.50mm_Vertical" H 6400 4750 50  0001 C CNN
F 3 "~" H 6400 4750 50  0001 C CNN
	1    6400 4750
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x05 ENCODER1
U 1 1 5F931A69
P 6400 5700
F 0 "ENCODER1" H 6480 5696 50  0000 L CNN
F 1 "Conn_01x05" H 6480 5651 50  0001 L CNN
F 2 "Connector_JST:JST_XH_B5B-XH-AM_1x05_P2.50mm_Vertical" H 6400 5700 50  0001 C CNN
F 3 "~" H 6400 5700 50  0001 C CNN
	1    6400 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 VIN1
U 1 1 5F92EFCF
P 2000 3800
F 0 "VIN1" H 2080 3792 50  0000 L CNN
F 1 "Terminal" H 2080 3701 50  0001 L CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Vertical" H 2000 3800 50  0001 C CNN
F 3 "~" H 2000 3800 50  0001 C CNN
	1    2000 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0101
U 1 1 5F934D06
P 1500 3800
F 0 "#PWR0101" H 1500 3650 50  0001 C CNN
F 1 "+12V" H 1515 3973 50  0000 C CNN
F 2 "" H 1500 3800 50  0001 C CNN
F 3 "" H 1500 3800 50  0001 C CNN
	1    1500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 3800 1800 3800
$Comp
L power:GND #PWR0102
U 1 1 5F935634
P 1650 3900
F 0 "#PWR0102" H 1650 3650 50  0001 C CNN
F 1 "GND" H 1655 3727 50  0000 C CNN
F 2 "" H 1650 3900 50  0001 C CNN
F 3 "" H 1650 3900 50  0001 C CNN
	1    1650 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3900 1800 3900
$Comp
L power:+3.3V #PWR0103
U 1 1 5F936932
P 4350 3600
F 0 "#PWR0103" H 4350 3450 50  0001 C CNN
F 1 "+3.3V" H 4365 3773 50  0000 C CNN
F 2 "" H 4350 3600 50  0001 C CNN
F 3 "" H 4350 3600 50  0001 C CNN
	1    4350 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 5F9371B1
P 4550 3600
F 0 "#PWR0104" H 4550 3450 50  0001 C CNN
F 1 "+12V" H 4565 3773 50  0000 C CNN
F 2 "" H 4550 3600 50  0001 C CNN
F 3 "" H 4550 3600 50  0001 C CNN
	1    4550 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5F937842
P 4450 5400
F 0 "#PWR0105" H 4450 5150 50  0001 C CNN
F 1 "GND" H 4455 5227 50  0000 C CNN
F 2 "" H 4450 5400 50  0001 C CNN
F 3 "" H 4450 5400 50  0001 C CNN
	1    4450 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 5100 4350 5400
Wire Wire Line
	4350 5400 4450 5400
Wire Wire Line
	4550 5100 4550 5200
Wire Wire Line
	4550 5400 4450 5400
Connection ~ 4450 5400
Wire Wire Line
	4850 4200 5150 4200
Wire Wire Line
	4850 4300 5150 4300
Wire Wire Line
	4850 4400 5150 4400
Wire Wire Line
	4850 4500 5150 4500
Wire Wire Line
	3950 3900 3950 4000
$Comp
L power:GND #PWR0106
U 1 1 5F939F6F
P 3650 4200
F 0 "#PWR0106" H 3650 3950 50  0001 C CNN
F 1 "GND" H 3655 4027 50  0000 C CNN
F 2 "" H 3650 4200 50  0001 C CNN
F 3 "" H 3650 4200 50  0001 C CNN
	1    3650 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4200 3950 4200
Wire Wire Line
	3950 4600 3950 4700
Wire Wire Line
	3950 4700 3950 4800
Connection ~ 3950 4700
$Comp
L power:+3.3V #PWR0107
U 1 1 5F93AEE4
P 3950 5100
F 0 "#PWR0107" H 3950 4950 50  0001 C CNN
F 1 "+3.3V" H 3965 5273 50  0000 C CNN
F 2 "" H 3950 5100 50  0001 C CNN
F 3 "" H 3950 5100 50  0001 C CNN
	1    3950 5100
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 4800 3950 5100
Connection ~ 3950 4800
Text Label 3050 4500 0    50   ~ 0
GPIO0
Text Label 3050 4650 0    50   ~ 0
GPIO2
Wire Wire Line
	3050 4500 3800 4500
Wire Wire Line
	3800 4500 3800 4300
Wire Wire Line
	3800 4300 3950 4300
Wire Wire Line
	3050 4650 3850 4650
Wire Wire Line
	3850 4650 3850 4400
Wire Wire Line
	3850 4400 3950 4400
$Comp
L power:+3.3V #PWR0108
U 1 1 5F93E452
P 6200 4500
F 0 "#PWR0108" H 6200 4350 50  0001 C CNN
F 1 "+3.3V" H 6215 4673 50  0000 C CNN
F 2 "" H 6200 4500 50  0001 C CNN
F 3 "" H 6200 4500 50  0001 C CNN
	1    6200 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F93EF85
P 5800 4750
F 0 "#PWR0109" H 5800 4500 50  0001 C CNN
F 1 "GND" H 5805 4577 50  0000 C CNN
F 2 "" H 5800 4750 50  0001 C CNN
F 3 "" H 5800 4750 50  0001 C CNN
	1    5800 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4750 6200 4750
Wire Wire Line
	6200 4650 6200 4500
Text Label 5450 5050 0    50   ~ 0
GPIO5
Text Label 5450 5200 0    50   ~ 0
GPIO4
Wire Wire Line
	5450 5050 5950 5050
Wire Wire Line
	5950 5050 5950 4850
Wire Wire Line
	5950 4850 6200 4850
Wire Wire Line
	5450 5200 6100 5200
Wire Wire Line
	6100 5200 6100 4950
Wire Wire Line
	6100 4950 6200 4950
$Comp
L power:GND #PWR0110
U 1 1 5F9418C8
P 6200 5300
F 0 "#PWR0110" H 6200 5050 50  0001 C CNN
F 1 "GND" H 6205 5127 50  0000 C CNN
F 2 "" H 6200 5300 50  0001 C CNN
F 3 "" H 6200 5300 50  0001 C CNN
	1    6200 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 5300 6200 5500
$Comp
L power:+3.3V #PWR0111
U 1 1 5F942513
P 5950 5600
F 0 "#PWR0111" H 5950 5450 50  0001 C CNN
F 1 "+3.3V" H 5965 5773 50  0000 C CNN
F 2 "" H 5950 5600 50  0001 C CNN
F 3 "" H 5950 5600 50  0001 C CNN
	1    5950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5600 6200 5600
Text Label 5550 5700 0    50   ~ 0
GPIO14
Text Label 5550 5800 0    50   ~ 0
GPIO12
Text Label 5550 5900 0    50   ~ 0
GPIO13
Wire Wire Line
	5550 5700 6200 5700
Wire Wire Line
	5550 5800 6200 5800
Wire Wire Line
	5550 5900 6200 5900
$Comp
L Device:CP1_Small CMOTOR1
U 1 1 5F94805A
P 5300 3600
F 0 "CMOTOR1" V 5528 3600 50  0000 C CNN
F 1 "100uF" V 5437 3600 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P3.50mm" H 5300 3600 50  0001 C CNN
F 3 "~" H 5300 3600 50  0001 C CNN
	1    5300 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4550 3600 5200 3600
Connection ~ 4550 3600
Wire Wire Line
	5400 3600 5800 3600
Wire Wire Line
	5800 3600 5800 4650
Wire Wire Line
	5800 4650 4950 4650
Wire Wire Line
	4950 4650 4950 5200
Wire Wire Line
	4950 5200 4550 5200
Connection ~ 4550 5200
Wire Wire Line
	4550 5200 4550 5400
$EndSCHEMATC
