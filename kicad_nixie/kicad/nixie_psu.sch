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
Sheet 3 4
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
L VAA #PWR024
U 1 1 54989DE8
P 9850 2250
F 0 "#PWR024" H 9850 2310 30  0001 C CNN
F 1 "VAA" H 9850 2400 30  0000 C CNN
F 2 "" H 9850 2250 60  0000 C CNN
F 3 "" H 9850 2250 60  0000 C CNN
	1    9850 2250
	1    0    0    -1  
$EndComp
$Comp
L R R18
U 1 1 54989DEE
P 10150 3900
F 0 "R18" V 10230 3900 40  0000 C CNN
F 1 "220k" V 10157 3901 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 10080 3900 30  0001 C CNN
F 3 "" H 10150 3900 30  0000 C CNN
	1    10150 3900
	-1   0    0    1   
$EndComp
$Comp
L ZENER D5
U 1 1 54989DF4
P 10150 4950
F 0 "D5" H 10150 5050 50  0000 C CNN
F 1 "75V" H 10150 4850 40  0000 C CNN
F 2 "discret:D3" H 10150 4950 60  0001 C CNN
F 3 "" H 10150 4950 60  0000 C CNN
	1    10150 4950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR025
U 1 1 54989DFA
P 10150 5400
F 0 "#PWR025" H 10150 5400 30  0001 C CNN
F 1 "GND" H 10150 5330 30  0001 C CNN
F 2 "" H 10150 5400 60  0000 C CNN
F 3 "" H 10150 5400 60  0000 C CNN
	1    10150 5400
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 54989E04
P 10550 4950
F 0 "C10" H 10550 5050 40  0000 L CNN
F 1 "C" H 10556 4865 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 10588 4800 30  0001 C CNN
F 3 "" H 10550 4950 60  0000 C CNN
	1    10550 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR026
U 1 1 54989E0D
P 10550 5400
F 0 "#PWR026" H 10550 5400 30  0001 C CNN
F 1 "GND" H 10550 5330 30  0001 C CNN
F 2 "" H 10550 5400 60  0000 C CNN
F 3 "" H 10550 5400 60  0000 C CNN
	1    10550 5400
	1    0    0    -1  
$EndComp
$Comp
L VPP #PWR027
U 1 1 54989E14
P 10750 4350
F 0 "#PWR027" H 10750 4550 40  0001 C CNN
F 1 "VPP" H 10750 4500 40  0000 C CNN
F 2 "" H 10750 4350 60  0000 C CNN
F 3 "" H 10750 4350 60  0000 C CNN
	1    10750 4350
	1    0    0    -1  
$EndComp
Text HLabel 6500 3600 0    39   Input ~ 0
PWM
Text HLabel 9050 4600 0    39   Input ~ 0
FB
$Comp
L MOSFET_N Q13
U 1 1 5499987A
P 8400 3550
F 0 "Q13" H 8410 3720 60  0000 R CNN
F 1 "IRF740" H 8410 3400 60  0000 R CNN
F 2 "pretty-libs:TO220GDS_VERT" H 8400 3550 60  0001 C CNN
F 3 "" H 8400 3550 60  0000 C CNN
	1    8400 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5499988E
P 8500 3850
F 0 "#PWR028" H 8500 3850 30  0001 C CNN
F 1 "GND" H 8500 3780 30  0001 C CNN
F 2 "" H 8500 3850 60  0000 C CNN
F 3 "" H 8500 3850 60  0000 C CNN
	1    8500 3850
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 549998AE
P 8500 2850
F 0 "L1" V 8450 2850 40  0000 C CNN
F 1 "220uH" V 8600 2850 40  0000 C CNN
F 2 "inductors:INDUCTOR_V" H 8500 2850 60  0001 C CNN
F 3 "" H 8500 2850 60  0000 C CNN
	1    8500 2850
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR029
U 1 1 549998D9
P 8500 2250
F 0 "#PWR029" H 8500 2200 20  0001 C CNN
F 1 "+12V" H 8500 2400 30  0000 C CNN
F 2 "" H 8500 2250 60  0000 C CNN
F 3 "" H 8500 2250 60  0000 C CNN
	1    8500 2250
	1    0    0    -1  
