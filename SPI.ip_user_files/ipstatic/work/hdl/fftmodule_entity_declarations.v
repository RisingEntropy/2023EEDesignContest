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
module sysgen_constant_895b23b305 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_0f9defd942 (
  input [(29 - 1):0] input_port,
  output [(29 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(29 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule

`timescale 1 ns / 10 ps
module  xlcordic_66bbec3ad9da73a64cef8f602c7f58ec (ce,clk,m_axis_dout_tdata_phase,m_axis_dout_tdata_real,m_axis_dout_tvalid,s_axis_cartesian_tdata_imag,s_axis_cartesian_tdata_real,s_axis_cartesian_tvalid);

input ce;
input clk;
output[15:0] m_axis_dout_tdata_phase;
output[15:0] m_axis_dout_tdata_real;
output m_axis_dout_tvalid;
input[28:0] s_axis_cartesian_tdata_imag;
input[28:0] s_axis_cartesian_tdata_real;
input s_axis_cartesian_tvalid;
wire[31:0] m_axis_dout_tdata_net;
wire[63:0] s_axis_cartesian_tdata_net;
  assign m_axis_dout_tdata_phase = m_axis_dout_tdata_net[31 : 16];
  assign m_axis_dout_tdata_real = m_axis_dout_tdata_net[15 : 0];
  assign s_axis_cartesian_tdata_net[63 : 61] = 3'b0;
  assign s_axis_cartesian_tdata_net[60 : 32] = s_axis_cartesian_tdata_imag;
  assign s_axis_cartesian_tdata_net[31 : 29] = 3'b0;
  assign s_axis_cartesian_tdata_net[28 : 0] = s_axis_cartesian_tdata_real;
  fftmodule_cordic_v6_0_i0 fftmodule_cordic_v6_0_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_dout_tdata(m_axis_dout_tdata_net),
      .m_axis_dout_tvalid(m_axis_dout_tvalid),
      .s_axis_cartesian_tdata(s_axis_cartesian_tdata_net),
      .s_axis_cartesian_tvalid(s_axis_cartesian_tvalid)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfftmodule_xfft_v9_1_i0_c9b63e72838c51a432aa9d7cf53a86c5 (ce,clk,in_im,in_re,op_im,op_re,start_frame_in,start_frame_out);

input ce;
input clk;
input[15:0] in_im;
input[15:0] in_re;
output[28:0] op_im;
output[28:0] op_re;
input[0:0] start_frame_in;
output[0:0] start_frame_out;
wire event_frame_started;
wire[63:0] m_axis_data_tdata_net;
wire m_axis_data_tlast;
wire m_axis_data_tvalid;
wire s_axis_config_tready;
wire[31:0] s_axis_data_tdata_net;
wire s_axis_data_tready;
  assign op_im = m_axis_data_tdata_net[60 : 32];
  assign op_re = m_axis_data_tdata_net[28 : 0];
  assign s_axis_data_tdata_net[31 : 16] = in_im;
  assign s_axis_data_tdata_net[15 : 0] = in_re;
  reg [11:0] start_frame_valid = 0;
  reg flag = 0;
  wire m_tvalid_d;
  wire m_tlast_d;
  wire start_frame_in_valid;
  wire [0:0] start_frame_out;
  wire [0:0] start_frame_out_1;
  //////INPUT SUBSYSTEM 
  always @(posedge clk)
  begin
  if(start_frame_in || (start_frame_valid != 0))
         start_frame_valid <= start_frame_valid + 'd1;
  end
  assign start_frame_in_valid = (start_frame_in || (start_frame_valid != 0)) ? 1'b1 : 1'b0;
  ////OUTPUT SUBSYSTEM
  FDE u2 (.C(clk), .D(m_axis_data_tvalid), .Q(m_tvalid_d), .CE(ce));
  FDE u3 (.C(clk), .D(m_axis_data_tlast), .Q(m_tlast_d), .CE(ce));
  assign start_frame_out_1 = (~m_tvalid_d) && m_axis_data_tvalid;
  assign start_frame_out = start_frame_out_1 || (m_tlast_d && m_axis_data_tvalid);
  fftmodule_xfft_v9_1_i0 fftmodule_xfft_v9_1_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .event_frame_started(event_frame_started),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tlast(m_axis_data_tlast),
      .m_axis_data_tready(1'b1),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_config_tdata(8'b00000001),
      .s_axis_config_tready(s_axis_config_tready),
      .s_axis_config_tvalid(1'b1),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tlast(1'b0),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(start_frame_in_valid)
    );

 endmodule



