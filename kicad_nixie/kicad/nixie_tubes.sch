EESchema Schematic File Version 2
LIBS:power
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:adc-dac
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:linear
LIBS:logo
LIBS:memory
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip
LIBS:microchip1
LIBS:microcontrollers
LIBS:motorola
LIBS:msp430
LIBS:nxp_armmcu
LIBS:opto
LIBS:philips
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:sensors
LIBS:siliconi
LIBS:special
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:xilinx
LIBS:in14_lib
LIBS:dp_devices
LIBS:pic18f
LIBS:ds32khz
LIBS:irs44273
LIBS:Nixie_proj-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L MPSA92 Q1
U 1 1 549894FB
P 2450 1850
F 0 "Q1" H 2600 1700 60  0000 L CNN
F 1 "MPSA92" H 2600 2000 60  0000 L CNN
F 2 "discret:TO92-CBE" H 2600 1850 30  0001 C CNN
F 3 "" H 2450 1850 60  0000 C CNN
	1    2450 1850
	-1   0    0    1   
$EndComp
$Comp
L MPSA92 Q2
U 1 1 54989501
P 2800 2100
F 0 "Q2" H 2950 1950 60  0000 L CNN
F 1 "MPSA92" H 2950 2250 60  0000 L CNN
F 2 "discret:TO92-CBE" H 2950 2100 30  0001 C CNN
F 3 "" H 2800 2100 60  0000 C CNN
	1    2800 2100
	1    0    0    1   
$EndComp
$Comp
L R R2
U 1 1 54989507
P 2900 1550
F 0 "R2" V 2980 1550 40  0000 C CNN
F 1 "330" V 2907 1551 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 2830 1550 30  0001 C CNN
F 3 "" H 2900 1550 30  0000 C CNN
	1    2900 1550
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5498950D
P 2350 2400
F 0 "R1" V 2430 2400 40  0000 C CNN
F 1 "330k" V 2357 2401 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 2280 2400 30  0001 C CNN
F 3 "" H 2350 2400 30  0000 C CNN
	1    2350 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54989513
P 2350 2750
F 0 "#PWR01" H 2350 2750 30  0001 C CNN
F 1 "GND" H 2350 2680 30  0001 C CNN
F 2 "" H 2350 2750 60  0000 C CNN
F 3 "" H 2350 2750 60  0000 C CNN
	1    2350 2750
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR02
U 1 1 54989519
P 2900 1200
F 0 "#PWR02" H 2900 1260 30  0001 C CNN
F 1 "VAA" H 2900 1310 30  0000 C CNN
F 2 "" H 2900 1200 60  0000 C CNN
F 3 "" H 2900 1200 60  0000 C CNN
	1    2900 1200
	1    0    0    -1  
$EndComp
$Comp
L IN14 TBE1
U 1 1 5498951F
P 2600 2850
F 0 "TBE1" H 2500 2850 60  0000 C CNN
F 1 "IN14" H 2250 2550 60  0000 C CNN
F 2 "pretty-libs:IN-14-mod" H 2500 2850 60  0001 C CNN
F 3 "" H 2500 2850 60  0000 C CNN
	1    2600 2850
	1    0    0    -1  
$EndComp
$Comp
L MPSA92 Q3
U 1 1 5498952B
P 4200 1850
F 0 "Q3" H 4350 1700 60  0000 L CNN
F 1 "MPSA92" H 4350 2000 60  0000 L CNN
F 2 "discret:TO92-CBE" H 4350 1850 30  0001 C CNN
F 3 "" H 4200 1850 60  0000 C CNN
	1    4200 1850
	-1   0    0    1   
$EndComp
$Comp
L MPSA92 Q4
U 1 1 54989531
P 4550 2100
F 0 "Q4" H 4700 1950 60  0000 L CNN
F 1 "MPSA92" H 4700 2250 60  0000 L CNN
F 2 "discret:TO92-CBE" H 4700 2100 30  0001 C CNN
F 3 "" H 4550 2100 60  0000 C CNN
	1    4550 2100
	1    0    0    1   
$EndComp
$Comp
L R R4
U 1 1 54989537
P 4650 1550
F 0 "R4" V 4730 1550 40  0000 C CNN
F 1 "330" V 4657 1551 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 4580 1550 30  0001 C CNN
F 3 "" H 4650 1550 30  0000 C CNN
	1    4650 1550
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5498953D
P 4100 2400
F 0 "R3" V 4180 2400 40  0000 C CNN
F 1 "330k" V 4107 2401 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 4030 2400 30  0001 C CNN
F 3 "" H 4100 2400 30  0000 C CNN
	1    4100 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 54989543