$EndComp
$Comp
L CP1 C7
U 1 1 549998EE
P 8100 2850
F 0 "C7" H 8150 2950 50  0000 L CNN
F 1 "220u" H 8150 2750 50  0000 L CNN
F 2 "capacitors:CP_8x13mm" H 8100 2850 60  0001 C CNN
F 3 "" H 8100 2850 60  0000 C CNN
	1    8100 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 54999900
P 8100 3150
F 0 "#PWR030" H 8100 3150 30  0001 C CNN
F 1 "GND" H 8100 3080 30  0001 C CNN
F 2 "" H 8100 3150 60  0000 C CNN
F 3 "" H 8100 3150 60  0000 C CNN
	1    8100 3150
	1    0    0    -1  
$EndComp
$Comp
L DIODE D4
U 1 1 549999BF
P 9250 3250
F 0 "D4" H 9250 3350 40  0000 C CNN
F 1 "EGP20D" H 9250 3150 40  0000 C CNN
F 2 "discret:D3" H 9250 3250 60  0001 C CNN
F 3 "" H 9250 3250 60  0000 C CNN
	1    9250 3250
	1    0    0    -1  
$EndComp
$Comp
L C C8
U 1 1 549999E6
P 9550 3750
F 0 "C8" H 9550 3850 40  0000 L CNN
F 1 "0.22u" H 9556 3665 40  0000 L CNN
F 2 "ref-packages:C102-054X133" H 9588 3600 30  0001 C CNN
F 3 "" H 9550 3750 60  0000 C CNN
	1    9550 3750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 54999A0C
P 9550 4300
F 0 "#PWR031" H 9550 4300 30  0001 C CNN
F 1 "GND" H 9550 4230 30  0001 C CNN
F 2 "" H 9550 4300 60  0000 C CNN
F 3 "" H 9550 4300 60  0000 C CNN
	1    9550 4300
	1    0    0    -1  
$EndComp
$Comp
L R R16
U 1 1 54999C9C
P 9850 3900
F 0 "R16" V 9930 3900 40  0000 C CNN
F 1 "820k" V 9857 3901 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 9780 3900 30  0001 C CNN
F 3 "" H 9850 3900 30  0000 C CNN
	1    9850 3900
	1    0    0    -1  
$EndComp
$Comp
L R R17
U 1 1 54999CAE
P 9850 4950
F 0 "R17" V 9930 4950 40  0000 C CNN
F 1 "12k" V 9857 4951 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 9780 4950 30  0001 C CNN
F 3 "" H 9850 4950 30  0000 C CNN
	1    9850 4950
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 54999D0D
P 9550 4950
F 0 "C9" H 9550 5050 40  0000 L CNN
F 1 "1n" H 9556 4865 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 9588 4800 30  0001 C CNN
F 3 "" H 9550 4950 60  0000 C CNN
	1    9550 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 54999D35
P 9550 5400
F 0 "#PWR032" H 9550 5400 30  0001 C CNN
F 1 "GND" H 9550 5330 30  0001 C CNN
F 2 "" H 9550 5400 60  0000 C CNN
F 3 "" H 9550 5400 60  0000 C CNN
	1    9550 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 54999D40
P 9850 5400
F 0 "#PWR033" H 9850 5400 30  0001 C CNN
F 1 "GND" H 9850 5330 30  0001 C CNN
F 2 "" H 9850 5400 60  0000 C CNN
F 3 "" H 9850 5400 60  0000 C CNN
	1    9850 5400
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5499A028
P 6300 1300
F 0 "R14" V 6380 1300 40  0000 C CNN
F 1 "2" V 6307 1301 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 6230 1300 30  0001 C CNN
F 3 "" H 6300 1300 30  0000 C CNN
	1    6300 1300
	0    1    1    0   
