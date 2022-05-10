EESchema Schematic File Version 4
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
L MCU_Microchip_ATmega:ATmega8A-PU U2
U 1 1 61A6A974
P 5550 3800
F 0 "U2" H 5550 5381 50  0000 C CNN
F 1 "ATmega8A-PU" V 5550 3800 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5550 3800 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Microchip%208bit%20mcu%20AVR%20ATmega8A%20data%20sheet%2040001974A.pdf" H 5550 3800 50  0001 C CNN
	1    5550 3800
	1    0    0    -1  
$EndComp
$Comp
L Timer_RTC:DS1307Z+ U3
U 1 1 61A737CC
P 8000 2350
F 0 "U3" H 8544 2396 50  0000 L CNN
F 1 "DS1307Z+" H 8544 2305 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8000 1850 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1307.pdf" H 8000 2350 50  0001 C CNN
	1    8000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1950 7900 1300
Wire Wire Line
	8000 5550 5550 5550
Wire Wire Line
	5550 5550 5550 5200
Wire Wire Line
	5550 5550 4650 5550
Wire Wire Line
	4650 5550 4650 2100
Connection ~ 5550 5550
Wire Wire Line
	6150 3900 7100 3900
Wire Wire Line
	7100 3900 7100 2150
Wire Wire Line
	7100 2150 7500 2150
Wire Wire Line
	7500 2250 7000 2250
Wire Wire Line
	7000 2250 7000 3800
Wire Wire Line
	7000 3800 6150 3800
NoConn ~ 8500 2350
NoConn ~ 8000 1950
NoConn ~ 7500 2450
NoConn ~ 7500 2550
Wire Wire Line
	5550 2400 5550 2100
Text GLabel 6400 4300 2    50   Input ~ 0
DIO
Text GLabel 6400 4400 2    50   Input ~ 0
CLK
Text GLabel 6400 4000 2    50   Input ~ 0
5V
Text GLabel 6400 4100 2    50   Input ~ 0
GND
$Comp
L Device:CP_Small C1
U 1 1 61A7BD8E
P 5150 2100
F 0 "C1" V 4925 2100 50  0000 C CNN
F 1 "100u F" V 5016 2100 50  0000 C CNN
F 2 "" H 5150 2100 50  0001 C CNN
F 3 "~" H 5150 2100 50  0001 C CNN
	1    5150 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 2100 5550 2100
Wire Wire Line
	5050 2100 4650 2100
Wire Wire Line
	6400 4000 6300 4000
Wire Wire Line
	6300 4000 6300 1300
Wire Wire Line
	6300 1300 7900 1300
Wire Wire Line
	6400 4100 6300 4100
Wire Wire Line
	6300 4100 6300 4200
Wire Wire Line
	6300 4200 8000 4200
Wire Wire Line
	8000 2750 8000 4200
Connection ~ 8000 4200
Wire Wire Line
	8000 4200 8000 5550
Wire Wire Line
	6400 4300 6150 4300
Wire Wire Line
	6400 4400 6150 4400
Wire Notes Line
	6200 3850 6750 3850
Wire Notes Line
	6750 3850 6750 4600
Wire Notes Line
	6750 4600 6200 4600
Wire Notes Line
	6200 4600 6200 3850
Text Notes 6850 4550 1    50   ~ 0
7 segment display
Wire Wire Line
	5550 2100 5550 1300
Wire Wire Line
	5550 1300 6300 1300
Connection ~ 5550 2100
Connection ~ 6300 1300
Wire Wire Line
	5550 1300 4100 1300
Connection ~ 5550 1300
Wire Wire Line
	4650 2100 4650 1450
Wire Wire Line
	4650 1450 4100 1450
Connection ~ 4650 2100
$Comp
L power:GND #PWR02
U 1 1 61BE3369
P 4100 1450
F 0 "#PWR02" H 4100 1200 50  0001 C CNN
F 1 "GND" V 4105 1322 50  0000 R CNN
F 2 "" H 4100 1450 50  0001 C CNN
F 3 "" H 4100 1450 50  0001 C CNN
	1    4100 1450
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR01
U 1 1 61BE358D
P 4100 1300
F 0 "#PWR01" H 4100 1150 50  0001 C CNN
F 1 "+5V" V 4115 1428 50  0000 L CNN
F 2 "" H 4100 1300 50  0001 C CNN
F 3 "" H 4100 1300 50  0001 C CNN
	1    4100 1300
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