P 4100 2750
F 0 "#PWR03" H 4100 2750 30  0001 C CNN
F 1 "GND" H 4100 2680 30  0001 C CNN
F 2 "" H 4100 2750 60  0000 C CNN
F 3 "" H 4100 2750 60  0000 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR04
U 1 1 54989549
P 4650 1200
F 0 "#PWR04" H 4650 1260 30  0001 C CNN
F 1 "VAA" H 4650 1310 30  0000 C CNN
F 2 "" H 4650 1200 60  0000 C CNN
F 3 "" H 4650 1200 60  0000 C CNN
	1    4650 1200
	1    0    0    -1  
$EndComp
$Comp
L IN14 TBE2
U 1 1 5498954F
P 4350 2850
F 0 "TBE2" H 4250 2850 60  0000 C CNN
F 1 "IN14" H 4000 2550 60  0000 C CNN
F 2 "pretty-libs:IN-14-mod" H 4250 2850 60  0001 C CNN
F 3 "" H 4250 2850 60  0000 C CNN
	1    4350 2850
	1    0    0    -1  
$EndComp
Entry Wire Line
	4250 3950 4350 3850
Entry Wire Line
	4350 3950 4450 3850
Entry Wire Line
	4450 3950 4550 3850
Entry Wire Line
	4550 3950 4650 3850
Entry Wire Line
	4650 3950 4750 3850
Entry Wire Line
	4750 3950 4850 3850
Entry Wire Line
	4850 3950 4950 3850
Entry Wire Line
	4950 3950 5050 3850
Entry Wire Line
	5050 3950 5150 3850
Entry Wire Line
	3900 4050 4000 3950
Entry Wire Line
	4000 4050 4100 3950
Entry Wire Line
	4100 4050 4200 3950
Entry Wire Line
	4200 4050 4300 3950
Entry Wire Line
	4300 4050 4400 3950
Entry Wire Line
	4400 4050 4500 3950
Entry Wire Line
	4500 4050 4600 3950
Entry Wire Line
	4600 4050 4700 3950
Entry Wire Line
	4700 4050 4800 3950
Entry Wire Line
	4800 4050 4900 3950
Entry Wire Line
	4150 3950 4250 3850
Text Label 4250 3800 2    39   ~ 0
B0
Text Label 4350 3800 2    39   ~ 0
B1
Text Label 4450 3800 2    39   ~ 0
B2
Text Label 4550 3800 2    39   ~ 0
B3
Text Label 4650 3800 2    39   ~ 0
B4
Text Label 4750 3800 2    39   ~ 0
B5
Text Label 4850 3800 2    39   ~ 0
B6
Text Label 4950 3800 2    39   ~ 0
B7
Text Label 5050 3800 2    39   ~ 0
B8
Text Label 5150 3800 2    39   ~ 0
B9
Entry Wire Line
	3400 3850 3500 3950
Entry Wire Line
	3300 3850 3400 3950
Entry Wire Line
	3200 3850 3300 3950
Entry Wire Line
	3100 3850 3200 3950
Entry Wire Line
	3000 3850 3100 3950
Entry Wire Line
	2900 3850 3000 3950
Entry Wire Line
	2800 3850 2900 3950
Entry Wire Line
	2700 3850 2800 3950
Entry Wire Line
	2600 3850 2700 3950
Entry Wire Line
	2500 3850 2600 3950
Entry Wire Line
	2750 3950 2850 4050
Entry Wire Line
	2850 3950 2950 4050
Entry Wire Line
	2950 3950 3050 4050
Entry Wire Line
	3050 3950 3150 4050
Entry Wire Line
	3150 3950 3250 4050
Entry Wire Line
	3250 3950 3350 4050
Entry Wire Line
	3350 3950 3450 4050
Entry Wire Line
	3450 3950 3550 4050
Entry Wire Line
	3550 3950 3650 4050
Entry Wire Line
	3650 3950 3750 4050
Text Label 2500 3800 2    39   ~ 0
A0
Text Label 2600 3800 2    39   ~ 0
A1
Text Label 2700 3800 2    39   ~ 0
A2
Text Label 2800 3800 2    39   ~ 0
A3
Text Label 2900 3800 2    39   ~ 0
A4
Text Label 3000 3800 2    39   ~ 0
A5
Text Label 3100 3800 2    39   ~ 0
A6
Text Label 3200 3800 2    39   ~ 0
A7
Text Label 3300 3800 2    39   ~ 0
A8
Text Label 3400 3800 2    39   ~ 0
A9
$Comp
L +5V #PWR05
U 1 1 54989591
P 5650 4450
F 0 "#PWR05" H 5650 4540 20  0001 C CNN
F 1 "+5V" H 5650 4600 30  0000 C CNN
F 2 "" H 5650 4450 60  0000 C CNN
F 3 "" H 5650 4450 60  0000 C CNN
	1    5650 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 54989597
