*Custom Compiler Version S-2021.09
*Sun Feb 27 18:26:46 2022

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
* Cell             : TB_NAND
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt TB_NAND Output
*.PININFO Output:O
XI0 gnd! Input_1 Input_2 Output net6 NAND2
.ends TB_NAND


