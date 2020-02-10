EESchema Schematic File Version 5
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Open XCVR"
Date "2020-01-26"
Rev "0.1"
Comp "Jon Dawson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Wire Wire Line
	8650 1550 9150 1550
Wire Wire Line
	8650 1450 9150 1450
Wire Wire Line
	8650 1150 9150 1150
Wire Wire Line
	8650 1350 9150 1350
Wire Wire Line
	8650 1250 9150 1250
Text GLabel 9150 1250 2    50   Input ~ 0
LCD5
Text GLabel 9150 1150 2    50   Input ~ 0
LCD6
Text GLabel 9150 1050 2    50   Input ~ 0
LCD7
Text GLabel 9150 1350 2    50   Input ~ 0
LCD4
Text GLabel 9150 1450 2    50   Input ~ 0
LCD_RS
Text GLabel 9150 1650 2    50   Input ~ 0
LCD_CONTRAST
Text GLabel 9150 1550 2    50   Input ~ 0
LCD_E
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J1
U 1 1 5E4166C1
P 8350 1450
F 0 "J1" H 8400 2066 50  0000 C CNN
F 1 "UI_CONNECTOR" H 8400 1975 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Vertical" H 8350 1450 50  0001 C CNN
F 3 "~" H 8350 1450 50  0001 C CNN
	1    8350 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1050 8150 1050
Wire Wire Line
	8650 1050 9150 1050
Wire Wire Line
	8050 1250 8150 1250
Wire Wire Line
	8050 1150 8150 1150
Text GLabel 8050 1050 0    50   Output ~ 0
SPEAKER_HDR
Text GLabel 8050 1150 0    50   Output ~ 0
MIC_HDR
Text GLabel 8050 1250 0    50   Output ~ 0
PTT
Wire Wire Line
	7200 1750 8150 1750
Wire Wire Line
	6950 1850 8150 1850
Wire Wire Line
	8650 1950 9150 1950
Wire Wire Line
	8650 1750 9150 1750
Wire Wire Line
	8650 1850 9150 1850
Wire Wire Line
	8650 1650 9150 1650
Text GLabel 9150 1750 2    50   Input ~ 0
IR
Wire Wire Line
	8050 1950 8150 1950
$Comp
L power:GND #PWR054
U 1 1 5E41F607
P 8050 2050
F 0 "#PWR054" H 8050 1800 50  0001 C CNN
F 1 "GND" H 8055 1877 50  0000 C CNN
F 2 "" H 8050 2050 50  0001 C CNN
F 3 "" H 8050 2050 50  0001 C CNN
	1    8050 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2050 8050 1950
Wire Wire Line
	1150 5950 1450 5950
Wire Wire Line
	1150 6250 1450 6250
Wire Wire Line
	1150 5650 1450 5650
Text GLabel 1150 6250 0    50   Input ~ 0
LCD7
Text GLabel 1150 5950 0    50   Input ~ 0
LCD6
Text GLabel 1150 5650 0    50   Input ~ 0
LCD5
Text GLabel 1150 5350 0    50   Input ~ 0
LCD4
$Comp
L Device:R R9
U 1 1 5E490308
P 1600 5950
F 0 "R9" H 1670 5995 50  0000 L CNN
F 1 "10K" H 1670 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 5950 50  0001 C CNN
F 3 "~" H 1600 5950 50  0001 C CNN
	1    1600 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5E490A45
P 1600 6250
F 0 "R10" H 1670 6295 50  0000 L CNN
F 1 "10K" H 1670 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 6250 50  0001 C CNN
F 3 "~" H 1600 6250 50  0001 C CNN
	1    1600 6250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 5350 1450 5350
$Comp
L Device:R R7
U 1 1 5E48DE69
P 1600 5350
F 0 "R7" H 1670 5395 50  0000 L CNN
F 1 "10K" H 1670 5305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 5350 50  0001 C CNN
F 3 "~" H 1600 5350 50  0001 C CNN
	1    1600 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5E48F37E
P 1600 5650
F 0 "R8" H 1670 5695 50  0000 L CNN
F 1 "10K" H 1670 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1530 5650 50  0001 C CNN
F 3 "~" H 1600 5650 50  0001 C CNN
	1    1600 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2000 4800 2000 5650