P 5500 5450
F 0 "#PWR06" H 5500 5450 30  0001 C CNN
F 1 "GND" H 5500 5380 30  0001 C CNN
F 2 "" H 5500 5450 60  0000 C CNN
F 3 "" H 5500 5450 60  0000 C CNN
	1    5500 5450
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR07
U 1 1 5498959D
P 5500 4450
F 0 "#PWR07" H 5500 4650 40  0001 C CNN
F 1 "VPP" H 5500 4600 40  0000 C CNN
F 2 "" H 5500 4450 60  0000 C CNN
F 3 "" H 5500 4450 60  0000 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 549895A3
P 5650 5250
F 0 "C1" H 5650 5350 40  0000 L CNN
F 1 "100n" H 5656 5165 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 5688 5100 30  0001 C CNN
F 3 "" H 5650 5250 60  0000 C CNN
	1    5650 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 549895B5
P 5650 5450
F 0 "#PWR08" H 5650 5450 30  0001 C CNN
F 1 "GND" H 5650 5380 30  0001 C CNN
F 2 "" H 5650 5450 60  0000 C CNN
F 3 "" H 5650 5450 60  0000 C CNN
	1    5650 5450
	1    0    0    -1  
$EndComp
$Comp
L MPSA92 Q5
U 1 1 549895BB
P 6250 1850
F 0 "Q5" H 6400 1700 60  0000 L CNN
F 1 "MPSA92" H 6400 2000 60  0000 L CNN
F 2 "discret:TO92-CBE" H 6400 1850 30  0001 C CNN
F 3 "" H 6250 1850 60  0000 C CNN
	1    6250 1850
	-1   0    0    1   
$EndComp
$Comp
L MPSA92 Q6
U 1 1 549895C1
P 6600 2100
F 0 "Q6" H 6750 1950 60  0000 L CNN
F 1 "MPSA92" H 6750 2250 60  0000 L CNN
F 2 "discret:TO92-CBE" H 6750 2100 30  0001 C CNN
F 3 "" H 6600 2100 60  0000 C CNN
	1    6600 2100
	1    0    0    1   
$EndComp
$Comp
L R R6
U 1 1 549895C7
P 6700 1550
F 0 "R6" V 6780 1550 40  0000 C CNN
F 1 "330" V 6707 1551 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 6630 1550 30  0001 C CNN
F 3 "" H 6700 1550 30  0000 C CNN
	1    6700 1550
	1    0    0    -1  
$EndComp
$Comp
L R R5
U 1 1 549895CD
P 6150 2400
F 0 "R5" V 6230 2400 40  0000 C CNN
F 1 "330k" V 6157 2401 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 6080 2400 30  0001 C CNN
F 3 "" H 6150 2400 30  0000 C CNN
	1    6150 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 549895D3
P 6150 2750
F 0 "#PWR09" H 6150 2750 30  0001 C CNN
F 1 "GND" H 6150 2680 30  0001 C CNN
F 2 "" H 6150 2750 60  0000 C CNN
F 3 "" H 6150 2750 60  0000 C CNN
	1    6150 2750
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR010
U 1 1 549895D9
P 6700 1200
F 0 "#PWR010" H 6700 1260 30  0001 C CNN
F 1 "VAA" H 6700 1310 30  0000 C CNN
F 2 "" H 6700 1200 60  0000 C CNN
F 3 "" H 6700 1200 60  0000 C CNN
	1    6700 1200
	1    0    0    -1  
$EndComp
$Comp
L IN14 TBE3
U 1 1 549895DF
P 6400 2850
F 0 "TBE3" H 6300 2850 60  0000 C CNN
F 1 "IN14" H 6050 2550 60  0000 C CNN
F 2 "pretty-libs:IN-14-mod" H 6300 2850 60  0001 C CNN
F 3 "" H 6300 2850 60  0000 C CNN
	1    6400 2850
	1    0    0    -1  
$EndComp
$Comp
L MPSA92 Q7
U 1 1 549895EB
P 8000 1850
F 0 "Q7" H 8150 1700 60  0000 L CNN
F 1 "MPSA92" H 8150 2000 60  0000 L CNN
F 2 "discret:TO92-CBE" H 8150 1850 30  0001 C CNN
F 3 "" H 8000 1850 60  0000 C CNN
	1    8000 1850
	-1   0    0    1   
$EndComp
$Comp
L MPSA92 Q8
U 1 1 549895F1
P 8350 2100
F 0 "Q8" H 8500 1950 60  0000 L CNN
F 1 "MPSA92" H 8500 2250 60  0000 L CNN
F 2 "discret:TO92-CBE" H 8500 2100 30  0001 C CNN
F 3 "" H 8350 2100 60  0000 C CNN
	1    8350 2100
	1    0    0    1   