$EndComp
$Comp
L R R13
U 1 1 5499A0AF
P 5900 3300
F 0 "R13" V 5980 3300 40  0000 C CNN
F 1 "22k" V 5907 3301 40  0000 C CNN
F 2 "pretty-libs:R0805_smd-mod" V 5830 3300 30  0001 C CNN
F 3 "" H 5900 3300 30  0000 C CNN
	1    5900 3300
	1    0    0    -1  
$EndComp
$Comp
L R R9
U 1 1 5499A147
P 4200 1600
F 0 "R9" V 4280 1600 40  0000 C CNN
F 1 "22k" V 4207 1601 40  0000 C CNN
F 2 "pretty-libs:R0805_smd-mod" V 4130 1600 30  0001 C CNN
F 3 "" H 4200 1600 30  0000 C CNN
	1    4200 1600
	-1   0    0    -1  
$EndComp
$Comp
L R R11
U 1 1 5499A3C6
P 4500 1950
F 0 "R11" V 4580 1950 40  0000 C CNN
F 1 "22k" V 4507 1951 40  0000 C CNN
F 2 "pretty-libs:R0805_smd-mod" V 4430 1950 30  0001 C CNN
F 3 "" H 4500 1950 30  0000 C CNN
	1    4500 1950
	0    -1   1    0   
$EndComp
$Comp
L CP1 C6
U 1 1 5499A910
P 5050 3300
F 0 "C6" H 5100 3400 50  0000 L CNN
F 1 "1u" H 5100 3200 50  0000 L CNN
F 2 "capacitors:CP_5x6mm" H 5050 3300 60  0001 C CNN
F 3 "" H 5050 3300 60  0000 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5499A95B
P 5900 3650
F 0 "#PWR034" H 5900 3650 30  0001 C CNN
F 1 "GND" H 5900 3580 30  0001 C CNN
F 2 "" H 5900 3650 60  0000 C CNN
F 3 "" H 5900 3650 60  0000 C CNN
	1    5900 3650
	-1   0    0    -1  
$EndComp
$Comp
L +12V #PWR035
U 1 1 5499AE42
P 6700 850
F 0 "#PWR035" H 6700 800 20  0001 C CNN
F 1 "+12V" H 6700 1000 30  0000 C CNN
F 2 "" H 6700 850 60  0000 C CNN
F 3 "" H 6700 850 60  0000 C CNN
	1    6700 850 
	1    0    0    -1  
$EndComp
$Comp
L +12P #PWR036
U 1 1 5499AFBB
P 3350 850
F 0 "#PWR036" H 3350 820 30  0001 C CNN
F 1 "+12P" H 3350 1000 30  0000 C CNN
F 2 "" H 3350 850 60  0000 C CNN
F 3 "" H 3350 850 60  0000 C CNN
	1    3350 850 
	1    0    0    -1  
$EndComp
$Comp
L CP1 C3
U 1 1 5499B01F
P 3750 1700
F 0 "C3" H 3800 1800 50  0000 L CNN
F 1 "220u" H 3800 1600 50  0000 L CNN
F 2 "capacitors:CP_8x13mm" H 3750 1700 60  0001 C CNN
F 3 "" H 3750 1700 60  0000 C CNN
	1    3750 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5499B02A
P 3750 2100
F 0 "#PWR037" H 3750 2100 30  0001 C CNN
F 1 "GND" H 3750 2030 30  0001 C CNN
F 2 "" H 3750 2100 60  0000 C CNN
F 3 "" H 3750 2100 60  0000 C CNN
	1    3750 2100
	-1   0    0    -1  
$EndComp
$Comp
L BARREL_JACK CON1
U 1 1 5499B31E
P 1100 1500
F 0 "CON1" H 1100 1750 60  0000 C CNN
F 1 "BARREL_JACK" H 1100 1300 60  0000 C CNN
F 2 "connect:BARREL_JACK" H 1100 1500 60  0001 C CNN
F 3 "" H 1100 1500 60  0000 C CNN
	1    1100 1500
	1    0    0    -1  
$EndComp
$Comp
L DIODE D1
U 1 1 5499B33B
P 3350 1700
F 0 "D1" H 3350 1800 40  0000 C CNN
F 1 "1N5819" H 3350 1600 40  0000 C CNN
F 2 "discret:D3" H 3350 1700 60  0001 C CNN
F 3 "" H 3350 1700 60  0000 C CNN
	1    3350 1700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR038
