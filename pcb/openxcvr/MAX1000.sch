EESchema Schematic File Version 5
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
	2600 4850 3100 4850
Wire Wire Line
	2600 4750 3100 4750
Wire Wire Line
	2600 4650 3100 4650
Wire Wire Line
	2600 4550 3100 4550
Wire Wire Line
	2000 4850 2100 4850
NoConn ~ 2100 4550
Wire Wire Line
	2000 4950 2000 4850
$Comp
L power:GND #PWR054
U 1 1 5E41F607
P 2000 4950
F 0 "#PWR054" H 2000 4700 50  0001 C CNN
F 1 "GND" H 2005 4777 50  0000 C CNN
F 2 "" H 2000 4950 50  0001 C CNN
F 3 "" H 2000 4950 50  0001 C CNN
	1    2000 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV3
U 1 1 5E49FC52
P 2450 5700
F 0 "RV3" H 2380 5745 50  0000 R CNN
F 1 "10K" H 2380 5655 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Piher_PT-6-V_Vertical" H 2450 5700 50  0001 C CNN
F 3 "~" H 2450 5700 50  0001 C CNN
	1    2450 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR055
U 1 1 5E4645E6
P 2450 5450
F 0 "#PWR055" H 2450 5300 50  0001 C CNN
F 1 "+5V" H 2465 5623 50  0000 C CNN
F 2 "" H 2450 5450 50  0001 C CNN
F 3 "" H 2450 5450 50  0001 C CNN
	1    2450 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR056
U 1 1 5E466E62
P 2450 5950
F 0 "#PWR056" H 2450 5700 50  0001 C CNN
F 1 "GND" H 2455 5777 50  0000 C CNN
F 2 "" H 2450 5950 50  0001 C CNN
F 3 "" H 2450 5950 50  0001 C CNN
	1    2450 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4050 2100 4050
Text GLabel 2000 4150 0    50   Output ~ 0
PTT
Wire Wire Line
	2000 4150 2100 4150
Wire Wire Line
	900  4750 2100 4750
Wire Wire Line
	1150 4650 2100 4650
$Comp
L power:+3V3 #PWR053
U 1 1 5E41EA02
P 1150 4600
F 0 "#PWR053" H 1150 4450 50  0001 C CNN
F 1 "+3V3" H 1165 4773 50  0000 C CNN
F 2 "" H 1150 4600 50  0001 C CNN
F 3 "" H 1150 4600 50  0001 C CNN
	1    1150 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR052
U 1 1 5E41FE2B
P 900 4600
F 0 "#PWR052" H 900 4450 50  0001 C CNN
F 1 "+5V" H 915 4773 50  0000 C CNN
F 2 "" H 900 4600 50  0001 C CNN
F 3 "" H 900 4600 50  0001 C CNN
	1    900  4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 4650 1150 4600
Wire Wire Line
	900  4750 900  4600
Wire Wire Line
	2450 5450 2450 5550
Wire Wire Line
	2450 5850 2450 5950
Text GLabel 3150 5700 2    50   Input ~ 0
LCD_CONTRAST
Text GLabel 3100 4750 2    50   Input ~ 0
PB_0
Text GLabel 3100 4850 2    50   Input ~ 0
PB_1
Wire Wire Line
	2600 5700 3150 5700
Text GLabel 3100 4550 2    50   Input ~ 0
LCD_CONTRAST
Text GLabel 3100 4650 2    50   Input ~ 0
IR
Wire Wire Line
	2000 3950 2100 3950
Text GLabel 2000 3950 0    50   Output ~ 0
SPEAKER_HDR
Text GLabel 2000 4050 0    50   Output ~ 0
MIC_HDR
NoConn ~ 2100 4450
NoConn ~ 2100 4250
NoConn ~ 2100 4350
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J1
U 1 1 5E4166C1
P 2300 4350
F 0 "J1" H 2350 4966 50  0000 C CNN
F 1 "UI_CONNECTOR" H 2350 4875 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x10_P2.54mm_Vertical" H 2300 4350 50  0001 C CNN
F 3 "~" H 2300 4350 50  0001 C CNN
	1    2300 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4450 3100 4450
Wire Wire Line
	2600 4350 3100 4350
Wire Wire Line
	2600 4250 3100 4250