$EndComp
$Comp
L R R8
U 1 1 549895F7
P 8450 1550
F 0 "R8" V 8530 1550 40  0000 C CNN
F 1 "330" V 8457 1551 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 8380 1550 30  0001 C CNN
F 3 "" H 8450 1550 30  0000 C CNN
	1    8450 1550
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 549895FD
P 7900 2400
F 0 "R7" V 7980 2400 40  0000 C CNN
F 1 "330k" V 7907 2401 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 7830 2400 30  0001 C CNN
F 3 "" H 7900 2400 30  0000 C CNN
	1    7900 2400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 54989603
P 7900 2750
F 0 "#PWR011" H 7900 2750 30  0001 C CNN
F 1 "GND" H 7900 2680 30  0001 C CNN
F 2 "" H 7900 2750 60  0000 C CNN
F 3 "" H 7900 2750 60  0000 C CNN
	1    7900 2750
	1    0    0    -1  
$EndComp
$Comp
L VAA #PWR012
U 1 1 54989609
P 8450 1200
F 0 "#PWR012" H 8450 1260 30  0001 C CNN
F 1 "VAA" H 8450 1310 30  0000 C CNN
F 2 "" H 8450 1200 60  0000 C CNN
F 3 "" H 8450 1200 60  0000 C CNN
	1    8450 1200
	1    0    0    -1  
$EndComp
$Comp
L IN14 TBE4
U 1 1 5498960F
P 8150 2850
F 0 "TBE4" H 8050 2850 60  0000 C CNN
F 1 "IN14" H 7800 2550 60  0000 C CNN
F 2 "pretty-libs:IN-14-mod" H 8050 2850 60  0001 C CNN
F 3 "" H 8050 2850 60  0000 C CNN
	1    8150 2850
	1    0    0    -1  
$EndComp
Entry Wire Line
	8050 3950 8150 3850
Entry Wire Line
	8150 3950 8250 3850
Entry Wire Line
	8250 3950 8350 3850
Entry Wire Line
	8350 3950 8450 3850
Entry Wire Line
	8450 3950 8550 3850
Entry Wire Line
	8550 3950 8650 3850
Entry Wire Line
	8650 3950 8750 3850
Entry Wire Line
	8750 3950 8850 3850
Entry Wire Line
	8850 3950 8950 3850
Entry Wire Line
	7700 4050 7800 3950
Entry Wire Line
	7800 4050 7900 3950
Entry Wire Line
	7900 4050 8000 3950
Entry Wire Line
	8000 4050 8100 3950
Entry Wire Line
	8100 4050 8200 3950
Entry Wire Line
	8200 4050 8300 3950
Entry Wire Line
	8300 4050 8400 3950
Entry Wire Line
	8400 4050 8500 3950
Entry Wire Line
	8500 4050 8600 3950
Entry Wire Line
	8600 4050 8700 3950
Entry Wire Line
	7950 3950 8050 3850
Text Label 8050 3800 2    39   ~ 0
D0
Text Label 8150 3800 2    39   ~ 0
D1
Text Label 8250 3800 2    39   ~ 0
D2
Text Label 8350 3800 2    39   ~ 0
D3
Text Label 8450 3800 2    39   ~ 0
D4
Text Label 8550 3800 2    39   ~ 0
D5
Text Label 8650 3800 2    39   ~ 0
D6
Text Label 8750 3800 2    39   ~ 0
D7
Text Label 8850 3800 2    39   ~ 0
D8
Text Label 8950 3800 2    39   ~ 0
D9
Entry Wire Line
	7200 3850 7300 3950
Entry Wire Line
	7100 3850 7200 3950
Entry Wire Line
	7000 3850 7100 3950
Entry Wire Line
	6900 3850 7000 3950
Entry Wire Line
	6800 3850 6900 3950
Entry Wire Line
	6700 3850 6800 3950
Entry Wire Line
	6600 3850 6700 3950
Entry Wire Line
	6500 3850 6600 3950
Entry Wire Line
	6400 3850 6500 3950
Entry Wire Line
	6300 3850 6400 3950
Entry Wire Line
	6550 3950 6650 4050
Entry Wire Line
	6650 3950 6750 4050
Entry Wire Line
	6750 3950 6850 4050
Entry Wire Line
	6850 3950 6950 4050
Entry Wire Line
	6950 3950 7050 4050
Entry Wire Line
	7050 3950 7150 4050
Entry Wire Line
	7150 3950 7250 4050
Entry Wire Line
	7250 3950 7350 4050
Entry Wire Line
	7350 3950 7450 4050
Entry Wire Line
	7450 3950 7550 4050
