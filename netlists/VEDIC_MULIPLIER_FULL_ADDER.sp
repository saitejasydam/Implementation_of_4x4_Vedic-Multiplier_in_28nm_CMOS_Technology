*Custom Compiler Version S-2021.09
*Sun Feb 27 18:31:09 2022

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