Wire Wire Line
	2050 4600 1900 4600
Wire Wire Line
	1900 4600 1900 5350
Wire Wire Line
	2050 4800 2000 4800
Wire Wire Line
	2050 4700 1700 4700
Wire Wire Line
	2800 4800 2800 5950
$Comp
L Device:Rotary_Encoder_Switch SW5
U 1 1 5E4867AE
P 2350 4700
F 0 "SW5" H 2350 5066 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 2350 4975 50  0000 C CNN
F 2 "Rotary_Encoder:RotaryEncoder_Alps_EC12E-Switch_Vertical_H20mm" H 2200 4860 50  0001 C CNN
F 3 "~" H 2350 4960 50  0001 C CNN
	1    2350 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 4800 2800 4800
Wire Wire Line
	1700 4700 1700 4200
Wire Wire Line
	1700 4200 3000 4200
Wire Wire Line
	2650 4600 3000 4600
Wire Wire Line
	3000 4600 3000 4200
Wire Wire Line
	3000 4200 3250 4200
$Comp
L power:GND #PWR0110
U 1 1 5E4527D6
P 5400 4500
F 0 "#PWR0110" H 5400 4250 50  0001 C CNN
F 1 "GND" H 5405 4327 50  0000 C CNN
F 2 "" H 5400 4500 50  0001 C CNN
F 3 "" H 5400 4500 50  0001 C CNN
	1    5400 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 4350 5400 4400
Connection ~ 5400 4400
Wire Wire Line
	5400 4400 5400 4500
Connection ~ 7750 4850
$Comp
L power:GND #PWR0113
U 1 1 5E4D7AF9
P 7750 4900
F 0 "#PWR0113" H 7750 4650 50  0001 C CNN
F 1 "GND" H 7755 4727 50  0000 C CNN
F 2 "" H 7750 4900 50  0001 C CNN
F 3 "" H 7750 4900 50  0001 C CNN
	1    7750 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4950 7050 4950
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5E4DFD08
P 6850 4850
F 0 "J2" H 6958 5029 50  0000 C CNN
F 1 "Mic" H 6957 4938 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6850 4850 50  0001 C CNN
F 3 "~" H 6850 4850 50  0001 C CNN
	1    6850 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4850 7750 4900
Wire Wire Line
	7050 4850 7300 4850
Wire Wire Line
	7400 4850 7400 4950
Wire Wire Line
	7300 4600 7550 4600
$Comp
L Device:R R5
U 1 1 5E4CDEB1
P 7300 4150
F 0 "R5" H 7370 4195 50  0000 L CNN
F 1 "1K" H 7370 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7230 4150 50  0001 C CNN
F 3 "~" H 7300 4150 50  0001 C CNN
	1    7300 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5E4D310F
P 7300 3900
F 0 "#PWR0114" H 7300 3750 50  0001 C CNN
F 1 "+3V3" H 7315 4073 50  0000 C CNN
F 2 "" H 7300 3900 50  0001 C CNN
F 3 "" H 7300 3900 50  0001 C CNN
	1    7300 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3900 7300 4000
Wire Wire Line
	6950 4500 7550 4500
Wire Wire Line
	7300 4300 7550 4300
Wire Wire Line
	7300 4850 7300 4600
$Comp
L Connector:AudioJack2_Ground_Switch J3
U 1 1 5E4A78CB
P 7750 4500
F 0 "J3" H 7570 4517 50  0000 R CNN
F 1 "Microphone" H 7570 4427 50  0000 R CNN
F 2 "openxcvr:jack3.5mm switched" H 7750 4700 50  0001 C CNN
F 3 "~" H 7750 4700 50  0001 C CNN
	1    7750 4500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7750 4850 7400 4850
Wire Wire Line
	7750 4800 7750 4850
Text GLabel 9150 1950 2    50   Input ~ 0
PB_1
Text GLabel 9150 1850 2    50   Input ~ 0
PB_0
$Comp
L power:+3V3 #PWR0117
U 1 1 5E528E3F
P 9650 2500
F 0 "#PWR0117" H 9650 2350 50  0001 C CNN
F 1 "+3V3" H 9665 2673 50  0000 C CNN
F 2 "" H 9650 2500 50  0001 C CNN
F 3 "" H 9650 2500 50  0001 C CNN
	1    9650 2500
	1    0    0    -1  