Text Label 6300 3800 2    39   ~ 0
C0
Text Label 6400 3800 2    39   ~ 0
C1
Text Label 6500 3800 2    39   ~ 0
C2
Text Label 6600 3800 2    39   ~ 0
C3
Text Label 6700 3800 2    39   ~ 0
C4
Text Label 6800 3800 2    39   ~ 0
C5
Text Label 6900 3800 2    39   ~ 0
C6
Text Label 7000 3800 2    39   ~ 0
C7
Text Label 7100 3800 2    39   ~ 0
C8
Text Label 7200 3800 2    39   ~ 0
C9
NoConn ~ 6200 3700
NoConn ~ 7300 3700
NoConn ~ 5250 3700
NoConn ~ 4150 3700
NoConn ~ 3500 3700
NoConn ~ 2400 3700
NoConn ~ 7950 3700
NoConn ~ 9050 3700
NoConn ~ 7050 5550
$Comp
L GND #PWR013
U 1 1 54989684
P 3150 5650
F 0 "#PWR013" H 3150 5650 30  0001 C CNN
F 1 "GND" H 3150 5580 30  0001 C CNN
F 2 "" H 3150 5650 60  0000 C CNN
F 3 "" H 3150 5650 60  0000 C CNN
	1    3150 5650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 5498968A
P 6950 5650
F 0 "#PWR014" H 6950 5650 30  0001 C CNN
F 1 "GND" H 6950 5580 30  0001 C CNN
F 2 "" H 6950 5650 60  0000 C CNN
F 3 "" H 6950 5650 60  0000 C CNN
	1    6950 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 2650 2350 2750
Connection ~ 2350 2100
Connection ~ 2900 1850
Wire Wire Line
	2350 2050 2350 2150
Wire Wire Line
	2600 2100 2350 2100
Wire Wire Line
	2900 1800 2900 1900
Wire Wire Line
	2650 1850 2900 1850
Wire Wire Line
	2900 1200 2900 1300
Wire Wire Line
	2350 1650 2350 1250
Wire Wire Line
	2350 1250 2900 1250
Connection ~ 2900 1250
Wire Wire Line
	2900 2600 2900 2300
Wire Wire Line
	4100 2650 4100 2750
Connection ~ 4100 2100
Connection ~ 4650 1850
Wire Wire Line
	4100 2050 4100 2150
Wire Wire Line
	4350 2100 4100 2100
Wire Wire Line
	4650 1800 4650 1900
Wire Wire Line
	4400 1850 4650 1850
Wire Wire Line
	4650 1200 4650 1300
Wire Wire Line
	4100 1650 4100 1250
Wire Wire Line
	4100 1250 4650 1250
Connection ~ 4650 1250
Wire Wire Line
	4650 2600 4650 2300
Wire Wire Line
	4250 3700 4250 3850
Wire Wire Line
	4350 3700 4350 3850
Wire Wire Line
	4450 3700 4450 3850
Wire Wire Line
	4550 3700 4550 3850
Wire Wire Line
	4650 3700 4650 3850
Wire Wire Line
	4750 3700 4750 3850
Wire Wire Line
	4850 3700 4850 3850
Wire Wire Line
	4950 3700 4950 3850
Wire Wire Line
	5050 3700 5050 3850
Wire Wire Line
	5150 3700 5150 3850
Wire Wire Line
	3900 4200 3900 4050
Wire Wire Line
	4000 4200 4000 4050
Wire Wire Line
	4100 4200 4100 4050
Wire Wire Line
	4200 4200 4200 4050
Wire Wire Line
	4300 4200 4300 4050
Wire Wire Line
	4400 4200 4400 4050
Wire Wire Line
	4500 4200 4500 4050
Wire Wire Line
	4600 4200 4600 4050
Wire Wire Line
	4700 4200 4700 4050
Wire Wire Line
	4800 4200 4800 4050
Wire Bus Line
	6400 3950 8850 3950
Wire Wire Line
	2500 3700 2500 3850
Wire Wire Line
	2600 3700 2600 3850
Wire Wire Line
	2700 3700 2700 3850
Wire Wire Line
	2800 3700 2800 3850
Wire Wire Line
	2900 3700 2900 3850
Wire Wire Line
	3000 3700 3000 3850
Wire Wire Line
	3100 3700 3100 3850
Wire Wire Line
	3200 3700 3200 3850
Wire Wire Line
	3300 3700 3300 3850
Wire Wire Line
	3400 3700 3400 3850
Wire Wire Line
	3750 4200 3750 4050
Wire Wire Line
	3650 4200 3650 4050
Wire Wire Line
	3550 4200 3550 4050
Wire Wire Line
	3450 4200 3450 4050
Wire Wire Line
	3350 4200 3350 4050
Wire Wire Line
	3250 4200 3250 4050
Wire Wire Line
	3150 4200 3150 4050
Wire Wire Line
	3050 4200 3050 4050
Wire Wire Line
	2950 4200 2950 4050
