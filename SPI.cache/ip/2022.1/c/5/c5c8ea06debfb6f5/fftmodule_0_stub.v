// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jul 29 15:10:13 2023
// Host        : DESKTOP-3R96T2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fftmodule_0_stub.v
// Design      : fftmodule_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fftmodule,Vivado 2022.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(fft_data_in_im, fft_data_in_re, 
  fft_data_start_frame, clk, fft_out_phase, fft_out_real, fft_out_start_frame)
/* synthesis syn_black_box black_box_pad_pin="fft_data_in_im[15:0],fft_data_in_re[15:0],fft_data_start_frame[0:0],clk,fft_out_phase[15:0],fft_out_real[15:0],fft_out_start_frame[0:0]" */;
  input [15:0]fft_data_in_im;
  input [15:0]fft_data_in_re;
  input [0:0]fft_data_start_frame;
  input clk;
  output [15:0]fft_out_phase;
  output [15:0]fft_out_real;
  output [0:0]fft_out_start_frame;
endmodule