$EndComp
Text GLabel 9250 2650 2    50   Input ~ 0
IR
Wire Wire Line
	9650 2500 9650 2850
Wire Wire Line
	8800 2750 9100 2750
Wire Wire Line
	8800 2650 9250 2650
Wire Wire Line
	9100 2750 9100 3000
Wire Wire Line
	8800 2850 9650 2850
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5E5239FF
P 8600 2750
F 0 "J7" H 8708 3029 50  0000 C CNN
F 1 "infrared photo module" H 8708 2938 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8600 2750 50  0001 C CNN
F 3 "~" H 8600 2750 50  0001 C CNN
	1    8600 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5E534DAB
P 9100 3000
F 0 "#PWR0118" H 9100 2750 50  0001 C CNN
F 1 "GND" H 9105 2827 50  0000 C CNN
F 2 "" H 9100 3000 50  0001 C CNN
F 3 "" H 9100 3000 50  0001 C CNN
	1    9100 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E4DE8D2
P 8600 3850
F 0 "J4" H 8708 4029 50  0000 C CNN
F 1 "Speaker" H 8707 3938 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 8600 3850 50  0001 C CNN
F 3 "~" H 8600 3850 50  0001 C CNN
	1    8600 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3850 9150 3850
Wire Wire Line
	9000 3550 9150 3550
Connection ~ 9150 3550
Text GLabel 9000 3550 0    50   Output ~ 0
SPEAKER_HDR
$Comp
L power:GND #PWR0116
U 1 1 5E4DC291
P 9750 4150
F 0 "#PWR0116" H 9750 3900 50  0001 C CNN
F 1 "GND" H 9755 3977 50  0000 C CNN
F 2 "" H 9750 4150 50  0001 C CNN
F 3 "" H 9750 4150 50  0001 C CNN
	1    9750 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4100 9750 4150
Wire Wire Line
	8800 3950 8800 4100
Connection ~ 9750 4100
Wire Wire Line
	8800 4100 9750 4100
Connection ~ 9150 3750
Wire Wire Line
	9150 3850 9150 3750
Wire Wire Line
	9750 4050 9750 4100
$Comp
L Connector:AudioJack2_Ground_Switch J6
U 1 1 5E4A3804
P 9750 3750
F 0 "J6" H 9570 3767 50  0000 R CNN
F 1 "Headphone" H 9570 3677 50  0000 R CNN
F 2 "openxcvr:jack3.5mm switched" H 9750 3950 50  0001 C CNN
F 3 "~" H 9750 3950 50  0001 C CNN
	1    9750 3750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 3750 9150 3550
Wire Wire Line
	9550 3750 9150 3750
Wire Wire Line
	9150 3550 9550 3550
$Comp
L Device:R R2
U 1 1 5E472D08
P 2700 6600
F 0 "R2" H 2770 6645 50  0000 L CNN
F 1 "10K" H 2770 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2630 6600 50  0001 C CNN
F 3 "~" H 2700 6600 50  0001 C CNN
	1    2700 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E472562
P 2200 6600
F 0 "R1" H 2270 6645 50  0000 L CNN
F 1 "10K" H 2270 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2130 6600 50  0001 C CNN
F 3 "~" H 2200 6600 50  0001 C CNN
	1    2200 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5E476DFC
P 2700 6950
F 0 "#PWR0108" H 2700 6700 50  0001 C CNN
F 1 "GND" H 2705 6777 50  0000 C CNN
F 2 "" H 2700 6950 50  0001 C CNN
F 3 "" H 2700 6950 50  0001 C CNN
	1    2700 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5E475A84
P 2200 6950
F 0 "#PWR0109" H 2200 6700 50  0001 C CNN
F 1 "GND" H 2205 6777 50  0000 C CNN
F 2 "" H 2200 6950 50  0001 C CNN
F 3 "" H 2200 6950 50  0001 C CNN
	1    2200 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6750 2200 6950
