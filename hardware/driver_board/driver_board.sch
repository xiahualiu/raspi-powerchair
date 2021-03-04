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
L Device:R R9
U 1 1 600A193C
P 4700 2400
F 0 "R9" V 4800 2400 50  0000 C CNN
F 1 "10R" V 4600 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4630 2400 50  0001 C CNN
F 3 "~" H 4700 2400 50  0001 C CNN
F 4 "C47019" V 4875 2400 50  0000 C CNN "LCSC"
	1    4700 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4850 2400 4950 2400
$Comp
L Device:R R10
U 1 1 600A1969
P 4700 3150
F 0 "R10" V 4800 3150 50  0000 C CNN
F 1 "10R" V 4600 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 4630 3150 50  0001 C CNN
F 3 "~" H 4700 3150 50  0001 C CNN
F 4 "C47019" V 4875 3150 50  0000 C CNN "LCSC"
	1    4700 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 600A198B
P 5100 2550
F 0 "R17" V 5200 2550 50  0000 C CNN
F 1 "1kR" V 5000 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5030 2550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-25121WF1001T4E_C54315.pdf" H 5100 2550 50  0001 C CNN
F 4 "C54315" V 5275 2550 50  0000 C CNN "LCSC"
	1    5100 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 2700 5550 2700
Connection ~ 5100 2400
Wire Wire Line
	5100 2400 5250 2400
$Comp
L Diode:1N4007 D1
U 1 1 600A19A2
P 3100 2200
F 0 "D1" H 3100 2300 50  0000 C CNN
F 1 "SUF4007" H 3100 2100 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 3100 2025 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/DIOTEC-SUF4007_C212757.pdf" H 3100 2200 50  0001 C CNN
F 4 "C212757" H 3100 2025 50  0000 C CNN "LCSC"
	1    3100 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	5550 3350 5550 3550
Wire Wire Line
	4850 3150 4950 3150
Wire Wire Line
	5100 3200 5100 3150
Connection ~ 5100 3150
Wire Wire Line
	5100 3150 5250 3150
Wire Wire Line
	5100 3550 5550 3550
Text GLabel 3625 5325 2    50   Input ~ 0
M-
Text GLabel 3625 5225 2    50   Input ~ 0
M+
Text GLabel 3625 5425 2    50   Input ~ 0
HV-
Text GLabel 3625 5125 2    50   Input ~ 0
HV+
Wire Wire Line
	3125 5325 3625 5325
Wire Wire Line
	3125 5225 3625 5225
Wire Wire Line
	3125 5425 3500 5425
Wire Wire Line
	3125 5125 3500 5125
Wire Wire Line
	3125 5875 3350 5875
Wire Wire Line
	3125 6375 3950 6375
Wire Wire Line
	1675 2850 2350 2850
Wire Wire Line
	1675 2950 2350 2950
Wire Wire Line
	3125 6075 3625 6075
Wire Wire Line
	3125 6175 3625 6175
$Comp
L power:GND #PWR0101
U 1 1 60707153
P 4250 6375
F 0 "#PWR0101" H 4250 6125 50  0001 C CNN
F 1 "GND" H 4255 6202 50  0000 C CNN
F 2 "" H 4250 6375 50  0001 C CNN
F 3 "" H 4250 6375 50  0001 C CNN
	1    4250 6375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 3350 2550 3550
Wire Wire Line
	2650 3350 2650 3550
Connection ~ 2650 3550
Wire Wire Line
	2650 3550 2550 3550
Text Notes 2675 1650 0    50   ~ 0
VB=HV+\nVCC=12V\nVDD=3.3V\nVSS=0V\n
$Comp
L power:GND #PWR0102
U 1 1 60712071
P 2650 3650
F 0 "#PWR0102" H 2650 3400 50  0001 C CNN
F 1 "GND" H 2655 3477 50  0000 C CNN
F 2 "" H 2650 3650 50  0001 C CNN
F 3 "" H 2650 3650 50  0001 C CNN
	1    2650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3550 2650 3650
$Comp
L power:+3.3V #PWR0103
U 1 1 607AC0EC
P 2600 1900
F 0 "#PWR0103" H 2600 1750 50  0001 C CNN
F 1 "+3.3V" H 2500 2050 50  0000 C CNN
F 2 "" H 2600 1900 50  0001 C CNN
F 3 "" H 2600 1900 50  0001 C CNN
	1    2600 1900
	1    0    0    -1  
