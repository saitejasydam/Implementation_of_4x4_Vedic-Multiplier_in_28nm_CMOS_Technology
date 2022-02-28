*Custom Compiler Version S-2021.09
*Sun Feb 27 18:35:46 2022

*.SCALE METER
*.LDD

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
* Cell             : FULL_ADDER
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt FULL_ADDER A B C_IN C_OUT GND SUM VDD
*.PININFO A:I B:I C_IN:I C_OUT:O GND:I SUM:O VDD:I
XI8 GND net10 net36 C_OUT VDD NAND2
XI7 GND net26 net27 SUM VDD NAND2
XI6 GND net36 C_IN net27 VDD NAND2
XI5 GND net39 net36 net26 VDD NAND2
XI4 GND net39 C_IN net36 VDD NAND2
XI3 GND net19 net20 net39 VDD NAND2
XI2 GND net10 B net20 VDD NAND2
XI1 GND A net10 net19 VDD NAND2
XI0 GND A B net10 VDD NAND2
.ends FULL_ADDER

********************************************************************************
* Library          : VEDIC_MULIPLIER
* Cell             : CARRY_ADDER_4BIT
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt CARRY_ADDER_4BIT A0 A1 A2 A3 B0 B1 B2 B3 C_IN GND S0 S1 S2 S3 S4 VDD
*.PININFO A0:I A1:I A2:I A3:I B0:I B1:I B2:I B3:I C_IN:I GND:I S0:O S1:O S2:O
*.PININFO S3:O S4:O VDD:I
XI3 A3 B3 net28 S4 GND S3 VDD FULL_ADDER
XI2 A2 B2 net21 net28 GND S2 VDD FULL_ADDER
XI1 A1 B1 net14 net21 GND S1 VDD FULL_ADDER
XI0 A0 B0 C_IN net14 GND S0 VDD FULL_ADDER
.ends CARRY_ADDER_4BIT


