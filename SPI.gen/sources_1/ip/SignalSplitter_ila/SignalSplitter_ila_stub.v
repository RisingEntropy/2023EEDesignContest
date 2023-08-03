// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jul 29 17:09:07 2023
// Host        : DESKTOP-3R96T2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top SignalSplitter_ila -prefix
//               SignalSplitter_ila_ ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2022.1" *)
module SignalSplitter_ila(clk, probe0, probe1, probe2)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[15:0],probe1[15:0],probe2[15:0]" */;
  input clk;
  input [15:0]probe0;
  input [15:0]probe1;
  input [15:0]probe2;
endmodule