$EndComp
Connection ~ 2550 3550
$Comp
L Device:C C4
U 1 1 6081516A
P 4025 2450
F 0 "C4" H 4117 2496 50  0000 L CNN
F 1 "100nF" H 4117 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4025 2450 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/210/POE-D13-00-E-RD-166365https://datasheet.lcsc.com/szlcsc/YAGEO-https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 4025 2450 50  0001 C CNN
F 4 "C14663" H 4225 2575 50  0000 C CNN "LCSC"
	1    4025 2450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0104
U 1 1 60431E75
P 3625 5875
F 0 "#PWR0104" H 3625 5725 50  0001 C CNN
F 1 "+12V" H 3640 6048 50  0000 C CNN
F 2 "" H 3625 5875 50  0001 C CNN
F 3 "" H 3625 5875 50  0001 C CNN
	1    3625 5875
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0105
U 1 1 6079E41D
P 4250 6275
F 0 "#PWR0105" H 4250 6125 50  0001 C CNN
F 1 "+3.3V" H 4265 6448 50  0000 C CNN
F 2 "" H 4250 6275 50  0001 C CNN
F 3 "" H 4250 6275 50  0001 C CNN
	1    4250 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3125 6275 4075 6275
$Comp
L power:+12V #PWR0118
U 1 1 600A1903
P 2800 2100
F 0 "#PWR0118" H 2800 1950 50  0001 C CNN
F 1 "+12V" H 2825 2275 50  0000 C CNN
F 2 "" H 2800 2100 50  0001 C CNN
F 3 "" H 2800 2100 50  0001 C CNN
	1    2800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2100 2800 2200
$Comp
L Device:C C2
U 1 1 60487F87
P 2225 2150
F 0 "C2" H 2317 2196 50  0000 L CNN
F 1 "100nF" H 2317 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2225 2150 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/210/POE-D13-00-E-RD-166365https://datasheet.lcsc.com/szlcsc/YAGEO-https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 2225 2150 50  0001 C CNN
F 4 "C14663" H 2400 2025 50  0000 C CNN "LCSC"
	1    2225 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 2000 2225 1950
Wire Wire Line
	2225 1950 2600 1950
$Comp
L power:GND #PWR0106
U 1 1 6049237C
P 1775 2400
F 0 "#PWR0106" H 1775 2150 50  0001 C CNN
F 1 "GND" H 1780 2227 50  0000 C CNN
F 2 "" H 1775 2400 50  0001 C CNN
F 3 "" H 1775 2400 50  0001 C CNN
	1    1775 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 2300 2225 2350
$Comp
L Device:CP C1
U 1 1 60497C10
P 1775 2150
F 0 "C1" H 1893 2196 50  0000 L CNN
F 1 "22uF" H 1893 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 1813 2000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A226MAQNNNE_C45783.pdf" H 1775 2150 50  0001 C CNN
F 4 "C45783" H 1475 2150 50  0000 C CNN "LCSC"
	1    1775 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2225 1950 1775 1950
Wire Wire Line
	1775 1950 1775 2000
Connection ~ 2225 1950
Wire Wire Line
	1775 2300 1775 2350
Wire Wire Line
	2225 2350 1775 2350
Connection ~ 1775 2350
Wire Wire Line
	1775 2350 1775 2400
Wire Wire Line
	2600 1900 2600 1950
Connection ~ 2600 1950
Wire Wire Line
	2600 1950 2600 2350
Wire Wire Line
	2950 2200 2800 2200
Connection ~ 2800 2200
Wire Wire Line
	2800 2200 2800 2350
Wire Wire Line
	3250 2200 3400 2200
Wire Wire Line
	3400 2200 3400 2550
Wire Wire Line
	3400 2550 3100 2550
Wire Wire Line
	3400 2200 3625 2200
Wire Wire Line
	3625 2200 3625 2300
Connection ~ 3400 2200
Wire Wire Line
	3625 2200 4025 2200
Wire Wire Line
	4025 2200 4025 2300
