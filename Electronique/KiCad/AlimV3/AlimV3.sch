EESchema Schematic File Version 2  date dim. 11 janv. 2015 12:18:46 CET
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
LIBS:special
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
LIBS:POSL
LIBS:AlimV3-cache
EELAYER 25  0
EELAYER END
$Descr A4 11700 8267
encoding utf-8
Sheet 1 1
Title ""
Date "11 jan 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Connection ~ 6100 2650
Wire Wire Line
	6100 2650 6100 2750
Wire Wire Line
	7200 2650 6900 2650
Connection ~ 7200 4850
Connection ~ 7200 3900
Wire Wire Line
	7200 3900 7200 4950
Wire Wire Line
	6700 4750 6700 5550
Connection ~ 5300 4850
Wire Wire Line
	5300 4850 6500 4850
Wire Wire Line
	6500 4850 6500 4750
Wire Wire Line
	5300 5050 3500 5050
Wire Wire Line
	9150 1400 9300 1400
Wire Wire Line
	8700 3600 8550 3600
Connection ~ 8000 1700
Wire Wire Line
	8000 1700 8000 1400
Wire Wire Line
	8000 1400 8100 1400
Wire Wire Line
	8700 5300 8550 5300
Wire Wire Line
	8700 4100 8550 4100
Connection ~ 3750 5050
Wire Wire Line
	5300 5050 5300 4550
Connection ~ 4650 3900
Wire Wire Line
	4650 3900 4650 4500
Wire Wire Line
	4650 4500 4400 4500
Connection ~ 3750 3900
Wire Wire Line
	3750 4000 3750 3900
Wire Wire Line
	3500 4250 3500 3600
Wire Wire Line
	3500 3600 7650 3600
Connection ~ 7650 1700
Wire Wire Line
	7650 3600 7650 1700
Wire Wire Line
	8600 1900 8750 1900
Wire Wire Line
	2450 1500 2650 1500
Connection ~ 2800 1700
Wire Wire Line
	2800 1900 2800 1700
Connection ~ 7200 1700
Wire Wire Line
	6900 2650 6900 2550
Connection ~ 5300 2650
Wire Wire Line
	3750 2850 3750 2800
Wire Wire Line
	3500 2550 3500 2850
Wire Wire Line
	4500 1700 4800 1700
Wire Wire Line
	6100 3250 6100 3150
Connection ~ 3500 1700
Wire Wire Line
	3500 1700 3500 2050
Connection ~ 3750 1700
Wire Wire Line
	3750 1800 3750 1700
Wire Wire Line
	7200 3250 7200 3150
Wire Wire Line
	4400 2300 4650 2300
Wire Wire Line
	4650 2300 4650 1700
Connection ~ 4650 1700
Wire Wire Line
	3500 2850 5300 2850
Wire Wire Line
	5300 2850 5300 2350
Connection ~ 3750 2850
Wire Wire Line
	5300 2650 6500 2650
Wire Wire Line
	6500 2650 6500 2550
Wire Wire Line
	2450 1700 4000 1700
Wire Wire Line
	8750 1700 5800 1700
Wire Wire Line
	2800 2500 2800 2300
Wire Wire Line
	3500 3900 4000 3900
Connection ~ 3500 3900
Wire Wire Line
	4500 3900 4800 3900
Wire Wire Line
	3750 5050 3750 5000
Wire Wire Line
	3500 5050 3500 4750
Wire Wire Line
	5800 3900 8700 3900
Wire Wire Line
	6100 5350 6100 5550
Wire Wire Line
	7200 5350 7200 5550
Wire Wire Line
	8700 5100 7800 5100
Connection ~ 3400 1700
Wire Wire Line
	8600 1400 8750 1400
Wire Wire Line
	8050 3600 7950 3600
Wire Wire Line
	7950 3600 7950 3900
Connection ~ 7950 3900
Wire Wire Line
	9100 3600 9250 3600
Wire Wire Line
	7800 5100 7800 5700
Wire Wire Line
	7800 5700 3400 5700
Wire Wire Line
	3400 5700 3400 1700
Wire Wire Line
	6100 4950 6100 4850
Connection ~ 6100 4850
Wire Wire Line
	7200 4850 6900 4850
Wire Wire Line
	6900 4850 6900 4750
Wire Wire Line
	6700 2550 6700 3250
Wire Wire Line
	7200 1700 7200 2750
Connection ~ 7200 2650
$Comp
L 7805CMS REG2
U 1 1 54B25B62
P 6700 4450
F 0 "REG2" V 7100 4600 60  0000 C CNN
F 1 "7805CMS" V 6350 4650 60  0000 C CNN
	1    6700 4450
	1    0    0    -1  