U 1 1 5499B423
P 3350 2100
F 0 "#PWR038" H 3350 2100 30  0001 C CNN
F 1 "GND" H 3350 2030 30  0001 C CNN
F 2 "" H 3350 2100 60  0000 C CNN
F 3 "" H 3350 2100 60  0000 C CNN
	1    3350 2100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 5499B864
P 1550 2200
F 0 "#PWR039" H 1550 2200 30  0001 C CNN
F 1 "GND" H 1550 2130 30  0001 C CNN
F 2 "" H 1550 2200 60  0000 C CNN
F 3 "" H 1550 2200 60  0000 C CNN
	1    1550 2200
	-1   0    0    -1  
$EndComp
$Comp
L +12V #PWR040
U 1 1 5499C5AB
P 3800 5000
F 0 "#PWR040" H 3800 4950 20  0001 C CNN
F 1 "+12V" H 3800 5150 30  0000 C CNN
F 2 "" H 3800 5000 60  0000 C CNN
F 3 "" H 3800 5000 60  0000 C CNN
	1    3800 5000
	1    0    0    -1  
$EndComp
$Comp
L LM7805 U3
U 1 1 5499C5B8
P 4650 5700
F 0 "U3" H 4800 5504 60  0000 C CNN
F 1 "LM7805" H 4650 5900 60  0000 C CNN
F 2 "powerint:TO-220" H 4650 5700 60  0001 C CNN
F 3 "" H 4650 5700 60  0000 C CNN
	1    4650 5700
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5499C5CC
P 4100 6000
F 0 "C4" H 4100 6100 40  0000 L CNN
F 1 "100n" H 4106 5915 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 4138 5850 30  0001 C CNN
F 3 "" H 4100 6000 60  0000 C CNN
	1    4100 6000
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5499C5DE
P 5200 6000
F 0 "C5" H 5200 6100 40  0000 L CNN
F 1 "100n" H 5206 5915 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 5238 5850 30  0001 C CNN
F 3 "" H 5200 6000 60  0000 C CNN
	1    5200 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 5499C6CB
P 4650 6400
F 0 "#PWR041" H 4650 6400 30  0001 C CNN
F 1 "GND" H 4650 6330 30  0001 C CNN
F 2 "" H 4650 6400 60  0000 C CNN
F 3 "" H 4650 6400 60  0000 C CNN
	1    4650 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 5499C6D6
P 5200 6400
F 0 "#PWR042" H 5200 6400 30  0001 C CNN
F 1 "GND" H 5200 6330 30  0001 C CNN
F 2 "" H 5200 6400 60  0000 C CNN
F 3 "" H 5200 6400 60  0000 C CNN
	1    5200 6400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 5499C6E1
P 4100 6400
F 0 "#PWR043" H 4100 6400 30  0001 C CNN
F 1 "GND" H 4100 6330 30  0001 C CNN
F 2 "" H 4100 6400 60  0000 C CNN
F 3 "" H 4100 6400 60  0000 C CNN
	1    4100 6400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR044
U 1 1 5499C7DE
P 5500 5000
F 0 "#PWR044" H 5500 5090 20  0001 C CNN
F 1 "+5V" H 5500 5150 30  0000 C CNN
F 2 "" H 5500 5000 60  0000 C CNN
F 3 "" H 5500 5000 60  0000 C CNN
	1    5500 5000
	1    0    0    -1  
$EndComp
$Comp
L DIODE D2
U 1 1 5499C9C4
P 4650 5250
F 0 "D2" H 4650 5350 40  0000 C CNN
F 1 "1N5819" H 4650 5150 40  0000 C CNN
F 2 "discret:D3" H 4650 5250 60  0001 C CNN
F 3 "" H 4650 5250 60  0000 C CNN
	1    4650 5250
	-1   0    0    1   
