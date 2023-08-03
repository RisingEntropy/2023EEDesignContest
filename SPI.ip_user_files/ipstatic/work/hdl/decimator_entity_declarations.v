//-----------------------------------------------------------------
// System Generator version 2022.1 Verilog source file.
//
// Copyright(C) 2022 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2022 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"

`timescale 1 ns / 10 ps
module  xlcic_compiler_b7ad902f74efafc5a795a41c347f8e1b (ce,ce_40,ce_40000000,ce_logic_40000000,clk,clk_40,clk_40000000,clk_logic_40000000,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready);

input ce;
input ce_40;
input ce_40000000;
input ce_logic_40000000;
input clk;
input clk_40;
input clk_40000000;
input clk_logic_40000000;
output[21:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[15:0] s_axis_data_tdata_real;
output s_axis_data_tready;
wire[23:0] m_axis_data_tdata_net;
wire[21:0] m_axis_data_tdata_real_ps_net;
wire[21:0] m_axis_data_tdata_real_ps_net_captured;
wire[21:0] m_axis_data_tdata_real_ps_net_or_captured_net;
wire m_axis_data_tvalid_ps_net;
wire m_axis_data_tvalid_ps_net_captured;
wire m_axis_data_tvalid_ps_net_or_captured_net;
wire[15:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real_ps_net = m_axis_data_tdata_net[21 : 0];
  assign s_axis_data_tdata_net[15 : 0] = s_axis_data_tdata_real;
  assign m_axis_data_tdata_real_ps_net_or_captured_net = m_axis_data_tdata_real_ps_net | m_axis_data_tdata_real_ps_net_captured;
synth_reg_w_init # (
        .width (22),
        .init_index(0),
        .init_value('b0),
        .latency(1))
m_axis_data_tdata_real_ps_net_synchronizer_1 (
        .i(m_axis_data_tdata_real_ps_net_or_captured_net),
        .ce(ce_40),
        .clr(1'b0),
        .clk(clk_40), 
        .o(m_axis_data_tdata_real)
    );
synth_reg_w_init # (
        .width(22),
        .init_index(0),
        .init_value('b0),
        .latency(1)
    )
m_axis_data_tdata_real_ps_net_synchronizer_2 (
        .i(m_axis_data_tdata_real_ps_net),
        .ce(m_axis_data_tvalid_ps_net),
        .clr(1'b0),
        .clk(clk_40), 
        .o(m_axis_data_tdata_real_ps_net_captured)
    );

  assign m_axis_data_tvalid_ps_net_or_captured_net = m_axis_data_tvalid_ps_net || m_axis_data_tvalid_ps_net_captured;
synth_reg_w_init # (
        .width (1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1))
m_axis_data_tvalid_ps_net_synchronizer_1 (
        .i(m_axis_data_tvalid_ps_net_or_captured_net),
        .ce(ce_40),
        .clr(1'b0),
        .clk(clk_40), 
        .o(m_axis_data_tvalid)
    );
synth_reg_w_init # (
        .width(1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1)
    )
m_axis_data_tvalid_ps_net_synchronizer_2 (
        .i(1'b1),
        .ce(m_axis_data_tvalid_ps_net),
        .clr(1'b0),
        .clk(clk_40), 
        .o(m_axis_data_tvalid_ps_net_captured)
    );

  decimator_cic_compiler_v4_0_i0 decimator_cic_compiler_v4_0_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid_ps_net),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_40000000)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfir_compiler_625ee47a4eb64b1eff1ebafae2b1b2ba (ce,ce_40,ce_logic_40,clk,clk_40,clk_logic_40,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready,src_ce,src_clk);

input ce;
input ce_40;
input ce_logic_40;
input clk;
input clk_40;
input clk_logic_40;
output[15:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[21:0] s_axis_data_tdata_real;
output s_axis_data_tready;
input src_ce;
input src_clk;
wire[15:0] m_axis_data_tdata_net;
wire[15:0] m_axis_data_tdata_real_ps_net;
wire m_axis_data_tvalid_ps_net;
wire m_axis_data_tvalid_ps_net_captured;
wire m_axis_data_tvalid_ps_net_or_captured_net;
wire[23:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real_ps_net = m_axis_data_tdata_net[15 : 0];
  assign s_axis_data_tdata_net[23 : 22] = 2'b0;
  assign s_axis_data_tdata_net[21 : 0] = s_axis_data_tdata_real;
  synth_reg_w_init # (.width(16),
                  .init_index(0),
                  .init_value('b0),
                  .latency(1))
m_axis_data_tdata_real_ps_net_synchronizer (.i(m_axis_data_tdata_real_ps_net),
             .ce(ce_40),
             .clr(1'b0),
             .clk(clk_40),
             .o(m_axis_data_tdata_real));

  assign m_axis_data_tvalid_ps_net_or_captured_net = m_axis_data_tvalid_ps_net || m_axis_data_tvalid_ps_net_captured;
synth_reg_w_init # (
        .width (1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1))
m_axis_data_tvalid_ps_net_synchronizer_1 (
        .i(m_axis_data_tvalid_ps_net_or_captured_net),
        .ce(ce_40),
        .clr(1'b0),
        .clk(clk_40), 
        .o(m_axis_data_tvalid)
    );
synth_reg_w_init # (
        .width(1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1)
    )
m_axis_data_tvalid_ps_net_synchronizer_2 (
        .i(1'b1),
        .ce(m_axis_data_tvalid_ps_net),
        .clr(1'b0),
        .clk(clk_40), 
        .o(m_axis_data_tvalid_ps_net_captured)
    );

  decimator_fir_compiler_v7_2_i0 decimator_fir_compiler_v7_2_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid_ps_net),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_40)
    );

 endmodule