Wire Wire Line
	2850 4200 2850 4050
Wire Wire Line
	5400 5000 5650 5000
Wire Wire Line
	5650 4450 5650 5050
Wire Wire Line
	5500 5450 5500 5150
Wire Wire Line
	5500 4900 5400 4900
Wire Wire Line
	5500 4450 5500 4900
Connection ~ 5650 5000
Wire Wire Line
	5500 5150 5400 5150
Wire Wire Line
	6150 2650 6150 2750
Connection ~ 6150 2100
Connection ~ 6700 1850
Wire Wire Line
	6150 2050 6150 2150
Wire Wire Line
	6400 2100 6150 2100
Wire Wire Line
	6700 1800 6700 1900
Wire Wire Line
	6450 1850 6700 1850
Wire Wire Line
	6700 1200 6700 1300
Wire Wire Line
	6150 1650 6150 1250
Wire Wire Line
	6150 1250 6700 1250
Connection ~ 6700 1250
Wire Wire Line
	6700 2600 6700 2300
Wire Wire Line
	7900 2650 7900 2750
Connection ~ 7900 2100
Connection ~ 8450 1850
Wire Wire Line
	7900 2050 7900 2150
Wire Wire Line
	8150 2100 7900 2100
Wire Wire Line
	8450 1800 8450 1900
Wire Wire Line
	8200 1850 8450 1850
Wire Wire Line
	8450 1200 8450 1300
Wire Wire Line
	7900 1650 7900 1250
Wire Wire Line
	7900 1250 8450 1250
Connection ~ 8450 1250
Wire Wire Line
	8450 2600 8450 2300
Wire Wire Line
	8050 3700 8050 3850
Wire Wire Line
	8150 3700 8150 3850
Wire Wire Line
	8250 3700 8250 3850
Wire Wire Line
	8350 3700 8350 3850
Wire Wire Line
	8450 3700 8450 3850
Wire Wire Line
	8550 3700 8550 3850
Wire Wire Line
	8650 3700 8650 3850
Wire Wire Line
	8750 3700 8750 3850
Wire Wire Line
	8850 3700 8850 3850
Wire Wire Line
	8950 3700 8950 3850
Wire Wire Line
	7700 4200 7700 4050
Wire Wire Line
	7800 4200 7800 4050
Wire Wire Line
	7900 4200 7900 4050
Wire Wire Line
	8000 4200 8000 4050
Wire Wire Line
	8100 4200 8100 4050
Wire Wire Line
	8200 4200 8200 4050
Wire Wire Line
	8300 4200 8300 4050
Wire Wire Line
	8400 4200 8400 4050
Wire Wire Line
	8500 4200 8500 4050
Wire Wire Line
	8600 4200 8600 4050
Wire Wire Line
	6300 3700 6300 3850
Wire Wire Line
	6400 3700 6400 3850
Wire Wire Line
	6500 3700 6500 3850
Wire Wire Line
	6600 3700 6600 3850
Wire Wire Line
	6700 3700 6700 3850
Wire Wire Line
	6800 3700 6800 3850
Wire Wire Line
	6900 3700 6900 3850
Wire Wire Line
	7000 3700 7000 3850
Wire Wire Line
	7100 3700 7100 3850
Wire Wire Line
	7200 3700 7200 3850
Wire Wire Line
	7550 4200 7550 4050
Wire Wire Line
	7450 4200 7450 4050
Wire Wire Line
	7350 4200 7350 4050
Wire Wire Line
	7250 4200 7250 4050
Wire Wire Line
	7150 4200 7150 4050
Wire Wire Line
	7050 4200 7050 4050
Wire Wire Line
	6950 4200 6950 4050
Wire Wire Line
	6850 4200 6850 4050
Wire Wire Line
	6750 4200 6750 4050
Wire Wire Line
	6650 4200 6650 4050
Wire Wire Line
	3250 5550 3250 5950
Wire Wire Line
	3250 5650 6650 5650
Wire Wire Line
	6650 5650 6650 5550
Wire Wire Line
	6750 5750 6750 5550
Wire Wire Line
	1850 5750 6750 5750
Wire Wire Line
	2950 5750 2950 5550
Wire Wire Line
	6850 5850 6850 5550
Wire Wire Line
	1850 5850 6850 5850
Wire Wire Line
	3050 5850 3050 5550
Wire Wire Line
	3150 5550 3150 5650
Wire Wire Line
	6950 5550 6950 5650
Wire Wire Line
	2850 5650 2850 5550
