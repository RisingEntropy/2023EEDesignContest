`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block Decimator_struct
module decimator_struct (
  input [16-1:0] adc_in,
  input clk_1,
  input ce_1,
  input clk_40,
  input ce_40,
  input clk_40000000,
  input ce_40000000,
  output [16-1:0] decimator_out,
  output [1-1:0] decimator_tready
);
  wire cic_compiler_4_0_s_axis_data_tready_net;
  wire clk_40_net;
  wire [1-1:0] fir_compiler_7_2_s_axis_data_tready_net;
  wire clk_40000000_net;
  wire ce_net;
  wire [22-1:0] cic_compiler_4_0_m_axis_data_tdata_real_net;
  wire cic_compiler_4_0_m_axis_data_tvalid_net;
  wire [16-1:0] fir_compiler_7_2_m_axis_data_tdata_real_net;
  wire ce_40000000_net;
  wire fir_compiler_7_2_m_axis_data_tvalid_net;
  wire clk_net;
  wire ce_40_net;
  wire [16-1:0] adc_in_net;
  assign adc_in_net = adc_in;
  assign decimator_out = fir_compiler_7_2_m_axis_data_tdata_real_net;
  assign decimator_tready = fir_compiler_7_2_s_axis_data_tready_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign clk_40_net = clk_40;
  assign ce_40_net = ce_40;
  assign clk_40000000_net = clk_40000000;
  assign ce_40000000_net = ce_40000000;
  xlcic_compiler_b7ad902f74efafc5a795a41c347f8e1b cic_compiler_4_0 (
    .s_axis_data_tdata_real(adc_in_net),
    .clk(clk_net),
    .ce(ce_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_40000000(clk_40000000_net),
    .ce_40000000(ce_40000000_net),
    .clk_logic_40000000(clk_40000000_net),
    .ce_logic_40000000(ce_40000000_net),
    .s_axis_data_tready(cic_compiler_4_0_s_axis_data_tready_net),
    .m_axis_data_tvalid(cic_compiler_4_0_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(cic_compiler_4_0_m_axis_data_tdata_real_net)
  );
  xlfir_compiler_625ee47a4eb64b1eff1ebafae2b1b2ba fir_compiler_7_2 (
    .s_axis_data_tdata_real(cic_compiler_4_0_m_axis_data_tdata_real_net),
    .src_clk(clk_40_net),
    .src_ce(ce_40_net),
    .clk(clk_net),
    .ce(ce_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_logic_40(clk_40_net),
    .ce_logic_40(ce_40_net),
    .s_axis_data_tready(fir_compiler_7_2_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_2_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(fir_compiler_7_2_m_axis_data_tdata_real_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module decimator_default_clock_driver (
  input decimator_sysclk,
  input decimator_sysce,
  input decimator_sysclr,
  output decimator_clk1,
  output decimator_ce1,
  output decimator_clk40,
  output decimator_ce40,
  output decimator_clk40000000,
  output decimator_ce40000000
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x1 (
    .sysclk(decimator_sysclk),
    .sysce(decimator_sysce),
    .sysclr(decimator_sysclr),
    .clk(decimator_clk1),
    .ce(decimator_ce1)
  );
  xlclockdriver #(
    .period(40),
    .log_2_period(6)
  )
  clockdriver_x0 (
    .sysclk(decimator_sysclk),
    .sysce(decimator_sysce),
    .sysclr(decimator_sysclr),
    .clk(decimator_clk40),
    .ce(decimator_ce40)
  );
  xlclockdriver #(
    .period(40000000),
    .log_2_period(26)
  )
  clockdriver (
    .sysclk(decimator_sysclk),
    .sysce(decimator_sysce),
    .sysclr(decimator_sysclr),
    .clk(decimator_clk40000000),
    .ce(decimator_ce40000000)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "decimator,sysgen_core_2022_1,{,compilation=IP Catalog,block_icon_display=Default,family=kintex7,part=xc7k70t,speed=-2,package=fbg484,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=25,system_simulink_period=2.5e-08,waveform_viewer=0,axilite_interface=0,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=10,cic_compiler_v4_0=1,fir_compiler_v7_2=1,}" *)
module decimator (
  input [16-1:0] adc_in,
  input clk,
  output [16-1:0] decimator_out,
  output [1-1:0] decimator_tready
);
  wire ce_1_net;
  wire clk_1_net;
  wire ce_40_net;
  wire clk_40_net;
  wire clk_40000000_net;
  wire ce_40000000_net;
  decimator_default_clock_driver decimator_default_clock_driver (
    .decimator_sysclk(clk),
    .decimator_sysce(1'b1),
    .decimator_sysclr(1'b0),
    .decimator_clk1(clk_1_net),
    .decimator_ce1(ce_1_net),
    .decimator_clk40(clk_40_net),
    .decimator_ce40(ce_40_net),
    .decimator_clk40000000(clk_40000000_net),
    .decimator_ce40000000(ce_40000000_net)
  );
  decimator_struct decimator_struct (
    .adc_in(adc_in),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .clk_40(clk_40_net),
    .ce_40(ce_40_net),
    .clk_40000000(clk_40000000_net),
    .ce_40000000(ce_40000000_net),
    .decimator_out(decimator_out),
    .decimator_tready(decimator_tready)
  );
endmodule
