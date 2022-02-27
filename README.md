# Implementation of 4x4 Vedic Multiplier in 28nm CMOS Technology

A multiplier is one of the most frequently used digital circuits in ALU, digital signal processing applications, and communication systems. In this work, an Urdhva-Tiryagbhyam 4x4 Vedic multiplier, which is one of the fastest multipliers that exists in the present literature, is implemented using 28nm CMOS technology-based basic NAND gates. **This is done with the help of Synopys Custom Compiler**





## Table of Contents

[TOC]

## Introduction

High-speed and low-power multipliers are required for any signal processing components such as FFT, Convolution, Filters, etc. A simple multiplication takes a lot of time than any operation. So, it needs to be faster. Some algorithms can be used to reduce computational complexity and thus achieve faster computation. Many multiplier designs are existing in the literature. Some of them are booth algorithm-based, walltree technique based, etc. Urdhva-Tiryagbhyam Algorithm is one of the computational-efficient multiplication algorithms among all multiplication algorithms and is the best among 16 sutras in Vedic mathematics in terms of computation [1]. In this work, A Vedic 4x4 multiplier that uses Urdhva Tiryagbhyam Algorithm will be implemented. It takes two 4- bit inputs and gives one 8-bit output which is the multiplication of the given two 4-bit inputs.



### Circuit Design

| 2x2 Vedic Multiplier                                         | 4x4 Vedic Multiplier                                         |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
|![2-bit Vedic Multiplier - Circuit Design](https://user-images.githubusercontent.com/100456549/155891513-ecba625d-ea21-4812-bdfa-2a9ce8e5d95b.png) | ![4-bit Vedic Multiplier - Circuit Design](https://user-images.githubusercontent.com/100456549/155891526-1ccc6d4f-56ec-4188-bb16-0f21c37d15a8.png) |





### Synopsys Custom Compiler

[Custom Compiler™](https://www.synopsys.com/content/dam/synopsys/implementation&signoff/datasheets/custom-compiler-ds.pdf) is a fresh, modern solution for full-custom analog, custom digital, and mixed-signal integrated circuit (IC) design. As the heart of the Synopsys Custom Design Platform, Custom Compiler provides design entry, simulation management and analysis, and custom layout editing features. Designed to handle the most challenging requirements of FinFET process technologies, it delivers industry-leading productivity, performance, and ease-of-use while remaining easy to adopt for users of legacy tools.



## Procedure





## Results





## Acknowledgements

1. [Cloud Based Analog IC Design Hackathon](https://www.iith.ac.in/events/2022/02/15/Cloud-Based-Analog-IC-Design-Hackathon/)
2. [Synopsys India](https://www.synopsys.com/)
3. [VLSI System Design (VSD) Corp. Pvt. Ltd India](https://www.vlsisystemdesign.com/)



## References

[1] Bansal, Yogita, Charu Madhu, and Pardeep Kaur. ”High speed vedic multiplier designs-A review.” 2014 Recent Advances in Engineering and Computational Sciences (RAECS). IEEE, 2014. 

[2] Patel, Chiranjit R., et al. ”Vedic Multiplier in 45nm Technology.” 2020 Fourth International Conference on Computing Methodologies and Communication (ICCMC). IEEE, 2020. 

[3] Taco, Ramiro, Itamar Levi, Marco Lanuzza, and Alexander Fish. ”Low voltage logic circuits exploiting gate level dynamic body biasing in 28 nm UTBB FD-SOI.” Solid-State Electronics 117 (2016): 185-192.



## Author

Sydam Sai Teja, M.Tech (VLSI Design) Student, Vellore Institute of Technology, Vellore-632014, TAMILNADU