$EndComp
Text Notes 950  3000 0    60   ~ 0
R Led = 315 = (8.5-2.2)/0.020\nR Led = 140 = (5-2.2)/0.020
$Comp
L GND #PWR01
U 1 1 54B2509B
P 9250 3600
F 0 "#PWR01" H 9250 3600 30  0001 C CNN
F 1 "GND" H 9250 3530 30  0001 C CNN
	1    9250 3600
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 54B25095
P 9300 1400
F 0 "#PWR02" H 9300 1400 30  0001 C CNN
F 1 "GND" H 9300 1330 30  0001 C CNN
	1    9300 1400
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 54B2507C
P 8300 3600
F 0 "R5" V 8380 3600 50  0000 C CNN
F 1 "140" V 8300 3600 50  0000 C CNN
	1    8300 3600
	0    1    1    0   
$EndComp
$Comp
L R R6
U 1 1 54B25077
P 8350 1400
F 0 "R6" V 8430 1400 50  0000 C CNN
F 1 "320" V 8350 1400 50  0000 C CNN
	1    8350 1400
	0    1    1    0   
$EndComp
$Comp
L LED D1
U 1 1 54B25065
P 8900 3600
F 0 "D1" H 8900 3700 50  0000 C CNN
F 1 "LED" H 8900 3500 50  0000 C CNN
	1    8900 3600
	1    0    0    -1  
$EndComp
$Comp
L LED D2
U 1 1 54B25056
P 8950 1400
F 0 "D2" H 8950 1500 50  0000 C CNN
F 1 "LED" H 8950 1300 50  0000 C CNN
	1    8950 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 54B25020
P 7200 5550
F 0 "#PWR03" H 7200 5550 30  0001 C CNN
F 1 "GND" H 7200 5480 30  0001 C CNN
	1    7200 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 54B2501D
P 6700 5550
F 0 "#PWR04" H 6700 5550 30  0001 C CNN
F 1 "GND" H 6700 5480 30  0001 C CNN
	1    6700 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 54B25019
P 6100 5550
F 0 "#PWR05" H 6100 5550 30  0001 C CNN
F 1 "GND" H 6100 5480 30  0001 C CNN
	1    6100 5550
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 54B24FA2
P 7200 5150
F 0 "C5" H 7250 5250 50  0000 L CNN
F 1 "100nF" H 7250 5050 50  0000 L CNN
	1    7200 5150
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 54B24F99
P 6100 5150
F 0 "C3" H 6150 5250 50  0000 L CNN
F 1 "100nF" H 6150 5050 50  0000 L CNN
	1    6100 5150
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 54B24F84
P 7200 2950
F 0 "C4" H 7250 3050 50  0000 L CNN
F 1 "100nF" H 7250 2850 50  0000 L CNN
	1    7200 2950
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54B24F81
P 6100 2950
F 0 "C1" H 6150 3050 50  0000 L CNN
F 1 "100nF" H 6150 2850 50  0000 L CNN
	1    6100 2950
	1    0    0    -1  
$EndComp
$Comp
L MJD45H11G T4
U 1 1 54B24F3B
P 5300 4050
F 0 "T4" H 5350 3700 60  0000 C CNN
F 1 "MJD45H11G" H 5450 4350 60  0000 C CNN
	1    5300 4050
	0    1    1    0   
$EndComp
$Comp
L R R4
U 1 1 54B24F22
P 4250 3900
F 0 "R4" V 4330 3900 50  0000 C CNN
F 1 "0.2" V 4250 3900 50  0000 C CNN
	1    4250 3900
	0    1    1    0   
$EndComp
$Comp
L MMBT2907A T3
U 1 1 54B24F15
P 3900 4500
F 0 "T3" H 3950 4150 60  0000 C CNN
F 1 "MMBT2907A" H 4050 4800 60  0000 C CNN
	1    3900 4500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54B24F08
P 3500 4500
F 0 "R2" V 3580 4500 50  0000 C CNN
F 1 "1.2" V 3500 4500 50  0000 C CNN
	1    3500 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 54B24ECB
P 2800 2500
F 0 "#PWR06" H 2800 2500 30  0001 C CNN
F 1 "GND" H 2800 2430 30  0001 C CNN
	1    2800 2500
	1    0    0    -1  
$EndComp
$Comp
L MJD45H11G T2
U 1 1 54AC2BB2
P 5300 1850
F 0 "T2" H 5350 1500 60  0000 C CNN
F 1 "MJD45H11G" H 5450 2150 60  0000 C CNN
	1    5300 1850
	0    1    1    0   