$EndComp
$Comp
L DIODE D3
U 1 1 5499CA97
P 5500 6000
F 0 "D3" H 5500 6100 40  0000 C CNN
F 1 "1N5819" H 5500 5900 40  0000 C CNN
F 2 "discret:D3" H 5500 6000 60  0001 C CNN
F 3 "" H 5500 6000 60  0000 C CNN
	1    5500 6000
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR045
U 1 1 5499CAF9
P 5500 6400
F 0 "#PWR045" H 5500 6400 30  0001 C CNN
F 1 "GND" H 5500 6330 30  0001 C CNN
F 2 "" H 5500 6400 60  0000 C CNN
F 3 "" H 5500 6400 60  0000 C CNN
	1    5500 6400
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5499E906
P 6750 3950
F 0 "R15" V 6830 3950 40  0000 C CNN
F 1 "47k" V 6757 3951 40  0000 C CNN
F 2 "pretty-libs:R0805_smd-mod" V 6680 3950 30  0001 C CNN
F 3 "" H 6750 3950 30  0000 C CNN
	1    6750 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR046
U 1 1 5499E911
P 6750 4300
F 0 "#PWR046" H 6750 4300 30  0001 C CNN
F 1 "GND" H 6750 4230 30  0001 C CNN
F 2 "" H 6750 4300 60  0000 C CNN
F 3 "" H 6750 4300 60  0000 C CNN
	1    6750 4300
	1    0    0    -1  
$EndComp
$Comp
L SWITCH_INV SW0
U 1 1 54A2EE92
P 2200 1400
F 0 "SW0" H 2000 1550 50  0000 C CNN
F 1 "SWITCH_INV" H 2050 1250 50  0000 C CNN
F 2 "pretty-libs:CL-SA-12C4-02" H 2200 1400 60  0001 C CNN
F 3 "" H 2200 1400 60  0000 C CNN
	1    2200 1400
	1    0    0    -1  
$EndComp
$Comp
L TEST TP9
U 1 1 54A37D7A
P 11000 4950
F 0 "TP9" H 11000 5010 40  0000 C CNN
F 1 "TEST" H 11000 4880 40  0000 C CNN
F 2 "connect:GS2" H 11000 4950 60  0001 C CNN
F 3 "" H 11000 4950 60  0000 C CNN
	1    11000 4950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR047
U 1 1 54A37DFD
P 11000 5400
F 0 "#PWR047" H 11000 5400 30  0001 C CNN
F 1 "GND" H 11000 5330 30  0001 C CNN
F 2 "" H 11000 5400 60  0000 C CNN
F 3 "" H 11000 5400 60  0000 C CNN
	1    11000 5400
	1    0    0    -1  
$EndComp
$Comp
L TEST TP8
U 1 1 54A38018
P 10950 3600
F 0 "TP8" H 10950 3660 40  0000 C CNN
F 1 "TEST" H 10950 3530 40  0000 C CNN
F 2 "connect:GS2" H 10950 3600 60  0001 C CNN
F 3 "" H 10950 3600 60  0000 C CNN
	1    10950 3600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR048
U 1 1 54A3809D
P 10950 3950
F 0 "#PWR048" H 10950 3950 30  0001 C CNN
F 1 "GND" H 10950 3880 30  0001 C CNN
F 2 "" H 10950 3950 60  0000 C CNN
F 3 "" H 10950 3950 60  0000 C CNN
	1    10950 3950
	1    0    0    -1  
$EndComp
$Comp
L BC857 Q9
U 1 1 54A45654
P 4950 1950
F 0 "Q9" H 4950 1801 40  0000 R CNN
F 1 "BC857" H 4950 2100 40  0000 R CNN
F 2 "smd_transistors:sot23" H 4850 2052 29  0001 C CNN
F 3 "" H 4950 1950 60  0000 C CNN
	1    4950 1950
	1    0    0    1   
$EndComp
$Comp
L BC857 Q12
U 1 1 54A456F1
P 6000 1950
F 0 "Q12" H 6000 1801 40  0000 R CNN
F 1 "BC857" H 6000 2100 40  0000 R CNN
F 2 "smd_transistors:sot23" H 5900 2052 29  0001 C CNN
F 3 "" H 6000 1950 60  0000 C CNN
	1    6000 1950
	-1   0    0    1   