Connection ~ 3625 2200
Wire Wire Line
	3100 2700 3625 2700
Wire Wire Line
	3625 2700 3625 2600
Wire Wire Line
	3625 2700 4025 2700
Wire Wire Line
	4025 2700 4025 2600
Connection ~ 3625 2700
Wire Wire Line
	4025 2700 5100 2700
Connection ~ 4025 2700
Connection ~ 5100 2700
Wire Wire Line
	3100 2900 4450 2900
Wire Wire Line
	4450 2900 4450 2400
Wire Wire Line
	3100 3150 4450 3150
Connection ~ 5550 2700
Wire Wire Line
	4850 2000 4950 2000
Wire Wire Line
	4950 2000 4950 2400
Connection ~ 4950 2400
Wire Wire Line
	4950 2400 5100 2400
Wire Wire Line
	4550 2000 4450 2000
Wire Wire Line
	4450 2000 4450 2400
Connection ~ 4450 2400
Wire Wire Line
	4450 2400 4550 2400
Wire Wire Line
	4550 3550 4450 3550
Wire Wire Line
	4450 3550 4450 3150
Connection ~ 4450 3150
Wire Wire Line
	4450 3150 4550 3150
Wire Wire Line
	4850 3550 4950 3550
Wire Wire Line
	4950 3550 4950 3150
Connection ~ 4950 3150
Wire Wire Line
	4950 3150 5100 3150
Text GLabel 6000 2500 1    50   Input ~ 0
M+
Wire Wire Line
	5550 2700 5850 2700
Wire Wire Line
	6000 2700 6000 2500
Text GLabel 5550 1900 1    50   Input ~ 0
HV+
Text GLabel 5550 3750 3    50   Input ~ 0
HV-
Wire Wire Line
	5550 3750 5550 3550
Connection ~ 5550 3550
Text GLabel 1675 2950 0    50   Input ~ 0
PWM1
Text GLabel 1675 2850 0    50   Input ~ 0
PWM0
Text GLabel 3625 6075 2    50   Input ~ 0
PWM1
Text GLabel 3625 6175 2    50   Input ~ 0
PWM0
$Comp
L driver_board:IR2110S U1
U 1 1 607F442C
P 2650 2850
F 0 "U1" H 2950 3325 50  0000 C CNN
F 1 "IR2110S" H 2250 3150 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2800 2850 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/ir2110.pdf?fileId=5546d462533600a4015355c80333167e" H 2650 2850 50  0001 C CNN
F 4 "C2968" H 2900 2375 50  0000 C CNN "LCSC"
	1    2650 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 2700 5550 2875
Wire Wire Line
	5550 2600 5550 2700
Wire Wire Line
	2350 3050 2150 3050
Wire Wire Line
	2150 3050 2150 3550
Wire Wire Line
	2150 3550 2550 3550
$Comp
L Diode:1N4007 D3
U 1 1 60899118
P 4700 2000
F 0 "D3" H 4700 2100 50  0000 C CNN
F 1 "SUF4007" H 4700 1900 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 4700 1825 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/DIOTEC-SUF4007_C212757.pdf" H 4700 2000 50  0001 C CNN
F 4 "C212757" H 4700 2150 50  0000 C CNN "LCSC"
	1    4700 2000
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D4
U 1 1 608A625E
P 4700 3550
F 0 "D4" H 4700 3650 50  0000 C CNN
F 1 "SUF4007" H 4700 3450 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 4700 3375 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/DIOTEC-SUF4007_C212757.pdf" H 4700 3550 50  0001 C CNN
F 4 "C212757" H 4700 3375 50  0000 C CNN "LCSC"
	1    4700 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 608CE5D7
P 5100 3350
F 0 "R1" V 5200 3350 50  0000 C CNN
F 1 "1kR" V 5000 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 5030 3350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-25121WF1001T4E_C54315.pdf" H 5100 3350 50  0001 C CNN
F 4 "C54315" V 4925 3350 50  0000 C CNN "LCSC"
	1    5100 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 3550 5100 3500