Wire Wire Line
	1750 5350 1900 5350
Wire Wire Line
	2200 5350 2200 6450
Connection ~ 2000 5650
Connection ~ 1900 5350
Wire Wire Line
	1900 5350 2200 5350
Wire Wire Line
	1750 5950 2800 5950
Wire Wire Line
	1750 5650 2000 5650
Wire Wire Line
	1750 6250 3700 6250
Connection ~ 2800 5950
Wire Wire Line
	2000 5650 2700 5650
Wire Wire Line
	3700 6250 3700 6450
Wire Wire Line
	3200 6750 3200 7000
Wire Wire Line
	2700 6750 2700 6950
Wire Wire Line
	3700 6750 3700 7000
Wire Wire Line
	2800 5950 3200 5950
Wire Wire Line
	2700 5650 3450 5650
Wire Wire Line
	2200 5350 3050 5350
Connection ~ 2200 5350
$Comp
L power:GND #PWR0106
U 1 1 5E478814
P 3700 7000
F 0 "#PWR0106" H 3700 6750 50  0001 C CNN
F 1 "GND" H 3705 6827 50  0000 C CNN
F 2 "" H 3700 7000 50  0001 C CNN
F 3 "" H 3700 7000 50  0001 C CNN
	1    3700 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E473FFC
P 3200 6600
F 0 "R3" H 3270 6645 50  0000 L CNN
F 1 "10K" H 3270 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3130 6600 50  0001 C CNN
F 3 "~" H 3200 6600 50  0001 C CNN
	1    3200 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E477685
P 3200 7000
F 0 "#PWR0107" H 3200 6750 50  0001 C CNN
F 1 "GND" H 3205 6827 50  0000 C CNN
F 2 "" H 3200 7000 50  0001 C CNN
F 3 "" H 3200 7000 50  0001 C CNN
	1    3200 7000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5E474A32
P 3700 6600
F 0 "R4" H 3770 6645 50  0000 L CNN
F 1 "10K" H 3770 6555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3630 6600 50  0001 C CNN
F 3 "~" H 3700 6600 50  0001 C CNN
	1    3700 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4150 5000 4150
Text GLabel 5550 5350 2    50   Input ~ 0
PB_0
Text GLabel 4650 4150 0    50   Input ~ 0
LCD7
Wire Wire Line
	4650 4050 5000 4050
Connection ~ 4850 5350
Wire Wire Line
	4850 5350 5550 5350
Wire Wire Line
	3200 5950 3200 6450
Wire Wire Line
	2700 5650 2700 6450
Connection ~ 2700 5650
Connection ~ 3200 5950
Connection ~ 3000 4200
Text GLabel 3250 4200 2    50   Input ~ 0
PB_1
$Comp
L Switch:SW_Push SW1
U 1 1 5E457E56
P 3250 5350
F 0 "SW1" H 3550 5600 50  0000 R CNN
F 1 "SW_Push" H 3350 5600 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3250 5550 50  0001 C CNN
F 3 "~" H 3250 5550 50  0001 C CNN
	1    3250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 6250 4850 5950
Connection ~ 4850 5650
Wire Wire Line
	4850 5650 4850 5350
Wire Wire Line
	4850 5950 4850 5650
Connection ~ 4850 5950
Wire Wire Line
	3850 5650 4850 5650
$Comp
L Switch:SW_Push SW3
U 1 1 5E459CFD
P 4050 5950
F 0 "SW3" H 4450 6200 50  0000 R CNN
F 1 "SW_Push" H 4250 6200 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4050 6150 50  0001 C CNN
F 3 "~" H 4050 6150 50  0001 C CNN
	1    4050 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5350 4850 5350
Wire Wire Line
	4250 5950 4850 5950
$Comp
L Switch:SW_Push SW4
U 1 1 5E45A3CA
P 4450 6250
F 0 "SW4" H 4800 6500 50  0000 R CNN
F 1 "SW_Push" H 4600 6500 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 4450 6450 50  0001 C CNN
F 3 "~" H 4450 6450 50  0001 C CNN
	1    4450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6250 4850 6250