$EndComp
$Comp
L BC847 Q10
U 1 1 54A47B3A
P 4300 2950
F 0 "Q10" H 4300 2801 40  0000 R CNN
F 1 "BC847" H 4300 3100 40  0000 R CNN
F 2 "smd_transistors:sot23" H 4200 3052 29  0001 C CNN
F 3 "" H 4300 2950 60  0000 C CNN
	1    4300 2950
	-1   0    0    -1  
$EndComp
$Comp
L R R27
U 1 1 54A574A5
P 8800 3600
F 0 "R27" V 8880 3600 40  0000 C CNN
F 1 "2k2" V 8807 3601 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 8730 3600 30  0001 C CNN
F 3 "" H 8800 3600 30  0000 C CNN
	1    8800 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR049
U 1 1 54A5750A
P 8800 4300
F 0 "#PWR049" H 8800 4300 30  0001 C CNN
F 1 "GND" H 8800 4230 30  0001 C CNN
F 2 "" H 8800 4300 60  0000 C CNN
F 3 "" H 8800 4300 60  0000 C CNN
	1    8800 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR050
U 1 1 54A579FD
P 7850 3150
F 0 "#PWR050" H 7850 3150 30  0001 C CNN
F 1 "GND" H 7850 3080 30  0001 C CNN
F 2 "" H 7850 3150 60  0000 C CNN
F 3 "" H 7850 3150 60  0000 C CNN
	1    7850 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR051
U 1 1 54A58A87
P 7700 3850
F 0 "#PWR051" H 7700 3850 30  0001 C CNN
F 1 "GND" H 7700 3780 30  0001 C CNN
F 2 "" H 7700 3850 60  0000 C CNN
F 3 "" H 7700 3850 60  0000 C CNN
	1    7700 3850
	1    0    0    -1  
$EndComp
$Comp
L IRS44273 U6
U 1 1 54A58D14
P 7250 3600
F 0 "U6" H 7250 3850 60  0000 C CNN
F 1 "IRS44273" H 7250 3350 60  0000 C CNN
F 2 "libcms:SOT23-5" H 7250 3600 60  0001 C CNN
F 3 "" H 7250 3600 60  0000 C CNN
	1    7250 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR052
U 1 1 54A58ED2
P 7400 3150
F 0 "#PWR052" H 7400 3150 30  0001 C CNN
F 1 "GND" H 7400 3080 30  0001 C CNN
F 2 "" H 7400 3150 60  0000 C CNN
F 3 "" H 7400 3150 60  0000 C CNN
	1    7400 3150
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR053
U 1 1 54A590F2
P 7700 2250
F 0 "#PWR053" H 7700 2200 20  0001 C CNN
F 1 "+12V" H 7700 2400 30  0000 C CNN
F 2 "" H 7700 2250 60  0000 C CNN
F 3 "" H 7700 2250 60  0000 C CNN
	1    7700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 4600 11000 4600
Wire Wire Line
	10150 4150 10150 4750
Wire Wire Line
	10150 5150 10150 5400
Wire Wire Line
	10550 4600 10550 4750
Connection ~ 10150 4600
Wire Wire Line
	10550 5150 10550 5400
Connection ~ 10550 4600
Wire Wire Line
	10150 3250 10150 3650
Wire Wire Line
	8500 3850 8500 3750
Wire Wire Line
	8500 3150 8500 3350
Wire Wire Line
	7650 3550 8200 3550
Wire Wire Line
	8100 3050 8100 3150
Wire Wire Line
	8500 2250 8500 2550
Wire Wire Line
	8100 2650 8100 2400
Wire Wire Line
	7850 2400 8500 2400
Connection ~ 8500 2400
Connection ~ 8500 3250
Wire Wire Line
	9550 3550 9550 3250
Wire Wire Line
	9550 3950 9550 4300
Wire Wire Line
	9850 2250 9850 3650
Connection ~ 9550 3250
Wire Wire Line
	9850 4150 9850 4700
