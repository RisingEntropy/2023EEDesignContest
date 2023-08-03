`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block ConfigurableReceiver_struct
module configurablereceiver_struct (
  input [16-1:0] adc_in,
  input [24-1:0] dds_config_data,
  input [1-1:0] dds_tvalid,
  input clk_1,
  input ce_1,
  input clk_40,
  input ce_40,
  input clk_80,
  input ce_80,
  input clk_160,
  input ce_160,
  output [16-1:0] am_out,
  output [1-1:0] data_ready,
  output [16-1:0] fm_out
);
  wire [16-1:0] adc_in_net;
  wire clk_40_net;
  wire ce_80_net;
  wire [16-1:0] cordic_6_0_m_axis_dout_tdata_real_net;
  wire [1-1:0] fir_compiler_7_5_s_axis_data_tready_net;
  wire [1-1:0] dds_tvalid_net;
  wire ce_net;
  wire ce_40_net;
  wire clk_80_net;
  wire clk_net;
  wire [16-1:0] addsub1_s_net;
  wire ce_net_x0;
  wire [24-1:0] dds_config_data_net;
  wire clk_net_x0;
  wire [16-1:0] addsub_s_net;
  wire fir_compiler_7_5_m_axis_data_tvalid_net;
  wire cic_compiler_4_1_s_axis_data_tready_net;
  wire [22-1:0] cic_compiler_4_0_m_axis_data_tdata_real_net;
  wire cic_compiler_4_1_m_axis_data_tvalid_net;
  wire cordic_6_0_m_axis_dout_tvalid_net;
  wire [16-1:0] delay_q_net;
  wire [16-1:0] mux_y_net;
  wire [16-1:0] delay1_q_net;
  wire cic_compiler_4_0_s_axis_data_tready_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [22-1:0] cic_compiler_4_1_m_axis_data_tdata_real_net;
  wire cic_compiler_4_0_m_axis_data_tvalid_net;
  wire [22-1:0] fir_compiler_7_7_m_axis_data_tdata_real_net;
  wire [2-1:0] concat_y_net;
  wire [22-1:0] fir_compiler_7_8_m_axis_data_tdata_real_net;
  wire [1-1:0] relational_op_net;
  wire [16-1:0] cordic_6_0_m_axis_dout_tdata_phase_net;
  wire [16-1:0] dds_compiler_6_0_m_axis_data_tdata_sine_net;
  wire [16-1:0] constant2_op_net;
  wire [16-1:0] constant3_op_net;
  wire fir_compiler_7_1_s_axis_data_tready_net;
  wire [16-1:0] constant_op_net;
  wire [16-1:0] dds_compiler_6_0_m_axis_data_tdata_cosine_net;
  wire [24-1:0] reinterpret2_output_port_net;
  wire dds_compiler_6_0_m_axis_data_tvalid_net;
  wire [1-1:0] relational1_op_net;
  wire [16-1:0] constant1_op_net;
  wire [16-1:0] constant4_op_net;
  wire fir_compiler_7_4_s_axis_data_tready_net;
  wire fir_compiler_7_1_m_axis_data_tvalid_net;
  wire fir_compiler_7_3_m_axis_data_tvalid_net;
  wire fir_compiler_7_2_m_axis_data_tvalid_net;
  wire [22-1:0] fir_compiler_7_2_m_axis_data_tdata_real_net;
  wire [22-1:0] fir_compiler_7_1_m_axis_data_tdata_real_net;
  wire fir_compiler_7_3_s_axis_data_tready_net;
  wire fir_compiler_7_4_m_axis_data_tvalid_net;
  wire [22-1:0] fir_compiler_7_4_m_axis_data_tdata_real_net;
  wire [22-1:0] shift1_op_net;
  wire [22-1:0] fir_compiler_7_3_m_axis_data_tdata_real_net;
  wire fir_compiler_7_2_s_axis_data_tready_net;
  wire [22-1:0] shift_op_net;
  wire [22-1:0] mult1_p_net;
  wire fir_compiler_7_8_m_axis_data_tvalid_net;
  wire fir_compiler_7_6_m_axis_data_tvalid_net;
  wire fir_compiler_7_7_m_axis_data_tvalid_net;
  wire fir_compiler_7_7_s_axis_data_tready_net;
  wire [16-1:0] fir_compiler_7_6_m_axis_data_tdata_real_net;
  wire fir_compiler_7_6_s_axis_data_tready_net;
  wire [22-1:0] shift3_op_net;
  wire fir_compiler_7_8_s_axis_data_tready_net;
  wire [16-1:0] fir_compiler_7_5_m_axis_data_tdata_real_net;
  wire [22-1:0] mult_p_net;
  wire [22-1:0] shift2_op_net;
  wire [16-1:0] shift5_op_net;
  wire [16-1:0] shift4_op_net;
  assign adc_in_net = adc_in;
  assign am_out = cordic_6_0_m_axis_dout_tdata_real_net;
  assign data_ready = fir_compiler_7_5_s_axis_data_tready_net;
  assign dds_config_data_net = dds_config_data;
  assign dds_tvalid_net = dds_tvalid;
  assign fm_out = addsub1_s_net;
  assign clk_net_x0 = clk_1;
  assign ce_net = ce_1;
  assign clk_40_net = clk_40;
  assign ce_40_net = ce_40;
  assign clk_80_net = clk_80;
  assign ce_80_net = ce_80;
  assign clk_net = clk_160;
  assign ce_net_x0 = ce_160;
  configurablereceiver_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(17),
    .core_name0("configurablereceiver_c_addsub_v12_0_i0"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(16)
  )
  addsub (
    .clr(1'b0),
    .en(1'b1),
    .a(cordic_6_0_m_axis_dout_tdata_phase_net),
    .b(delay_q_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .s(addsub_s_net)
  );
  configurablereceiver_xladdsub #(
    .a_arith(`xlSigned),
    .a_bin_pt(13),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(13),
    .b_width(16),
    .c_has_c_out(0),
    .c_latency(1),
    .c_output_width(17),
    .core_name0("configurablereceiver_c_addsub_v12_0_i1"),
    .extra_registers(0),
    .full_s_arith(2),
    .full_s_width(17),
    .latency(1),
    .overflow(1),
    .quantization(1),
    .s_arith(`xlSigned),
    .s_bin_pt(13),
    .s_width(16)
  )
  addsub1 (
    .clr(1'b0),
    .en(1'b1),
    .a(mux_y_net),
    .b(delay1_q_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .s(addsub1_s_net)
  );
  xlcic_compiler_e73e18443806dcef631c8903d930ad9c cic_compiler_4_0 (
    .s_axis_data_tdata_real(fir_compiler_7_7_m_axis_data_tdata_real_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_logic_1(clk_net_x0),
    .ce_logic_1(ce_net),
    .s_axis_data_tready(cic_compiler_4_0_s_axis_data_tready_net),
    .m_axis_data_tvalid(cic_compiler_4_0_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(cic_compiler_4_0_m_axis_data_tdata_real_net)
  );
  xlcic_compiler_e73e18443806dcef631c8903d930ad9c cic_compiler_4_1 (
    .s_axis_data_tdata_real(fir_compiler_7_8_m_axis_data_tdata_real_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_logic_1(clk_net_x0),
    .ce_logic_1(ce_net),
    .s_axis_data_tready(cic_compiler_4_1_s_axis_data_tready_net),
    .m_axis_data_tvalid(cic_compiler_4_1_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(cic_compiler_4_1_m_axis_data_tdata_real_net)
  );
  xlcordic_83fa67396ed082330d0463c6be56e9ca cordic_6_0 (
    .s_axis_cartesian_tvalid(fir_compiler_7_5_m_axis_data_tvalid_net),
    .s_axis_cartesian_tdata_imag(reinterpret_output_port_net),
    .s_axis_cartesian_tdata_real(reinterpret1_output_port_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .m_axis_dout_tvalid(cordic_6_0_m_axis_dout_tvalid_net),
    .m_axis_dout_tdata_phase(cordic_6_0_m_axis_dout_tdata_phase_net),
    .m_axis_dout_tdata_real(cordic_6_0_m_axis_dout_tdata_real_net)
  );
  sysgen_concat_81c0ab3d57 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(relational_op_net),
    .in1(relational1_op_net),
    .y(concat_y_net)
  );
  sysgen_constant_c7a5a13a15 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_00c9d0fb59 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_constant_862b67d196 constant2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant2_op_net)
  );
  sysgen_constant_58b6cfa76f constant3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant3_op_net)
  );
  sysgen_constant_3b0c132fd0 constant4 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant4_op_net)
  );
  xldds_compiler_c21522467d2c52044e742341270d1e2b dds_compiler_6_0 (
    .s_axis_config_tvalid(dds_tvalid_net),
    .s_axis_config_tdata_pinc(reinterpret2_output_port_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .m_axis_data_tvalid(dds_compiler_6_0_m_axis_data_tvalid_net),
    .m_axis_data_tdata_sine(dds_compiler_6_0_m_axis_data_tdata_sine_net),
    .m_axis_data_tdata_cosine(dds_compiler_6_0_m_axis_data_tdata_cosine_net)
  );
  configurablereceiver_xldelay #(
    .latency(1),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay (
    .en(1'b1),
    .rst(1'b0),
    .d(cordic_6_0_m_axis_dout_tdata_phase_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .q(delay_q_net)
  );
  configurablereceiver_xldelay #(
    .latency(2),
    .reg_retiming(0),
    .reset(0),
    .width(16)
  )
  delay1 (
    .en(1'b1),
    .rst(1'b0),
    .d(addsub_s_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .q(delay1_q_net)
  );
  xlfir_compiler_1ce0cc7063059ff759972b735a988c77 fir_compiler_7_1 (
    .s_axis_data_tdata_real(cic_compiler_4_1_m_axis_data_tdata_real_net),
    .src_clk(clk_40_net),
    .src_ce(ce_40_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_80(clk_80_net),
    .ce_80(ce_80_net),
    .clk_logic_40(clk_40_net),
    .ce_logic_40(ce_40_net),
    .s_axis_data_tready(fir_compiler_7_1_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_1_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_1_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_1ce0cc7063059ff759972b735a988c77 fir_compiler_7_2 (
    .s_axis_data_tdata_real(cic_compiler_4_0_m_axis_data_tdata_real_net),
    .src_clk(clk_40_net),
    .src_ce(ce_40_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_80(clk_80_net),
    .ce_80(ce_80_net),
    .clk_logic_40(clk_40_net),
    .ce_logic_40(ce_40_net),
    .s_axis_data_tready(fir_compiler_7_2_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_2_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_2_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_2cae4a1e44e7154a7961b11acb3c7a5d fir_compiler_7_3 (
    .s_axis_data_tdata_real(shift_op_net),
    .src_clk(clk_80_net),
    .src_ce(ce_80_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_80(clk_80_net),
    .ce_80(ce_80_net),
    .clk_160(clk_net),
    .ce_160(ce_net_x0),
    .clk_logic_80(clk_80_net),
    .ce_logic_80(ce_80_net),
    .s_axis_data_tready(fir_compiler_7_3_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_3_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_3_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_2cae4a1e44e7154a7961b11acb3c7a5d fir_compiler_7_4 (
    .s_axis_data_tdata_real(shift1_op_net),
    .src_clk(clk_80_net),
    .src_ce(ce_80_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_80(clk_80_net),
    .ce_80(ce_80_net),
    .clk_160(clk_net),
    .ce_160(ce_net_x0),
    .clk_logic_80(clk_80_net),
    .ce_logic_80(ce_80_net),
    .s_axis_data_tready(fir_compiler_7_4_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_4_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_4_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_e9603a42db56575569569903f448b707 fir_compiler_7_5 (
    .s_axis_data_tdata_real(shift2_op_net),
    .src_clk(clk_net),
    .src_ce(ce_net_x0),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_160(clk_net),
    .ce_160(ce_net_x0),
    .clk_logic_160(clk_net),
    .ce_logic_160(ce_net_x0),
    .s_axis_data_tready(fir_compiler_7_5_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_5_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_5_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_e9603a42db56575569569903f448b707 fir_compiler_7_6 (
    .s_axis_data_tdata_real(shift3_op_net),
    .src_clk(clk_net),
    .src_ce(ce_net_x0),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_160(clk_net),
    .ce_160(ce_net_x0),
    .clk_logic_160(clk_net),
    .ce_logic_160(ce_net_x0),
    .s_axis_data_tready(fir_compiler_7_6_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_6_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_6_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_2fe82ac61a9213af9441e9e02b8aadbc fir_compiler_7_7 (
    .s_axis_data_tdata_real(mult_p_net),
    .src_clk(clk_net_x0),
    .src_ce(ce_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_logic_1(clk_net_x0),
    .ce_logic_1(ce_net),
    .s_axis_data_tready(fir_compiler_7_7_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_7_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_7_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_2fe82ac61a9213af9441e9e02b8aadbc fir_compiler_7_8 (
    .s_axis_data_tdata_real(mult1_p_net),
    .src_clk(clk_net_x0),
    .src_ce(ce_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .clk_logic_1(clk_net_x0),
    .ce_logic_1(ce_net),
    .s_axis_data_tready(fir_compiler_7_8_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_8_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_8_m_axis_data_tdata_real_net)
  );
  configurablereceiver_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("configurablereceiver_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(0),
    .p_width(22),
    .quantization(1)
  )
  mult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc_in_net),
    .b(dds_compiler_6_0_m_axis_data_tdata_sine_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .core_clk(clk_net_x0),
    .core_ce(ce_net),
    .p(mult_p_net)
  );
  configurablereceiver_xlmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(0),
    .a_width(16),
    .b_arith(`xlSigned),
    .b_bin_pt(15),
    .b_width(16),
    .c_a_type(0),
    .c_a_width(16),
    .c_b_type(0),
    .c_b_width(16),
    .c_baat(16),
    .c_output_width(32),
    .c_type(0),
    .core_name0("configurablereceiver_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(1),
    .p_arith(`xlSigned),
    .p_bin_pt(0),
    .p_width(22),
    .quantization(1)
  )
  mult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(adc_in_net),
    .b(dds_compiler_6_0_m_axis_data_tdata_cosine_net),
    .clk(clk_net_x0),
    .ce(ce_net),
    .core_clk(clk_net_x0),
    .core_ce(ce_net),
    .p(mult1_p_net)
  );
  sysgen_mux_bbb10d681f mux (
    .clr(1'b0),
    .sel(concat_y_net),
    .d0(constant2_op_net),
    .d1(constant3_op_net),
    .d2(constant4_op_net),
    .d3(constant2_op_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .y(mux_y_net)
  );
  sysgen_reinterpret_0c17eb7a07 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(shift4_op_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_0c17eb7a07 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(shift5_op_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_db558597d1 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(dds_config_data_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_relational_15ac3c59ec relational (
    .clr(1'b0),
    .a(addsub_s_net),
    .b(constant_op_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .op(relational_op_net)
  );
  sysgen_relational_1862dcc8b0 relational1 (
    .clr(1'b0),
    .a(addsub_s_net),
    .b(constant1_op_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .op(relational1_op_net)
  );
  sysgen_shift_edc95a5834 shift (
    .clr(1'b0),
    .ip(fir_compiler_7_2_m_axis_data_tdata_real_net),
    .clk(clk_80_net),
    .ce(ce_80_net),
    .op(shift_op_net)
  );
  sysgen_shift_edc95a5834 shift1 (
    .clr(1'b0),
    .ip(fir_compiler_7_1_m_axis_data_tdata_real_net),
    .clk(clk_80_net),
    .ce(ce_80_net),
    .op(shift1_op_net)
  );
  sysgen_shift_edc95a5834 shift2 (
    .clr(1'b0),
    .ip(fir_compiler_7_3_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .op(shift2_op_net)
  );
  sysgen_shift_edc95a5834 shift3 (
    .clr(1'b0),
    .ip(fir_compiler_7_4_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .op(shift3_op_net)
  );
  sysgen_shift_c8c012aecc shift4 (
    .clr(1'b0),
    .ip(fir_compiler_7_5_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .op(shift4_op_net)
  );
  sysgen_shift_c8c012aecc shift5 (
    .clr(1'b0),
    .ip(fir_compiler_7_6_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net_x0),
    .op(shift5_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module configurablereceiver_default_clock_driver (
  input configurablereceiver_sysclk,
  input configurablereceiver_sysce,
  input configurablereceiver_sysclr,
  output configurablereceiver_clk1,
  output configurablereceiver_ce1,
  output configurablereceiver_clk40,
  output configurablereceiver_ce40,
  output configurablereceiver_clk80,
  output configurablereceiver_ce80,
  output configurablereceiver_clk160,
  output configurablereceiver_ce160
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x2 (
    .sysclk(configurablereceiver_sysclk),
    .sysce(configurablereceiver_sysce),
    .sysclr(configurablereceiver_sysclr),
    .clk(configurablereceiver_clk1),
    .ce(configurablereceiver_ce1)
  );
  xlclockdriver #(
    .period(40),
    .log_2_period(6)
  )
  clockdriver_x1 (
    .sysclk(configurablereceiver_sysclk),
    .sysce(configurablereceiver_sysce),
    .sysclr(configurablereceiver_sysclr),
    .clk(configurablereceiver_clk40),
    .ce(configurablereceiver_ce40)
  );
  xlclockdriver #(
    .period(80),
    .log_2_period(7)
  )
  clockdriver_x0 (
    .sysclk(configurablereceiver_sysclk),
    .sysce(configurablereceiver_sysce),
    .sysclr(configurablereceiver_sysclr),
    .clk(configurablereceiver_clk80),
    .ce(configurablereceiver_ce80)
  );
  xlclockdriver #(
    .period(160),
    .log_2_period(8)
  )
  clockdriver (
    .sysclk(configurablereceiver_sysclk),
    .sysce(configurablereceiver_sysce),
    .sysclr(configurablereceiver_sysclr),
    .clk(configurablereceiver_clk160),
    .ce(configurablereceiver_ce160)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "configurablereceiver,sysgen_core_2022_1,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k70t,speed=-2,package=fbg484,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=25,system_simulink_period=2.5e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.001,addsub=2,cic_compiler_v4_0=2,concat=1,constant=5,cordic_v6_0=1,dds_compiler_v6_0=1,delay=2,fir_compiler_v7_2=8,mult=2,mux=1,reinterpret=3,relational=2,shift=6,}" *)
module configurablereceiver (
  input [16-1:0] adc_in,
  input [24-1:0] dds_config_data,
  input [1-1:0] dds_tvalid,
  input clk,
  output [16-1:0] am_out,
  output [1-1:0] data_ready,
  output [16-1:0] fm_out
);
  wire ce_160_net;
  wire ce_1_net;
  wire clk_40_net;
  wire clk_1_net;
  wire clk_80_net;
  wire ce_80_net;
  wire ce_40_net;
  wire clk_160_net;
  configurablereceiver_default_clock_driver configurablereceiver_default_clock_driver (
    .configurablereceiver_sysclk(clk),
    .configurablereceiver_sysce(1'b1),
    .configurablereceiver_sysclr(1'b0),
    .configurablereceiver_clk1(clk_1_net),
    .configurablereceiver_ce1(ce_1_net),
    .configurablereceiver_clk40(clk_40_net),
    .configurablereceiver_ce40(ce_40_net),
    .configurablereceiver_clk80(clk_80_net),
    .configurablereceiver_ce80(ce_80_net),
    .configurablereceiver_clk160(clk_160_net),
    .configurablereceiver_ce160(ce_160_net)
  );
  configurablereceiver_struct configurablereceiver_struct (
    .adc_in(adc_in),
    .dds_config_data(dds_config_data),
    .dds_tvalid(dds_tvalid),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_80(clk_80_net),
    .ce_80(ce_80_net),
    .clk_160(clk_160_net),
    .ce_160(ce_160_net),
    .am_out(am_out),
    .data_ready(data_ready),
    .fm_out(fm_out)
  );
endmodule
