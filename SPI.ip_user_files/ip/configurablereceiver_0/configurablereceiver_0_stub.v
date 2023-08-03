// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Aug  1 17:24:29 2023
// Host        : DESKTOP-3R96T2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/RisingEntropy/Documents/Projects/FPGA/SPI/SPI.gen/sources_1/ip/configurablereceiver_0/configurablereceiver_0_stub.v
// Design      : configurablereceiver_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "configurablereceiver,Vivado 2022.1" *)
module configurablereceiver_0(adc_in, dds_config_data, dds_tvalid, clk, am_out, 
  data_ready, fm_out)
/* synthesis syn_black_box black_box_pad_pin="adc_in[15:0],dds_config_data[23:0],dds_tvalid[0:0],clk,am_out[15:0],data_ready[0:0],fm_out[15:0]" */;
  input [15:0]adc_in;
  input [23:0]dds_config_data;
  input [0:0]dds_tvalid;
  input clk;
  output [15:0]am_out;
  output [0:0]data_ready;
  output [15:0]fm_out;
endmodule
