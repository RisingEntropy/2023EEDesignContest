// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Thu Aug  3 20:33:08 2023
// Host        : DESKTOP-3R96T2B running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dac_clock_fifo_sim_netlist.v
// Design      : dac_clock_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dac_clock_fifo,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [13:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [13:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [13:0]din;
  wire [13:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "10" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "14" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "14" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_FULL_FLAGS_RST_VAL = "0" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "0" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1021" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1020" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "10" *) 
  (* C_WR_DEPTH = "1024" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "10" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 90064)
`pragma protect data_block
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
cfS0Aw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
