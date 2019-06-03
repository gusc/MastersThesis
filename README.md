My Master Thesis Source Code
============================

This repo contains source code used to produce results for my Master Thesis on Raspberry Pi (1st gen), Xilinx Spartan 3E Starter Kit and SHARC Audio Module boards.

Software requirements
=====================

* [CrossCore Embedded Studio from Analog Devices](https://www.analog.com/en/design-center/evaluation-hardware-and-software/software/adswt-cces.html)
* [Xilinx ISE 14.7](https://www.xilinx.com/support/download/index.html/content/xilinx/en/downloadNav/design-tools.html)

Directories
===========

* *DFT_Core0* - dummy CCES project for bare metal SHARC Audio Module ARMv7 core - only necessary to start SHARC cores
* *DFT_Core1* - CCES project for bare metal SHARC Audio Module SHARC core - running tests directly on SHARC core
* *DFT_FPGA* - ISE project and Verilog sources for Spartan 3E processing core 
* *MCAPI_DFT_App* - CCES project for Linux app running on SHARC Audio Module ARMv7 core 
* *MCAPI_DFT_Core0* - CCES project for bare metal SHARC Audio Module ARMv7 core
* *MCAPI_DFT_Core1* - CCES project for bare metal SHARC Audio Module SHARC core
* *MCAPI_DFT_Core2* - CCES project for bare metal second SHARC Audio Module SHARC core
* *Source* - Main test C source, also contains makefile for Raspberry Pi build in Raspbian
