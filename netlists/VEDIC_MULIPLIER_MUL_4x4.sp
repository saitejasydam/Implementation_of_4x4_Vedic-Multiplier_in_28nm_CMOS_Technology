*Custom Compiler Version S-2021.09
*Sun Feb 27 18:37:05 2022

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
* Cell             : MUL_2x2
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt MUL_2x2 A0 A1 B0 B1 GND M0 M1 M2 M3 VDD
*.PININFO A0:I A1:I B0:I B1:I GND:I M0:O M1:O M2:O M3:O VDD:I
XI3 GND A1 B1 net36 VDD NAND2
XI2 GND A0 B1 net32 VDD NAND2
XI1 GND A1 B0 net28 VDD NAND2
XI0 GND A0 B0 net24 VDD NAND2
XI7 GND net36 net48 VDD INVERTER
XI6 GND net32 net42 VDD INVERTER
XI5 GND net28 net41 VDD INVERTER
XI4 GND net24 M0 VDD INVERTER
XI9 net47 net48 M3 GND M2 VDD HALF_ADDER
XI8 net41 net42 net47 GND M1 VDD HALF_ADDER
.ends MUL_2x2

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

********************************************************************************
* Library          : VEDIC_MULIPLIER
* Cell             : MUL_4x4
* View             : schematic
* View Search List : auCdl schematic
* View Stop List   : auCdl
********************************************************************************
.subckt MUL_4x4 A0 A1 A2 A3 B0 B1 B2 B3 GND M0 M1 M2 M3 M4 M5 M6 M7 VDD
*.PININFO A0:I A1:I A2:I A3:I B0:I B1:I B2:I B3:I GND:I M0:O M1:O M2:O M3:O M4:O
*.PININFO M5:O M6:O M7:O VDD:I
XI3 A2 A3 B2 B3 GND net57 net58 net59 net61 VDD MUL_2x2
XI2 A0 A1 B2 B3 GND net49 net51 net53 net54 VDD MUL_2x2
XI1 A2 A3 B0 B1 GND net42 net43 net44 net46 VDD MUL_2x2
XI0 A0 A1 B0 B1 GND net72 net73 net6 net76 VDD MUL_2x2
XI6 net72 net73 net6 net76 GND GND net83 net84 GND GND M0 M1 M2 M3 net88 VDD
+ CARRY_ADDER_4BIT
XI5 net57 net58 net59 net61 net64 net66 net68 GND net88 GND M4 M5 M6 M7 net67
+ VDD CARRY_ADDER_4BIT
XI4 net42 net43 net44 net46 net49 net51 net53 net54 GND GND net83 net84 net64
+ net66 net68 VDD CARRY_ADDER_4BIT
.ends MUL_4x4


