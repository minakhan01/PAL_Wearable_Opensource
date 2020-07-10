EESchema Schematic File Version 4
LIBS:PAL_shield-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1
U 1 1 5DB489F0
P 2800 2450
F 0 "J1" H 2850 3567 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2850 3476 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 2800 2450 50  0001 C CNN
F 3 "~" H 2800 2450 50  0001 C CNN
	1    2800 2450
	1    0    0    -1  
$EndComp
Text Notes 2300 3450 0    59   ~ 0
3V3\nSDA\nSCL\n\nGND\n\nLED\n\n3V3\nMOSI\nMISO\nSCLK\nGND\n\n\n\n\nPWM\nMISO1\n\nGND
Text Notes 3150 3350 0    59   ~ 0
5V \n5V\n\n\nBUTTON\nBCLK\nGND\n\n\n\n\nSPI (CS0)\n\n\n\n\n\nGND\n\nMOSI1\n
$Comp
L Analog_ADC:MCP3008 U1
U 1 1 5DB50D84
P 4800 2350
F 0 "U1" H 4800 3031 50  0000 C CNN
F 1 "MCP3008" H 4800 2940 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 4900 2450 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21295d.pdf" H 4900 2450 50  0001 C CNN
	1    4800 2350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4600 1850 4600 1500
Wire Wire Line
	4600 1500 4750 1500
Wire Wire Line
	4900 1500 4900 1850
Wire Wire Line
	4750 1100 1900 1100
Wire Wire Line
	1900 1550 2100 1550
Connection ~ 4750 1500
Wire Wire Line
	4750 1500 4900 1500
Wire Wire Line
	4600 2950 4600 3250
Wire Wire Line
	4600 3250 4750 3250
Wire Wire Line
	4900 3250 4900 2950
Wire Wire Line
	1900 1950 2600 1950
Connection ~ 4750 3250
Wire Wire Line
	4750 3250 4900 3250
Wire Wire Line
	4100 2650 3100 2650
Wire Wire Line
	4200 2450 3800 2450
Wire Wire Line
	3800 3600 2250 3600
Wire Wire Line
	2250 3600 2250 2450
Wire Wire Line
	2250 2450 2600 2450
Wire Wire Line
	3800 2450 3800 3600
Wire Wire Line
	4200 2350 3900 2350
Wire Wire Line
	3900 2350 3900 3700
Wire Wire Line
	2150 2550 2600 2550
Wire Wire Line
	2150 3700 2150 2550
Wire Wire Line
	4750 3950 1900 3950
Wire Wire Line
	1900 3950 1900 1950
Wire Wire Line
	4200 2250 4000 2250
Wire Wire Line
	4000 2250 4000 3800
Wire Wire Line
	4000 3800 2050 3800
Wire Wire Line
	2050 3800 2050 2650
Wire Wire Line
	2050 2650 2600 2650
Wire Wire Line
	4100 2650 4100 2550
Wire Wire Line
	4100 2550 4200 2550
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 5DB80C36
P 1150 1850
F 0 "J2" H 1068 2267 50  0000 C CNN
F 1 "Conn_01x06" H 1068 2176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 1150 1850 50  0001 C CNN
F 3 "~" H 1150 1850 50  0001 C CNN
	1    1150 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1900 1100 1900 1550
Wire Wire Line
	1350 1850 1900 1850
Wire Wire Line
	1900 1850 1900 1950
Connection ~ 1900 1950
Wire Wire Line
	1350 1950 1700 1950
Wire Wire Line
	1700 1950 1700 1750
Wire Wire Line
	1700 1750 2450 1750
Wire Wire Line
	1350 2050 1800 2050
Wire Wire Line
	1800 2050 1800 1600
Wire Wire Line
	1800 1600 2350 1600
Wire Wire Line
	2600 1600 2600 1650
$Comp
L Connector_Generic:Conn_01x08 J3
U 1 1 5DB9074D
P 4000 1600
F 0 "J3" H 4080 1592 50  0000 L CNN
F 1 "Conn_01x08" H 4080 1501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 4000 1600 50  0001 C CNN
F 3 "~" H 4000 1600 50  0001 C CNN
	1    4000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1550 3100 1550
Wire Wire Line
	3700 3550 2500 3550
Wire Wire Line
	2400 3550 2400 3450
Wire Wire Line
	2400 3450 2600 3450
Wire Wire Line
	4750 3250 4750 3950
Wire Wire Line
	3700 3400 3700 3550
Connection ~ 3700 3400
Wire Wire Line
	4150 2050 3100 2050
Wire Wire Line
	3900 3700 2150 3700
Wire Wire Line
	2600 3250 1750 3250
Wire Wire Line
	1750 4000 5650 4000
Wire Wire Line
	1750 3250 1750 4000
Wire Wire Line
	5500 800  2050 800 
Wire Wire Line
	2050 800  2050 2150
Wire Wire Line
	2050 2150 2600 2150
Wire Wire Line
	5550 750  3300 750 
Wire Wire Line
	3300 750  3300 1950
Wire Wire Line
	3300 1950 3100 1950
Wire Wire Line
	2500 3850 2500 3550
Connection ~ 2500 3550
Wire Wire Line
	2500 3550 2400 3550
Wire Wire Line
	1350 1650 1700 1650
Wire Wire Line
	1700 1650 1700 1450
Wire Wire Line
	1700 1450 3400 1450
Wire Wire Line
	3400 1450 3400 1650
Wire Wire Line
	3400 1650 3100 1650
Wire Wire Line
	1500 4100 1500 3150