Wire Wire Line
	2600 4150 3100 4150
Wire Wire Line
	2600 4050 3100 4050
Wire Wire Line
	3250 3050 2600 3050
Wire Wire Line
	2600 2950 2600 3050
Wire Wire Line
	2600 3050 2600 3150
Wire Wire Line
	3000 2750 3250 2750
Wire Wire Line
	3250 2750 3250 3050
Wire Wire Line
	2600 3950 3100 3950
Text GLabel 3100 4250 2    50   Input ~ 0
LCD4
Text GLabel 3100 4450 2    50   Input ~ 0
LCD_E
Text GLabel 3100 4350 2    50   Input ~ 0
LCD_RS
Text GLabel 3100 4150 2    50   Input ~ 0
LCD5
Text GLabel 3100 4050 2    50   Input ~ 0
LCD6
$Comp
L power:GND #PWR0106
U 1 1 5E3F7DBF
P 2000 3150
F 0 "#PWR0106" H 2000 2900 50  0001 C CNN
F 1 "GND" H 2005 2977 50  0000 C CNN
F 2 "" H 2000 3150 50  0001 C CNN
F 3 "" H 2000 3150 50  0001 C CNN
	1    2000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2750 2000 3150
$Comp
L power:GND #PWR0107
U 1 1 5E3FB876
P 2600 3150
F 0 "#PWR0107" H 2600 2900 50  0001 C CNN
F 1 "GND" H 2605 2977 50  0000 C CNN
F 2 "" H 2600 3150 50  0001 C CNN
F 3 "" H 2600 3150 50  0001 C CNN
	1    2600 3150
	1    0    0    -1  
$EndComp
Connection ~ 2600 3050
Text GLabel 3100 3950 2    50   Input ~ 0
LCD7
Text GLabel 4750 3650 0    50   Input ~ 0
LCD5
Text GLabel 4750 3550 0    50   Input ~ 0
LCD7
Text GLabel 4750 3750 0    50   Input ~ 0
LCD_RS
Text GLabel 4750 2950 0    50   Input ~ 0
LRCK
Text GLabel 4750 3050 0    50   Output ~ 0
SCK
Text GLabel 4750 2850 0    50   Input ~ 0
BCK
Text GLabel 4750 3150 0    50   Output ~ 0
1PPS
Text GLabel 4750 3250 0    50   Output ~ 0
SPEAKER
Wire Wire Line
	4750 3250 5250 3250
Wire Wire Line
	4750 3050 5250 3050
Wire Wire Line
	4750 3150 5250 3150
Wire Wire Line
	4750 2950 5250 2950
Wire Wire Line
	4750 2850 5250 2850
NoConn ~ 5250 2650
Wire Wire Line
	4750 2750 5250 2750
Wire Wire Line
	3650 2450 5250 2450
Wire Wire Line
	3800 2650 3800 2550
Wire Wire Line
	3800 2550 5250 2550
Text GLabel 4750 2750 0    50   Input ~ 0
DOUT
Wire Wire Line
	3650 2550 3650 2450
Wire Wire Line
	4750 2250 5250 2250
Wire Wire Line
	4750 2350 5250 2350
Wire Wire Line
	4750 2150 5250 2150
NoConn ~ 5250 2050
Wire Wire Line
	4750 1950 5250 1950
Wire Wire Line
	4950 3950 4950 4100
Wire Wire Line
	5200 4050 5250 4050
Wire Wire Line
	5250 3950 4950 3950
$Comp
L power:GND #PWR057
U 1 1 5E447556
P 4950 4100
F 0 "#PWR057" H 4950 3850 50  0001 C CNN
F 1 "GND" H 4955 3927 50  0000 C CNN
F 2 "" H 4950 4100 50  0001 C CNN
F 3 "" H 4950 4100 50  0001 C CNN
	1    4950 4100
	1    0    0    -1  
$EndComp
Text GLabel 4750 3850 0    50   Input ~ 0
PB_1
Wire Wire Line
	4750 3850 5250 3850
Wire Wire Line
	4750 3750 5250 3750
Wire Wire Line
	4750 3650 5250 3650
Wire Wire Line
	4750 3550 5250 3550
Wire Wire Line
	5200 4600 5200 4050
Wire Wire Line
	5850 4600 5200 4600