Connection ~ 2950 5750
Connection ~ 3050 5850
Text HLabel 1850 5650 0    39   Input ~ 0
HVDATA
Text HLabel 1850 5750 0    39   Input ~ 0
HVCLOCK
Text HLabel 1850 5850 0    39   Input ~ 0
HVSTROBE
$Comp
L HV5812 U1
U 1 1 54989525
P 2100 4850
F 0 "U1" H 3850 4650 60  0000 C CNN
F 1 "HV5812" H 3950 4550 60  0000 C CNN
F 2 "pretty-libs:SO28W-mod" H 3950 4550 60  0001 C CNN
F 3 "" H 3950 4550 60  0000 C CNN
	1    2100 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5650 1850 5650
$Comp
L HV5812 U2
U 1 1 549895E5
P 5900 4850
F 0 "U2" H 7650 4650 60  0000 C CNN
F 1 "HV5812" H 7750 4550 60  0000 C CNN
F 2 "pretty-libs:SO28W-mod" H 7750 4550 60  0001 C CNN
F 3 "" H 7750 4550 60  0000 C CNN
	1    5900 4850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 549C28B9
P 9450 4450
F 0 "#PWR015" H 9450 4540 20  0001 C CNN
F 1 "+5V" H 9450 4600 30  0000 C CNN
F 2 "" H 9450 4450 60  0000 C CNN
F 3 "" H 9450 4450 60  0000 C CNN
	1    9450 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 549C28BF
P 9300 5450
F 0 "#PWR016" H 9300 5450 30  0001 C CNN
F 1 "GND" H 9300 5380 30  0001 C CNN
F 2 "" H 9300 5450 60  0000 C CNN
F 3 "" H 9300 5450 60  0000 C CNN
	1    9300 5450
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR017
U 1 1 549C28C5
P 9300 4450
F 0 "#PWR017" H 9300 4650 40  0001 C CNN
F 1 "VPP" H 9300 4600 40  0000 C CNN
F 2 "" H 9300 4450 60  0000 C CNN
F 3 "" H 9300 4450 60  0000 C CNN
	1    9300 4450
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 549C28CB
P 9450 5250
F 0 "C2" H 9450 5350 40  0000 L CNN
F 1 "100n" H 9456 5165 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 9488 5100 30  0001 C CNN
F 3 "" H 9450 5250 60  0000 C CNN
	1    9450 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 549C28D2
P 9450 5450
F 0 "#PWR018" H 9450 5450 30  0001 C CNN
F 1 "GND" H 9450 5380 30  0001 C CNN
F 2 "" H 9450 5450 60  0000 C CNN
F 3 "" H 9450 5450 60  0000 C CNN
	1    9450 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5000 9450 5000
Wire Wire Line
	9450 4450 9450 5050
Wire Wire Line
	9300 5450 9300 5150
Wire Wire Line
	9300 4900 9200 4900
Wire Wire Line
	9300 4450 9300 4900
Connection ~ 9450 5000
Wire Wire Line
	9300 5150 9200 5150
Text Label 2950 4150 2    39   ~ 0
A2
Text Label 2850 4150 2    39   ~ 0
A1
Text Label 3050 4150 2    39   ~ 0
A3
Text Label 3150 4150 2    39   ~ 0
A4
Text Label 3250 4150 2    39   ~ 0
A5
Text Label 3350 4150 2    39   ~ 0
B6
Text Label 3450 4150 2    39   ~ 0
B7
Text Label 3550 4150 2    39   ~ 0
B8
Text Label 3750 4150 2    39   ~ 0
B0
Text Label 3650 4150 2    39   ~ 0
B9
Text Label 3900 4150 2    39   ~ 0
B1
Text Label 4000 4150 2    39   ~ 0
B2
Text Label 4100 4150 2    39   ~ 0
B3
Text Label 4200 4150 2    39   ~ 0
B4
Text Label 4300 4150 2    39   ~ 0
B5
Text Label 4400 4150 2    39   ~ 0
A6
Text Label 4500 4150 2    39   ~ 0
A7
Text Label 4600 4150 2    39   ~ 0
A8
Text Label 4700 4150 2    39   ~ 0
A9
Text Label 4800 4150 2    39   ~ 0
A0
Text Label 6750 4150 2    39   ~ 0
C2
Text Label 6650 4150 2    39   ~ 0
C1
Text Label 6850 4150 2    39   ~ 0
C3
Text Label 6950 4150 2    39   ~ 0
C4
Text Label 7050 4150 2    39   ~ 0
C5
Text Label 7150 4150 2    39   ~ 0
D6
Text Label 7250 4150 2    39   ~ 0
D7
Text Label 7350 4150 2    39   ~ 0
D8
Text Label 7550 4150 2    39   ~ 0
D0
Text Label 7450 4150 2    39   ~ 0
D9
Text Label 7700 4150 2    39   ~ 0
D1
Text Label 7800 4150 2    39   ~ 0
D2
Text Label 7900 4150 2    39   ~ 0
D3
Text Label 8000 4150 2    39   ~ 0
D4
Text Label 8100 4150 2    39   ~ 0
D5
Text Label 8200 4150 2    39   ~ 0
C6
Text Label 8300 4150 2    39   ~ 0
C7
Text Label 8400 4150 2    39   ~ 0
C8
Text Label 8500 4150 2    39   ~ 0
C9
Text Label 8600 4150 2    39   ~ 0
C0
Wire Bus Line
	2600 3950 5050 3950