$EndComp
Text Notes 9700 1800 0    60   ~ 0
Driver moteur
Text Notes 9550 4000 0    60   ~ 0
Servomoteurs
Text Notes 9650 5200 0    60   ~ 0
Arduino
Text Notes 9250 5300 0    60   ~ 0
0V
Text Notes 9200 5150 0    60   ~ 0
+11.1V
$Comp
L GND #PWR07
U 1 1 548DFEE8
P 8550 5300
F 0 "#PWR07" H 8550 5300 30  0001 C CNN
F 1 "GND" H 8550 5230 30  0001 C CNN
	1    8550 5300
	0    1    1    0   
$EndComp
$Comp
L CONN_2 P8
U 1 1 548DFEDA
P 9050 5200
F 0 "P8" V 9000 5200 40  0000 C CNN
F 1 "CONN_2" V 9100 5200 40  0000 C CNN
	1    9050 5200
	1    0    0    -1  
$EndComp
$Comp
L CAPAPOL C2
U 1 1 542148DF
P 2800 2100
F 0 "C2" H 2850 2200 50  0000 L CNN
F 1 "4700µF/25V" H 2850 2000 50  0000 L CNN
	1    2800 2100
	1    0    0    -1  
$EndComp
Text Notes 950  2450 0    60   ~ 0
0.2 = R200\n1.2 = 1R2
Text Notes 9200 3950 0    60   ~ 0
+5V
Text Notes 9250 4150 0    60   ~ 0
0V
Text Notes 9300 1950 0    60   ~ 0
0V
Text Notes 9250 1750 0    60   ~ 0
+8.5V
Text Notes 1600 1550 0    60   ~ 0
0V
Text Notes 1550 1750 0    60   ~ 0
+11.1V
$Comp
L GND #PWR08
U 1 1 542149DE
P 8550 4100
F 0 "#PWR08" H 8550 4100 30  0001 C CNN
F 1 "GND" H 8550 4030 30  0001 C CNN
	1    8550 4100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR09
U 1 1 542149DA
P 8600 1900
F 0 "#PWR09" H 8600 1900 30  0001 C CNN
F 1 "GND" H 8600 1830 30  0001 C CNN
	1    8600 1900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 542149D6
P 7200 3250
F 0 "#PWR010" H 7200 3250 30  0001 C CNN
F 1 "GND" H 7200 3180 30  0001 C CNN
	1    7200 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 542149D3
P 6100 3250
F 0 "#PWR011" H 6100 3250 30  0001 C CNN
F 1 "GND" H 6100 3180 30  0001 C CNN
	1    6100 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 542149CF
P 6700 3250
F 0 "#PWR012" H 6700 3250 30  0001 C CNN
F 1 "GND" H 6700 3180 30  0001 C CNN
	1    6700 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 542149C5
P 2650 1500
F 0 "#PWR013" H 2650 1500 30  0001 C CNN
F 1 "GND" H 2650 1430 30  0001 C CNN
	1    2650 1500
	0    -1   -1   0   
$EndComp
$Comp
L CONN_2 P2
U 1 1 542149BC
P 9050 4000
F 0 "P2" V 9000 4000 40  0000 C CNN
F 1 "CONN_2" V 9100 4000 40  0000 C CNN
	1    9050 4000
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P3
U 1 1 542149B3
P 9100 1800
F 0 "P3" V 9050 1800 40  0000 C CNN
F 1 "CONN_2" V 9150 1800 40  0000 C CNN
	1    9100 1800
	1    0    0    -1  
$EndComp
$Comp
L L4940V85 REG1
U 1 1 54214989
P 6700 2250
F 0 "REG1" V 7100 2400 60  0000 C CNN
F 1 "L4940V85" V 6350 2450 60  0000 C CNN
	1    6700 2250
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5421490C
P 4250 1700
F 0 "R3" V 4330 1700 50  0000 C CNN
F 1 "0,2" V 4250 1700 50  0000 C CNN
	1    4250 1700
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 54214900
P 3500 2300
F 0 "R1" V 3580 2300 50  0000 C CNN
F 1 "1.2" V 3500 2300 50  0000 C CNN
	1    3500 2300
	1    0    0    -1  
$EndComp
$Comp
L MMBT2907A T1
U 1 1 542148EE
P 3900 2300
F 0 "T1" H 3950 1950 60  0000 C CNN
F 1 "MMBT2907A" H 4050 2600 60  0000 C CNN
	1    3900 2300
	1    0    0    -1  
$EndComp
$Comp
L CONN_2 P1
U 1 1 542148C0
P 2100 1600
F 0 "P1" V 2050 1600 40  0000 C CNN
F 1 "CONN_2" V 2150 1600 40  0000 C CNN
	1    2100 1600
	-1   0    0    1   
$EndComp
$EndSCHEMATC