$Comp
L Switch:SW_Push SW2
U 1 1 5E459409
P 3650 5650
F 0 "SW2" H 4000 5900 50  0000 R CNN
F 1 "SW_Push" H 3800 5900 50  0000 R CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 3650 5850 50  0001 C CNN
F 3 "~" H 3650 5850 50  0001 C CNN
	1    3650 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5950 3850 5950
Connection ~ 3700 6250
Wire Wire Line
	3700 6250 4250 6250
$Comp
L power:+3V3 #PWR0119
U 1 1 5E515EBC
P 3600 1250
F 0 "#PWR0119" H 3600 1100 50  0001 C CNN
F 1 "+3V3" H 3615 1423 50  0000 C CNN
F 2 "" H 3600 1250 50  0001 C CNN
F 3 "" H 3600 1250 50  0001 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1250 3600 1350
$Comp
L Device:R R6
U 1 1 5E515ED7
P 3600 1500
F 0 "R6" H 3670 1545 50  0000 L CNN
F 1 "1K" H 3670 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3530 1500 50  0001 C CNN
F 3 "~" H 3600 1500 50  0001 C CNN
	1    3600 1500
	1    0    0    -1  
$EndComp
Connection ~ 3600 1850
Wire Wire Line
	3600 1850 4000 1850
$Comp
L power:GND #PWR0101
U 1 1 5E3CFEDB
P 1950 1200
F 0 "#PWR0101" H 1950 950 50  0001 C CNN
F 1 "GND" H 1955 1027 50  0000 C CNN
F 2 "" H 1950 1200 50  0001 C CNN
F 3 "" H 1950 1200 50  0001 C CNN
	1    1950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1650 3600 1850
Wire Wire Line
	3450 1850 3600 1850
Text GLabel 3450 1850 0    50   Output ~ 0
PTT
$Comp
L power:GND #PWR0103
U 1 1 5E3CEA8A
P 1350 1200
F 0 "#PWR0103" H 1350 950 50  0001 C CNN
F 1 "GND" H 1355 1027 50  0000 C CNN
F 2 "" H 1350 1200 50  0001 C CNN
F 3 "" H 1350 1200 50  0001 C CNN
	1    1350 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E3CE5BD
P 1050 1200
F 0 "#PWR0102" H 1050 950 50  0001 C CNN
F 1 "GND" H 1055 1027 50  0000 C CNN
F 2 "" H 1050 1200 50  0001 C CNN
F 3 "" H 1050 1200 50  0001 C CNN
	1    1050 1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E3C8D4A
P 1050 1000
F 0 "H1" H 1150 1049 50  0000 L CNN
F 1 "MountingHole_Pad" H 1150 958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1050 1000 50  0001 C CNN
F 3 "~" H 1050 1000 50  0001 C CNN
	1    1050 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E3C9BDE
P 1350 1000
F 0 "H2" H 1450 1049 50  0000 L CNN
F 1 "MountingHole_Pad" H 1450 958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1350 1000 50  0001 C CNN
F 3 "~" H 1350 1000 50  0001 C CNN
	1    1350 1000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E3CEEAD
P 1650 1200
F 0 "#PWR0104" H 1650 950 50  0001 C CNN
F 1 "GND" H 1655 1027 50  0000 C CNN
F 2 "" H 1650 1200 50  0001 C CNN
F 3 "" H 1650 1200 50  0001 C CNN
	1    1650 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 1100 1050 1200
Wire Wire Line
	1350 1100 1350 1200
Wire Wire Line
	1650 1100 1650 1200
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E3CC23B
P 1650 1000
F 0 "H3" H 1750 1049 50  0000 L CNN
F 1 "MountingHole_Pad" H 1750 958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1650 1000 50  0001 C CNN
F 3 "~" H 1650 1000 50  0001 C CNN
	1    1650 1000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E3CDA31
P 1950 1000
F 0 "H4" H 2050 1049 50  0000 L CNN
F 1 "MountingHole_Pad" H 2050 958 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 1950 1000 50  0001 C CNN
F 3 "~" H 1950 1000 50  0001 C CNN
	1    1950 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 1100 1950 1200
