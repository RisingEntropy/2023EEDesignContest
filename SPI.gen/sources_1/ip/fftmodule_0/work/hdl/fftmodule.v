`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block FFTModule_struct
module fftmodule_struct (
  input [16-1:0] fft_data_in_im,
  input [16-1:0] fft_data_in_re,
  input [1-1:0] fft_data_start_frame,
  input clk_1,
  input ce_1,
  output [16-1:0] fft_out_phase,
  output [16-1:0] fft_out_real,
  output [1-1:0] fft_out_start_frame
);
  wire [1-1:0] fft_start_frame_out_net;
  wire [16-1:0] cordic_6_0_m_axis_dout_tdata_phase_net;
  wire [16-1:0] fft_data_in_im_net;
  wire ce_net;
  wire cordic_6_0_m_axis_dout_tvalid_net;
  wire constant_op_net;
  wire [29-1:0] reinterpret_output_port_net;
  wire [16-1:0] fft_data_in_re_net;
  wire [16-1:0] cordic_6_0_m_axis_dout_tdata_real_net;
  wire [29-1:0] fft_op_re_net;
  wire [29-1:0] fft_op_im_net;
  wire clk_net;
  wire [29-1:0] reinterpret1_output_port_net;
  wire [1-1:0] fft_data_start_frame_net;
  assign fft_data_in_im_net = fft_data_in_im;
  assign fft_data_in_re_net = fft_data_in_re;
  assign fft_data_start_frame_net = fft_data_start_frame;
  assign fft_out_phase = cordic_6_0_m_axis_dout_tdata_phase_net;
  assign fft_out_real = cordic_6_0_m_axis_dout_tdata_real_net;
  assign fft_out_start_frame = fft_start_frame_out_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  xlcordic_66bbec3ad9da73a64cef8f602c7f58ec cordic_6_0 (
    .s_axis_cartesian_tvalid(constant_op_net),
    .s_axis_cartesian_tdata_imag(reinterpret1_output_port_net),
    .s_axis_cartesian_tdata_real(reinterpret_output_port_net),
    .clk(clk_net),
    .ce(ce_net),
    .m_axis_dout_tvalid(cordic_6_0_m_axis_dout_tvalid_net),
    .m_axis_dout_tdata_phase(cordic_6_0_m_axis_dout_tdata_phase_net),
    .m_axis_dout_tdata_real(cordic_6_0_m_axis_dout_tdata_real_net)
  );
  sysgen_constant_895b23b305 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  xlfftmodule_xfft_v9_1_i0_c9b63e72838c51a432aa9d7cf53a86c5 fft (
    .in_re(fft_data_in_re_net),
    .in_im(fft_data_in_im_net),
    .start_frame_in(fft_data_start_frame_net),
    .clk(clk_net),
    .ce(ce_net),
    .op_re(fft_op_re_net),
    .op_im(fft_op_im_net),
    .start_frame_out(fft_start_frame_out_net)
  );
  sysgen_reinterpret_0f9defd942 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fft_op_re_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_0f9defd942 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(fft_op_im_net),
    .output_port(reinterpret1_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module fftmodule_default_clock_driver (
  input fftmodule_sysclk,
  input fftmodule_sysce,
  input fftmodule_sysclr,
  output fftmodule_clk1,
  output fftmodule_ce1
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver (
    .sysclk(fftmodule_sysclk),
    .sysce(fftmodule_sysce),
    .sysclr(fftmodule_sysclr),
    .clk(fftmodule_clk1),
    .ce(fftmodule_ce1)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "fftmodule,sysgen_core_2022_1,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k70t,speed=-2,package=fbg484,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=25,system_simulink_period=2.5e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.001,constant=1,cordic_v6_0=1,reinterpret=2,xfft_forward=1,}" *)
module fftmodule (
  input [16-1:0] fft_data_in_im,
  input [16-1:0] fft_data_in_re,
  input [1-1:0] fft_data_start_frame,
  input clk,
  output [16-1:0] fft_out_phase,
  output [16-1:0] fft_out_real,
  output [1-1:0] fft_out_start_frame
);
  wire ce_1_net;
  wire clk_1_net;
  fftmodule_default_clock_driver fftmodule_default_clock_driver (
    .fftmodule_sysclk(clk),
    .fftmodule_sysce(1'b1),
    .fftmodule_sysclr(1'b0),
    .fftmodule_clk1(clk_1_net),
    .fftmodule_ce1(ce_1_net)
  );
  fftmodule_struct fftmodule_struct (
    .fft_data_in_im(fft_data_in_im),
    .fft_data_in_re(fft_data_in_re),
    .fft_data_start_frame(fft_data_start_frame),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .fft_out_phase(fft_out_phase),
    .fft_out_real(fft_out_real),
    .fft_out_start_frame(fft_out_start_frame)
  );
endmodule
