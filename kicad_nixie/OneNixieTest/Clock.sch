EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Clock-cache
EELAYER 25 0
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
L CONN_01X13 P1
U 1 1 57F5A7EA
P 3250 3600
F 0 "P1" H 3250 4300 50  0000 C CNN
F 1 "CONN_01X13" V 3350 3600 50  0000 C CNN
F 2 "in14:IN-14-mod" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0000 C CNN
	1    3250 3600
	-1   0    0    1   
$EndComp
$Comp
L Battery BT1
U 1 1 57F5A8E5
P 6300 3100
F 0 "BT1" H 6400 3150 50  0000 L CNN
F 1 "Battery" H 6400 3050 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02" V 6300 3140 50  0001 C CNN
F 3 "" V 6300 3140 50  0000 C CNN
	1    6300 3100
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X08 P2
U 1 1 57F5A9BE
P 5350 3500
F 0 "P2" H 5350 3950 50  0000 C CNN
F 1 "CONN_02X08" V 5350 3500 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 5350 2300 50  0001 C CNN
F 3 "" H 5350 2300 50  0000 C CNN
	1    5350 3500
	1    0    0    -1  
$EndComp
NoConn ~ 3450 4000
NoConn ~ 3450 4100
Wire Wire Line
	5600 3150 6300 3150
Wire Wire Line
	6300 3150 6300 2950
Wire Wire Line
	5600 3250 6300 3250
$Comp
L CONN_01X04 P4
U 1 1 57F5B03C
P 6650 3500
F 0 "P4" H 6650 3750 50  0000 C CNN
F 1 "CONN_01X04" V 6750 3500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04" H 6650 3500 50  0001 C CNN
F 3 "" H 6650 3500 50  0000 C CNN
	1    6650 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3350 6450 3350
Wire Wire Line
	5600 3450 6450 3450
Wire Wire Line
	5600 3550 6450 3550
Wire Wire Line
	5600 3650 6450 3650
$Comp
L R R1
U 1 1 57F5B280
P 3900 4750
F 0 "R1" V 3980 4750 50  0000 C CNN
F 1 "R" V 3900 4750 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 3830 4750 50  0001 C CNN
F 3 "" H 3900 4750 50  0000 C CNN
	1    3900 4750
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 4750 3750 4750
Wire Wire Line
	4050 4750 6350 4750
Wire Wire Line
	3450 3000 3450 2200
Wire Wire Line
	3450 2200 5100 2200
Wire Wire Line
	5100 2200 5100 3150
Wire Wire Line
	3450 3100 3550 3100
Wire Wire Line
	3550 3100 3550 2350
Wire Wire Line
	3550 2350 5050 2350
Wire Wire Line
	5050 2350 5050 3250
Wire Wire Line
	5050 3250 5100 3250
Wire Wire Line
	3450 3200 3650 3200
Wire Wire Line
	3650 3200 3650 2500
Wire Wire Line
	3650 2500 5000 2500
Wire Wire Line
	5000 2500 5000 3350
Wire Wire Line
	5000 3350 5100 3350
Wire Wire Line
	3450 3300 3750 3300
Wire Wire Line
	3750 3300 3750 2650
Wire Wire Line
	3750 2650 4950 2650
Wire Wire Line
	4950 2650 4950 3450
Wire Wire Line
	4950 3450 5100 3450
Wire Wire Line
	3450 3400 3850 3400
Wire Wire Line
	3850 3400 3850 2800
Wire Wire Line
	3850 2800 4850 2800
Wire Wire Line
	4850 2800 4850 3550
Wire Wire Line
	4850 3550 5100 3550
Wire Wire Line
	3450 3500 3950 3500
Wire Wire Line
	3950 3500 3950 2950
Wire Wire Line
	3950 2950 4750 2950
Wire Wire Line
	4750 2950 4750 3650
Wire Wire Line
	4750 3650 5100 3650
Wire Wire Line
	3450 3600 4050 3600
Wire Wire Line
	4050 3600 4050 3100
Wire Wire Line
	4050 3100 4650 3100
Wire Wire Line
	4650 3100 4650 3750
Wire Wire Line
	4650 3750 5100 3750
Wire Wire Line
	3450 3700 4150 3700
Wire Wire Line
	4150 3700 4150 3250
Wire Wire Line
	4150 3250 4550 3250
Wire Wire Line
	4550 3250 4550 3850
Wire Wire Line
	4550 3850 5100 3850
Wire Wire Line
	3450 3800 4450 3800
Wire Wire Line
	4450 3800 4450 3950
Wire Wire Line
	4450 3950 5650 3950
Wire Wire Line
	5650 3950 5650 3850
Wire Wire Line
	5650 3850 5600 3850
Wire Wire Line
	3450 3900 4350 3900
Wire Wire Line
	4350 3900 4350 4050
Wire Wire Line
	4350 4050 5750 4050
Wire Wire Line
	5750 4050 5750 3750
Wire Wire Line
	5750 3750 5600 3750
Wire Wire Line
	3450 4200 3450 4750
$Comp
L CONN_01X01 P3
U 1 1 57F654D9
P 6650 3850
F 0 "P3" H 6650 3950 50  0000 C CNN
F 1 "CONN_01X01" V 6750 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 6650 3850 50  0001 C CNN
F 3 "" H 6650 3850 50  0000 C CNN
	1    6650 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4750 6350 3850
Wire Wire Line
	6350 3850 6450 3850
$EndSCHEMATC
