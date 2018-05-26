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
Sheet 1 4
Title "Nixie Clock"
Date "141230"
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7300 3450 1050 800 
U 5498925D
F0 "Tubes with drivers" 50
F1 "nixie_tubes.sch" 50
F2 "HVDATA" I L 7300 3600 60 
F3 "HVCLOCK" I L 7300 3700 60 
F4 "HVSTROBE" I L 7300 3800 60 
$EndSheet
$Sheet
S 2700 3450 1050 750 
U 54989D2D
F0 "Power Supply" 50
F1 "nixie_psu.sch" 50
F2 "PWM" I R 3750 3600 60 
F3 "FB" I R 3750 3700 60 
$EndSheet
$Sheet
S 4850 3450 1000 800 
U 54989F02
F0 "Microcontroller and clock" 50
F1 "nixie_mcu.sch" 50
F2 "HVDATA" I R 5850 3600 60 
F3 "HVCLOCK" I R 5850 3700 60 
F4 "HVSTROBE" I R 5850 3800 60 
F5 "PWM" I L 4850 3600 60 
F6 "FB" I L 4850 3700 60 
$EndSheet
Wire Wire Line
	5850 3600 7300 3600
Wire Wire Line
	5850 3700 7300 3700
Wire Wire Line
	5850 3800 7300 3800
Wire Wire Line
	3750 3600 4850 3600
Wire Wire Line
	3750 3700 4850 3700
$EndSCHEMATC