Wire Wire Line
	2600 5950 2600 5850
Connection ~ 2600 5850
Wire Wire Line
	2400 5950 2400 5750
Connection ~ 2400 5750
Wire Wire Line
	2200 5950 2200 5650
Connection ~ 2200 5650
$Comp
L GND #PWR019
U 1 1 54A368DB
P 2600 6450
F 0 "#PWR019" H 2600 6450 30  0001 C CNN
F 1 "GND" H 2600 6380 30  0001 C CNN
F 2 "" H 2600 6450 60  0000 C CNN
F 3 "" H 2600 6450 60  0000 C CNN
	1    2600 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR020
U 1 1 54A3691C
P 2400 6450
F 0 "#PWR020" H 2400 6450 30  0001 C CNN
F 1 "GND" H 2400 6380 30  0001 C CNN
F 2 "" H 2400 6450 60  0000 C CNN
F 3 "" H 2400 6450 60  0000 C CNN
	1    2400 6450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 54A3695D
P 2200 6450
F 0 "#PWR021" H 2200 6450 30  0001 C CNN
F 1 "GND" H 2200 6380 30  0001 C CNN
F 2 "" H 2200 6450 60  0000 C CNN
F 3 "" H 2200 6450 60  0000 C CNN
	1    2200 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6350 2200 6450
Wire Wire Line
	2400 6350 2400 6450
Wire Wire Line
	2600 6350 2600 6450
$Comp
L TEST TP7
U 1 1 54A36BE7
P 3250 6150
F 0 "TP7" H 3250 6210 40  0000 C CNN
F 1 "TEST" H 3250 6080 40  0000 C CNN
F 2 "connect:GS2" H 3250 6150 60  0001 C CNN
F 3 "" H 3250 6150 60  0000 C CNN
	1    3250 6150
	0    1    1    0   
$EndComp
Connection ~ 3250 5650
$Comp
L GND #PWR022
U 1 1 54A36D0B
P 3250 6450
F 0 "#PWR022" H 3250 6450 30  0001 C CNN
F 1 "GND" H 3250 6380 30  0001 C CNN
F 2 "" H 3250 6450 60  0000 C CNN
F 3 "" H 3250 6450 60  0000 C CNN
	1    3250 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6350 3250 6450
$Comp
L TEST TP6
U 1 1 54A37215
P 2600 6150
F 0 "TP6" H 2600 6210 40  0000 C CNN
F 1 "TEST" H 2600 6080 40  0000 C CNN
F 2 "connect:GS2" H 2600 6150 60  0001 C CNN
F 3 "" H 2600 6150 60  0000 C CNN
	1    2600 6150
	0    1    1    0   
$EndComp
$Comp
L TEST TP4
U 1 1 54A372B8
P 2200 6150
F 0 "TP4" H 2200 6210 40  0000 C CNN
F 1 "TEST" H 2200 6080 40  0000 C CNN
F 2 "connect:GS2" H 2200 6150 60  0001 C CNN
F 3 "" H 2200 6150 60  0000 C CNN
	1    2200 6150
	0    1    1    0   
$EndComp
$Comp
L TEST TP5
U 1 1 54A3730A
P 2400 6150
F 0 "TP5" H 2400 6210 40  0000 C CNN
F 1 "TEST" H 2400 6080 40  0000 C CNN
F 2 "connect:GS2" H 2400 6150 60  0001 C CNN
F 3 "" H 2400 6150 60  0000 C CNN
	1    2400 6150
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR023
U 1 1 54A5F419
P 6200 4900
F 0 "#PWR023" H 6200 4990 20  0001 C CNN
F 1 "+5V" H 6200 5050 30  0000 C CNN
F 2 "" H 6200 4900 60  0000 C CNN
F 3 "" H 6200 4900 60  0000 C CNN
	1    6200 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5000 6200 4900
Wire Wire Line
	6200 5500 6200 5650
Connection ~ 6200 5650
$Comp
L R R25
U 1 1 54A5FB1C
P 6200 5250
F 0 "R25" V 6280 5250 40  0000 C CNN
F 1 "33k" V 6207 5251 40  0000 C CNN
F 2 "pretty-libs:R0805_smd-mod" V 6130 5250 30  0001 C CNN
F 3 "" H 6200 5250 30  0000 C CNN
	1    6200 5250
	1    0    0    -1  
$EndComp
$EndSCHEMATC