$Comp
L power:+3V3 #PWR059
U 1 1 5E470A48
P 5850 4350
F 0 "#PWR059" H 5850 4200 50  0001 C CNN
F 1 "+3V3" H 5865 4523 50  0000 C CNN
F 2 "" H 5850 4350 50  0001 C CNN
F 3 "" H 5850 4350 50  0001 C CNN
	1    5850 4350
	1    0    0    -1  
$EndComp
Connection ~ 5850 4600
Wire Wire Line
	5850 4350 5850 4600
Wire Wire Line
	6500 4600 5850 4600
Wire Wire Line
	6500 4050 6500 4600
Wire Wire Line
	6400 4050 6500 4050
Wire Wire Line
	6400 3950 6750 3950
$Comp
L power:GND #PWR062
U 1 1 5E4469B9
P 6750 4100
F 0 "#PWR062" H 6750 3850 50  0001 C CNN
F 1 "GND" H 6755 3927 50  0000 C CNN
F 2 "" H 6750 4100 50  0001 C CNN
F 3 "" H 6750 4100 50  0001 C CNN
	1    6750 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3950 6750 4100
Wire Wire Line
	6400 3850 7000 3850
Wire Wire Line
	6400 3750 7000 3750
Wire Wire Line
	6400 3650 7000 3650
Text GLabel 4750 1950 0    50   Input ~ 0
MIC
Text GLabel 4750 2150 0    50   Input ~ 0
BATTERY
Text GLabel 4750 2250 0    50   Input ~ 0
FWD_PWR
Text GLabel 4750 2350 0    50   Input ~ 0
REV_PWR
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5E3CDA31
P 2900 1100
F 0 "H4" H 3000 1149 50  0000 L CNN
F 1 "MountingHole_Pad" H 3000 1058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 2900 1100 50  0001 C CNN
F 3 "~" H 2900 1100 50  0001 C CNN
	1    2900 1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5E3CC23B
P 2600 1100
F 0 "H3" H 2700 1149 50  0000 L CNN
F 1 "MountingHole_Pad" H 2700 1058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 2600 1100 50  0001 C CNN
F 3 "~" H 2600 1100 50  0001 C CNN
	1    2600 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E3CFEDB
P 2900 1300
F 0 "#PWR0101" H 2900 1050 50  0001 C CNN
F 1 "GND" H 2905 1127 50  0000 C CNN
F 2 "" H 2900 1300 50  0001 C CNN
F 3 "" H 2900 1300 50  0001 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5E3CEEAD
P 2600 1300
F 0 "#PWR0104" H 2600 1050 50  0001 C CNN
F 1 "GND" H 2605 1127 50  0000 C CNN
F 2 "" H 2600 1300 50  0001 C CNN
F 3 "" H 2600 1300 50  0001 C CNN
	1    2600 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E3CE5BD
P 2000 1300
F 0 "#PWR0102" H 2000 1050 50  0001 C CNN
F 1 "GND" H 2005 1127 50  0000 C CNN
F 2 "" H 2000 1300 50  0001 C CNN
F 3 "" H 2000 1300 50  0001 C CNN
	1    2000 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 1200 2300 1300
Wire Wire Line
	2600 1200 2600 1300
Wire Wire Line
	2000 1200 2000 1300
Wire Wire Line
	2900 1200 2900 1300
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5E3C9BDE
P 2300 1100
F 0 "H2" H 2400 1149 50  0000 L CNN
F 1 "MountingHole_Pad" H 2400 1058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 2300 1100 50  0001 C CNN
F 3 "~" H 2300 1100 50  0001 C CNN
	1    2300 1100
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5E3C8D4A
P 2000 1100
F 0 "H1" H 2100 1149 50  0000 L CNN
F 1 "MountingHole_Pad" H 2100 1058 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_Pad" H 2000 1100 50  0001 C CNN
F 3 "~" H 2000 1100 50  0001 C CNN
	1    2000 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5E3CEA8A
P 2300 1300
F 0 "#PWR0103" H 2300 1050 50  0001 C CNN
F 1 "GND" H 2305 1127 50  0000 C CNN
F 2 "" H 2300 1300 50  0001 C CNN
F 3 "" H 2300 1300 50  0001 C CNN
	1    2300 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 2550 2000 2550