Connection ~ 9850 4600
Wire Wire Line
	9550 4750 9550 4600
Connection ~ 9550 4600
Wire Wire Line
	9850 5400 9850 5200
Wire Wire Line
	9550 5400 9550 5150
Connection ~ 9850 3250
Wire Wire Line
	10750 4600 10750 4350
Wire Wire Line
	5700 1300 6050 1300
Connection ~ 5900 1300
Wire Wire Line
	2700 1300 5300 1300
Wire Wire Line
	5900 1300 5900 1750
Wire Wire Line
	5900 2150 5900 3050
Wire Wire Line
	6550 1300 6700 1300
Wire Wire Line
	6700 850  6700 1950
Wire Wire Line
	6700 1950 6200 1950
Connection ~ 6700 1300
Wire Wire Line
	3750 2100 3750 1900
Wire Wire Line
	3350 850  3350 1500
Connection ~ 3350 1300
Wire Wire Line
	3350 2100 3350 1900
Wire Wire Line
	3750 1500 3750 1300
Connection ~ 3750 1300
Wire Wire Line
	1550 1500 1550 2200
Wire Wire Line
	1550 1600 1400 1600
Wire Wire Line
	1400 1500 1550 1500
Connection ~ 1550 1600
Wire Wire Line
	3800 5650 4250 5650
Wire Wire Line
	3800 5650 3800 5000
Wire Wire Line
	4100 5250 4100 5800
Connection ~ 4100 5650
Wire Wire Line
	5050 5650 5500 5650
Wire Wire Line
	5200 5250 5200 5800
Wire Wire Line
	4650 5950 4650 6400
Wire Wire Line
	4100 6400 4100 6200
Wire Wire Line
	5200 6400 5200 6200
Wire Wire Line
	5500 5000 5500 5800
Connection ~ 5200 5650
Wire Wire Line
	4450 5250 4100 5250
Wire Wire Line
	4850 5250 5200 5250
Connection ~ 5500 5650
Wire Wire Line
	5500 6200 5500 6400
Wire Wire Line
	6750 4200 6750 4300
Wire Wire Line
	1700 1400 1400 1400
Wire Wire Line
	11000 5150 11000 5400
Wire Wire Line
	11000 4600 11000 4750
Connection ~ 10750 4600
Wire Wire Line
	10950 3800 10950 3950
Wire Wire Line
	10950 3250 10950 3400
Connection ~ 10150 3250
Wire Wire Line
	8800 4300 8800 4250
Wire Wire Line
	8500 3250 9050 3250
Wire Wire Line
	8800 3350 8800 3250
Connection ~ 8800 3250
Wire Wire Line
	7850 2650 7850 2400
Connection ~ 8100 2400
Wire Wire Line
	7850 3150 7850 3050
Wire Wire Line
	9450 3250 10950 3250
Wire Wire Line
	9050 4600 9850 4600
Wire Wire Line
	7650 3650 7750 3650
Wire Wire Line
	7750 3650 7750 3550
Connection ~ 7750 3550
Wire Wire Line
	7650 3750 7700 3750
Wire Wire Line
	7700 3750 7700 3850
Wire Wire Line
	7400 3150 7400 3050
Wire Wire Line
	7700 3450 7650 3450
Wire Wire Line
	7700 2250 7700 3450
Wire Wire Line
	7700 2400 7400 2400
Wire Wire Line
	7400 2400 7400 2650
Connection ~ 7700 2400
Wire Wire Line
	6500 3600 6900 3600
Wire Wire Line
	6750 3700 6750 3600
Connection ~ 6750 3600
$Comp
L C C13
U 1 1 54A5B7AB
P 7400 2850
F 0 "C13" H 7400 2950 40  0000 L CNN
F 1 "100n" H 7406 2765 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 7438 2700 30  0001 C CNN
F 3 "" H 7400 2850 60  0000 C CNN
	1    7400 2850
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 54A5B98E
P 7850 2850
F 0 "C14" H 7850 2950 40  0000 L CNN
F 1 "100n" H 7856 2765 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 7888 2700 30  0001 C CNN
F 3 "" H 7850 2850 60  0000 C CNN
	1    7850 2850
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 54A5BB99
P 8800 4050
F 0 "C15" H 8800 4150 40  0000 L CNN
F 1 "100p" H 8806 3965 40  0000 L CNN
F 2 "smd_capacitors:c_0805" H 8838 3900 30  0001 C CNN
F 3 "" H 8800 4050 60  0000 C CNN
	1    8800 4050
	1    0    0    -1  