$Comp
L driver_board:TPH4R008NH,L1Q(M Q1
U 1 1 6091B1D2
P 5450 2400
F 0 "Q1" H 5654 2446 50  0000 L CNN
F 1 "TPH4R008NH,L1Q(M" V 5325 2575 50  0001 L CNN
F 2 "driver_board:TPH4R008NH,L1Q(M" H 5650 2500 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/408/TPH4R008NH_datasheet_en_20191017-1140027.pdf" H 5450 2400 50  0001 C CNN
F 4 "C396039" H 5275 2575 50  0000 C CNN "LCSC"
	1    5450 2400
	1    0    0    -1  
$EndComp
$Comp
L driver_board:TPH4R008NH,L1Q(M Q2
U 1 1 609298F1
P 5450 3150
F 0 "Q2" H 5654 3196 50  0000 L CNN
F 1 "TPH4R008NH,L1Q(M" V 5325 3325 50  0001 L CNN
F 2 "driver_board:TPH4R008NH,L1Q(M" H 5650 3250 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/408/TPH4R008NH_datasheet_en_20191017-1140027.pdf" H 5450 3150 50  0001 C CNN
F 4 "C396039" H 5300 3300 50  0000 C CNN "LCSC"
	1    5450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6095D0CD
P 7600 2400
F 0 "R4" V 7700 2400 50  0000 C CNN
F 1 "10R" V 7500 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7530 2400 50  0001 C CNN
F 3 "~" H 7600 2400 50  0001 C CNN
F 4 "C47019" V 7775 2400 50  0000 C CNN "LCSC"
	1    7600 2400
	0    1    -1   0   
$EndComp
Wire Wire Line
	7450 2400 7350 2400
$Comp
L Device:R R5
U 1 1 6095D0E4
P 7600 3150
F 0 "R5" V 7700 3150 50  0000 C CNN
F 1 "10R" V 7500 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7530 3150 50  0001 C CNN
F 3 "~" H 7600 3150 50  0001 C CNN
F 4 "C47019" V 7775 3125 50  0000 C CNN "LCSC"
	1    7600 3150
	0    1    -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 6095D0EE
P 7200 2550
F 0 "R2" V 7300 2550 50  0000 C CNN
F 1 "1kR" V 7100 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7130 2550 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-25121WF1001T4E_C54315.pdf" H 7200 2550 50  0001 C CNN
F 4 "C54315" V 7025 2550 50  0000 C CNN "LCSC"
	1    7200 2550
	1    0    0    1   
$EndComp
Wire Wire Line
	7200 2700 6750 2700
Connection ~ 7200 2400
Wire Wire Line
	7200 2400 7050 2400
Wire Wire Line
	6750 3350 6750 3550
Wire Wire Line
	7450 3150 7350 3150
Wire Wire Line
	7200 3200 7200 3150
Connection ~ 7200 3150
Wire Wire Line
	7200 3150 7050 3150
Wire Wire Line
	7200 3550 6750 3550
Wire Wire Line
	9750 3350 9750 3550
Wire Wire Line
	9650 3350 9650 3550
Connection ~ 9650 3550
Wire Wire Line
	9650 3550 9750 3550
$Comp
L power:GND #PWR0111
U 1 1 6095D112
P 9650 3650
F 0 "#PWR0111" H 9650 3400 50  0001 C CNN
F 1 "GND" H 9655 3477 50  0000 C CNN
F 2 "" H 9650 3650 50  0001 C CNN
F 3 "" H 9650 3650 50  0001 C CNN
	1    9650 3650
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9650 3550 9650 3650
$Comp
L power:+3.3V #PWR0112
U 1 1 6095D11D
P 9700 1900
F 0 "#PWR0112" H 9700 1750 50  0001 C CNN
F 1 "+3.3V" H 9600 2050 50  0000 C CNN
F 2 "" H 9700 1900 50  0001 C CNN
F 3 "" H 9700 1900 50  0001 C CNN
	1    9700 1900
	-1   0    0    -1  
$EndComp
Connection ~ 9750 3550
$Comp
L Device:C C7
U 1 1 6095D128
P 8275 2450
F 0 "C7" H 8367 2496 50  0000 L CNN
F 1 "100nF" H 8367 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8275 2450 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/210/POE-D13-00-E-RD-166365https://datasheet.lcsc.com/szlcsc/YAGEO-https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 8275 2450 50  0001 C CNN
F 4 "C14663" H 8275 2800 50  0000 C CNN "LCSC"
	1    8275 2450
	-1   0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0113
U 1 1 6095D132
P 9500 2100
F 0 "#PWR0113" H 9500 1950 50  0001 C CNN
F 1 "+12V" H 9525 2275 50  0000 C CNN
F 2 "" H 9500 2100 50  0001 C CNN
F 3 "" H 9500 2100 50  0001 C CNN
	1    9500 2100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9500 2100 9500 2200
$Comp
L Device:C C9
U 1 1 6095D13D
P 10075 2150
F 0 "C9" H 10167 2196 50  0000 L CNN
F 1 "100nF" H 10167 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10075 2150 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/210/POE-D13-00-E-RD-166365https://datasheet.lcsc.com/szlcsc/YAGEO-https://datasheet.lcsc.com/szlcsc/YAGEO-CC0603KRX7R9BB104_C14663.pdf" H 10075 2150 50  0001 C CNN
F 4 "C14663" H 10075 2475 50  0000 C CNN "LCSC"
	1    10075 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10075 2000 10075 1950
Wire Wire Line
	10075 1950 9700 1950
$Comp
L power:GND #PWR0114
U 1 1 6095D149
P 10525 2400
F 0 "#PWR0114" H 10525 2150 50  0001 C CNN
F 1 "GND" H 10530 2227 50  0000 C CNN
F 2 "" H 10525 2400 50  0001 C CNN
F 3 "" H 10525 2400 50  0001 C CNN
	1    10525 2400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10075 2300 10075 2350
$Comp
L Device:CP C10
U 1 1 6095D154
P 10525 2150
F 0 "C10" H 10643 2196 50  0000 L CNN
F 1 "22uF" H 10643 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 10563 2000 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL21A226MAQNNNE_C45783.pdf" H 10525 2150 50  0001 C CNN
F 4 "C45783" H 10500 2425 50  0000 C CNN "LCSC"
	1    10525 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10075 1950 10525 1950
Wire Wire Line
	10525 1950 10525 2000
Connection ~ 10075 1950
Wire Wire Line
	10525 2300 10525 2350
Wire Wire Line
	10075 2350 10525 2350
Connection ~ 10525 2350
Wire Wire Line
	10525 2350 10525 2400
Wire Wire Line
	9700 1900 9700 1950
Connection ~ 9700 1950
Wire Wire Line
	9700 1950 9700 2350
Wire Wire Line
	9350 2200 9500 2200
Connection ~ 9500 2200
Wire Wire Line
	9500 2200 9500 2350
Wire Wire Line
	9050 2200 8900 2200
Wire Wire Line
	8900 2200 8900 2550
Wire Wire Line
	8900 2550 9200 2550
Wire Wire Line
	8900 2200 8675 2200
Wire Wire Line
	8675 2200 8675 2300
Connection ~ 8900 2200
Wire Wire Line
	8675 2200 8275 2200
Wire Wire Line
	8275 2200 8275 2300
Connection ~ 8675 2200
Wire Wire Line
	9200 2700 8675 2700
Wire Wire Line
	8675 2700 8675 2600
Wire Wire Line
	8675 2700 8275 2700
Wire Wire Line
	8275 2700 8275 2600
Connection ~ 8675 2700
Wire Wire Line
	8275 2700 7200 2700
Connection ~ 8275 2700
Connection ~ 7200 2700
Wire Wire Line
	9200 2900 7850 2900
Wire Wire Line
	7850 2900 7850 2400
Wire Wire Line
	9200 3150 7850 3150
Connection ~ 6750 2700
Wire Wire Line
	7450 2000 7350 2000
Wire Wire Line
	7350 2000 7350 2400
Connection ~ 7350 2400
Wire Wire Line
	7350 2400 7200 2400
Wire Wire Line
	7750 2000 7850 2000
Wire Wire Line
	7850 2000 7850 2400
Connection ~ 7850 2400
Wire Wire Line
	7850 2400 7750 2400
Wire Wire Line
	7750 3550 7850 3550
Wire Wire Line
	7850 3550 7850 3150
Connection ~ 7850 3150
Wire Wire Line
	7850 3150 7750 3150
Wire Wire Line
	7450 3550 7350 3550
Wire Wire Line
	7350 3550 7350 3150
Connection ~ 7350 3150
Wire Wire Line
	7350 3150 7200 3150
Wire Wire Line
	6750 2700 6450 2700
Wire Wire Line
	6300 2700 6300 2500
Text GLabel 6750 1900 1    50   Input ~ 0
HV+
Text GLabel 6750 3750 3    50   Input ~ 0
HV-
Wire Wire Line
	6750 3750 6750 3550
Connection ~ 6750 3550
Text GLabel 10625 2850 2    50   Input ~ 0
PWM1
Text GLabel 10625 2950 2    50   Input ~ 0
PWM0
$Comp
L driver_board:IR2110S U2
U 1 1 6095D1A4
P 9650 2850
F 0 "U2" H 9950 3325 50  0000 C CNN
F 1 "IR2110S" H 9250 3150 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 9800 2850 50  0001 C CIN
F 3 "https://www.infineon.com/dgdl/ir2110.pdf?fileId=5546d462533600a4015355c80333167e" H 9650 2850 50  0001 C CNN
F 4 "C2968" H 9925 2350 50  0000 C CNN "LCSC"
	1    9650 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6750 2700 6750 2875
Wire Wire Line
	6750 2600 6750 2700
Wire Wire Line
	9950 3050 10150 3050
Wire Wire Line
	10150 3050 10150 3550
Wire Wire Line
	10150 3550 9750 3550
$Comp
L Diode:1N4007 D5
U 1 1 6095D1B3
P 7600 2000
F 0 "D5" H 7600 2100 50  0000 C CNN
F 1 "SUF4007" H 7600 1900 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 7600 1825 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/DIOTEC-SUF4007_C212757.pdf" H 7600 2000 50  0001 C CNN
F 4 "C212757" H 7600 2175 50  0000 C CNN "LCSC"
	1    7600 2000
	-1   0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D6
U 1 1 6095D1BD
P 7600 3550
F 0 "D6" H 7600 3650 50  0000 C CNN
F 1 "SUF4007" H 7600 3450 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 7600 3375 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/DIOTEC-SUF4007_C212757.pdf" H 7600 3550 50  0001 C CNN
F 4 "C212757" H 7600 3375 50  0000 C CNN "LCSC"
	1    7600 3550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6095D1C7
P 7200 3350
F 0 "R3" V 7300 3350 50  0000 C CNN
F 1 "1kR" V 7100 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric" V 7130 3350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Uniroyal-Elec-25121WF1001T4E_C54315.pdf" H 7200 3350 50  0001 C CNN
F 4 "C54315" V 7025 3350 50  0000 C CNN "LCSC"
	1    7200 3350
	1    0    0    1   
$EndComp
Wire Wire Line
	7200 3550 7200 3500
$Comp
L driver_board:TPH4R008NH,L1Q(M Q5
U 1 1 6095D1D2
P 6850 2400
F 0 "Q5" H 7054 2446 50  0000 L CNN
F 1 "TPH4R008NH,L1Q(M" V 6725 2575 50  0001 L CNN
F 2 "driver_board:TPH4R008NH,L1Q(M" H 7050 2500 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/408/TPH4R008NH_datasheet_en_20191017-1140027.pdf" H 6850 2400 50  0001 C CNN
F 4 "C396039" H 6700 2600 50  0000 C CNN "LCSC"
	1    6850 2400
	-1   0    0    -1  
$EndComp
$Comp
L driver_board:TPH4R008NH,L1Q(M Q6
U 1 1 6095D1DC
P 6850 3150
F 0 "Q6" H 7054 3196 50  0000 L CNN
F 1 "TPH4R008NH,L1Q(M" V 6725 3325 50  0001 L CNN
F 2 "driver_board:TPH4R008NH,L1Q(M" H 7050 3250 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/408/TPH4R008NH_datasheet_en_20191017-1140027.pdf" H 6850 3150 50  0001 C CNN
F 4 "C396039" H 6650 3300 50  0000 C CNN "LCSC"
	1    6850 3150
	-1   0    0    -1  
$EndComp
Text GLabel 6300 2500 1    50   Input ~ 0
M-
Wire Wire Line
	10625 2950 9950 2950
Wire Wire Line
	10625 2850 9950 2850
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 609ABDF8
P 3500 5125
F 0 "#FLG0101" H 3500 5200 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 5298 50  0000 C CNN
F 2 "" H 3500 5125 50  0001 C CNN
F 3 "~" H 3500 5125 50  0001 C CNN
	1    3500 5125
	1    0    0    -1  
$EndComp
Connection ~ 3500 5125
Wire Wire Line
	3500 5125 3625 5125
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 609AC95E
P 3500 5425
F 0 "#FLG0102" H 3500 5500 50  0001 C CNN
F 1 "PWR_FLAG" H 3500 5598 50  0000 C CNN
F 2 "" H 3500 5425 50  0001 C CNN
F 3 "~" H 3500 5425 50  0001 C CNN
	1    3500 5425
	1    0    0    -1  
$EndComp
Connection ~ 3500 5425
Wire Wire Line
	3500 5425 3625 5425
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 609B1F7A
P 3350 5875
F 0 "#FLG0103" H 3350 5950 50  0001 C CNN
F 1 "PWR_FLAG" H 3350 6048 50  0000 C CNN
F 2 "" H 3350 5875 50  0001 C CNN
F 3 "~" H 3350 5875 50  0001 C CNN
	1    3350 5875
	1    0    0    -1  
$EndComp
Connection ~ 3350 5875
Wire Wire Line
	3350 5875 3625 5875
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 609B7232
P 4075 6275
F 0 "#FLG0104" H 4075 6350 50  0001 C CNN
F 1 "PWR_FLAG" H 4075 6448 50  0000 C CNN
F 2 "" H 4075 6275 50  0001 C CNN
F 3 "~" H 4075 6275 50  0001 C CNN
	1    4075 6275
	1    0    0    -1  
$EndComp
Connection ~ 4075 6275
Wire Wire Line
	4075 6275 4250 6275
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 609BC29D
P 3950 6375
F 0 "#FLG0105" H 3950 6450 50  0001 C CNN
F 1 "PWR_FLAG" H 3950 6548 50  0000 C CNN
F 2 "" H 3950 6375 50  0001 C CNN
F 3 "~" H 3950 6375 50  0001 C CNN
	1    3950 6375
	1    0    0    -1  
$EndComp
Connection ~ 3950 6375
Wire Wire Line
	3950 6375 4250 6375
NoConn ~ 3125 5975
$Comp
L Diode:1N4007 D7
U 1 1 609D9B38
P 5850 3175
F 0 "D7" V 5850 3255 50  0000 L CNN
F 1 "1N4007" V 5895 3255 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 5850 3000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5850 3175 50  0001 C CNN
F 4 "C181127" V 6300 3175 50  0000 C CNN "LCSC"
	1    5850 3175
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D10
U 1 1 609DB033
P 6450 3175
F 0 "D10" V 6450 3255 50  0000 L CNN
F 1 "1N4007" V 6495 3255 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 6450 3000 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6450 3175 50  0001 C CNN
F 4 "C181127" V 6900 3175 50  0000 C CNN "LCSC"
	1    6450 3175
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 3025 6450 2875
Wire Wire Line
	6450 2875 6750 2875
Connection ~ 6750 2875
Wire Wire Line
	6750 2875 6750 2950
Wire Wire Line
	6450 3325 6450 3550
Wire Wire Line
	6450 3550 6750 3550
Wire Wire Line
	5850 3025 5850 2875
Wire Wire Line
	5850 2875 5550 2875
Connection ~ 5550 2875
Wire Wire Line
	5550 2875 5550 2950
Wire Wire Line
	5850 3325 5850 3550
Wire Wire Line
	5850 3550 5550 3550
$Comp
L Diode:1N4007 D2
U 1 1 609F86BE
P 5850 2400
F 0 "D2" V 5700 2475 50  0000 L CNN
F 1 "1N4007" V 5895 2480 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 5850 2225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 5850 2400 50  0001 C CNN
F 4 "C181127" V 5525 2400 50  0000 C CNN "LCSC"
	1    5850 2400
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4007 D8
U 1 1 609F86EA
P 6450 2400
F 0 "D8" V 6300 2275 50  0000 L CNN
F 1 "1N4007" V 6495 2480 50  0001 L CNN
F 2 "Diode_SMD:D_SOD-123F" H 6450 2225 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6450 2400 50  0001 C CNN
F 4 "C181127" V 6125 2400 50  0000 C CNN "LCSC"
	1    6450 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 1900 5550 2150
Wire Wire Line
	6750 1900 6750 2150
Wire Wire Line
	5850 2250 5850 2150
Wire Wire Line
	5850 2150 5550 2150
Connection ~ 5550 2150
Wire Wire Line
	5550 2150 5550 2200
Wire Wire Line
	5850 2550 5850 2700
Connection ~ 5850 2700
Wire Wire Line
	5850 2700 6000 2700
Wire Wire Line
	6450 2250 6450 2150
Wire Wire Line
	6450 2150 6750 2150
Connection ~ 6750 2150
Wire Wire Line
	6750 2150 6750 2200
Wire Wire Line
	6450 2550 6450 2700
Connection ~ 6450 2700
Wire Wire Line
	6450 2700 6300 2700
$Comp
L driver_board:796949-2 J1
U 1 1 60417796
P 2925 5225
F 0 "J1" H 2843 4900 50  0000 C CNN
F 1 "796949-2" H 2843 4991 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2975 5425 50  0001 C CNN
F 3 "~" H 2925 5225 50  0001 C CNN
	1    2925 5225
	-1   0    0    1   
$EndComp
$Comp
L driver_board:796949-2 J2
U 1 1 60418097
P 2925 5425
F 0 "J2" H 2843 5100 50  0000 C CNN
F 1 "796949-2" H 2843 5191 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2975 5625 50  0001 C CNN
F 3 "~" H 2925 5425 50  0001 C CNN
	1    2925 5425
	-1   0    0    1   
$EndComp
$Comp
L driver_board:796949-2 J3
U 1 1 6041EA0B
P 2925 5975
F 0 "J3" H 2843 5650 50  0000 C CNN
F 1 "796949-2" H 2843 5741 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2975 6175 50  0001 C CNN
F 3 "~" H 2925 5975 50  0001 C CNN
	1    2925 5975
	-1   0    0    1   
$EndComp
$Comp
L driver_board:796949-2 J4
U 1 1 604254EC
P 2925 6175
F 0 "J4" H 2843 5850 50  0000 C CNN
F 1 "796949-2" H 2843 5941 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2975 6375 50  0001 C CNN
F 3 "~" H 2925 6175 50  0001 C CNN
	1    2925 6175
	-1   0    0    1   
$EndComp
$Comp
L driver_board:796949-2 J5
U 1 1 6042BD51
P 2925 6375
F 0 "J5" H 2843 6050 50  0000 C CNN
F 1 "796949-2" H 2843 6141 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2-5.08_1x02_P5.08mm_Horizontal" H 2975 6575 50  0001 C CNN
F 3 "~" H 2925 6375 50  0001 C CNN
	1    2925 6375
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D9
U 1 1 6095D0FB
P 9200 2200
F 0 "D9" H 9200 2300 50  0000 C CNN
F 1 "SUF4007" H 9200 2100 50  0000 C CNN
F 2 "Diode_SMD:D_MELF" H 9200 2025 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/DIOTEC-SUF4007_C212757.pdf" H 9200 2200 50  0001 C CNN
F 4 "C212757" H 9200 2000 50  0000 C CNN "LCSC"
	1    9200 2200
	1    0    0    1   
$EndComp
$Comp
L Device:C C5
U 1 1 6042E75D
P 8675 2450
F 0 "C5" H 8790 2541 50  0000 L CNN
F 1 "C" H 8790 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 8713 2300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1912111437_TDK-C3216X5R1V226MTJ00E_C342620.pdf" H 8675 2450 50  0001 C CNN
F 4 "C342620" H 8525 2800 50  0000 L CNN "LCSC"
	1    8675 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 6043B98A
P 3625 2450
F 0 "C3" H 3740 2541 50  0000 L CNN
F 1 "C" H 3740 2450 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3663 2300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1912111437_TDK-C3216X5R1V226MTJ00E_C342620.pdf" H 3625 2450 50  0001 C CNN
F 4 "C342620" H 3475 2800 50  0000 L CNN "LCSC"
	1    3625 2450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
