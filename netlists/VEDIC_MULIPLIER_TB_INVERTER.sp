*Custom Compiler Version S-2021.09
*Sun Feb 27 18:38:27 2022

*.SCALE METER
*.LDD
.GLOBAL gnd!
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
* Cell             : TB_INVERTER
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt TB_INVERTER OUT
*.PININFO OUT:O
XI0 gnd! IN OUT net6 INVERTER
.ends TB_INVERTER