Wire Wire Line
	1500 3150 2600 3150
Wire Wire Line
	2250 600  2250 1550
Connection ~ 2250 1550
Wire Wire Line
	2250 1550 2600 1550
Wire Wire Line
	4750 1100 4750 1500
Wire Wire Line
	6150 600  6150 1700
Wire Wire Line
	6150 1700 6600 1700
Wire Wire Line
	2250 600  6150 600 
Wire Wire Line
	7600 3350 7600 1800
Wire Wire Line
	7600 1800 7200 1800
Wire Wire Line
	3100 3350 7600 3350
Wire Wire Line
	5650 4000 5650 1900
Wire Wire Line
	5650 1900 6700 1900
Wire Wire Line
	7750 3850 7750 2100
Wire Wire Line
	7750 1900 7200 1900
Wire Wire Line
	2500 3850 7750 3850
Wire Wire Line
	5500 2000 6700 2000
Wire Wire Line
	5500 2000 5500 800 
Wire Wire Line
	6700 2100 5550 2100
Wire Wire Line
	5550 750  5550 2100
Wire Wire Line
	6700 1800 4150 1800
Wire Wire Line
	4150 1800 4150 2050
Wire Wire Line
	7750 1900 7750 1700
Wire Wire Line
	7750 1700 7500 1700
Connection ~ 7750 1900
Wire Wire Line
	7200 2000 7750 2000
Connection ~ 7750 2000
Wire Wire Line
	7750 2000 7750 1900
Wire Wire Line
	7200 2100 7750 2100
Connection ~ 7750 2100
Wire Wire Line
	7750 2100 7750 2000
Wire Wire Line
	5400 2050 6050 2050
Wire Wire Line
	6050 2050 6050 2200
Wire Wire Line
	6050 2200 6700 2200
Wire Wire Line
	6700 2300 6450 2300
Wire Wire Line
	6450 2300 6450 1500
Wire Wire Line
	6450 1500 7500 1500
Wire Wire Line
	7500 1500 7500 1700
Connection ~ 7500 1700
Wire Wire Line
	7500 1700 7200 1700
Wire Wire Line
	7200 2200 7400 2200
Wire Wire Line
	7400 2200 7400 1350
Wire Wire Line
	7400 1350 6600 1350
Wire Wire Line
	6600 1350 6600 1700
Connection ~ 6600 1700
Wire Wire Line
	6600 1700 6700 1700
Wire Wire Line
	6700 2400 6450 2400
Wire Wire Line
	6450 2400 6450 2300
Connection ~ 6450 2300
Wire Wire Line
	7200 2300 7450 2300
Wire Wire Line
	7450 2300 7450 4100
Wire Wire Line
	1500 4100 7450 4100
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J5
U 1 1 5DE9C731
P 6100 2950
F 0 "J5" H 6150 3267 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6150 3176 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical" H 6100 2950 50  0001 C CNN
F 3 "~" H 6100 2950 50  0001 C CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2350 1100 4300
Wire Wire Line
	1100 4300 5800 4300
Wire Wire Line
	5800 4300 5800 2850
Wire Wire Line
	5800 2850 5900 2850
Wire Wire Line
	6600 3400 6600 3050
Wire Wire Line
	6600 3050 6400 3050
Wire Wire Line
	3700 3400 6600 3400
Wire Wire Line
	5900 2950 5750 2950
Wire Wire Line
	5750 2950 5750 700 
Wire Wire Line
	5750 700  2350 700 
Wire Wire Line
	2350 700  2350 1600
Connection ~ 2350 1600
Wire Wire Line
	2350 1600 2600 1600
Wire Wire Line
	5900 3050 5700 3050
Wire Wire Line
	5700 3050 5700 650 
Wire Wire Line
	2450 650  2450 1750
Wire Wire Line
	2450 650  5700 650 
Connection ~ 2450 1750
Wire Wire Line
	2450 1750 2600 1750
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J4
U 1 1 5DEBEB0B
P 6900 2000
F 0 "J4" H 6950 2517 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 6950 2426 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x08_P2.54mm_Vertical" H 6900 2000 50  0001 C CNN
F 3 "~" H 6900 2000 50  0001 C CNN
	1    6900 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1550 3550 1300
Wire Wire Line
	3550 1300 3800 1300
Wire Wire Line
	3700 1400 3800 1400
Wire Wire Line
	3700 1400 3700 3400
$Comp
L Connector_Generic:Conn_01x03 J6
U 1 1 5DEF4867
P 5200 1250
F 0 "J6" H 5280 1292 50  0000 L CNN
F 1 "Conn_01x03" H 5280 1201 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5200 1250 50  0001 C CNN
F 3 "~" H 5200 1250 50  0001 C CNN
	1    5200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1150 3650 1150
Wire Wire Line
	3650 1150 3650 1600
Wire Wire Line
	3650 1600 3800 1600
Wire Wire Line
	5000 1250 3600 1250
Wire Wire Line
	3600 1250 3600 1700
Wire Wire Line
	3600 1700 3800 1700
Wire Wire Line
	5000 1350 4350 1350
Wire Wire Line
	4350 1350 4350 950 
Wire Wire Line
	4350 950  3450 950 
Wire Wire Line
	3450 950  3450 1800
Wire Wire Line
	3450 1800 3800 1800
Wire Wire Line
	1100 2350 2100 2350
Wire Wire Line
	2100 2350 2100 1550
Connection ~ 2100 1550
Wire Wire Line
	2100 1550 2250 1550
$EndSCHEMATC