Text GLabel 4650 3150 0    50   Input ~ 0
LCD_RS
Text GLabel 4650 2950 0    50   Input ~ 0
LCD_E
$Comp
L power:GND #PWR0115
U 1 1 5E4F8DE8
P 4200 2450
F 0 "#PWR0115" H 4200 2200 50  0001 C CNN
F 1 "GND" H 4205 2277 50  0000 C CNN
F 2 "" H 4200 2450 50  0001 C CNN
F 3 "" H 4200 2450 50  0001 C CNN
	1    4200 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2350 4200 2450
$Comp
L Connector:AudioJack2_Ground_Switch J5
U 1 1 5E4F8E0F
P 4200 2050
F 0 "J5" H 4020 2067 50  0000 R CNN
F 1 "PTT" H 4020 1977 50  0000 R CNN
F 2 "openxcvr:jack3.5mm switched" H 4200 2250 50  0001 C CNN
F 3 "~" H 4200 2250 50  0001 C CNN
	1    4200 2050
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR053
U 1 1 5E41EA02
P 7200 1700
F 0 "#PWR053" H 7200 1550 50  0001 C CNN
F 1 "+3V3" H 7215 1873 50  0000 C CNN
F 2 "" H 7200 1700 50  0001 C CNN
F 3 "" H 7200 1700 50  0001 C CNN
	1    7200 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1750 7200 1700
Wire Wire Line
	6950 1850 6950 1700
$Comp
L power:+5V #PWR0105
U 1 1 5E44FE4C
P 6950 1700
F 0 "#PWR0105" H 6950 1550 50  0001 C CNN
F 1 "+5V" H 6965 1873 50  0000 C CNN
F 2 "" H 6950 1700 50  0001 C CNN
F 3 "" H 6950 1700 50  0001 C CNN
	1    6950 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0111
U 1 1 5E45118B
P 5400 2400
F 0 "#PWR0111" H 5400 2250 50  0001 C CNN
F 1 "+5V" H 5415 2573 50  0000 C CNN
F 2 "" H 5400 2400 50  0001 C CNN
F 3 "" H 5400 2400 50  0001 C CNN
	1    5400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2400 5400 2650
Wire Wire Line
	5900 2650 5400 2650
Connection ~ 5400 2650
Wire Wire Line
	5400 2650 5400 2750
Wire Wire Line
	5800 3250 5900 3250
Wire Wire Line
	5800 3350 5900 3350
Text GLabel 6000 2950 2    50   Input ~ 0
LCD_CONTRAST
Wire Wire Line
	5800 2950 6000 2950
Wire Wire Line
	5900 3250 5900 2650
Wire Wire Line
	5900 3350 5900 4400
Wire Wire Line
	5900 4400 5400 4400
$Comp
L Display_Character:WC1602A DS1
U 1 1 5E442316
P 5400 3550
F 0 "DS1" H 5400 4529 50  0000 C CNN
F 1 "WC1602A" H 5400 4438 50  0000 C CNN
F 2 "Display:WC1602A" H 5400 2650 50  0001 C CIN
F 3 "http://www.wincomlcd.com/pdf/WC1602A-SFYLYHTC06.pdf" H 6100 3550 50  0001 C CNN
	1    5400 3550
	1    0    0    -1  
$EndComp
Text GLabel 6950 4500 0    50   Output ~ 0
MIC_HDR
$Comp
L power:GND #PWR0112
U 1 1 5E45429E
P 4800 3300
F 0 "#PWR0112" H 4800 3050 50  0001 C CNN
F 1 "GND" H 4805 3127 50  0000 C CNN
F 2 "" H 4800 3300 50  0001 C CNN
F 3 "" H 4800 3300 50  0001 C CNN
	1    4800 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3300 4800 3050
Wire Wire Line
	4800 3050 5000 3050
Wire Wire Line
	4650 2950 5000 2950
Wire Wire Line
	4650 3150 5000 3150
Wire Wire Line
	4650 3950 5000 3950
Wire Wire Line
	4650 3850 5000 3850
Text GLabel 4650 3950 0    50   Input ~ 0
LCD5
Text GLabel 4650 4050 0    50   Input ~ 0
LCD6
Text GLabel 4650 3850 0    50   Input ~ 0
LCD4
$EndSCHEMATC