$Comp
L power:+3V3 #PWR0105
U 1 1 5E3FF515
P 2600 2250
F 0 "#PWR0105" H 2600 2100 50  0001 C CNN
F 1 "+3V3" H 2615 2423 50  0000 C CNN
F 2 "" H 2600 2250 50  0001 C CNN
F 3 "" H 2600 2250 50  0001 C CNN
	1    2600 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2250 2600 2350
Connection ~ 2000 2650
Wire Wire Line
	2000 2550 2000 2650
Wire Wire Line
	2000 2650 2000 2750
Wire Wire Line
	2000 2750 2200 2750
Connection ~ 2000 2750
Wire Wire Line
	2000 2650 2200 2650
$Comp
L Memory_EEPROM:24LC256 U11
U 1 1 5E3F6A57
P 2600 2650
F 0 "U11" H 2600 3129 50  0000 C CNN
F 1 "24LC256" H 2600 3038 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 2600 2650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21203m.pdf" H 2600 2650 50  0001 C CNN
	1    2600 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 2550 3650 2550
Wire Wire Line
	3000 2650 3800 2650
Text GLabel 7000 3550 2    50   Input ~ 0
LCD6
Text GLabel 7000 3750 2    50   Input ~ 0
LCD_E
Text GLabel 7000 3650 2    50   Input ~ 0
LCD4
Text GLabel 7000 3850 2    50   Input ~ 0
PB_0
Wire Wire Line
	6550 2250 6550 3300
Wire Wire Line
	6400 2250 6550 2250
Wire Wire Line
	6400 2550 7000 2550
Wire Wire Line
	6400 2450 7000 2450
Wire Wire Line
	6400 2350 7000 2350
Wire Wire Line
	6400 2750 7000 2750
Wire Wire Line
	6400 2850 7000 2850
Wire Wire Line
	6400 3050 7000 3050
Wire Wire Line
	6400 2950 7000 2950
Wire Wire Line
	6400 2650 7000 2650
$Comp
L xcvr_components:MAX_1000 U8
U 1 1 5E2CD29F
P 5800 1800
F 0 "U8" H 5875 1914 50  0000 C CNN
F 1 "MAX_1000" H 5875 1823 50  0000 C CNN
F 2 "openxcvr:max1000" H 5800 1800 50  0001 C CNN
F 3 "" H 5800 1800 50  0001 C CNN
	1    5800 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR061
U 1 1 5E2D1F79
P 6700 1850
F 0 "#PWR061" H 6700 1700 50  0001 C CNN
F 1 "+5V" H 6715 2023 50  0000 C CNN
F 2 "" H 6700 1850 50  0001 C CNN
F 3 "" H 6700 1850 50  0001 C CNN
	1    6700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 1950 6700 1850
Wire Wire Line
	6400 1950 6700 1950
$Comp
L power:GND #PWR060
U 1 1 5E2D36F0
P 6550 3300
F 0 "#PWR060" H 6550 3050 50  0001 C CNN
F 1 "GND" H 6555 3127 50  0000 C CNN
F 2 "" H 6550 3300 50  0001 C CNN
F 3 "" H 6550 3300 50  0001 C CNN
	1    6550 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3150 7000 3150
Wire Wire Line
	6400 3250 7000 3250
Wire Wire Line
	6400 3550 7000 3550
Wire Wire Line
	6400 2150 6900 2150
Wire Wire Line
	6400 2050 7000 2050
$Comp
L power:+3V3 #PWR063
U 1 1 5E2D2FF7
P 6900 1850
F 0 "#PWR063" H 6900 1700 50  0001 C CNN
F 1 "+3V3" H 6915 2023 50  0000 C CNN
F 2 "" H 6900 1850 50  0001 C CNN
F 3 "" H 6900 1850 50  0001 C CNN
	1    6900 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 1850 6900 2150