$EndComp
$Comp
L R R26
U 1 1 54A5E02B
P 6300 1450
F 0 "R26" V 6380 1450 40  0000 C CNN
F 1 "R" V 6307 1451 40  0000 C CNN
F 2 "pretty-libs:R3-mod" V 6230 1450 30  0001 C CNN
F 3 "" H 6300 1450 30  0000 C CNN
	1    6300 1450
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 1450 5900 1450
Connection ~ 5900 1450
Wire Wire Line
	6550 1450 6700 1450
Connection ~ 6700 1450
$Comp
L MOSFET_P Q11
U 1 1 54D619B0
P 5500 1400
F 0 "Q11" H 5500 1590 60  0000 R CNN
F 1 "IRLML6402" H 5500 1220 60  0000 R CNN
F 2 "libcms:SOT23GDS" H 5500 1400 60  0001 C CNN
F 3 "" H 5500 1400 60  0000 C CNN
	1    5500 1400
	0    1    -1   0   
$EndComp
Wire Wire Line
	5900 3650 5900 3550
Wire Wire Line
	5050 2250 5500 2250
Wire Wire Line
	5500 2250 5500 1600
Wire Wire Line
	5050 2150 5050 2350
Wire Wire Line
	5050 1750 5050 1300
Connection ~ 5050 1300
Wire Wire Line
	4200 1350 4200 1300
Connection ~ 4200 1300
Wire Wire Line
	4250 1950 4200 1950
Wire Wire Line
	4200 1850 4200 2750
$Comp
L R R12
U 1 1 54D6302A
P 5500 2950
F 0 "R12" V 5580 2950 40  0000 C CNN
F 1 "560k" V 5507 2951 40  0000 C CNN
F 2 "pretty-libs:R0805_smd-mod" V 5430 2950 30  0001 C CNN
F 3 "" H 5500 2950 30  0000 C CNN
	1    5500 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 2850 5050 3100
Wire Wire Line
	4500 2950 5250 2950
Wire Wire Line
	5750 2950 5900 2950
Connection ~ 5900 2950
$Comp
L GND #PWR054
U 1 1 54D632F0
P 5050 3650
F 0 "#PWR054" H 5050 3650 30  0001 C CNN
F 1 "GND" H 5050 3580 30  0001 C CNN
F 2 "" H 5050 3650 60  0000 C CNN
F 3 "" H 5050 3650 60  0000 C CNN
	1    5050 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 3650 5050 3500
$Comp
L R R10
U 1 1 54D63483
P 5050 2600
F 0 "R10" V 5130 2600 40  0000 C CNN
F 1 "22k" V 5057 2601 40  0000 C CNN
F 2 "pretty-libs:R0805_smd-mod" V 4980 2600 30  0001 C CNN
F 3 "" H 5050 2600 30  0000 C CNN
	1    5050 2600
	-1   0    0    1   
$EndComp
Connection ~ 5050 2950
Connection ~ 5050 2250
Connection ~ 4200 1950
$Comp
L GND #PWR055
U 1 1 54D637B9
P 4200 3650
F 0 "#PWR055" H 4200 3650 30  0001 C CNN
F 1 "GND" H 4200 3580 30  0001 C CNN
F 2 "" H 4200 3650 60  0000 C CNN
F 3 "" H 4200 3650 60  0000 C CNN
	1    4200 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4200 3650 4200 3150
Text Notes 6850 1350 0    60   ~ 0
Imax = Vbe/(R14||R26)
Text Notes 4000 3950 0    60   ~ 0
Turn-off-delay = R12*C6*ln(12/(12-Vbe))
$EndSCHEMATC
