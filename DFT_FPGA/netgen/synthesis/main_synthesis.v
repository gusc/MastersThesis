////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: main_synthesis.v
// /___/   /\     Timestamp: Mon May 20 18:24:48 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim main.ngc main_synthesis.v 
// Device	: xc3s500e-4-fg320
// Input file	: main.ngc
// Output file	: /home/gusc/sc5xx_dev/MastersThesis/DFT_FPGA/netgen/synthesis/main_synthesis.v
// # of Modules	: 1
// Design Name	: main
// Xilinx        : /home/gusc/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module main (
  DBG_LED, UART_RX, UART_TX, CLK_50MHZ
)/* synthesis syn_black_box syn_noprune=1 */;
  output DBG_LED;
  input UART_RX;
  output UART_TX;
  input CLK_50MHZ;
  
  // synthesis translate_off
  
  wire CLK_50MHZ_BUFGP_1;
  wire DBG_LED_OBUF_3;
  wire N0;
  wire N1;
  wire N100;
  wire N105;
  wire N107;
  wire N113;
  wire N117;
  wire N118;
  wire N119;
  wire N12;
  wire N120;
  wire N121;
  wire N122;
  wire N123;
  wire N124;
  wire N20;
  wire N24;
  wire N26;
  wire N31;
  wire N36;
  wire N38;
  wire N40;
  wire N42;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire N62;
  wire N64;
  wire N66;
  wire N68;
  wire N70;
  wire N72;
  wire N74;
  wire N76;
  wire N78;
  wire N80;
  wire N82;
  wire N84;
  wire N86;
  wire N88;
  wire N90;
  wire N92;
  wire N94;
  wire N96;
  wire \proc/Madd_counter_addsub0000_cy<10>_rt_57 ;
  wire \proc/Madd_counter_addsub0000_cy<11>_rt_59 ;
  wire \proc/Madd_counter_addsub0000_cy<12>_rt_61 ;
  wire \proc/Madd_counter_addsub0000_cy<13>_rt_63 ;
  wire \proc/Madd_counter_addsub0000_cy<14>_rt_65 ;
  wire \proc/Madd_counter_addsub0000_cy<15>_rt_67 ;
  wire \proc/Madd_counter_addsub0000_cy<16>_rt_69 ;
  wire \proc/Madd_counter_addsub0000_cy<17>_rt_71 ;
  wire \proc/Madd_counter_addsub0000_cy<18>_rt_73 ;
  wire \proc/Madd_counter_addsub0000_cy<19>_rt_75 ;
  wire \proc/Madd_counter_addsub0000_cy<1>_rt_77 ;
  wire \proc/Madd_counter_addsub0000_cy<20>_rt_79 ;
  wire \proc/Madd_counter_addsub0000_cy<21>_rt_81 ;
  wire \proc/Madd_counter_addsub0000_cy<22>_rt_83 ;
  wire \proc/Madd_counter_addsub0000_cy<23>_rt_85 ;
  wire \proc/Madd_counter_addsub0000_cy<24>_rt_87 ;
  wire \proc/Madd_counter_addsub0000_cy<25>_rt_89 ;
  wire \proc/Madd_counter_addsub0000_cy<26>_rt_91 ;
  wire \proc/Madd_counter_addsub0000_cy<27>_rt_93 ;
  wire \proc/Madd_counter_addsub0000_cy<28>_rt_95 ;
  wire \proc/Madd_counter_addsub0000_cy<29>_rt_97 ;
  wire \proc/Madd_counter_addsub0000_cy<2>_rt_99 ;
  wire \proc/Madd_counter_addsub0000_cy<30>_rt_101 ;
  wire \proc/Madd_counter_addsub0000_cy<3>_rt_103 ;
  wire \proc/Madd_counter_addsub0000_cy<4>_rt_105 ;
  wire \proc/Madd_counter_addsub0000_cy<5>_rt_107 ;
  wire \proc/Madd_counter_addsub0000_cy<6>_rt_109 ;
  wire \proc/Madd_counter_addsub0000_cy<7>_rt_111 ;
  wire \proc/Madd_counter_addsub0000_cy<8>_rt_113 ;
  wire \proc/Madd_counter_addsub0000_cy<9>_rt_115 ;
  wire \proc/Madd_counter_addsub0000_xor<31>_rt_117 ;
  wire \proc/Mmux__COND_4_10_180 ;
  wire \proc/Mmux__COND_4_3_f7_181 ;
  wire \proc/Mmux__COND_4_4_f6_182 ;
  wire \proc/Mmux__COND_4_4_f7_183 ;
  wire \proc/Mmux__COND_4_5_f5_184 ;
  wire \proc/Mmux__COND_4_5_f6_185 ;
  wire \proc/Mmux__COND_4_5_f61 ;
  wire \proc/Mmux__COND_4_6_187 ;
  wire \proc/Mmux__COND_4_6_f5_188 ;
  wire \proc/Mmux__COND_4_6_f51 ;
  wire \proc/Mmux__COND_4_6_f52 ;
  wire \proc/Mmux__COND_4_6_f6_191 ;
  wire \proc/Mmux__COND_4_7_192 ;
  wire \proc/Mmux__COND_4_71_193 ;
  wire \proc/Mmux__COND_4_72_194 ;
  wire \proc/Mmux__COND_4_73_195 ;
  wire \proc/Mmux__COND_4_7_f5_196 ;
  wire \proc/Mmux__COND_4_7_f51 ;
  wire \proc/Mmux__COND_4_7_f52 ;
  wire \proc/Mmux__COND_4_8_199 ;
  wire \proc/Mmux__COND_4_81_200 ;
  wire \proc/Mmux__COND_4_82_201 ;
  wire \proc/Mmux__COND_4_83_202 ;
  wire \proc/Mmux__COND_4_84_203 ;
  wire \proc/Mmux__COND_4_85_204 ;
  wire \proc/Mmux__COND_4_8_f5_205 ;
  wire \proc/Mmux__COND_4_9_206 ;
  wire \proc/Mmux__COND_4_91_207 ;
  wire \proc/Mmux__COND_4_92_208 ;
  wire \proc/Mmux__COND_4_93_209 ;
  wire \proc/Mmux__COND_5_10_210 ;
  wire \proc/Mmux__COND_5_3_f7_211 ;
  wire \proc/Mmux__COND_5_4_f6_212 ;
  wire \proc/Mmux__COND_5_4_f7_213 ;
  wire \proc/Mmux__COND_5_5_f5_214 ;
  wire \proc/Mmux__COND_5_5_f6_215 ;
  wire \proc/Mmux__COND_5_5_f61 ;
  wire \proc/Mmux__COND_5_6_217 ;
  wire \proc/Mmux__COND_5_6_f5_218 ;
  wire \proc/Mmux__COND_5_6_f51 ;
  wire \proc/Mmux__COND_5_6_f52 ;
  wire \proc/Mmux__COND_5_6_f6_221 ;
  wire \proc/Mmux__COND_5_7_222 ;
  wire \proc/Mmux__COND_5_71_223 ;
  wire \proc/Mmux__COND_5_72_224 ;
  wire \proc/Mmux__COND_5_73_225 ;
  wire \proc/Mmux__COND_5_7_f5_226 ;
  wire \proc/Mmux__COND_5_7_f51 ;
  wire \proc/Mmux__COND_5_7_f52 ;
  wire \proc/Mmux__COND_5_8_229 ;
  wire \proc/Mmux__COND_5_81_230 ;
  wire \proc/Mmux__COND_5_82_231 ;
  wire \proc/Mmux__COND_5_83_232 ;
  wire \proc/Mmux__COND_5_84_233 ;
  wire \proc/Mmux__COND_5_85_234 ;
  wire \proc/Mmux__COND_5_8_f5_235 ;
  wire \proc/Mmux__COND_5_9_236 ;
  wire \proc/Mmux__COND_5_91_237 ;
  wire \proc/Mmux__COND_5_92_238 ;
  wire \proc/Mmux__COND_5_93_239 ;
  wire \proc/N0 ;
  wire \proc/N15 ;
  wire \proc/N16 ;
  wire \proc/N17 ;
  wire \proc/N18 ;
  wire \proc/N2 ;
  wire \proc/N3 ;
  wire \proc/N4 ;
  wire \proc/N5 ;
  wire \proc/N6 ;
  wire \proc/N7 ;
  wire \proc/N8 ;
  wire \proc/N9 ;
  wire \proc/Sh100 ;
  wire \proc/_COND_4 ;
  wire \proc/_COND_5 ;
  wire \proc/counter_1_1_305 ;
  wire \proc/counter_mux0000<10>1_359 ;
  wire \proc/counter_mux0000<10>11_360 ;
  wire \proc/counter_mux0000<11>1_361 ;
  wire \proc/counter_mux0000<12>1_362 ;
  wire \proc/counter_mux0000<13>1_363 ;
  wire \proc/counter_mux0000<14>1_364 ;
  wire \proc/counter_mux0000<15>1_365 ;
  wire \proc/counter_mux0000<16>1_366 ;
  wire \proc/counter_mux0000<17>1_367 ;
  wire \proc/counter_mux0000<18>1_368 ;
  wire \proc/counter_mux0000<19>1_369 ;
  wire \proc/counter_mux0000<1>1_370 ;
  wire \proc/counter_mux0000<20>1_371 ;
  wire \proc/counter_mux0000<21>1_372 ;
  wire \proc/counter_mux0000<22>1_373 ;
  wire \proc/counter_mux0000<23>1_374 ;
  wire \proc/counter_mux0000<24>1_375 ;
  wire \proc/counter_mux0000<25>1_376 ;
  wire \proc/counter_mux0000<26>1_377 ;
  wire \proc/counter_mux0000<27>1_378 ;
  wire \proc/counter_mux0000<28>1_379 ;
  wire \proc/counter_mux0000<29>1_380 ;
  wire \proc/counter_mux0000<2>1_381 ;
  wire \proc/counter_mux0000<30>1_382 ;
  wire \proc/counter_mux0000<31>1_383 ;
  wire \proc/counter_mux0000<3>1_384 ;
  wire \proc/counter_mux0000<4>1_385 ;
  wire \proc/counter_mux0000<5>1_386 ;
  wire \proc/counter_mux0000<6>1_387 ;
  wire \proc/counter_mux0000<7>1_388 ;
  wire \proc/counter_mux0000<8>1_389 ;
  wire \proc/counter_mux0000<9>1_390 ;
  wire \proc/in_ready_0_not0001 ;
  wire \proc/read_state_FSM_FFd1_429 ;
  wire \proc/read_state_FSM_FFd2_430 ;
  wire \proc/read_state_FSM_FFd2-In1 ;
  wire \proc/read_state_cmp_eq0000 ;
  wire \proc/read_state_cmp_eq0001 ;
  wire \proc/read_state_cmp_eq0002 ;
  wire \proc/read_state_cmp_lt0000 ;
  wire \proc/xn_imag_0_and0000 ;
  wire \proc/xn_imag_10_and0000 ;
  wire \proc/xn_imag_11_and0000 ;
  wire \proc/xn_imag_12_and0000 ;
  wire \proc/xn_imag_13_and0000 ;
  wire \proc/xn_imag_14_and0000 ;
  wire \proc/xn_imag_15_and0000 ;
  wire \proc/xn_imag_16_and0000 ;
  wire \proc/xn_imag_17_and0000 ;
  wire \proc/xn_imag_18_and0000 ;
  wire \proc/xn_imag_19_and0000 ;
  wire \proc/xn_imag_1_and0000 ;
  wire \proc/xn_imag_20_and0000 ;
  wire \proc/xn_imag_21_and0000 ;
  wire \proc/xn_imag_22_and0000 ;
  wire \proc/xn_imag_23_and0000 ;
  wire \proc/xn_imag_24_and0000 ;
  wire \proc/xn_imag_25_and0000 ;
  wire \proc/xn_imag_26_and0000 ;
  wire \proc/xn_imag_27_and0000 ;
  wire \proc/xn_imag_28_and0000 ;
  wire \proc/xn_imag_29_and0000 ;
  wire \proc/xn_imag_2_and0000 ;
  wire \proc/xn_imag_30_and0000 ;
  wire \proc/xn_imag_31_and0000 ;
  wire \proc/xn_imag_31_or0000 ;
  wire \proc/xn_imag_31_or0000_bdd0 ;
  wire \proc/xn_imag_3_and0000 ;
  wire \proc/xn_imag_4_and0000 ;
  wire \proc/xn_imag_5_and0000 ;
  wire \proc/xn_imag_6_and0000 ;
  wire \proc/xn_imag_7_and0000 ;
  wire \proc/xn_imag_8_and0000 ;
  wire \proc/xn_imag_9_and0000 ;
  wire \proc/xn_real_0_and0000 ;
  wire \proc/xn_real_10_and0000 ;
  wire \proc/xn_real_11_and0000 ;
  wire \proc/xn_real_12_and0000 ;
  wire \proc/xn_real_13_and0000 ;
  wire \proc/xn_real_14_and0000 ;
  wire \proc/xn_real_15_and0000 ;
  wire \proc/xn_real_16_and0000 ;
  wire \proc/xn_real_17_and0000 ;
  wire \proc/xn_real_18_and0000 ;
  wire \proc/xn_real_19_and0000 ;
  wire \proc/xn_real_1_and0000 ;
  wire \proc/xn_real_20_and0000 ;
  wire \proc/xn_real_21_and0000 ;
  wire \proc/xn_real_22_and0000 ;
  wire \proc/xn_real_23_and0000 ;
  wire \proc/xn_real_24_and0000 ;
  wire \proc/xn_real_25_and0000 ;
  wire \proc/xn_real_26_and0000 ;
  wire \proc/xn_real_27_and0000 ;
  wire \proc/xn_real_28_and0000 ;
  wire \proc/xn_real_29_and0000 ;
  wire \proc/xn_real_2_and0000 ;
  wire \proc/xn_real_30_and0000 ;
  wire \proc/xn_real_31_and0000 ;
  wire \proc/xn_real_31_or0000 ;
  wire \proc/xn_real_3_and0000 ;
  wire \proc/xn_real_4_and0000 ;
  wire \proc/xn_real_5_and0000 ;
  wire \proc/xn_real_6_and0000 ;
  wire \proc/xn_real_7_and0000 ;
  wire \proc/xn_real_8_and0000 ;
  wire \proc/xn_real_9_and0000 ;
  wire \uart_in/Mshreg_r_Rx_Data_568 ;
  wire \uart_in/N01 ;
  wire \uart_in/N10 ;
  wire \uart_in/N15 ;
  wire \uart_in/N31 ;
  wire \uart_in/N5 ;
  wire \uart_in/N6 ;
  wire \uart_in/N7 ;
  wire \uart_in/N9 ;
  wire \uart_in/r_Bit_Index_mux0000<1>1_582 ;
  wire \uart_in/r_Bit_Index_mux0000<1>2_583 ;
  wire \uart_in/r_Clock_Count_mux0000<0>1 ;
  wire \uart_in/r_Clock_Count_mux0000<0>11_595 ;
  wire \uart_in/r_Clock_Count_mux0000<6>1_602 ;
  wire \uart_in/r_Clock_Count_mux0000<6>2_603 ;
  wire \uart_in/r_Rx_Byte_0_not0001 ;
  wire \uart_in/r_Rx_Byte_1_not0001 ;
  wire \uart_in/r_Rx_Byte_2_not0001 ;
  wire \uart_in/r_Rx_Byte_3_not0001 ;
  wire \uart_in/r_Rx_Byte_4_not0001 ;
  wire \uart_in/r_Rx_DV_615 ;
  wire \uart_in/r_Rx_DV1 ;
  wire \uart_in/r_Rx_DV_mux00001_617 ;
  wire \uart_in/r_Rx_Data_618 ;
  wire \uart_in/r_SM_Main_FSM_FFd1_619 ;
  wire \uart_in/r_SM_Main_FSM_FFd1-In ;
  wire \uart_in/r_SM_Main_FSM_FFd2_621 ;
  wire \uart_in/r_SM_Main_FSM_FFd2-In ;
  wire \uart_in/r_SM_Main_FSM_FFd2-In1_623 ;
  wire \uart_in/r_SM_Main_FSM_FFd2-In2_624 ;
  wire \uart_in/r_SM_Main_FSM_FFd3_625 ;
  wire \uart_in/r_SM_Main_FSM_FFd3-In ;
  wire \uart_in/r_SM_Main_FSM_FFd3-In13_627 ;
  wire \uart_in/r_SM_Main_FSM_FFd3-In29_628 ;
  wire \uart_in/r_SM_Main_cmp_eq0000_629 ;
  wire \uart_in/r_SM_Main_cmp_lt0000 ;
  wire \NLW_proc/xfft_xn_index<9>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<8>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<7>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<6>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<5>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<4>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<3>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<2>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<1>_UNCONNECTED ;
  wire \NLW_proc/xfft_xn_index<0>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<9>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<8>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<7>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<6>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<5>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<4>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<3>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<2>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<1>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_index<0>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<31>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<30>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<29>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<28>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<27>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<26>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<25>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<24>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<23>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<22>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<21>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<20>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<19>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<18>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<17>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<16>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<15>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<14>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<13>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<12>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<11>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<10>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<9>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<8>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<7>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<6>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<5>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<4>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<3>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<2>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<1>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_re<0>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<31>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<30>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<29>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<28>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<27>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<26>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<25>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<24>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<23>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<22>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<21>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<20>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<19>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<18>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<17>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<16>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<15>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<14>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<13>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<12>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<11>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<10>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<9>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<8>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<7>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<6>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<5>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<4>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<3>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<2>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<1>_UNCONNECTED ;
  wire \NLW_proc/xfft_xk_im<0>_UNCONNECTED ;
  wire \NLW_proc/xfft_rfd_UNCONNECTED ;
  wire \NLW_proc/xfft_busy_UNCONNECTED ;
  wire \NLW_proc/xfft_edone_UNCONNECTED ;
  wire \NLW_proc/xfft_done_UNCONNECTED ;
  wire \NLW_proc/xfft_dv_UNCONNECTED ;
  wire [30 : 0] \proc/Madd_counter_addsub0000_cy ;
  wire [0 : 0] \proc/Madd_counter_addsub0000_lut ;
  wire [30 : 0] \proc/Mcompar_read_state_cmp_lt0000_cy ;
  wire [30 : 0] \proc/Mcompar_read_state_cmp_lt0000_lut ;
  wire [3 : 3] \proc/Msub_old_length_2_addsub0000_cy ;
  wire [31 : 1] \proc/_old_length_2 ;
  wire [2 : 0] \proc/byte_counter ;
  wire [2 : 1] \proc/byte_counter_add0000 ;
  wire [31 : 0] \proc/counter ;
  wire [31 : 0] \proc/counter_addsub0000 ;
  wire [0 : 0] \proc/counter_mux0000 ;
  wire [0 : 0] \proc/in_ready ;
  wire [31 : 1] \proc/length ;
  wire [4 : 0] \proc/nfft ;
  wire [0 : 0] \proc/setup_ready ;
  wire [31 : 0] \proc/xn_imag ;
  wire [31 : 0] \proc/xn_real ;
  wire [2 : 0] \uart_in/r_Bit_Index ;
  wire [2 : 0] \uart_in/r_Bit_Index_mux0000 ;
  wire [7 : 0] \uart_in/r_Clock_Count ;
  wire [7 : 0] \uart_in/r_Clock_Count_mux0000 ;
  wire [4 : 0] \uart_in/r_Rx_Byte ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_SM_Main_FSM_FFd2  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_SM_Main_FSM_FFd2-In ),
    .Q(\uart_in/r_SM_Main_FSM_FFd2_621 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_SM_Main_FSM_FFd1  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_SM_Main_FSM_FFd1-In ),
    .Q(\uart_in/r_SM_Main_FSM_FFd1_619 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_SM_Main_FSM_FFd3  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_SM_Main_FSM_FFd3-In ),
    .Q(\uart_in/r_SM_Main_FSM_FFd3_625 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uart_in/r_Rx_Byte_4  (
    .C(CLK_50MHZ_BUFGP_1),
    .CE(\uart_in/r_Rx_Byte_4_not0001 ),
    .D(\uart_in/r_Rx_Data_618 ),
    .Q(\uart_in/r_Rx_Byte [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uart_in/r_Rx_Byte_3  (
    .C(CLK_50MHZ_BUFGP_1),
    .CE(\uart_in/r_Rx_Byte_3_not0001 ),
    .D(\uart_in/r_Rx_Data_618 ),
    .Q(\uart_in/r_Rx_Byte [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uart_in/r_Rx_Byte_2  (
    .C(CLK_50MHZ_BUFGP_1),
    .CE(\uart_in/r_Rx_Byte_2_not0001 ),
    .D(\uart_in/r_Rx_Data_618 ),
    .Q(\uart_in/r_Rx_Byte [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uart_in/r_Rx_Byte_1  (
    .C(CLK_50MHZ_BUFGP_1),
    .CE(\uart_in/r_Rx_Byte_1_not0001 ),
    .D(\uart_in/r_Rx_Data_618 ),
    .Q(\uart_in/r_Rx_Byte [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \uart_in/r_Rx_Byte_0  (
    .C(CLK_50MHZ_BUFGP_1),
    .CE(\uart_in/r_Rx_Byte_0_not0001 ),
    .D(\uart_in/r_Rx_Data_618 ),
    .Q(\uart_in/r_Rx_Byte [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Bit_Index_2  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Bit_Index_mux0000 [0]),
    .Q(\uart_in/r_Bit_Index [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Bit_Index_1  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Bit_Index_mux0000 [1]),
    .Q(\uart_in/r_Bit_Index [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Bit_Index_0  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Bit_Index_mux0000 [2]),
    .Q(\uart_in/r_Bit_Index [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_7  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [0]),
    .Q(\uart_in/r_Clock_Count [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_6  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [1]),
    .Q(\uart_in/r_Clock_Count [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_5  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [2]),
    .Q(\uart_in/r_Clock_Count [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_4  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [3]),
    .Q(\uart_in/r_Clock_Count [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_3  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [4]),
    .Q(\uart_in/r_Clock_Count [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_2  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [5]),
    .Q(\uart_in/r_Clock_Count [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_1  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [6]),
    .Q(\uart_in/r_Clock_Count [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \uart_in/r_Clock_Count_0  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Clock_Count_mux0000 [7]),
    .Q(\uart_in/r_Clock_Count [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_6  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [30]),
    .I2(\proc/xn_real [31]),
    .O(\proc/Mmux__COND_4_6_187 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_7  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [28]),
    .I2(\proc/xn_real [29]),
    .O(\proc/Mmux__COND_4_7_192 )
  );
  MUXF5   \proc/Mmux__COND_4_5_f5  (
    .I0(\proc/Mmux__COND_4_7_192 ),
    .I1(\proc/Mmux__COND_4_6_187 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_5_f5_184 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_71  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [26]),
    .I2(\proc/xn_real [27]),
    .O(\proc/Mmux__COND_4_71_193 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_8  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [24]),
    .I2(\proc/xn_real [25]),
    .O(\proc/Mmux__COND_4_8_199 )
  );
  MUXF5   \proc/Mmux__COND_4_6_f5  (
    .I0(\proc/Mmux__COND_4_8_199 ),
    .I1(\proc/Mmux__COND_4_71_193 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_6_f5_188 )
  );
  MUXF6   \proc/Mmux__COND_4_4_f6  (
    .I0(\proc/Mmux__COND_4_6_f5_188 ),
    .I1(\proc/Mmux__COND_4_5_f5_184 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_4_4_f6_182 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_72  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [22]),
    .I2(\proc/xn_real [23]),
    .O(\proc/Mmux__COND_4_72_194 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_81  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [20]),
    .I2(\proc/xn_real [21]),
    .O(\proc/Mmux__COND_4_81_200 )
  );
  MUXF5   \proc/Mmux__COND_4_6_f5_0  (
    .I0(\proc/Mmux__COND_4_81_200 ),
    .I1(\proc/Mmux__COND_4_72_194 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_6_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_82  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [18]),
    .I2(\proc/xn_real [19]),
    .O(\proc/Mmux__COND_4_82_201 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_9  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [16]),
    .I2(\proc/xn_real [17]),
    .O(\proc/Mmux__COND_4_9_206 )
  );
  MUXF5   \proc/Mmux__COND_4_7_f5  (
    .I0(\proc/Mmux__COND_4_9_206 ),
    .I1(\proc/Mmux__COND_4_82_201 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_7_f5_196 )
  );
  MUXF6   \proc/Mmux__COND_4_5_f6  (
    .I0(\proc/Mmux__COND_4_7_f5_196 ),
    .I1(\proc/Mmux__COND_4_6_f51 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_4_5_f6_185 )
  );
  MUXF7   \proc/Mmux__COND_4_3_f7  (
    .I0(\proc/Mmux__COND_4_5_f6_185 ),
    .I1(\proc/Mmux__COND_4_4_f6_182 ),
    .S(\proc/counter [3]),
    .O(\proc/Mmux__COND_4_3_f7_181 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_73  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [14]),
    .I2(\proc/xn_real [15]),
    .O(\proc/Mmux__COND_4_73_195 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_83  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [12]),
    .I2(\proc/xn_real [13]),
    .O(\proc/Mmux__COND_4_83_202 )
  );
  MUXF5   \proc/Mmux__COND_4_6_f5_1  (
    .I0(\proc/Mmux__COND_4_83_202 ),
    .I1(\proc/Mmux__COND_4_73_195 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_6_f52 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_84  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [10]),
    .I2(\proc/xn_real [11]),
    .O(\proc/Mmux__COND_4_84_203 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_91  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [8]),
    .I2(\proc/xn_real [9]),
    .O(\proc/Mmux__COND_4_91_207 )
  );
  MUXF5   \proc/Mmux__COND_4_7_f5_0  (
    .I0(\proc/Mmux__COND_4_91_207 ),
    .I1(\proc/Mmux__COND_4_84_203 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_7_f51 )
  );
  MUXF6   \proc/Mmux__COND_4_5_f6_0  (
    .I0(\proc/Mmux__COND_4_7_f51 ),
    .I1(\proc/Mmux__COND_4_6_f52 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_4_5_f61 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_85  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [6]),
    .I2(\proc/xn_real [7]),
    .O(\proc/Mmux__COND_4_85_204 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_92  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [4]),
    .I2(\proc/xn_real [5]),
    .O(\proc/Mmux__COND_4_92_208 )
  );
  MUXF5   \proc/Mmux__COND_4_7_f5_1  (
    .I0(\proc/Mmux__COND_4_92_208 ),
    .I1(\proc/Mmux__COND_4_85_204 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_7_f52 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_93  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [2]),
    .I2(\proc/xn_real [3]),
    .O(\proc/Mmux__COND_4_93_209 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_4_10  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_real [0]),
    .I2(\proc/xn_real [1]),
    .O(\proc/Mmux__COND_4_10_180 )
  );
  MUXF5   \proc/Mmux__COND_4_8_f5  (
    .I0(\proc/Mmux__COND_4_10_180 ),
    .I1(\proc/Mmux__COND_4_93_209 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_4_8_f5_205 )
  );
  MUXF6   \proc/Mmux__COND_4_6_f6  (
    .I0(\proc/Mmux__COND_4_8_f5_205 ),
    .I1(\proc/Mmux__COND_4_7_f52 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_4_6_f6_191 )
  );
  MUXF7   \proc/Mmux__COND_4_4_f7  (
    .I0(\proc/Mmux__COND_4_6_f6_191 ),
    .I1(\proc/Mmux__COND_4_5_f61 ),
    .S(\proc/counter [3]),
    .O(\proc/Mmux__COND_4_4_f7_183 )
  );
  MUXF8   \proc/Mmux__COND_4_2_f8  (
    .I0(\proc/Mmux__COND_4_4_f7_183 ),
    .I1(\proc/Mmux__COND_4_3_f7_181 ),
    .S(\proc/counter [4]),
    .O(\proc/_COND_4 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_6  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [30]),
    .I2(\proc/xn_imag [31]),
    .O(\proc/Mmux__COND_5_6_217 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_7  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [28]),
    .I2(\proc/xn_imag [29]),
    .O(\proc/Mmux__COND_5_7_222 )
  );
  MUXF5   \proc/Mmux__COND_5_5_f5  (
    .I0(\proc/Mmux__COND_5_7_222 ),
    .I1(\proc/Mmux__COND_5_6_217 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_5_f5_214 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_71  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [26]),
    .I2(\proc/xn_imag [27]),
    .O(\proc/Mmux__COND_5_71_223 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_8  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [24]),
    .I2(\proc/xn_imag [25]),
    .O(\proc/Mmux__COND_5_8_229 )
  );
  MUXF5   \proc/Mmux__COND_5_6_f5  (
    .I0(\proc/Mmux__COND_5_8_229 ),
    .I1(\proc/Mmux__COND_5_71_223 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_6_f5_218 )
  );
  MUXF6   \proc/Mmux__COND_5_4_f6  (
    .I0(\proc/Mmux__COND_5_6_f5_218 ),
    .I1(\proc/Mmux__COND_5_5_f5_214 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_5_4_f6_212 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_72  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [22]),
    .I2(\proc/xn_imag [23]),
    .O(\proc/Mmux__COND_5_72_224 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_81  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [20]),
    .I2(\proc/xn_imag [21]),
    .O(\proc/Mmux__COND_5_81_230 )
  );
  MUXF5   \proc/Mmux__COND_5_6_f5_0  (
    .I0(\proc/Mmux__COND_5_81_230 ),
    .I1(\proc/Mmux__COND_5_72_224 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_6_f51 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_82  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [18]),
    .I2(\proc/xn_imag [19]),
    .O(\proc/Mmux__COND_5_82_231 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_9  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [16]),
    .I2(\proc/xn_imag [17]),
    .O(\proc/Mmux__COND_5_9_236 )
  );
  MUXF5   \proc/Mmux__COND_5_7_f5  (
    .I0(\proc/Mmux__COND_5_9_236 ),
    .I1(\proc/Mmux__COND_5_82_231 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_7_f5_226 )
  );
  MUXF6   \proc/Mmux__COND_5_5_f6  (
    .I0(\proc/Mmux__COND_5_7_f5_226 ),
    .I1(\proc/Mmux__COND_5_6_f51 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_5_5_f6_215 )
  );
  MUXF7   \proc/Mmux__COND_5_3_f7  (
    .I0(\proc/Mmux__COND_5_5_f6_215 ),
    .I1(\proc/Mmux__COND_5_4_f6_212 ),
    .S(\proc/counter [3]),
    .O(\proc/Mmux__COND_5_3_f7_211 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_73  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [14]),
    .I2(\proc/xn_imag [15]),
    .O(\proc/Mmux__COND_5_73_225 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_83  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [12]),
    .I2(\proc/xn_imag [13]),
    .O(\proc/Mmux__COND_5_83_232 )
  );
  MUXF5   \proc/Mmux__COND_5_6_f5_1  (
    .I0(\proc/Mmux__COND_5_83_232 ),
    .I1(\proc/Mmux__COND_5_73_225 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_6_f52 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_84  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [10]),
    .I2(\proc/xn_imag [11]),
    .O(\proc/Mmux__COND_5_84_233 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_91  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [8]),
    .I2(\proc/xn_imag [9]),
    .O(\proc/Mmux__COND_5_91_237 )
  );
  MUXF5   \proc/Mmux__COND_5_7_f5_0  (
    .I0(\proc/Mmux__COND_5_91_237 ),
    .I1(\proc/Mmux__COND_5_84_233 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_7_f51 )
  );
  MUXF6   \proc/Mmux__COND_5_5_f6_0  (
    .I0(\proc/Mmux__COND_5_7_f51 ),
    .I1(\proc/Mmux__COND_5_6_f52 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_5_5_f61 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_85  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [6]),
    .I2(\proc/xn_imag [7]),
    .O(\proc/Mmux__COND_5_85_234 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_92  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [4]),
    .I2(\proc/xn_imag [5]),
    .O(\proc/Mmux__COND_5_92_238 )
  );
  MUXF5   \proc/Mmux__COND_5_7_f5_1  (
    .I0(\proc/Mmux__COND_5_92_238 ),
    .I1(\proc/Mmux__COND_5_85_234 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_7_f52 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_93  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [2]),
    .I2(\proc/xn_imag [3]),
    .O(\proc/Mmux__COND_5_93_239 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \proc/Mmux__COND_5_10  (
    .I0(\proc/counter [0]),
    .I1(\proc/xn_imag [0]),
    .I2(\proc/xn_imag [1]),
    .O(\proc/Mmux__COND_5_10_210 )
  );
  MUXF5   \proc/Mmux__COND_5_8_f5  (
    .I0(\proc/Mmux__COND_5_10_210 ),
    .I1(\proc/Mmux__COND_5_93_239 ),
    .S(\proc/counter [1]),
    .O(\proc/Mmux__COND_5_8_f5_235 )
  );
  MUXF6   \proc/Mmux__COND_5_6_f6  (
    .I0(\proc/Mmux__COND_5_8_f5_235 ),
    .I1(\proc/Mmux__COND_5_7_f52 ),
    .S(\proc/counter [2]),
    .O(\proc/Mmux__COND_5_6_f6_221 )
  );
  MUXF7   \proc/Mmux__COND_5_4_f7  (
    .I0(\proc/Mmux__COND_5_6_f6_221 ),
    .I1(\proc/Mmux__COND_5_5_f61 ),
    .S(\proc/counter [3]),
    .O(\proc/Mmux__COND_5_4_f7_213 )
  );
  MUXF8   \proc/Mmux__COND_5_2_f8  (
    .I0(\proc/Mmux__COND_5_4_f7_213 ),
    .I1(\proc/Mmux__COND_5_3_f7_211 ),
    .S(\proc/counter [4]),
    .O(\proc/_COND_5 )
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<30>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [29]),
    .DI(\proc/counter [31]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [30]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [30])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<30>  (
    .I0(\proc/counter [31]),
    .I1(\proc/length [31]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [30])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<29>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [28]),
    .DI(\proc/counter [30]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [29]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [29])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<29>  (
    .I0(\proc/counter [30]),
    .I1(\proc/length [30]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [29])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<28>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [27]),
    .DI(\proc/counter [29]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [28]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [28])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<28>  (
    .I0(\proc/counter [29]),
    .I1(\proc/length [29]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [28])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<27>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [26]),
    .DI(\proc/counter [28]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [27]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [27])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<27>  (
    .I0(\proc/counter [28]),
    .I1(\proc/length [28]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [27])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<26>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [25]),
    .DI(\proc/counter [27]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [26]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [26])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<26>  (
    .I0(\proc/counter [27]),
    .I1(\proc/length [27]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [26])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<25>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [24]),
    .DI(\proc/counter [26]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [25]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [25])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<25>  (
    .I0(\proc/counter [26]),
    .I1(\proc/length [26]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [25])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<24>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [23]),
    .DI(\proc/counter [25]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [24]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [24])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<24>  (
    .I0(\proc/counter [25]),
    .I1(\proc/length [25]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [24])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<23>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [22]),
    .DI(\proc/counter [24]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [23]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [23])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<23>  (
    .I0(\proc/length [24]),
    .I1(\proc/counter [24]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [23])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<22>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [21]),
    .DI(\proc/counter [23]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [22]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [22])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<22>  (
    .I0(\proc/length [23]),
    .I1(\proc/counter [23]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [22])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<21>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [20]),
    .DI(\proc/counter [22]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [21]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [21])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<21>  (
    .I0(\proc/length [22]),
    .I1(\proc/counter [22]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [21])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<20>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [19]),
    .DI(\proc/counter [21]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [20]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [20])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<20>  (
    .I0(\proc/length [21]),
    .I1(\proc/counter [21]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [20])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<19>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [18]),
    .DI(\proc/counter [20]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [19]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [19])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<19>  (
    .I0(\proc/length [20]),
    .I1(\proc/counter [20]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [19])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<18>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [17]),
    .DI(\proc/counter [19]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [18]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [18])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<18>  (
    .I0(\proc/length [19]),
    .I1(\proc/counter [19]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [18])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<17>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [16]),
    .DI(\proc/counter [18]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [17]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [17])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<17>  (
    .I0(\proc/length [18]),
    .I1(\proc/counter [18]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [17])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<16>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [15]),
    .DI(\proc/counter [17]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [16]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [16])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<16>  (
    .I0(\proc/length [17]),
    .I1(\proc/counter [17]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [16])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<15>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [14]),
    .DI(\proc/counter [16]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [15]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<15>  (
    .I0(\proc/length [16]),
    .I1(\proc/counter [16]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [15])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<14>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [13]),
    .DI(\proc/counter [15]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [14]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<14>  (
    .I0(\proc/length [15]),
    .I1(\proc/counter [15]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [14])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<13>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [12]),
    .DI(\proc/counter [14]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [13]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<13>  (
    .I0(\proc/length [14]),
    .I1(\proc/counter [14]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [13])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<12>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [11]),
    .DI(\proc/counter [13]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [12]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<12>  (
    .I0(\proc/length [13]),
    .I1(\proc/counter [13]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [12])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<11>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [10]),
    .DI(\proc/counter [12]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [11]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<11>  (
    .I0(\proc/length [12]),
    .I1(\proc/counter [12]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [11])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<10>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [9]),
    .DI(\proc/counter [11]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [10]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<10>  (
    .I0(\proc/length [11]),
    .I1(\proc/counter [11]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [10])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<9>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [8]),
    .DI(\proc/counter [10]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [9]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<9>  (
    .I0(\proc/length [10]),
    .I1(\proc/counter [10]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [9])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<8>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [7]),
    .DI(\proc/counter [9]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [8]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<8>  (
    .I0(\proc/length [9]),
    .I1(\proc/counter [9]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [8])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<7>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [6]),
    .DI(\proc/counter [8]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [7]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<7>  (
    .I0(\proc/length [8]),
    .I1(\proc/counter [8]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [7])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<6>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [5]),
    .DI(\proc/counter [7]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [6]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<6>  (
    .I0(\proc/length [7]),
    .I1(\proc/counter [7]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [6])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<5>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [4]),
    .DI(\proc/counter [6]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [5]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<5>  (
    .I0(\proc/length [6]),
    .I1(\proc/counter [6]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [5])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<4>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [3]),
    .DI(\proc/counter [5]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [4]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<4>  (
    .I0(\proc/length [5]),
    .I1(\proc/counter [5]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [4])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<3>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [2]),
    .DI(\proc/counter [4]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [3]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<3>  (
    .I0(\proc/length [4]),
    .I1(\proc/counter [4]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [3])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<2>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [1]),
    .DI(\proc/counter [3]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [2]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<2>  (
    .I0(\proc/length [3]),
    .I1(\proc/counter [3]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [2])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<1>  (
    .CI(\proc/Mcompar_read_state_cmp_lt0000_cy [0]),
    .DI(\proc/counter [2]),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [1]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<1>  (
    .I0(\proc/length [2]),
    .I1(\proc/counter [2]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [1])
  );
  MUXCY   \proc/Mcompar_read_state_cmp_lt0000_cy<0>  (
    .CI(N1),
    .DI(\proc/counter_1_1_305 ),
    .S(\proc/Mcompar_read_state_cmp_lt0000_lut [0]),
    .O(\proc/Mcompar_read_state_cmp_lt0000_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \proc/Mcompar_read_state_cmp_lt0000_lut<0>  (
    .I0(\proc/length [1]),
    .I1(\proc/counter_1_1_305 ),
    .O(\proc/Mcompar_read_state_cmp_lt0000_lut [0])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<31>  (
    .CI(\proc/Madd_counter_addsub0000_cy [30]),
    .LI(\proc/Madd_counter_addsub0000_xor<31>_rt_117 ),
    .O(\proc/counter_addsub0000 [31])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<30>  (
    .CI(\proc/Madd_counter_addsub0000_cy [29]),
    .LI(\proc/Madd_counter_addsub0000_cy<30>_rt_101 ),
    .O(\proc/counter_addsub0000 [30])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<30>  (
    .CI(\proc/Madd_counter_addsub0000_cy [29]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<30>_rt_101 ),
    .O(\proc/Madd_counter_addsub0000_cy [30])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<29>  (
    .CI(\proc/Madd_counter_addsub0000_cy [28]),
    .LI(\proc/Madd_counter_addsub0000_cy<29>_rt_97 ),
    .O(\proc/counter_addsub0000 [29])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<29>  (
    .CI(\proc/Madd_counter_addsub0000_cy [28]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<29>_rt_97 ),
    .O(\proc/Madd_counter_addsub0000_cy [29])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<28>  (
    .CI(\proc/Madd_counter_addsub0000_cy [27]),
    .LI(\proc/Madd_counter_addsub0000_cy<28>_rt_95 ),
    .O(\proc/counter_addsub0000 [28])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<28>  (
    .CI(\proc/Madd_counter_addsub0000_cy [27]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<28>_rt_95 ),
    .O(\proc/Madd_counter_addsub0000_cy [28])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<27>  (
    .CI(\proc/Madd_counter_addsub0000_cy [26]),
    .LI(\proc/Madd_counter_addsub0000_cy<27>_rt_93 ),
    .O(\proc/counter_addsub0000 [27])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<27>  (
    .CI(\proc/Madd_counter_addsub0000_cy [26]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<27>_rt_93 ),
    .O(\proc/Madd_counter_addsub0000_cy [27])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<26>  (
    .CI(\proc/Madd_counter_addsub0000_cy [25]),
    .LI(\proc/Madd_counter_addsub0000_cy<26>_rt_91 ),
    .O(\proc/counter_addsub0000 [26])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<26>  (
    .CI(\proc/Madd_counter_addsub0000_cy [25]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<26>_rt_91 ),
    .O(\proc/Madd_counter_addsub0000_cy [26])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<25>  (
    .CI(\proc/Madd_counter_addsub0000_cy [24]),
    .LI(\proc/Madd_counter_addsub0000_cy<25>_rt_89 ),
    .O(\proc/counter_addsub0000 [25])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<25>  (
    .CI(\proc/Madd_counter_addsub0000_cy [24]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<25>_rt_89 ),
    .O(\proc/Madd_counter_addsub0000_cy [25])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<24>  (
    .CI(\proc/Madd_counter_addsub0000_cy [23]),
    .LI(\proc/Madd_counter_addsub0000_cy<24>_rt_87 ),
    .O(\proc/counter_addsub0000 [24])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<24>  (
    .CI(\proc/Madd_counter_addsub0000_cy [23]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<24>_rt_87 ),
    .O(\proc/Madd_counter_addsub0000_cy [24])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<23>  (
    .CI(\proc/Madd_counter_addsub0000_cy [22]),
    .LI(\proc/Madd_counter_addsub0000_cy<23>_rt_85 ),
    .O(\proc/counter_addsub0000 [23])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<23>  (
    .CI(\proc/Madd_counter_addsub0000_cy [22]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<23>_rt_85 ),
    .O(\proc/Madd_counter_addsub0000_cy [23])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<22>  (
    .CI(\proc/Madd_counter_addsub0000_cy [21]),
    .LI(\proc/Madd_counter_addsub0000_cy<22>_rt_83 ),
    .O(\proc/counter_addsub0000 [22])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<22>  (
    .CI(\proc/Madd_counter_addsub0000_cy [21]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<22>_rt_83 ),
    .O(\proc/Madd_counter_addsub0000_cy [22])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<21>  (
    .CI(\proc/Madd_counter_addsub0000_cy [20]),
    .LI(\proc/Madd_counter_addsub0000_cy<21>_rt_81 ),
    .O(\proc/counter_addsub0000 [21])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<21>  (
    .CI(\proc/Madd_counter_addsub0000_cy [20]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<21>_rt_81 ),
    .O(\proc/Madd_counter_addsub0000_cy [21])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<20>  (
    .CI(\proc/Madd_counter_addsub0000_cy [19]),
    .LI(\proc/Madd_counter_addsub0000_cy<20>_rt_79 ),
    .O(\proc/counter_addsub0000 [20])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<20>  (
    .CI(\proc/Madd_counter_addsub0000_cy [19]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<20>_rt_79 ),
    .O(\proc/Madd_counter_addsub0000_cy [20])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<19>  (
    .CI(\proc/Madd_counter_addsub0000_cy [18]),
    .LI(\proc/Madd_counter_addsub0000_cy<19>_rt_75 ),
    .O(\proc/counter_addsub0000 [19])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<19>  (
    .CI(\proc/Madd_counter_addsub0000_cy [18]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<19>_rt_75 ),
    .O(\proc/Madd_counter_addsub0000_cy [19])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<18>  (
    .CI(\proc/Madd_counter_addsub0000_cy [17]),
    .LI(\proc/Madd_counter_addsub0000_cy<18>_rt_73 ),
    .O(\proc/counter_addsub0000 [18])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<18>  (
    .CI(\proc/Madd_counter_addsub0000_cy [17]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<18>_rt_73 ),
    .O(\proc/Madd_counter_addsub0000_cy [18])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<17>  (
    .CI(\proc/Madd_counter_addsub0000_cy [16]),
    .LI(\proc/Madd_counter_addsub0000_cy<17>_rt_71 ),
    .O(\proc/counter_addsub0000 [17])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<17>  (
    .CI(\proc/Madd_counter_addsub0000_cy [16]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<17>_rt_71 ),
    .O(\proc/Madd_counter_addsub0000_cy [17])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<16>  (
    .CI(\proc/Madd_counter_addsub0000_cy [15]),
    .LI(\proc/Madd_counter_addsub0000_cy<16>_rt_69 ),
    .O(\proc/counter_addsub0000 [16])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<16>  (
    .CI(\proc/Madd_counter_addsub0000_cy [15]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<16>_rt_69 ),
    .O(\proc/Madd_counter_addsub0000_cy [16])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<15>  (
    .CI(\proc/Madd_counter_addsub0000_cy [14]),
    .LI(\proc/Madd_counter_addsub0000_cy<15>_rt_67 ),
    .O(\proc/counter_addsub0000 [15])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<15>  (
    .CI(\proc/Madd_counter_addsub0000_cy [14]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<15>_rt_67 ),
    .O(\proc/Madd_counter_addsub0000_cy [15])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<14>  (
    .CI(\proc/Madd_counter_addsub0000_cy [13]),
    .LI(\proc/Madd_counter_addsub0000_cy<14>_rt_65 ),
    .O(\proc/counter_addsub0000 [14])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<14>  (
    .CI(\proc/Madd_counter_addsub0000_cy [13]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<14>_rt_65 ),
    .O(\proc/Madd_counter_addsub0000_cy [14])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<13>  (
    .CI(\proc/Madd_counter_addsub0000_cy [12]),
    .LI(\proc/Madd_counter_addsub0000_cy<13>_rt_63 ),
    .O(\proc/counter_addsub0000 [13])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<13>  (
    .CI(\proc/Madd_counter_addsub0000_cy [12]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<13>_rt_63 ),
    .O(\proc/Madd_counter_addsub0000_cy [13])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<12>  (
    .CI(\proc/Madd_counter_addsub0000_cy [11]),
    .LI(\proc/Madd_counter_addsub0000_cy<12>_rt_61 ),
    .O(\proc/counter_addsub0000 [12])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<12>  (
    .CI(\proc/Madd_counter_addsub0000_cy [11]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<12>_rt_61 ),
    .O(\proc/Madd_counter_addsub0000_cy [12])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<11>  (
    .CI(\proc/Madd_counter_addsub0000_cy [10]),
    .LI(\proc/Madd_counter_addsub0000_cy<11>_rt_59 ),
    .O(\proc/counter_addsub0000 [11])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<11>  (
    .CI(\proc/Madd_counter_addsub0000_cy [10]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<11>_rt_59 ),
    .O(\proc/Madd_counter_addsub0000_cy [11])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<10>  (
    .CI(\proc/Madd_counter_addsub0000_cy [9]),
    .LI(\proc/Madd_counter_addsub0000_cy<10>_rt_57 ),
    .O(\proc/counter_addsub0000 [10])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<10>  (
    .CI(\proc/Madd_counter_addsub0000_cy [9]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<10>_rt_57 ),
    .O(\proc/Madd_counter_addsub0000_cy [10])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<9>  (
    .CI(\proc/Madd_counter_addsub0000_cy [8]),
    .LI(\proc/Madd_counter_addsub0000_cy<9>_rt_115 ),
    .O(\proc/counter_addsub0000 [9])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<9>  (
    .CI(\proc/Madd_counter_addsub0000_cy [8]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<9>_rt_115 ),
    .O(\proc/Madd_counter_addsub0000_cy [9])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<8>  (
    .CI(\proc/Madd_counter_addsub0000_cy [7]),
    .LI(\proc/Madd_counter_addsub0000_cy<8>_rt_113 ),
    .O(\proc/counter_addsub0000 [8])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<8>  (
    .CI(\proc/Madd_counter_addsub0000_cy [7]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<8>_rt_113 ),
    .O(\proc/Madd_counter_addsub0000_cy [8])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<7>  (
    .CI(\proc/Madd_counter_addsub0000_cy [6]),
    .LI(\proc/Madd_counter_addsub0000_cy<7>_rt_111 ),
    .O(\proc/counter_addsub0000 [7])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<7>  (
    .CI(\proc/Madd_counter_addsub0000_cy [6]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<7>_rt_111 ),
    .O(\proc/Madd_counter_addsub0000_cy [7])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<6>  (
    .CI(\proc/Madd_counter_addsub0000_cy [5]),
    .LI(\proc/Madd_counter_addsub0000_cy<6>_rt_109 ),
    .O(\proc/counter_addsub0000 [6])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<6>  (
    .CI(\proc/Madd_counter_addsub0000_cy [5]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<6>_rt_109 ),
    .O(\proc/Madd_counter_addsub0000_cy [6])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<5>  (
    .CI(\proc/Madd_counter_addsub0000_cy [4]),
    .LI(\proc/Madd_counter_addsub0000_cy<5>_rt_107 ),
    .O(\proc/counter_addsub0000 [5])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<5>  (
    .CI(\proc/Madd_counter_addsub0000_cy [4]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<5>_rt_107 ),
    .O(\proc/Madd_counter_addsub0000_cy [5])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<4>  (
    .CI(\proc/Madd_counter_addsub0000_cy [3]),
    .LI(\proc/Madd_counter_addsub0000_cy<4>_rt_105 ),
    .O(\proc/counter_addsub0000 [4])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<4>  (
    .CI(\proc/Madd_counter_addsub0000_cy [3]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<4>_rt_105 ),
    .O(\proc/Madd_counter_addsub0000_cy [4])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<3>  (
    .CI(\proc/Madd_counter_addsub0000_cy [2]),
    .LI(\proc/Madd_counter_addsub0000_cy<3>_rt_103 ),
    .O(\proc/counter_addsub0000 [3])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<3>  (
    .CI(\proc/Madd_counter_addsub0000_cy [2]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<3>_rt_103 ),
    .O(\proc/Madd_counter_addsub0000_cy [3])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<2>  (
    .CI(\proc/Madd_counter_addsub0000_cy [1]),
    .LI(\proc/Madd_counter_addsub0000_cy<2>_rt_99 ),
    .O(\proc/counter_addsub0000 [2])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<2>  (
    .CI(\proc/Madd_counter_addsub0000_cy [1]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<2>_rt_99 ),
    .O(\proc/Madd_counter_addsub0000_cy [2])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<1>  (
    .CI(\proc/Madd_counter_addsub0000_cy [0]),
    .LI(\proc/Madd_counter_addsub0000_cy<1>_rt_77 ),
    .O(\proc/counter_addsub0000 [1])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<1>  (
    .CI(\proc/Madd_counter_addsub0000_cy [0]),
    .DI(N0),
    .S(\proc/Madd_counter_addsub0000_cy<1>_rt_77 ),
    .O(\proc/Madd_counter_addsub0000_cy [1])
  );
  XORCY   \proc/Madd_counter_addsub0000_xor<0>  (
    .CI(N0),
    .LI(\proc/Madd_counter_addsub0000_lut [0]),
    .O(\proc/counter_addsub0000 [0])
  );
  MUXCY   \proc/Madd_counter_addsub0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\proc/Madd_counter_addsub0000_lut [0]),
    .O(\proc/Madd_counter_addsub0000_cy [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/nfft_4  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\uart_in/r_Rx_Byte [4]),
    .Q(\proc/nfft [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/nfft_3  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\uart_in/r_Rx_Byte [3]),
    .Q(\proc/nfft [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/nfft_2  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\uart_in/r_Rx_Byte [2]),
    .Q(\proc/nfft [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/nfft_1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\uart_in/r_Rx_Byte [1]),
    .Q(\proc/nfft [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/nfft_0  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\uart_in/r_Rx_Byte [0]),
    .Q(\proc/nfft [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \proc/byte_counter_2  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/byte_counter_add0000 [2]),
    .Q(\proc/byte_counter [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \proc/byte_counter_1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/byte_counter_add0000 [1]),
    .Q(\proc/byte_counter [1])
  );
  FDE   \proc/xn_imag_0  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_0_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [0])
  );
  FDE   \proc/xn_imag_1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_1_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [1])
  );
  FDE   \proc/xn_imag_2  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_2_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [2])
  );
  FDE   \proc/xn_imag_3  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_3_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [3])
  );
  FDE   \proc/xn_imag_5  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_5_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [5])
  );
  FDE   \proc/xn_imag_6  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_6_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [6])
  );
  FDE   \proc/xn_imag_4  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_4_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [4])
  );
  FDE   \proc/xn_imag_7  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_7_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [7])
  );
  FDE   \proc/xn_imag_8  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_8_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [8])
  );
  FDE   \proc/xn_imag_10  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_10_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [10])
  );
  FDE   \proc/xn_imag_11  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_11_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [11])
  );
  FDE   \proc/xn_imag_9  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_9_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [9])
  );
  FDE   \proc/xn_imag_12  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_12_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [12])
  );
  FDE   \proc/xn_imag_13  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_13_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [13])
  );
  FDE   \proc/xn_imag_15  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_15_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [15])
  );
  FDE   \proc/xn_imag_16  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_16_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [16])
  );
  FDE   \proc/xn_imag_14  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_14_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [14])
  );
  FDE   \proc/xn_imag_17  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_17_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [17])
  );
  FDE   \proc/xn_imag_18  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_18_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [18])
  );
  FDE   \proc/xn_imag_20  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_20_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [20])
  );
  FDE   \proc/xn_imag_21  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_21_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [21])
  );
  FDE   \proc/xn_imag_19  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_19_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [19])
  );
  FDE   \proc/xn_imag_22  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_22_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [22])
  );
  FDE   \proc/xn_imag_23  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_23_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [23])
  );
  FDE   \proc/xn_imag_25  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_25_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [25])
  );
  FDE   \proc/xn_imag_26  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_26_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [26])
  );
  FDE   \proc/xn_imag_24  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_24_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [24])
  );
  FDE   \proc/xn_imag_27  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_27_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [27])
  );
  FDE   \proc/xn_imag_28  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_28_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [28])
  );
  FDE   \proc/xn_imag_30  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_30_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [30])
  );
  FDE   \proc/xn_imag_31  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_31_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [31])
  );
  FDE   \proc/xn_imag_29  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_imag_29_and0000 ),
    .D(\proc/xn_imag_31_or0000 ),
    .Q(\proc/xn_imag [29])
  );
  FDE   \proc/xn_real_0  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_0_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [0])
  );
  FDE   \proc/xn_real_1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_1_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [1])
  );
  FDE   \proc/xn_real_3  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_3_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [3])
  );
  FDE   \proc/xn_real_4  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_4_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [4])
  );
  FDE   \proc/xn_real_2  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_2_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [2])
  );
  FDE   \proc/xn_real_5  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_5_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [5])
  );
  FDE   \proc/xn_real_6  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_6_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [6])
  );
  FDE   \proc/xn_real_8  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_8_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [8])
  );
  FDE   \proc/xn_real_9  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_9_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [9])
  );
  FDE   \proc/xn_real_7  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_7_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [7])
  );
  FDE   \proc/xn_real_10  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_10_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [10])
  );
  FDE   \proc/xn_real_11  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_11_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [11])
  );
  FDE   \proc/xn_real_13  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_13_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [13])
  );
  FDE   \proc/xn_real_14  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_14_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [14])
  );
  FDE   \proc/xn_real_12  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_12_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [12])
  );
  FDE   \proc/xn_real_15  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_15_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [15])
  );
  FDE   \proc/xn_real_16  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_16_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [16])
  );
  FDE   \proc/xn_real_18  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_18_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [18])
  );
  FDE   \proc/xn_real_19  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_19_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [19])
  );
  FDE   \proc/xn_real_17  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_17_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [17])
  );
  FDE   \proc/xn_real_20  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_20_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [20])
  );
  FDE   \proc/xn_real_21  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_21_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [21])
  );
  FDE   \proc/xn_real_23  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_23_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [23])
  );
  FDE   \proc/xn_real_24  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_24_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [24])
  );
  FDE   \proc/xn_real_22  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_22_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [22])
  );
  FDE   \proc/xn_real_25  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_25_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [25])
  );
  FDE   \proc/xn_real_26  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_26_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [26])
  );
  FDE   \proc/xn_real_28  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_28_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [28])
  );
  FDE   \proc/xn_real_29  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_29_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [29])
  );
  FDE   \proc/xn_real_27  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_27_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [27])
  );
  FDE   \proc/xn_real_30  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_30_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [30])
  );
  FDE   \proc/xn_real_31  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/xn_real_31_and0000 ),
    .D(\proc/xn_real_31_or0000 ),
    .Q(\proc/xn_real [31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \proc/counter_0  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000 [0]),
    .Q(\proc/counter [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/in_ready_0  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/in_ready_0_not0001 ),
    .D(N1),
    .Q(\proc/in_ready [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_31  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [31]),
    .Q(\proc/length [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_30  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [30]),
    .Q(\proc/length [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_29  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [29]),
    .Q(\proc/length [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_28  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [28]),
    .Q(\proc/length [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_27  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [27]),
    .Q(\proc/length [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_26  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [26]),
    .Q(\proc/length [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_25  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [25]),
    .Q(\proc/length [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_24  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [24]),
    .Q(\proc/length [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_23  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [23]),
    .Q(\proc/length [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_22  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [22]),
    .Q(\proc/length [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_21  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [21]),
    .Q(\proc/length [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_20  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [20]),
    .Q(\proc/length [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_19  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [19]),
    .Q(\proc/length [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_18  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [18]),
    .Q(\proc/length [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_17  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [17]),
    .Q(\proc/length [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_16  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [16]),
    .Q(\proc/length [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_15  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [15]),
    .Q(\proc/length [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_14  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [14]),
    .Q(\proc/length [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_13  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [13]),
    .Q(\proc/length [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_12  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [12]),
    .Q(\proc/length [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_11  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [11]),
    .Q(\proc/length [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_10  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [10]),
    .Q(\proc/length [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_9  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [9]),
    .Q(\proc/length [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_8  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [8]),
    .Q(\proc/length [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_7  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [7]),
    .Q(\proc/length [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_6  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [6]),
    .Q(\proc/length [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_5  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [5]),
    .Q(\proc/length [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_4  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [4]),
    .Q(\proc/length [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_3  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [3]),
    .Q(\proc/length [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_2  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [2]),
    .Q(\proc/length [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/length_1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0001 ),
    .D(\proc/_old_length_2 [1]),
    .Q(\proc/length [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/setup_ready_0  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(N1),
    .R(\proc/read_state_FSM_FFd2_430 ),
    .Q(\proc/setup_ready [0])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \proc/Sh1001  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .O(\proc/Sh100 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/_old_length_2<28>1  (
    .I0(\proc/Msub_old_length_2_addsub0000_cy [3]),
    .I1(\uart_in/r_Rx_Byte [4]),
    .I2(\proc/N16 ),
    .I3(\proc/Sh100 ),
    .O(\proc/_old_length_2 [28])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/_old_length_2<24>1  (
    .I0(\proc/Msub_old_length_2_addsub0000_cy [3]),
    .I1(\uart_in/r_Rx_Byte [4]),
    .I2(\proc/N17 ),
    .I3(\proc/Sh100 ),
    .O(\proc/_old_length_2 [24])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/_old_length_2<20>1  (
    .I0(\proc/Msub_old_length_2_addsub0000_cy [3]),
    .I1(\uart_in/r_Rx_Byte [4]),
    .I2(\proc/N18 ),
    .I3(\proc/Sh100 ),
    .O(\proc/_old_length_2 [20])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \proc/Msub_old_length_2_addsub0000_cy<3>11  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [3]),
    .I3(\uart_in/r_Rx_Byte [2]),
    .O(\proc/Msub_old_length_2_addsub0000_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \proc/_old_length_2<8>1  (
    .I0(\proc/Sh100 ),
    .I1(\proc/N17 ),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/Msub_old_length_2_addsub0000_cy [3]),
    .O(\proc/_old_length_2 [8])
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \proc/_old_length_2<4>1  (
    .I0(\proc/Sh100 ),
    .I1(\proc/N18 ),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/Msub_old_length_2_addsub0000_cy [3]),
    .O(\proc/_old_length_2 [4])
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \proc/_old_length_2<16>1  (
    .I0(\proc/Sh100 ),
    .I1(\proc/N15 ),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/Msub_old_length_2_addsub0000_cy [3]),
    .O(\proc/_old_length_2 [16])
  );
  LUT4 #(
    .INIT ( 16'h0880 ))
  \proc/_old_length_2<12>1  (
    .I0(\proc/Sh100 ),
    .I1(\proc/N16 ),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/Msub_old_length_2_addsub0000_cy [3]),
    .O(\proc/_old_length_2 [12])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \proc/Madd_byte_counter_add0000_xor<1>11  (
    .I0(\proc/read_state_FSM_FFd2_430 ),
    .I1(\proc/byte_counter [0]),
    .I2(\proc/byte_counter [1]),
    .O(\proc/byte_counter_add0000 [1])
  );
  LUT4 #(
    .INIT ( 16'h6AFF ))
  \proc/Madd_byte_counter_add0000_xor<2>11  (
    .I0(\proc/byte_counter [2]),
    .I1(\proc/byte_counter [0]),
    .I2(\proc/byte_counter [1]),
    .I3(\proc/read_state_FSM_FFd2_430 ),
    .O(\proc/byte_counter_add0000 [2])
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \proc/xn_imag_31_or000021  (
    .I0(\proc/byte_counter [0]),
    .I1(\proc/byte_counter [2]),
    .I2(\proc/byte_counter [1]),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/xn_imag_31_or0000_bdd0 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \proc/xn_real_17_cmp_eq000011  (
    .I0(\proc/counter [0]),
    .I1(\proc/counter [2]),
    .I2(\proc/counter [1]),
    .O(\proc/N5 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \proc/xn_real_15_cmp_eq000011  (
    .I0(\proc/counter [2]),
    .I1(\proc/counter [1]),
    .I2(\proc/counter [0]),
    .O(\proc/N2 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \proc/xn_real_14_cmp_eq000011  (
    .I0(\proc/counter [0]),
    .I1(\proc/counter [1]),
    .I2(\proc/counter [2]),
    .O(\proc/N6 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \proc/xn_real_13_cmp_eq000011  (
    .I0(\proc/counter [1]),
    .I1(\proc/counter [2]),
    .I2(\proc/counter [0]),
    .O(\proc/N4 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \proc/xn_real_12_cmp_eq000011  (
    .I0(\proc/counter [2]),
    .I1(\proc/counter [1]),
    .I2(\proc/counter [0]),
    .O(\proc/N8 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \proc/xn_real_11_cmp_eq000011  (
    .I0(\proc/counter [2]),
    .I1(\proc/counter [1]),
    .I2(\proc/counter [0]),
    .O(\proc/N3 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \proc/xn_real_10_cmp_eq000011  (
    .I0(\proc/counter [1]),
    .I1(\proc/counter [2]),
    .I2(\proc/counter [0]),
    .O(\proc/N7 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \proc/xn_real_0_cmp_eq000011  (
    .I0(\proc/counter [2]),
    .I1(\proc/counter [1]),
    .I2(\proc/counter [0]),
    .O(\proc/N9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \proc/read_state_FSM_FFd1-In11  (
    .I0(\proc/read_state_FSM_FFd2_430 ),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/read_state_cmp_eq0002 )
  );
  LUT4 #(
    .INIT ( 16'h9CC0 ))
  \uart_in/r_Bit_Index_mux0000<2>1  (
    .I0(\uart_in/r_SM_Main_cmp_lt0000 ),
    .I1(\uart_in/r_Bit_Index [0]),
    .I2(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I3(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .O(\uart_in/r_Bit_Index_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \proc/read_state_cmp_eq00001  (
    .I0(\proc/byte_counter [2]),
    .I1(\proc/byte_counter [1]),
    .I2(\proc/byte_counter [0]),
    .O(\proc/read_state_cmp_eq0000 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \uart_in/r_SM_Main_FSM_FFd1-In1  (
    .I0(\uart_in/r_SM_Main_cmp_lt0000 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I2(\uart_in/r_SM_Main_FSM_FFd1_619 ),
    .I3(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .O(\uart_in/r_SM_Main_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h5D ))
  \uart_in/r_SM_Main_FSM_FFd3-In29  (
    .I0(\uart_in/r_Rx_Data_618 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I2(\uart_in/r_SM_Main_cmp_eq0000_629 ),
    .O(\uart_in/r_SM_Main_FSM_FFd3-In29_628 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \uart_in/r_Clock_Count_mux0000<7>1  (
    .I0(\uart_in/r_Clock_Count [0]),
    .I1(\uart_in/N01 ),
    .I2(\uart_in/N7 ),
    .O(\uart_in/r_Clock_Count_mux0000 [7])
  );
  LUT4 #(
    .INIT ( 16'hCE82 ))
  \uart_in/r_Clock_Count_mux0000<1>1  (
    .I0(\uart_in/N01 ),
    .I1(\uart_in/r_Clock_Count [6]),
    .I2(\uart_in/N5 ),
    .I3(\uart_in/N7 ),
    .O(\uart_in/r_Clock_Count_mux0000 [1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \proc/xn_real_31_or000011  (
    .I0(\proc/_COND_4 ),
    .I1(\proc/xn_imag_31_or0000_bdd0 ),
    .O(\proc/xn_real_31_or0000 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \proc/xn_imag_31_or000011  (
    .I0(\proc/_COND_5 ),
    .I1(\proc/xn_imag_31_or0000_bdd0 ),
    .O(\proc/xn_imag_31_or0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \uart_in/r_Rx_Byte_4_not00011  (
    .I0(\uart_in/r_Bit_Index [0]),
    .I1(N121),
    .I2(\uart_in/r_Bit_Index [2]),
    .I3(\uart_in/r_Bit_Index [1]),
    .O(\uart_in/r_Rx_Byte_4_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \uart_in/r_Rx_Byte_3_not00011  (
    .I0(\uart_in/r_Bit_Index [2]),
    .I1(\uart_in/r_Bit_Index [0]),
    .I2(\uart_in/r_Bit_Index [1]),
    .I3(\uart_in/N10 ),
    .O(\uart_in/r_Rx_Byte_3_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \uart_in/r_Rx_Byte_2_not00011  (
    .I0(\uart_in/r_Bit_Index [2]),
    .I1(\uart_in/N10 ),
    .I2(\uart_in/r_Bit_Index [1]),
    .I3(\uart_in/r_Bit_Index [0]),
    .O(\uart_in/r_Rx_Byte_2_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \uart_in/r_Rx_Byte_1_not00011  (
    .I0(\uart_in/r_Bit_Index [2]),
    .I1(\uart_in/N10 ),
    .I2(\uart_in/r_Bit_Index [0]),
    .I3(\uart_in/r_Bit_Index [1]),
    .O(\uart_in/r_Rx_Byte_1_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \uart_in/r_Rx_Byte_0_not00011  (
    .I0(\uart_in/r_Bit_Index [2]),
    .I1(\uart_in/r_Bit_Index [0]),
    .I2(\uart_in/r_Bit_Index [1]),
    .I3(\uart_in/N10 ),
    .O(\uart_in/r_Rx_Byte_0_not0001 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \uart_in/Madd_r_Clock_Count_share0000_xor<6>111  (
    .I0(\uart_in/r_Clock_Count [4]),
    .I1(\uart_in/r_Clock_Count [5]),
    .I2(\uart_in/N9 ),
    .O(\uart_in/N5 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \uart_in/r_SM_Main_cmp_eq000011  (
    .I0(\uart_in/r_Clock_Count [7]),
    .I1(\uart_in/r_Clock_Count [6]),
    .I2(\uart_in/r_Clock_Count [5]),
    .I3(\uart_in/r_Clock_Count [4]),
    .O(\uart_in/N31 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \uart_in/r_Clock_Count_mux0000<3>11  (
    .I0(\uart_in/r_Clock_Count [0]),
    .I1(\uart_in/r_Clock_Count [1]),
    .I2(\uart_in/r_Clock_Count [2]),
    .I3(\uart_in/r_Clock_Count [3]),
    .O(\uart_in/N9 )
  );
  LUT4 #(
    .INIT ( 16'hEC28 ))
  \uart_in/r_Clock_Count_mux0000<0>  (
    .I0(\uart_in/N01 ),
    .I1(\uart_in/r_Clock_Count [7]),
    .I2(N12),
    .I3(\uart_in/N7 ),
    .O(\uart_in/r_Clock_Count_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \uart_in/r_Clock_Count_mux0000<4>31  (
    .I0(\uart_in/r_Clock_Count [2]),
    .I1(\uart_in/r_Clock_Count [0]),
    .I2(\uart_in/r_Clock_Count [1]),
    .I3(N123),
    .O(\uart_in/N15 )
  );
  LUT4 #(
    .INIT ( 16'h04CC ))
  \uart_in/r_SM_Main_cmp_lt00001  (
    .I0(N20),
    .I1(\uart_in/N31 ),
    .I2(\uart_in/r_Clock_Count [2]),
    .I3(\uart_in/r_Clock_Count [3]),
    .O(\uart_in/r_SM_Main_cmp_lt0000 )
  );
  LUT4 #(
    .INIT ( 16'hEC20 ))
  \uart_in/r_Clock_Count_mux0000<3>  (
    .I0(\uart_in/N15 ),
    .I1(\uart_in/r_Clock_Count [4]),
    .I2(\uart_in/r_Clock_Count [3]),
    .I3(N26),
    .O(\uart_in/r_Clock_Count_mux0000 [3])
  );
  LUT4 #(
    .INIT ( 16'h4CCC ))
  \uart_in/r_Clock_Count_mux0000<4>_SW0  (
    .I0(\uart_in/r_Clock_Count [1]),
    .I1(N122),
    .I2(\uart_in/r_Clock_Count [0]),
    .I3(\uart_in/r_Clock_Count [2]),
    .O(N31)
  );
  LUT4 #(
    .INIT ( 16'hEEE4 ))
  \uart_in/r_Clock_Count_mux0000<4>  (
    .I0(\uart_in/r_Clock_Count [3]),
    .I1(\uart_in/N15 ),
    .I2(\uart_in/N7 ),
    .I3(N31),
    .O(\uart_in/r_Clock_Count_mux0000 [4])
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<9>_SW0  (
    .I0(\proc/_old_length_2 [9]),
    .I1(\proc/counter [9]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N36)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<8>_SW0  (
    .I0(\proc/_old_length_2 [8]),
    .I1(\proc/counter [8]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N38)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<7>_SW0  (
    .I0(\proc/_old_length_2 [7]),
    .I1(\proc/counter [7]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N40)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<6>_SW0  (
    .I0(\proc/_old_length_2 [6]),
    .I1(\proc/counter [6]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N42)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<5>_SW0  (
    .I0(\proc/_old_length_2 [5]),
    .I1(\proc/counter [5]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N44)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \proc/counter_mux0000<4>_SW0  (
    .I0(\proc/_old_length_2 [4]),
    .I1(\proc/read_state_FSM_FFd2_430 ),
    .I2(\proc/counter [4]),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N46)
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \proc/counter_mux0000<3>_SW0  (
    .I0(\proc/_old_length_2 [3]),
    .I1(\proc/read_state_FSM_FFd2_430 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N48)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<31>_SW0  (
    .I0(\proc/_old_length_2 [31]),
    .I1(\proc/counter [31]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N50)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<30>_SW0  (
    .I0(\proc/_old_length_2 [30]),
    .I1(\proc/counter [30]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N52)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<2>_SW0  (
    .I0(\proc/_old_length_2 [2]),
    .I1(\proc/counter [2]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N54)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<29>_SW0  (
    .I0(\proc/_old_length_2 [29]),
    .I1(\proc/counter [29]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N56)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<28>_SW0  (
    .I0(\proc/_old_length_2 [28]),
    .I1(\proc/counter [28]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N58)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<27>_SW0  (
    .I0(\proc/_old_length_2 [27]),
    .I1(\proc/counter [27]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<26>_SW0  (
    .I0(\proc/_old_length_2 [26]),
    .I1(\proc/counter [26]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N62)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<25>_SW0  (
    .I0(\proc/_old_length_2 [25]),
    .I1(\proc/counter [25]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N64)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<24>_SW0  (
    .I0(\proc/_old_length_2 [24]),
    .I1(\proc/counter [24]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<23>_SW0  (
    .I0(\proc/_old_length_2 [23]),
    .I1(\proc/counter [23]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<22>_SW0  (
    .I0(\proc/_old_length_2 [22]),
    .I1(\proc/counter [22]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N70)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<21>_SW0  (
    .I0(\proc/_old_length_2 [21]),
    .I1(\proc/counter [21]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N72)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<20>_SW0  (
    .I0(\proc/_old_length_2 [20]),
    .I1(\proc/counter [20]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N74)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<1>_SW0  (
    .I0(\proc/_old_length_2 [1]),
    .I1(\proc/counter [1]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(N124),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<19>_SW0  (
    .I0(\proc/_old_length_2 [19]),
    .I1(\proc/counter [19]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N78)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<18>_SW0  (
    .I0(\proc/_old_length_2 [18]),
    .I1(\proc/counter [18]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N80)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<17>_SW0  (
    .I0(\proc/_old_length_2 [17]),
    .I1(\proc/counter [17]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N82)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<16>_SW0  (
    .I0(\proc/_old_length_2 [16]),
    .I1(\proc/counter [16]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N84)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<15>_SW0  (
    .I0(\proc/_old_length_2 [15]),
    .I1(\proc/counter [15]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<14>_SW0  (
    .I0(\proc/_old_length_2 [14]),
    .I1(\proc/counter [14]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N88)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<13>_SW0  (
    .I0(\proc/_old_length_2 [13]),
    .I1(\proc/counter [13]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N90)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<12>_SW0  (
    .I0(\proc/_old_length_2 [12]),
    .I1(\proc/counter [12]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<11>_SW0  (
    .I0(\proc/_old_length_2 [11]),
    .I1(\proc/counter [11]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N94)
  );
  LUT4 #(
    .INIT ( 16'hCE0A ))
  \proc/counter_mux0000<10>_SW0  (
    .I0(\proc/_old_length_2 [10]),
    .I1(\proc/counter [10]),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/counter_mux0000<10>11_360 ),
    .O(N96)
  );
  IBUF   UART_RX_IBUF (
    .I(UART_RX),
    .O(DBG_LED_OBUF_3)
  );
  OBUF   DBG_LED_OBUF (
    .I(DBG_LED_OBUF_3),
    .O(DBG_LED)
  );
  FDS #(
    .INIT ( 1'b0 ))
  \uart_in/r_Rx_DV  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/r_Rx_DV_mux00001_617 ),
    .S(\uart_in/r_SM_Main_FSM_FFd1-In ),
    .Q(\uart_in/r_Rx_DV1 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/read_state_FSM_FFd2  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/read_state_FSM_FFd2-In1 ),
    .S(\proc/read_state_cmp_lt0000 ),
    .Q(\proc/read_state_FSM_FFd2_430 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \proc/read_state_FSM_FFd2-In11  (
    .I0(\proc/read_state_cmp_eq0000 ),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .O(\proc/read_state_FSM_FFd2-In1 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \proc/byte_counter_0  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/read_state_FSM_FFd2_430 ),
    .R(\proc/byte_counter [0]),
    .Q(\proc/byte_counter [0])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_31  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<31>1_383 ),
    .S(N50),
    .Q(\proc/counter [31])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_30  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<30>1_382 ),
    .S(N52),
    .Q(\proc/counter [30])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_29  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<29>1_380 ),
    .S(N56),
    .Q(\proc/counter [29])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_28  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<28>1_379 ),
    .S(N58),
    .Q(\proc/counter [28])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_27  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<27>1_378 ),
    .S(N60),
    .Q(\proc/counter [27])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_26  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<26>1_377 ),
    .S(N62),
    .Q(\proc/counter [26])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_25  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<25>1_376 ),
    .S(N64),
    .Q(\proc/counter [25])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_24  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<24>1_375 ),
    .S(N66),
    .Q(\proc/counter [24])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_23  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<23>1_374 ),
    .S(N68),
    .Q(\proc/counter [23])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_22  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<22>1_373 ),
    .S(N70),
    .Q(\proc/counter [22])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_21  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<21>1_372 ),
    .S(N72),
    .Q(\proc/counter [21])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_20  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<20>1_371 ),
    .S(N74),
    .Q(\proc/counter [20])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_19  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<19>1_369 ),
    .S(N78),
    .Q(\proc/counter [19])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_18  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<18>1_368 ),
    .S(N80),
    .Q(\proc/counter [18])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_17  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<17>1_367 ),
    .S(N82),
    .Q(\proc/counter [17])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_16  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<16>1_366 ),
    .S(N84),
    .Q(\proc/counter [16])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_15  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<15>1_365 ),
    .S(N86),
    .Q(\proc/counter [15])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_14  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<14>1_364 ),
    .S(N88),
    .Q(\proc/counter [14])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_13  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<13>1_363 ),
    .S(N90),
    .Q(\proc/counter [13])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_12  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<12>1_362 ),
    .S(N92),
    .Q(\proc/counter [12])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_11  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<11>1_361 ),
    .S(N94),
    .Q(\proc/counter [11])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_10  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<10>1_359 ),
    .S(N96),
    .Q(\proc/counter [10])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_9  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<9>1_390 ),
    .S(N36),
    .Q(\proc/counter [9])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_8  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<8>1_389 ),
    .S(N38),
    .Q(\proc/counter [8])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_7  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<7>1_388 ),
    .S(N40),
    .Q(\proc/counter [7])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_6  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<6>1_387 ),
    .S(N42),
    .Q(\proc/counter [6])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_5  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<5>1_386 ),
    .S(N44),
    .Q(\proc/counter [5])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_4  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<4>1_385 ),
    .S(N46),
    .Q(\proc/counter [4])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_3  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<3>1_384 ),
    .S(N48),
    .Q(\proc/counter [3])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_2  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<2>1_381 ),
    .S(N54),
    .Q(\proc/counter [2])
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<1>1_370 ),
    .S(N76),
    .Q(\proc/counter [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \proc/read_state_FSM_FFd1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .CE(\proc/read_state_cmp_eq0000 ),
    .D(\proc/read_state_cmp_eq0002 ),
    .Q(\proc/read_state_FSM_FFd1_429 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<30>_rt  (
    .I0(\proc/counter [30]),
    .O(\proc/Madd_counter_addsub0000_cy<30>_rt_101 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<29>_rt  (
    .I0(\proc/counter [29]),
    .O(\proc/Madd_counter_addsub0000_cy<29>_rt_97 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<28>_rt  (
    .I0(\proc/counter [28]),
    .O(\proc/Madd_counter_addsub0000_cy<28>_rt_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<27>_rt  (
    .I0(\proc/counter [27]),
    .O(\proc/Madd_counter_addsub0000_cy<27>_rt_93 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<26>_rt  (
    .I0(\proc/counter [26]),
    .O(\proc/Madd_counter_addsub0000_cy<26>_rt_91 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<25>_rt  (
    .I0(\proc/counter [25]),
    .O(\proc/Madd_counter_addsub0000_cy<25>_rt_89 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<24>_rt  (
    .I0(\proc/counter [24]),
    .O(\proc/Madd_counter_addsub0000_cy<24>_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<23>_rt  (
    .I0(\proc/counter [23]),
    .O(\proc/Madd_counter_addsub0000_cy<23>_rt_85 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<22>_rt  (
    .I0(\proc/counter [22]),
    .O(\proc/Madd_counter_addsub0000_cy<22>_rt_83 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<21>_rt  (
    .I0(\proc/counter [21]),
    .O(\proc/Madd_counter_addsub0000_cy<21>_rt_81 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<20>_rt  (
    .I0(\proc/counter [20]),
    .O(\proc/Madd_counter_addsub0000_cy<20>_rt_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<19>_rt  (
    .I0(\proc/counter [19]),
    .O(\proc/Madd_counter_addsub0000_cy<19>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<18>_rt  (
    .I0(\proc/counter [18]),
    .O(\proc/Madd_counter_addsub0000_cy<18>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<17>_rt  (
    .I0(\proc/counter [17]),
    .O(\proc/Madd_counter_addsub0000_cy<17>_rt_71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<16>_rt  (
    .I0(\proc/counter [16]),
    .O(\proc/Madd_counter_addsub0000_cy<16>_rt_69 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<15>_rt  (
    .I0(\proc/counter [15]),
    .O(\proc/Madd_counter_addsub0000_cy<15>_rt_67 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<14>_rt  (
    .I0(\proc/counter [14]),
    .O(\proc/Madd_counter_addsub0000_cy<14>_rt_65 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<13>_rt  (
    .I0(\proc/counter [13]),
    .O(\proc/Madd_counter_addsub0000_cy<13>_rt_63 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<12>_rt  (
    .I0(\proc/counter [12]),
    .O(\proc/Madd_counter_addsub0000_cy<12>_rt_61 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<11>_rt  (
    .I0(\proc/counter [11]),
    .O(\proc/Madd_counter_addsub0000_cy<11>_rt_59 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<10>_rt  (
    .I0(\proc/counter [10]),
    .O(\proc/Madd_counter_addsub0000_cy<10>_rt_57 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<9>_rt  (
    .I0(\proc/counter [9]),
    .O(\proc/Madd_counter_addsub0000_cy<9>_rt_115 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<8>_rt  (
    .I0(\proc/counter [8]),
    .O(\proc/Madd_counter_addsub0000_cy<8>_rt_113 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<7>_rt  (
    .I0(\proc/counter [7]),
    .O(\proc/Madd_counter_addsub0000_cy<7>_rt_111 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<6>_rt  (
    .I0(\proc/counter [6]),
    .O(\proc/Madd_counter_addsub0000_cy<6>_rt_109 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<5>_rt  (
    .I0(\proc/counter [5]),
    .O(\proc/Madd_counter_addsub0000_cy<5>_rt_107 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<4>_rt  (
    .I0(\proc/counter [4]),
    .O(\proc/Madd_counter_addsub0000_cy<4>_rt_105 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<3>_rt  (
    .I0(\proc/counter [3]),
    .O(\proc/Madd_counter_addsub0000_cy<3>_rt_103 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<2>_rt  (
    .I0(\proc/counter [2]),
    .O(\proc/Madd_counter_addsub0000_cy<2>_rt_99 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_cy<1>_rt  (
    .I0(\proc/counter [1]),
    .O(\proc/Madd_counter_addsub0000_cy<1>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \proc/Madd_counter_addsub0000_xor<31>_rt  (
    .I0(\proc/counter [31]),
    .O(\proc/Madd_counter_addsub0000_xor<31>_rt_117 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \proc/in_ready_0_not00011  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_cmp_eq0000 ),
    .I2(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/in_ready_0_not0001 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \uart_in/r_SM_Main_cmp_eq0000  (
    .I0(\uart_in/r_Clock_Count [1]),
    .I1(\uart_in/r_Clock_Count [0]),
    .I2(\uart_in/N31 ),
    .I3(N100),
    .O(\uart_in/r_SM_Main_cmp_eq0000_629 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<30>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [30]),
    .O(\proc/counter_mux0000<30>1_382 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<29>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [29]),
    .O(\proc/counter_mux0000<29>1_380 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<28>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [28]),
    .O(\proc/counter_mux0000<28>1_379 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<27>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [27]),
    .O(\proc/counter_mux0000<27>1_378 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<26>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [26]),
    .O(\proc/counter_mux0000<26>1_377 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<25>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [25]),
    .O(\proc/counter_mux0000<25>1_376 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<24>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [24]),
    .O(\proc/counter_mux0000<24>1_375 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<23>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [23]),
    .O(\proc/counter_mux0000<23>1_374 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<22>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [22]),
    .O(\proc/counter_mux0000<22>1_373 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<21>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [21]),
    .O(\proc/counter_mux0000<21>1_372 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<20>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [20]),
    .O(\proc/counter_mux0000<20>1_371 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<19>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [19]),
    .O(\proc/counter_mux0000<19>1_369 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<18>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [18]),
    .O(\proc/counter_mux0000<18>1_368 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<17>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [17]),
    .O(\proc/counter_mux0000<17>1_367 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<16>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [16]),
    .O(\proc/counter_mux0000<16>1_366 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<15>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [15]),
    .O(\proc/counter_mux0000<15>1_365 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<14>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [14]),
    .O(\proc/counter_mux0000<14>1_364 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<13>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [13]),
    .O(\proc/counter_mux0000<13>1_363 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<12>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [12]),
    .O(\proc/counter_mux0000<12>1_362 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<11>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [11]),
    .O(\proc/counter_mux0000<11>1_361 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<10>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [10]),
    .O(\proc/counter_mux0000<10>1_359 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<9>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [9]),
    .O(\proc/counter_mux0000<9>1_390 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<8>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [8]),
    .O(\proc/counter_mux0000<8>1_389 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<7>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [7]),
    .O(\proc/counter_mux0000<7>1_388 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<6>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [6]),
    .O(\proc/counter_mux0000<6>1_387 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<5>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [5]),
    .O(\proc/counter_mux0000<5>1_386 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<4>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [4]),
    .O(\proc/counter_mux0000<4>1_385 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<3>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [3]),
    .O(\proc/counter_mux0000<3>1_384 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<2>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [2]),
    .O(\proc/counter_mux0000<2>1_381 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<1>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [1]),
    .O(\proc/counter_mux0000<1>1_370 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/counter_mux0000<31>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/read_state_cmp_eq0000 ),
    .I3(\proc/counter_addsub0000 [31]),
    .O(\proc/counter_mux0000<31>1_383 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \proc/counter_mux0000<10>21_SW0  (
    .I0(\proc/counter_addsub0000 [0]),
    .I1(\proc/read_state_cmp_eq0000 ),
    .I2(\proc/read_state_FSM_FFd1_429 ),
    .O(N105)
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \proc/counter_mux0000<0>1  (
    .I0(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .I1(N105),
    .I2(\proc/counter [0]),
    .I3(\proc/N0 ),
    .O(\proc/counter_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h4440 ))
  \uart_in/r_Rx_DV_mux00001  (
    .I0(\uart_in/r_SM_Main_FSM_FFd1_619 ),
    .I1(\uart_in/r_Rx_DV1 ),
    .I2(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I3(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .O(\uart_in/r_Rx_DV_mux00001_617 )
  );
  LUT4 #(
    .INIT ( 16'hD580 ))
  \uart_in/r_SM_Main_FSM_FFd3-In40  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I2(\uart_in/r_SM_Main_FSM_FFd3-In13_627 ),
    .I3(\uart_in/r_SM_Main_FSM_FFd3-In29_628 ),
    .O(\uart_in/r_SM_Main_FSM_FFd3-In )
  );
  LUT4 #(
    .INIT ( 16'h080A ))
  \uart_in/r_Clock_Count_mux0000<2>1_SW0  (
    .I0(\uart_in/N31 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I2(N107),
    .I3(\uart_in/r_SM_Main_FSM_FFd1_619 ),
    .O(N24)
  );
  LUT4 #(
    .INIT ( 16'h9CC0 ))
  \uart_in/r_Bit_Index_mux0000<0>  (
    .I0(N113),
    .I1(\uart_in/r_Bit_Index [2]),
    .I2(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I3(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .O(\uart_in/r_Bit_Index_mux0000 [0])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \uart_in/r_Clock_Count_mux0000<0>_SW0  (
    .I0(\uart_in/N9 ),
    .I1(\uart_in/r_Clock_Count [4]),
    .I2(\uart_in/r_Clock_Count [5]),
    .I3(\uart_in/r_Clock_Count [6]),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_9_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N5 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_9_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_8_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N9 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_8_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_31_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N2 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_31_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_30_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N6 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_30_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_29_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N4 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_29_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_28_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N8 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_28_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_27_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N3 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_27_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_26_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N7 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_26_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_25_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N5 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_25_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_real_24_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N9 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_24_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_23_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N2 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_23_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_22_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N6 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_22_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_21_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N4 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_21_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_20_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N8 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_20_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_19_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N3 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_19_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_18_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N7 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_18_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_17_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N5 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_17_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_16_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/counter [4]),
    .I2(\proc/N9 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_16_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_15_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N2 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_15_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_14_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N6 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_14_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_13_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N4 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_13_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_12_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N8 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_12_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_11_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N3 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_11_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_real_10_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N7 ),
    .I3(\proc/read_state_cmp_eq0002 ),
    .O(\proc/xn_real_10_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_9_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N5 ),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_9_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_8_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/counter [3]),
    .I2(\proc/N9 ),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_8_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_7_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/N2 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_7_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_6_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/N6 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_6_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_5_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_FSM_FFd1_429 ),
    .I2(\proc/N4 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_5_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_7_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N2 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_7_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_6_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N6 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_6_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_5_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N4 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_5_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_4_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N8 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_4_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_3_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N3 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_3_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_2_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N7 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_2_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_1_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N5 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_1_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_real_0_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/read_state_cmp_eq0002 ),
    .I2(\proc/N9 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_real_0_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_4_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N8 ),
    .I2(\proc/read_state_FSM_FFd1_429 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_4_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_3_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N3 ),
    .I2(\proc/read_state_FSM_FFd1_429 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_3_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_31_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N2 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_31_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_30_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N6 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_30_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_2_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N7 ),
    .I2(\proc/read_state_FSM_FFd1_429 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_2_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_29_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N4 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_29_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_28_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N8 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_28_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_27_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N3 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_27_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_26_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N7 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_26_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_25_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N5 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_25_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/xn_imag_24_and00001  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/N9 ),
    .I2(\proc/counter [3]),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_24_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_23_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N2 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_23_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_22_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N6 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_22_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_21_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N4 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_21_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_20_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N8 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_20_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_1_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N5 ),
    .I2(\proc/read_state_FSM_FFd1_429 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_1_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_19_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N3 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_19_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_18_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N7 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_18_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_17_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N5 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_17_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_16_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N9 ),
    .I2(\proc/counter [4]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_16_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_15_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/N2 ),
    .I2(\proc/counter [3]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_15_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_14_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/N6 ),
    .I2(\proc/counter [3]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_14_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_13_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/N4 ),
    .I2(\proc/counter [3]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_13_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_12_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/N8 ),
    .I2(\proc/counter [3]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_12_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_11_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/N3 ),
    .I2(\proc/counter [3]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_11_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/xn_imag_10_and00001  (
    .I0(\proc/counter [4]),
    .I1(\proc/N7 ),
    .I2(\proc/counter [3]),
    .I3(\proc/read_state_FSM_FFd1_429 ),
    .O(\proc/xn_imag_10_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/xn_imag_0_and00001  (
    .I0(\proc/counter [3]),
    .I1(\proc/N9 ),
    .I2(\proc/read_state_FSM_FFd1_429 ),
    .I3(\proc/counter [4]),
    .O(\proc/xn_imag_0_and0000 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/_old_length_2<31>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N15 ),
    .O(\proc/_old_length_2 [31])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<30>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N15 ),
    .O(\proc/_old_length_2 [30])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<29>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N15 ),
    .O(\proc/_old_length_2 [29])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/_old_length_2<27>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N16 ),
    .O(\proc/_old_length_2 [27])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<26>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N16 ),
    .O(\proc/_old_length_2 [26])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<25>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N16 ),
    .O(\proc/_old_length_2 [25])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/_old_length_2<23>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N17 ),
    .O(\proc/_old_length_2 [23])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<22>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N17 ),
    .O(\proc/_old_length_2 [22])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<21>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N17 ),
    .O(\proc/_old_length_2 [21])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \proc/_old_length_2<19>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N18 ),
    .O(\proc/_old_length_2 [19])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<18>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N18 ),
    .O(\proc/_old_length_2 [18])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<17>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\uart_in/r_Rx_Byte [4]),
    .I3(\proc/N18 ),
    .O(\proc/_old_length_2 [17])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<9>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\proc/N16 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [9])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<7>1  (
    .I0(\uart_in/r_Rx_Byte [4]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N17 ),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/_old_length_2 [7])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<6>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N17 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [6])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<5>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\proc/N17 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [5])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<3>1  (
    .I0(\uart_in/r_Rx_Byte [4]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N18 ),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/_old_length_2 [3])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<2>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N18 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [2])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<1>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\proc/N18 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [1])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<15>1  (
    .I0(\uart_in/r_Rx_Byte [4]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N15 ),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/_old_length_2 [15])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<14>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N15 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [14])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<13>1  (
    .I0(\uart_in/r_Rx_Byte [1]),
    .I1(\uart_in/r_Rx_Byte [0]),
    .I2(\proc/N15 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [13])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \proc/_old_length_2<11>1  (
    .I0(\uart_in/r_Rx_Byte [4]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N16 ),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/_old_length_2 [11])
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \proc/_old_length_2<10>1  (
    .I0(\uart_in/r_Rx_Byte [0]),
    .I1(\uart_in/r_Rx_Byte [1]),
    .I2(\proc/N16 ),
    .I3(\uart_in/r_Rx_Byte [4]),
    .O(\proc/_old_length_2 [10])
  );
  LUT4 #(
    .INIT ( 16'h8881 ))
  \proc/Sh14111  (
    .I0(\uart_in/r_Rx_Byte [2]),
    .I1(\uart_in/r_Rx_Byte [3]),
    .I2(\uart_in/r_Rx_Byte [1]),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/N15 )
  );
  LUT4 #(
    .INIT ( 16'h2228 ))
  \proc/Sh13711  (
    .I0(\uart_in/r_Rx_Byte [3]),
    .I1(\uart_in/r_Rx_Byte [2]),
    .I2(\uart_in/r_Rx_Byte [1]),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/N16 )
  );
  LUT4 #(
    .INIT ( 16'h2224 ))
  \proc/Sh13311  (
    .I0(\uart_in/r_Rx_Byte [2]),
    .I1(\uart_in/r_Rx_Byte [3]),
    .I2(\uart_in/r_Rx_Byte [1]),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/N17 )
  );
  LUT4 #(
    .INIT ( 16'h1114 ))
  \proc/Sh12911  (
    .I0(\uart_in/r_Rx_Byte [3]),
    .I1(\uart_in/r_Rx_Byte [2]),
    .I2(\uart_in/r_Rx_Byte [1]),
    .I3(\uart_in/r_Rx_Byte [0]),
    .O(\proc/N18 )
  );
  FDS #(
    .INIT ( 1'b0 ))
  \proc/counter_1_1  (
    .C(\uart_in/r_Rx_DV_615 ),
    .D(\proc/counter_mux0000<1>1_370 ),
    .S(N76),
    .Q(\proc/counter_1_1_305 )
  );
  BUFGP   CLK_50MHZ_BUFGP (
    .I(CLK_50MHZ),
    .O(CLK_50MHZ_BUFGP_1)
  );
  BUFG   \uart_in/r_Rx_DV_BUFG  (
    .I(\uart_in/r_Rx_DV1 ),
    .O(\uart_in/r_Rx_DV_615 )
  );
  INV   \proc/Mcompar_read_state_cmp_lt0000_cy<30>_inv_INV_0  (
    .I(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .O(\proc/read_state_cmp_lt0000 )
  );
  INV   \proc/Madd_counter_addsub0000_lut<0>_INV_0  (
    .I(\proc/counter [0]),
    .O(\proc/Madd_counter_addsub0000_lut [0])
  );
  INV   \proc/read_state_FSM_Out01_INV_0  (
    .I(\proc/read_state_FSM_FFd2_430 ),
    .O(\proc/read_state_cmp_eq0001 )
  );
  MUXF5   \uart_in/r_Clock_Count_mux0000<5>  (
    .I0(N117),
    .I1(N118),
    .S(\uart_in/r_Clock_Count [2]),
    .O(\uart_in/r_Clock_Count_mux0000 [5])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart_in/r_Clock_Count_mux0000<5>_F  (
    .I0(\uart_in/r_Clock_Count [0]),
    .I1(\uart_in/r_Clock_Count [1]),
    .I2(\uart_in/N01 ),
    .O(N117)
  );
  LUT4 #(
    .INIT ( 16'hF4FC ))
  \uart_in/r_Clock_Count_mux0000<5>_G  (
    .I0(\uart_in/r_Clock_Count [1]),
    .I1(\uart_in/N6 ),
    .I2(\uart_in/N7 ),
    .I3(\uart_in/r_Clock_Count [0]),
    .O(N118)
  );
  MUXF5   \uart_in/r_Clock_Count_mux0000<2>  (
    .I0(N119),
    .I1(N120),
    .S(\uart_in/r_Clock_Count [5]),
    .O(\uart_in/r_Clock_Count_mux0000 [2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \uart_in/r_Clock_Count_mux0000<2>_F  (
    .I0(\uart_in/r_Clock_Count [4]),
    .I1(\uart_in/r_Clock_Count [3]),
    .I2(\uart_in/N15 ),
    .O(N119)
  );
  LUT4 #(
    .INIT ( 16'hFF8C ))
  \uart_in/r_Clock_Count_mux0000<2>_G  (
    .I0(\uart_in/N9 ),
    .I1(\uart_in/N6 ),
    .I2(\uart_in/r_Clock_Count [4]),
    .I3(\uart_in/N7 ),
    .O(N120)
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \uart_in/r_Clock_Count_mux0000<6>1  (
    .I0(\uart_in/r_Clock_Count [0]),
    .I1(\uart_in/N6 ),
    .I2(\uart_in/N7 ),
    .O(\uart_in/r_Clock_Count_mux0000<6>1_602 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_in/r_Clock_Count_mux0000<6>2  (
    .I0(\uart_in/N01 ),
    .I1(\uart_in/r_Clock_Count [0]),
    .O(\uart_in/r_Clock_Count_mux0000<6>2_603 )
  );
  MUXF5   \uart_in/r_Clock_Count_mux0000<6>_f5  (
    .I0(\uart_in/r_Clock_Count_mux0000<6>2_603 ),
    .I1(\uart_in/r_Clock_Count_mux0000<6>1_602 ),
    .S(\uart_in/r_Clock_Count [1]),
    .O(\uart_in/r_Clock_Count_mux0000 [6])
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \uart_in/r_Clock_Count_mux0000<0>11  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I1(\uart_in/r_Rx_Data_618 ),
    .I2(\uart_in/r_SM_Main_cmp_eq0000_629 ),
    .O(\uart_in/r_Clock_Count_mux0000<0>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_in/r_Clock_Count_mux0000<0>12  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd1_619 ),
    .O(\uart_in/r_Clock_Count_mux0000<0>11_595 )
  );
  MUXF5   \uart_in/r_Clock_Count_mux0000<0>1_f5  (
    .I0(\uart_in/r_Clock_Count_mux0000<0>11_595 ),
    .I1(\uart_in/r_Clock_Count_mux0000<0>1 ),
    .S(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .O(\uart_in/N7 )
  );
  LUT4 #(
    .INIT ( 16'hCC6C ))
  \uart_in/r_Bit_Index_mux0000<1>1  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I1(\uart_in/r_Bit_Index [1]),
    .I2(\uart_in/r_Bit_Index [0]),
    .I3(\uart_in/r_SM_Main_cmp_lt0000 ),
    .O(\uart_in/r_Bit_Index_mux0000<1>1_582 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \uart_in/r_Bit_Index_mux0000<1>2  (
    .I0(\uart_in/r_Bit_Index [1]),
    .I1(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .O(\uart_in/r_Bit_Index_mux0000<1>2_583 )
  );
  MUXF5   \uart_in/r_Bit_Index_mux0000<1>_f5  (
    .I0(\uart_in/r_Bit_Index_mux0000<1>2_583 ),
    .I1(\uart_in/r_Bit_Index_mux0000<1>1_582 ),
    .S(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .O(\uart_in/r_Bit_Index_mux0000 [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \uart_in/r_SM_Main_FSM_FFd2-In1  (
    .I0(\uart_in/r_Rx_Data_618 ),
    .I1(\uart_in/r_SM_Main_cmp_eq0000_629 ),
    .I2(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .O(\uart_in/r_SM_Main_FSM_FFd2-In1_623 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \uart_in/r_SM_Main_FSM_FFd2-In2  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd1_619 ),
    .O(\uart_in/r_SM_Main_FSM_FFd2-In2_624 )
  );
  MUXF5   \uart_in/r_SM_Main_FSM_FFd2-In_f5  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2-In2_624 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd2-In1_623 ),
    .S(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .O(\uart_in/r_SM_Main_FSM_FFd2-In )
  );
  LUT4_L #(
    .INIT ( 16'hFF7F ))
  \uart_in/r_SM_Main_FSM_FFd3-In13  (
    .I0(\uart_in/r_Bit_Index [1]),
    .I1(\uart_in/r_Bit_Index [2]),
    .I2(\uart_in/r_Bit_Index [0]),
    .I3(\uart_in/r_SM_Main_cmp_lt0000 ),
    .LO(\uart_in/r_SM_Main_FSM_FFd3-In13_627 )
  );
  LUT4_D #(
    .INIT ( 16'h0040 ))
  \uart_in/r_Rx_Byte_0_not000111  (
    .I0(\uart_in/r_SM_Main_FSM_FFd1_619 ),
    .I1(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I2(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I3(\uart_in/r_SM_Main_cmp_lt0000 ),
    .LO(N121),
    .O(\uart_in/N10 )
  );
  LUT4_D #(
    .INIT ( 16'hBA10 ))
  \uart_in/r_Clock_Count_mux0000<2>21  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I1(\uart_in/r_SM_Main_cmp_eq0000_629 ),
    .I2(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I3(\uart_in/r_SM_Main_cmp_lt0000 ),
    .LO(N122),
    .O(\uart_in/N6 )
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  \uart_in/r_SM_Main_cmp_lt00001_SW0  (
    .I0(\uart_in/r_Clock_Count [1]),
    .I1(\uart_in/r_Clock_Count [0]),
    .LO(N20)
  );
  LUT4_D #(
    .INIT ( 16'hBA10 ))
  \uart_in/r_Clock_Count_mux0000<2>1  (
    .I0(\uart_in/r_SM_Main_FSM_FFd2_621 ),
    .I1(\uart_in/r_SM_Main_cmp_eq0000_629 ),
    .I2(\uart_in/r_SM_Main_FSM_FFd3_625 ),
    .I3(N24),
    .LO(N123),
    .O(\uart_in/N01 )
  );
  LUT3_L #(
    .INIT ( 8'hF8 ))
  \uart_in/r_Clock_Count_mux0000<3>_SW0  (
    .I0(\uart_in/N9 ),
    .I1(\uart_in/N6 ),
    .I2(\uart_in/N7 ),
    .LO(N26)
  );
  LUT2_L #(
    .INIT ( 4'hB ))
  \uart_in/r_SM_Main_cmp_eq0000_SW0_SW0  (
    .I0(\uart_in/r_Clock_Count [3]),
    .I1(\uart_in/r_Clock_Count [2]),
    .LO(N100)
  );
  LUT4_L #(
    .INIT ( 16'hFA72 ))
  \proc/counter_mux0000<10>11  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/read_state_cmp_eq0000 ),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .LO(\proc/N0 )
  );
  LUT4_L #(
    .INIT ( 16'hA888 ))
  \uart_in/r_Clock_Count_mux0000<2>1_SW0_SW0  (
    .I0(\uart_in/r_Clock_Count [3]),
    .I1(\uart_in/r_Clock_Count [2]),
    .I2(\uart_in/r_Clock_Count [0]),
    .I3(\uart_in/r_Clock_Count [1]),
    .LO(N107)
  );
  LUT3_L #(
    .INIT ( 8'hF7 ))
  \uart_in/r_Bit_Index_mux0000<0>_SW2  (
    .I0(\uart_in/r_Bit_Index [0]),
    .I1(\uart_in/r_Bit_Index [1]),
    .I2(\uart_in/r_SM_Main_cmp_lt0000 ),
    .LO(N113)
  );
  LUT4_D #(
    .INIT ( 16'hFA72 ))
  \proc/counter_mux0000<10>11_1  (
    .I0(\proc/read_state_FSM_FFd1_429 ),
    .I1(\proc/read_state_cmp_eq0000 ),
    .I2(\proc/read_state_FSM_FFd2_430 ),
    .I3(\proc/Mcompar_read_state_cmp_lt0000_cy [30]),
    .LO(N124),
    .O(\proc/counter_mux0000<10>11_360 )
  );
  SRL16 #(
    .INIT ( 16'h0001 ))
  \uart_in/Mshreg_r_Rx_Data  (
    .A0(N0),
    .A1(N0),
    .A2(N0),
    .A3(N0),
    .CLK(CLK_50MHZ_BUFGP_1),
    .D(DBG_LED_OBUF_3),
    .Q(\uart_in/Mshreg_r_Rx_Data_568 )
  );
  FD #(
    .INIT ( 1'b1 ))
  \uart_in/r_Rx_Data  (
    .C(CLK_50MHZ_BUFGP_1),
    .D(\uart_in/Mshreg_r_Rx_Data_568 ),
    .Q(\uart_in/r_Rx_Data_618 )
  );
  xfft_v7_1   \proc/xfft  (
    .clk(CLK_50MHZ_BUFGP_1),
    .nfft_we(\proc/setup_ready [0]),
    .start(\proc/in_ready [0]),
    .unload(N0),
    .fwd_inv(N0),
    .fwd_inv_we(\proc/setup_ready [0]),
    .rfd(\NLW_proc/xfft_rfd_UNCONNECTED ),
    .busy(\NLW_proc/xfft_busy_UNCONNECTED ),
    .edone(\NLW_proc/xfft_edone_UNCONNECTED ),
    .done(\NLW_proc/xfft_done_UNCONNECTED ),
    .dv(\NLW_proc/xfft_dv_UNCONNECTED ),
    .nfft({\proc/nfft [4], \proc/nfft [3], \proc/nfft [2], \proc/nfft [1], \proc/nfft [0]}),
    .xn_re({\proc/xn_real [31], \proc/xn_real [30], \proc/xn_real [29], \proc/xn_real [28], \proc/xn_real [27], \proc/xn_real [26], \proc/xn_real [25]
, \proc/xn_real [24], \proc/xn_real [23], \proc/xn_real [22], \proc/xn_real [21], \proc/xn_real [20], \proc/xn_real [19], \proc/xn_real [18], 
\proc/xn_real [17], \proc/xn_real [16], \proc/xn_real [15], \proc/xn_real [14], \proc/xn_real [13], \proc/xn_real [12], \proc/xn_real [11], 
\proc/xn_real [10], \proc/xn_real [9], \proc/xn_real [8], \proc/xn_real [7], \proc/xn_real [6], \proc/xn_real [5], \proc/xn_real [4], 
\proc/xn_real [3], \proc/xn_real [2], \proc/xn_real [1], \proc/xn_real [0]}),
    .xn_im({\proc/xn_imag [31], \proc/xn_imag [30], \proc/xn_imag [29], \proc/xn_imag [28], \proc/xn_imag [27], \proc/xn_imag [26], \proc/xn_imag [25]
, \proc/xn_imag [24], \proc/xn_imag [23], \proc/xn_imag [22], \proc/xn_imag [21], \proc/xn_imag [20], \proc/xn_imag [19], \proc/xn_imag [18], 
\proc/xn_imag [17], \proc/xn_imag [16], \proc/xn_imag [15], \proc/xn_imag [14], \proc/xn_imag [13], \proc/xn_imag [12], \proc/xn_imag [11], 
\proc/xn_imag [10], \proc/xn_imag [9], \proc/xn_imag [8], \proc/xn_imag [7], \proc/xn_imag [6], \proc/xn_imag [5], \proc/xn_imag [4], 
\proc/xn_imag [3], \proc/xn_imag [2], \proc/xn_imag [1], \proc/xn_imag [0]}),
    .xn_index({\NLW_proc/xfft_xn_index<9>_UNCONNECTED , \NLW_proc/xfft_xn_index<8>_UNCONNECTED , \NLW_proc/xfft_xn_index<7>_UNCONNECTED , 
\NLW_proc/xfft_xn_index<6>_UNCONNECTED , \NLW_proc/xfft_xn_index<5>_UNCONNECTED , \NLW_proc/xfft_xn_index<4>_UNCONNECTED , 
\NLW_proc/xfft_xn_index<3>_UNCONNECTED , \NLW_proc/xfft_xn_index<2>_UNCONNECTED , \NLW_proc/xfft_xn_index<1>_UNCONNECTED , 
\NLW_proc/xfft_xn_index<0>_UNCONNECTED }),
    .xk_index({\NLW_proc/xfft_xk_index<9>_UNCONNECTED , \NLW_proc/xfft_xk_index<8>_UNCONNECTED , \NLW_proc/xfft_xk_index<7>_UNCONNECTED , 
\NLW_proc/xfft_xk_index<6>_UNCONNECTED , \NLW_proc/xfft_xk_index<5>_UNCONNECTED , \NLW_proc/xfft_xk_index<4>_UNCONNECTED , 
\NLW_proc/xfft_xk_index<3>_UNCONNECTED , \NLW_proc/xfft_xk_index<2>_UNCONNECTED , \NLW_proc/xfft_xk_index<1>_UNCONNECTED , 
\NLW_proc/xfft_xk_index<0>_UNCONNECTED }),
    .xk_re({\NLW_proc/xfft_xk_re<31>_UNCONNECTED , \NLW_proc/xfft_xk_re<30>_UNCONNECTED , \NLW_proc/xfft_xk_re<29>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<28>_UNCONNECTED , \NLW_proc/xfft_xk_re<27>_UNCONNECTED , \NLW_proc/xfft_xk_re<26>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<25>_UNCONNECTED , \NLW_proc/xfft_xk_re<24>_UNCONNECTED , \NLW_proc/xfft_xk_re<23>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<22>_UNCONNECTED , \NLW_proc/xfft_xk_re<21>_UNCONNECTED , \NLW_proc/xfft_xk_re<20>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<19>_UNCONNECTED , \NLW_proc/xfft_xk_re<18>_UNCONNECTED , \NLW_proc/xfft_xk_re<17>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<16>_UNCONNECTED , \NLW_proc/xfft_xk_re<15>_UNCONNECTED , \NLW_proc/xfft_xk_re<14>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<13>_UNCONNECTED , \NLW_proc/xfft_xk_re<12>_UNCONNECTED , \NLW_proc/xfft_xk_re<11>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<10>_UNCONNECTED , \NLW_proc/xfft_xk_re<9>_UNCONNECTED , \NLW_proc/xfft_xk_re<8>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<7>_UNCONNECTED , \NLW_proc/xfft_xk_re<6>_UNCONNECTED , \NLW_proc/xfft_xk_re<5>_UNCONNECTED , \NLW_proc/xfft_xk_re<4>_UNCONNECTED 
, \NLW_proc/xfft_xk_re<3>_UNCONNECTED , \NLW_proc/xfft_xk_re<2>_UNCONNECTED , \NLW_proc/xfft_xk_re<1>_UNCONNECTED , 
\NLW_proc/xfft_xk_re<0>_UNCONNECTED }),
    .xk_im({\NLW_proc/xfft_xk_im<31>_UNCONNECTED , \NLW_proc/xfft_xk_im<30>_UNCONNECTED , \NLW_proc/xfft_xk_im<29>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<28>_UNCONNECTED , \NLW_proc/xfft_xk_im<27>_UNCONNECTED , \NLW_proc/xfft_xk_im<26>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<25>_UNCONNECTED , \NLW_proc/xfft_xk_im<24>_UNCONNECTED , \NLW_proc/xfft_xk_im<23>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<22>_UNCONNECTED , \NLW_proc/xfft_xk_im<21>_UNCONNECTED , \NLW_proc/xfft_xk_im<20>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<19>_UNCONNECTED , \NLW_proc/xfft_xk_im<18>_UNCONNECTED , \NLW_proc/xfft_xk_im<17>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<16>_UNCONNECTED , \NLW_proc/xfft_xk_im<15>_UNCONNECTED , \NLW_proc/xfft_xk_im<14>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<13>_UNCONNECTED , \NLW_proc/xfft_xk_im<12>_UNCONNECTED , \NLW_proc/xfft_xk_im<11>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<10>_UNCONNECTED , \NLW_proc/xfft_xk_im<9>_UNCONNECTED , \NLW_proc/xfft_xk_im<8>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<7>_UNCONNECTED , \NLW_proc/xfft_xk_im<6>_UNCONNECTED , \NLW_proc/xfft_xk_im<5>_UNCONNECTED , \NLW_proc/xfft_xk_im<4>_UNCONNECTED 
, \NLW_proc/xfft_xk_im<3>_UNCONNECTED , \NLW_proc/xfft_xk_im<2>_UNCONNECTED , \NLW_proc/xfft_xk_im<1>_UNCONNECTED , 
\NLW_proc/xfft_xk_im<0>_UNCONNECTED })
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