Text GLabel 7000 2050 2    50   Input ~ 0
5V_IN
Text GLabel 7000 3050 2    50   Output ~ 0
BAND_2
Text GLabel 7000 2950 2    50   Output ~ 0
TX_ENABLE
Text GLabel 7000 3150 2    50   Output ~ 0
BAND_1
Text GLabel 7000 3250 2    50   Output ~ 0
BAND_0
Text GLabel 7000 2850 2    50   Output ~ 0
LO_I
Text GLabel 7000 2750 2    50   Output ~ 0
LO_Q
Text GLabel 7000 2350 2    50   Output ~ 0
IR
Text GLabel 7000 2550 2    50   Output ~ 0
PTT
Text GLabel 7000 2650 2    50   Output ~ 0
TRANSMIT_RF
Text GLabel 7000 2450 2    50   Output ~ 0
TEST_SIGNAL
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 5E38CD1E
P 9000 4250
F 0 "J2" H 9050 4666 50  0000 C CNN
F 1 "PA_CONNECTOR" H 9050 4575 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x05_P2.54mm_Vertical" H 9000 4250 50  0001 C CNN
F 3 "~" H 9000 4250 50  0001 C CNN
	1    9000 4250
	1    0    0    -1  
$EndComp
Text GLabel 8500 4150 0    50   Input ~ 0
FWD_PWR
Text GLabel 8500 4250 0    50   Input ~ 0
REV_PWR
Text GLabel 8500 4050 0    50   Input ~ 0
BATTERY
Text GLabel 8500 4350 0    50   Output ~ 0
5V_IN
$Comp
L power:GND #PWR067
U 1 1 5E3B6E44
P 9250 3200
F 0 "#PWR067" H 9250 2950 50  0001 C CNN
F 1 "GND" H 9255 3027 50  0000 C CNN
F 2 "" H 9250 3200 50  0001 C CNN
F 3 "" H 9250 3200 50  0001 C CNN
	1    9250 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3100 9500 3100
Wire Wire Line
	9250 3200 9250 3100
Wire Wire Line
	9250 2450 9250 2500
Wire Wire Line
	9500 2450 9250 2450
Text GLabel 9050 3000 0    50   Output ~ 0
TEST_SIGNAL
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5E3907D9
P 9700 2350
F 0 "J3" H 9808 2529 50  0000 C CNN
F 1 "GPS_CONNECTOR" H 9808 2438 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9700 2350 50  0001 C CNN
F 3 "~" H 9700 2350 50  0001 C CNN
	1    9700 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9000 2350 9500 2350
Text GLabel 9000 2350 0    50   Output ~ 0
1PPS
$Comp
L power:GND #PWR066
U 1 1 5E3C7A69
P 9250 2500
F 0 "#PWR066" H 9250 2250 50  0001 C CNN
F 1 "GND" H 9255 2327 50  0000 C CNN
F 2 "" H 9250 2500 50  0001 C CNN
F 3 "" H 9250 2500 50  0001 C CNN
	1    9250 2500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 5E3911FA
P 9700 3000
F 0 "J4" H 9808 3179 50  0000 C CNN
F 1 "TEST_SIGNAL_CONNECTOR" H 9808 3088 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 9700 3000 50  0001 C CNN
F 3 "~" H 9700 3000 50  0001 C CNN
	1    9700 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9050 3000 9500 3000
Text GLabel 9900 4150 2    50   Output ~ 0
BAND_2
Text GLabel 9900 4050 2    50   Output ~ 0
TX_ENABLE
Text GLabel 9900 4250 2    50   Output ~ 0
BAND_1
Text GLabel 9900 4350 2    50   Output ~ 0
BAND_0
Text GLabel 9900 4450 2    50   BiDi ~ 0
RF_OUT
Wire Wire Line
	9300 4250 9900 4250
Wire Wire Line
	9300 4350 9900 4350
Wire Wire Line
	9300 4450 9900 4450
Wire Wire Line
	9300 4150 9900 4150
Wire Wire Line
	9300 4050 9900 4050
Wire Wire Line
	8650 4450 8800 4450
Wire Wire Line
	8500 4050 8800 4050
Wire Wire Line
	8500 4250 8800 4250
Wire Wire Line
	8650 4550 8650 4450
Wire Wire Line
	8500 4150 8800 4150
$Comp
L power:GND #PWR065
U 1 1 5E3AEBD5
P 8650 4550
F 0 "#PWR065" H 8650 4300 50  0001 C CNN
F 1 "GND" H 8655 4377 50  0000 C CNN
F 2 "" H 8650 4550 50  0001 C CNN
F 3 "" H 8650 4550 50  0001 C CNN
	1    8650 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4350 8800 4350
$EndSCHEMATC