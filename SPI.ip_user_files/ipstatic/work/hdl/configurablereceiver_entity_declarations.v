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
module sysgen_concat_81c0ab3d57 (
  input [(1 - 1):0] in0,
  input [(1 - 1):0] in1,
  output [(2 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire in0_1_23;
  wire in1_1_27;
  wire [(2 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_c7a5a13a15 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0010000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_00c9d0fb59 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b1110000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_862b67d196 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0000000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_58b6cfa76f (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b0100000000000000;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_3b0c132fd0 (
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 16'b1100000000000000;
endmodule
`timescale 1 ns / 10 ps
module configurablereceiver_xldelay #(parameter width = -1, latency = -1, reg_retiming = 0, reset = 0)
  (input [width-1:0] d,
   input ce, clk, en, rst,
   output [width-1:0] q);

generate
  if ((latency == 0) || ((reg_retiming == 0) && (reset == 0)))
  begin:srl_delay
    synth_reg # (width, latency)
      reg1 (
        .i(d),
        .ce(ce & en),
        .clr(1'b0),
        .clk(clk),
        .o(q));
  end

  if ((latency>=1) && ((reg_retiming) || (reset)))
  begin:reg_delay
    synth_reg_reg # (width, latency)
      reg2 (
        .i(d),
        .ce(ce & en),
        .clr(rst),
        .clk(clk),
        .o(q));
  end
endgenerate
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_bbb10d681f (
  input [(2 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  input [(16 - 1):0] d2,
  input [(16 - 1):0] d3,
  output [(16 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  wire [(16 - 1):0] d2_1_30;
  wire [(16 - 1):0] d3_1_33;
  localparam [(16 - 1):0] const_value = 16'b0000000000000000;
  reg [(16 - 1):0] pipe_20_22[0:(1 - 1)];
  initial
    begin
      pipe_20_22[0] = 16'b0000000000000000;
    end
  wire [(16 - 1):0] pipe_20_22_front_din;
  wire [(16 - 1):0] pipe_20_22_back;
  wire pipe_20_22_push_front_pop_back_en;
  reg [(16 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign d3_1_33 = d3;
  assign pipe_20_22_back = pipe_20_22[0];
  always @(posedge clk)
    begin:proc_pipe_20_22
      integer i;
      if (((ce == 1'b1) && (pipe_20_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_20_22[0] <= pipe_20_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or d3_1_33 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        2'b10 :
          begin
            unregy_join_6_1 = d2_1_30;
          end
        default:
          begin
            unregy_join_6_1 = d3_1_33;
          end
      endcase
    end
  assign pipe_20_22_front_din = unregy_join_6_1;
  assign pipe_20_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_20_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_0c17eb7a07 (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_db558597d1 (
  input [(24 - 1):0] input_port,
  output [(24 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(24 - 1):0] input_port_1_40;
  assign input_port_1_40 = input_port;
  assign output_port = input_port_1_40;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_15ac3c59ec (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(16 - 1):0] b_1_34;
  reg op_mem_37_22[0:(1 - 1)];
  initial
    begin
      op_mem_37_22[0] = 1'b0;
    end
  wire op_mem_37_22_front_din;
  wire op_mem_37_22_back;
  wire op_mem_37_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_22_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_37_22_back = op_mem_37_22[0];
  always @(posedge clk)
    begin:proc_op_mem_37_22
      integer i;
      if (((ce == 1'b1) && (op_mem_37_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_37_22[0] <= op_mem_37_22_front_din;
        end
    end
  assign result_22_3_rel = a_1_31 >= b_1_34;
  assign op_mem_37_22_front_din = result_22_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_relational_1862dcc8b0 (
  input [(16 - 1):0] a,
  input [(16 - 1):0] b,
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] a_1_31;
  wire signed [(16 - 1):0] b_1_34;
  reg op_mem_37_22[0:(1 - 1)];
  initial
    begin
      op_mem_37_22[0] = 1'b0;
    end
  wire op_mem_37_22_front_din;
  wire op_mem_37_22_back;
  wire op_mem_37_22_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value = 1'b1;
  wire result_20_3_rel;
  assign a_1_31 = a;
  assign b_1_34 = b;
  assign op_mem_37_22_back = op_mem_37_22[0];
  always @(posedge clk)
    begin:proc_op_mem_37_22
      integer i;
      if (((ce == 1'b1) && (op_mem_37_22_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_37_22[0] <= op_mem_37_22_front_din;
        end
    end
  assign result_20_3_rel = a_1_31 <= b_1_34;
  assign op_mem_37_22_front_din = result_20_3_rel;
  assign op_mem_37_22_push_front_pop_back_en = 1'b1;
  assign op = op_mem_37_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_shift_edc95a5834 (
  input [(22 - 1):0] ip,
  output [(22 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(22 - 1):0] ip_1_23;
  localparam signed [(22 - 1):0] const_value = 22'sb0000000000000000000000;
  reg signed [(22 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 22'b0000000000000000000000;
    end
  wire signed [(22 - 1):0] op_mem_46_20_front_din;
  wire signed [(22 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(23 - 1):0] cast_internal_ip_25_3_lsh;
  wire signed [(22 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[21:0], 1'b0};
  assign cast_internal_ip_36_3_convert = {cast_internal_ip_25_3_lsh[21:0]};
  assign op_mem_46_20_front_din = cast_internal_ip_36_3_convert;
  assign op_mem_46_20_push_front_pop_back_en = 1'b1;
  assign op = op_mem_46_20_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_shift_c8c012aecc (
  input [(16 - 1):0] ip,
  output [(16 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] ip_1_23;
  localparam signed [(16 - 1):0] const_value = 16'sb0000000000000000;
  reg signed [(16 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 16'b0000000000000000;
    end
  wire signed [(16 - 1):0] op_mem_46_20_front_din;
  wire signed [(16 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(17 - 1):0] cast_internal_ip_25_3_lsh;
  wire signed [(16 - 1):0] cast_internal_ip_36_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  assign cast_internal_ip_25_3_lsh = {ip_1_23[15:0], 1'b0};
  assign cast_internal_ip_36_3_convert = {cast_internal_ip_25_3_lsh[15:0]};
  assign op_mem_46_20_front_din = cast_internal_ip_36_3_convert;
  assign op_mem_46_20_push_front_pop_back_en = 1'b1;
  assign op = op_mem_46_20_back;
endmodule
module configurablereceiver_xladdsub (a, b, c_in, ce, clr, clk, rst, en, c_out, s);
 
 parameter core_name0= "";
 parameter a_width= 16;
 parameter signed a_bin_pt= 4;
 parameter a_arith= `xlUnsigned;
 parameter c_in_width= 16;
 parameter c_in_bin_pt= 4;
 parameter c_in_arith= `xlUnsigned;
 parameter c_out_width= 16;
 parameter c_out_bin_pt= 4;
 parameter c_out_arith= `xlUnsigned;
 parameter b_width= 8;
 parameter signed b_bin_pt= 2;
 parameter b_arith= `xlUnsigned;
 parameter s_width= 17;
 parameter s_bin_pt= 4;
 parameter s_arith= `xlUnsigned;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter full_s_width= 17;
 parameter full_s_arith= `xlUnsigned;
 parameter mode= `xlAddMode;
 parameter extra_registers= 0;
 parameter latency= 0;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter c_a_width= 16;
 parameter c_b_width= 8;
 parameter c_a_type= 1;
 parameter c_b_type= 1;
 parameter c_has_sclr= 0;
 parameter c_has_ce= 0;
 parameter c_latency= 0;
 parameter c_output_width= 17;
 parameter c_enable_rlocs= 1;
 parameter c_has_c_in= 0;
 parameter c_has_c_out= 0;
 
 input [a_width-1:0] a;
 input [b_width-1:0] b;
 input c_in, ce, clr, clk, rst, en;
 output c_out;
 output [s_width-1:0] s;
 
 parameter full_a_width = full_s_width;
 parameter full_b_width = full_s_width;
 parameter full_s_bin_pt = (a_bin_pt > b_bin_pt) ? a_bin_pt : b_bin_pt;
 
 wire [full_a_width-1:0] full_a;
 wire [full_b_width-1:0] full_b;
 wire [full_s_width-1:0] full_s;
 wire [full_s_width-1:0] core_s;
 wire [s_width-1:0] conv_s;
 wire  temp_cout;
 wire  real_a,real_b,real_s;
 wire  internal_clr;
 wire  internal_ce;
 wire  extra_reg_ce;
 wire  override;
 wire  logic1;
 wire  temp_cin;
 
 assign internal_clr = (clr | rst) & ce;
 assign internal_ce = ce & en;
 assign logic1 = 1'b1;
 assign temp_cin = (c_has_c_in) ? c_in : 1'b0;
 
 align_input # (a_width, b_bin_pt - a_bin_pt, a_arith, full_a_width)
 align_inp_a(.inp(a),.res(full_a));
 align_input # (b_width, a_bin_pt - b_bin_pt, b_arith, full_b_width)
 align_inp_b(.inp(b),.res(full_b));
 convert_type # (full_s_width, full_s_bin_pt, full_s_arith, s_width,
                 s_bin_pt, s_arith, quantization, overflow)
 conv_typ_s(.inp(core_s),.res(conv_s));
 
 generate


if (core_name0 == "configurablereceiver_c_addsub_v12_0_i0") 
     begin:comp0
configurablereceiver_c_addsub_v12_0_i0 core_instance0 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

if (core_name0 == "configurablereceiver_c_addsub_v12_0_i1") 
     begin:comp1
configurablereceiver_c_addsub_v12_0_i1 core_instance1 ( 
         .A(full_a),
         .CLK(clk),
         .CE(internal_ce),
         .S(core_s),
         .B(full_b) 
       ); 
     end 

endgenerate 
 
 
 generate
   if (extra_registers > 0)
   begin:latency_test
     
     if (c_latency > 1)
     begin:override_test
       synth_reg # (1, c_latency)
         override_pipe (
           .i(logic1),
           .ce(internal_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(override));
       assign extra_reg_ce = ce & en & override;
     end // override_test
 
     if ((c_latency == 0) || (c_latency == 1))
     begin:no_override
       assign extra_reg_ce = ce & en;
     end // no_override
 
     synth_reg # (s_width, extra_registers)
       extra_reg (
         .i(conv_s),
         .ce(extra_reg_ce),
         .clr(internal_clr),
         .clk(clk),
         .o(s));
 
     if (c_has_c_out == 1)
     begin:cout_test
       synth_reg # (1, extra_registers)
         c_out_extra_reg (
           .i(temp_cout),
           .ce(extra_reg_ce),
           .clr(internal_clr),
           .clk(clk),
           .o(c_out));
     end // cout_test
     
   end // latency_test
 endgenerate
 
 generate
   if ((latency == 0) || (extra_registers == 0))
   begin:latency_s
     assign s = conv_s;
   end // latency_s
 endgenerate
 
 generate
   if (((latency == 0) || (extra_registers == 0)) &&
       (c_has_c_out == 1))
   begin:latency0
     assign c_out = temp_cout;
   end // latency0
 endgenerate
 
 generate
   if (c_has_c_out == 0)
   begin:tie_dangling_cout
     assign c_out = 0;
   end // tie_dangling_cout
 endgenerate
 
 endmodule


`timescale 1 ns / 10 ps
module  xlcic_compiler_e73e18443806dcef631c8903d930ad9c (ce,ce_40,ce_logic_1,clk,clk_40,clk_logic_1,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready);

input ce;
input ce_40;
input ce_logic_1;
input clk;
input clk_40;
input clk_logic_1;
output[21:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[21:0] s_axis_data_tdata_real;
output s_axis_data_tready;
wire[23:0] m_axis_data_tdata_net;
wire[21:0] m_axis_data_tdata_real_ps_net;
wire[21:0] m_axis_data_tdata_real_ps_net_captured;
wire[21:0] m_axis_data_tdata_real_ps_net_or_captured_net;
wire m_axis_data_tvalid_ps_net;
wire m_axis_data_tvalid_ps_net_captured;
wire m_axis_data_tvalid_ps_net_or_captured_net;
wire[23:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real_ps_net = m_axis_data_tdata_net[21 : 0];
  assign s_axis_data_tdata_net[23 : 22] = 2'b0;
  assign s_axis_data_tdata_net[21 : 0] = s_axis_data_tdata_real;
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

  configurablereceiver_cic_compiler_v4_0_i0 configurablereceiver_cic_compiler_v4_0_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid_ps_net),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_1)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlcordic_83fa67396ed082330d0463c6be56e9ca (ce,clk,m_axis_dout_tdata_phase,m_axis_dout_tdata_real,m_axis_dout_tvalid,s_axis_cartesian_tdata_imag,s_axis_cartesian_tdata_real,s_axis_cartesian_tvalid);

input ce;
input clk;
output[15:0] m_axis_dout_tdata_phase;
output[15:0] m_axis_dout_tdata_real;
output m_axis_dout_tvalid;
input[15:0] s_axis_cartesian_tdata_imag;
input[15:0] s_axis_cartesian_tdata_real;
input s_axis_cartesian_tvalid;
wire[31:0] m_axis_dout_tdata_net;
wire[31:0] s_axis_cartesian_tdata_net;
  assign m_axis_dout_tdata_phase = m_axis_dout_tdata_net[31 : 16];
  assign m_axis_dout_tdata_real = m_axis_dout_tdata_net[15 : 0];
  assign s_axis_cartesian_tdata_net[31 : 16] = s_axis_cartesian_tdata_imag;
  assign s_axis_cartesian_tdata_net[15 : 0] = s_axis_cartesian_tdata_real;
  configurablereceiver_cordic_v6_0_i0 configurablereceiver_cordic_v6_0_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_dout_tdata(m_axis_dout_tdata_net),
      .m_axis_dout_tvalid(m_axis_dout_tvalid),
      .s_axis_cartesian_tdata(s_axis_cartesian_tdata_net),
      .s_axis_cartesian_tvalid(s_axis_cartesian_tvalid)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xldds_compiler_c21522467d2c52044e742341270d1e2b (ce,clk,m_axis_data_tdata_cosine,m_axis_data_tdata_sine,m_axis_data_tvalid,s_axis_config_tdata_pinc,s_axis_config_tvalid);

input ce;
input clk;
output[15:0] m_axis_data_tdata_cosine;
output[15:0] m_axis_data_tdata_sine;
output m_axis_data_tvalid;
input[23:0] s_axis_config_tdata_pinc;
input s_axis_config_tvalid;
wire[31:0] m_axis_data_tdata_net;
wire[23:0] s_axis_config_tdata_net;
  assign m_axis_data_tdata_sine = m_axis_data_tdata_net[31 : 16];
  assign m_axis_data_tdata_cosine = m_axis_data_tdata_net[15 : 0];
  assign s_axis_config_tdata_net[23 : 0] = s_axis_config_tdata_pinc;
  configurablereceiver_dds_compiler_v6_0_i0 configurablereceiver_dds_compiler_v6_0_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_config_tdata(s_axis_config_tdata_net),
      .s_axis_config_tvalid(s_axis_config_tvalid)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfir_compiler_1ce0cc7063059ff759972b735a988c77 (ce,ce_40,ce_80,ce_logic_40,clk,clk_40,clk_80,clk_logic_40,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready,src_ce,src_clk);

input ce;
input ce_40;
input ce_80;
input ce_logic_40;
input clk;
input clk_40;
input clk_80;
input clk_logic_40;
output[21:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[21:0] s_axis_data_tdata_real;
output s_axis_data_tready;
input src_ce;
input src_clk;
wire[23:0] m_axis_data_tdata_net;
wire[21:0] m_axis_data_tdata_real_ps_net;
wire m_axis_data_tvalid_ps_net;
wire m_axis_data_tvalid_ps_net_captured;
wire m_axis_data_tvalid_ps_net_or_captured_net;
wire[23:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real_ps_net = m_axis_data_tdata_net[21 : 0];
  assign s_axis_data_tdata_net[23 : 22] = 2'b0;
  assign s_axis_data_tdata_net[21 : 0] = s_axis_data_tdata_real;
  synth_reg_w_init # (.width(22),
                  .init_index(0),
                  .init_value('b0),
                  .latency(1))
m_axis_data_tdata_real_ps_net_synchronizer (.i(m_axis_data_tdata_real_ps_net),
             .ce(ce_80),
             .clr(1'b0),
             .clk(clk_80),
             .o(m_axis_data_tdata_real));

  assign m_axis_data_tvalid_ps_net_or_captured_net = m_axis_data_tvalid_ps_net || m_axis_data_tvalid_ps_net_captured;
synth_reg_w_init # (
        .width (1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1))
m_axis_data_tvalid_ps_net_synchronizer_1 (
        .i(m_axis_data_tvalid_ps_net_or_captured_net),
        .ce(ce_80),
        .clr(1'b0),
        .clk(clk_80), 
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
        .clk(clk_80), 
        .o(m_axis_data_tvalid_ps_net_captured)
    );

  configurablereceiver_fir_compiler_v7_2_i0 configurablereceiver_fir_compiler_v7_2_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid_ps_net),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_40)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfir_compiler_2cae4a1e44e7154a7961b11acb3c7a5d (ce,ce_160,ce_80,ce_logic_80,clk,clk_160,clk_80,clk_logic_80,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready,src_ce,src_clk);

input ce;
input ce_160;
input ce_80;
input ce_logic_80;
input clk;
input clk_160;
input clk_80;
input clk_logic_80;
output[21:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[21:0] s_axis_data_tdata_real;
output s_axis_data_tready;
input src_ce;
input src_clk;
wire[23:0] m_axis_data_tdata_net;
wire[21:0] m_axis_data_tdata_real_ps_net;
wire m_axis_data_tvalid_ps_net;
wire m_axis_data_tvalid_ps_net_captured;
wire m_axis_data_tvalid_ps_net_or_captured_net;
wire[23:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real_ps_net = m_axis_data_tdata_net[21 : 0];
  assign s_axis_data_tdata_net[23 : 22] = 2'b0;
  assign s_axis_data_tdata_net[21 : 0] = s_axis_data_tdata_real;
  synth_reg_w_init # (.width(22),
                  .init_index(0),
                  .init_value('b0),
                  .latency(1))
m_axis_data_tdata_real_ps_net_synchronizer (.i(m_axis_data_tdata_real_ps_net),
             .ce(ce_160),
             .clr(1'b0),
             .clk(clk_160),
             .o(m_axis_data_tdata_real));

  assign m_axis_data_tvalid_ps_net_or_captured_net = m_axis_data_tvalid_ps_net || m_axis_data_tvalid_ps_net_captured;
synth_reg_w_init # (
        .width (1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1))
m_axis_data_tvalid_ps_net_synchronizer_1 (
        .i(m_axis_data_tvalid_ps_net_or_captured_net),
        .ce(ce_160),
        .clr(1'b0),
        .clk(clk_160), 
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
        .clk(clk_160), 
        .o(m_axis_data_tvalid_ps_net_captured)
    );

  configurablereceiver_fir_compiler_v7_2_i1 configurablereceiver_fir_compiler_v7_2_i1_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid_ps_net),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_80)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfir_compiler_e9603a42db56575569569903f448b707 (ce,ce_160,ce_logic_160,clk,clk_160,clk_logic_160,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready,src_ce,src_clk);

input ce;
input ce_160;
input ce_logic_160;
input clk;
input clk_160;
input clk_logic_160;
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
             .ce(ce_160),
             .clr(1'b0),
             .clk(clk_160),
             .o(m_axis_data_tdata_real));

  assign m_axis_data_tvalid_ps_net_or_captured_net = m_axis_data_tvalid_ps_net || m_axis_data_tvalid_ps_net_captured;
synth_reg_w_init # (
        .width (1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1))
m_axis_data_tvalid_ps_net_synchronizer_1 (
        .i(m_axis_data_tvalid_ps_net_or_captured_net),
        .ce(ce_160),
        .clr(1'b0),
        .clk(clk_160), 
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
        .clk(clk_160), 
        .o(m_axis_data_tvalid_ps_net_captured)
    );

  configurablereceiver_fir_compiler_v7_2_i2 configurablereceiver_fir_compiler_v7_2_i2_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid_ps_net),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_160)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfir_compiler_2fe82ac61a9213af9441e9e02b8aadbc (ce,ce_logic_1,clk,clk_logic_1,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready,src_ce,src_clk);

input ce;
input ce_logic_1;
input clk;
input clk_logic_1;
output[21:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[21:0] s_axis_data_tdata_real;
output s_axis_data_tready;
input src_ce;
input src_clk;
wire[23:0] m_axis_data_tdata_net;
wire[23:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real = m_axis_data_tdata_net[21 : 0];
  assign s_axis_data_tdata_net[23 : 22] = 2'b0;
  assign s_axis_data_tdata_net[21 : 0] = s_axis_data_tdata_real;
  configurablereceiver_fir_compiler_v7_2_i3 configurablereceiver_fir_compiler_v7_2_i3_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_1)
    );

 endmodule



module configurablereceiver_xlmult (a, b, ce, clr, clk, core_ce, core_clr,core_clk, rst, en,p);
     parameter core_name0 = "";
     parameter a_width = 4;
     parameter a_bin_pt = 2;
     parameter a_arith = `xlSigned;
     parameter b_width = 4;
     parameter b_bin_pt = 1;
     parameter b_arith = `xlSigned;
     parameter p_width = 8;
     parameter p_bin_pt = 2;
     parameter p_arith = `xlSigned;
     parameter rst_width = 1;
     parameter rst_bin_pt = 0;
     parameter rst_arith = `xlUnsigned;
     parameter en_width = 1;
     parameter en_bin_pt = 0;
     parameter en_arith = `xlUnsigned;
     parameter quantization = `xlTruncate;
     parameter overflow = `xlWrap;
     parameter extra_registers = 0;
     parameter c_a_width = 7;
     parameter c_b_width = 7;
     parameter c_type = 0;
     parameter c_a_type = 0;
     parameter c_b_type = 0;
     parameter c_baat = 4;
     parameter oversample = 1;
     parameter multsign = `xlSigned;
     parameter c_output_width = 16;
     input [a_width - 1 : 0] a;
     input [b_width - 1 : 0] b;
     input ce, clr, clk;
     input core_ce, core_clr, core_clk;
     input en, rst;
     output [p_width - 1 : 0] p;
     wire [c_a_width - 1 : 0]    tmp_a, conv_a;
     wire [c_b_width - 1 : 0]    tmp_b, conv_b;
    wire [c_output_width - 1 : 0] tmp_p;
    wire [p_width - 1 : 0] conv_p;
    wire internal_ce, internal_clr, internal_core_ce;
    wire rfd, rdy, nd;
    
 
    assign internal_ce = ce & en;
    assign internal_core_ce = core_ce & en;
    assign internal_clr = (clr | rst) & en;
    assign nd = ce & en;
 
    zero_ext # (a_width, c_a_width) zero_ext_a (.inp(a), .res(tmp_a));
    zero_ext # (b_width, c_b_width) zero_ext_b (.inp(b), .res(tmp_b));
 
    //Output Process
    convert_type # (c_output_width, a_bin_pt+b_bin_pt, multsign,
 		   p_width, p_bin_pt, p_arith, quantization, overflow)
      conv_udp (.inp(tmp_p), .res(conv_p));
    
 generate
 


if (core_name0 == "configurablereceiver_mult_gen_v12_0_i0") 
     begin:comp0
configurablereceiver_mult_gen_v12_0_i0 core_instance0 ( 
        .A(tmp_a),
        .B(tmp_b),
        .CLK(clk),
        .CE(internal_ce),
        .SCLR(internal_clr),
        .P(tmp_p) 
       ); 
     end 

if (extra_registers > 0)
 begin:latency_gt_0
 synth_reg # (p_width, extra_registers) 
 reg1 (
 .i(conv_p), 
 .ce(internal_ce),
 .clr(internal_clr),
 .clk(clk),
 .o(p));
 end
 
 if (extra_registers == 0)
 begin:latency_eq_0
 assign p = conv_p;
 end
 endgenerate
 
 endmodule

