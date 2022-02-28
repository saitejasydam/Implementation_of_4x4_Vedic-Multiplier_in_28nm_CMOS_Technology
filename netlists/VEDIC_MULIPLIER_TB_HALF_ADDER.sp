*Custom Compiler Version S-2021.09
*Sun Feb 27 18:30:26 2022

*.SCALE METER
*.LDD
.GLOBAL gnd!
********************************************************************************
* Library          : VEDIC_MULIPLIER
* Cell             : NAND2
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt NAND2 GND IN_1 IN_2 OUT VDD
*.PININFO GND:I IN_1:I IN_2:I OUT:O VDD:I
MM1 OUT IN_2 VDD VDD p105 w=0.1u l=0.03u nf=1 m=1
MM0 OUT IN_1 VDD VDD p105 w=0.1u l=0.03u nf=1 m=1
MM3 net24 IN_2 GND GND n105 w=0.1u l=0.03u nf=1 m=1
MM2 OUT IN_1 net24 net24 n105 w=0.1u l=0.03u nf=1 m=1
.ends NAND2

********************************************************************************
* Library          : VEDIC_MULIPLIER
* Cell             : INVERTER
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt INVERTER GND IN OUT VDD
*.PININFO GND:I IN:I OUT:O VDD:I
MM0 OUT IN GND GND n105 w=0.1u l=0.03u nf=1 m=1
MM1 OUT IN VDD VDD p105 w=0.1u l=0.03u nf=1 m=1
.ends INVERTER

********************************************************************************
* Library          : VEDIC_MULIPLIER
* Cell             : HALF_ADDER
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt HALF_ADDER A B C_OUT GND SUM VDD
*.PININFO A:I B:I C_OUT:O GND:I SUM:O VDD:I
XI12 GND net19 net20 SUM VDD NAND2
XI2 GND net10 B net20 VDD NAND2
XI1 GND A net10 net19 VDD NAND2
XI0 GND A B net10 VDD NAND2
XI11 GND net10 C_OUT VDD INVERTER
.ends HALF_ADDER

********************************************************************************
* Library          : VEDIC_MULIPLIER
* Cell             : TB_HALF_ADDER
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt TB_HALF_ADDER carry sum
*.PININFO carry:O sum:O
XI8 A B carry gnd! sum net8 HALF_ADDER
.ends TB_HALF_ADDER


