// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Dec  3 12:07:54 2023
// Host        : dantop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/klein/Documents/Reconfig/ip_repo/dram_test_1.0/src/dma_fifo_student/dma_fifo_student_sim_netlist.v
// Design      : dma_fifo_student
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dma_fifo_student,fifo_generator_v13_2_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_8,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dma_fifo_student
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [15:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;
  output wr_rst_busy;
  output rd_rst_busy;

  wire [31:0]din;
  wire [15:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst_busy;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst_busy;
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
  wire [5:0]NLW_U0_data_count_UNCONNECTED;
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
  wire [6:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [5:0]NLW_U0_wr_data_count_UNCONNECTED;

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
  (* C_DATA_COUNT_WIDTH = "6" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "16" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
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
  (* C_HAS_RST = "1" *) 
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
  (* C_PRELOAD_LATENCY = "0" *) 
  (* C_PRELOAD_REGS = "1" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "4" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "5" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "32" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "31" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "7" *) 
  (* C_RD_DEPTH = "128" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "7" *) 
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
  (* C_USE_DOUT_RST = "1" *) 
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
  (* C_WR_DATA_COUNT_WIDTH = "6" *) 
  (* C_WR_DEPTH = "64" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "6" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  dma_fifo_student_fifo_generator_v13_2_8 U0
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
        .data_count(NLW_U0_data_count_UNCONNECTED[5:0]),
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[6:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(rd_rst_busy),
        .rst(rst),
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
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[5:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(wr_rst_busy));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "6" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dma_fifo_student_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [5:0]src_in_bin;
  input dest_clk;
  output [5:0]dest_out_bin;

  wire [5:0]async_path;
  wire [4:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [5:0]\dest_graysync_ff[1] ;
  wire [5:0]dest_out_bin;
  wire [4:0]gray_enc;
  wire src_clk;
  wire [5:0]src_in_bin;

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
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(\dest_graysync_ff[1] [4]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .I5(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [4]),
        .I4(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
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
        .D(\dest_graysync_ff[1] [5]),
        .Q(dest_out_bin[5]),
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
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
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
        .D(src_in_bin[5]),
        .Q(async_path[5]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "7" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module dma_fifo_student_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [6:0]src_in_bin;
  input dest_clk;
  output [6:0]dest_out_bin;

  wire [6:0]async_path;
  wire [5:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [6:0]\dest_graysync_ff[1] ;
  wire [6:0]dest_out_bin;
  wire [5:0]gray_enc;
  wire src_clk;
  wire [6:0]src_in_bin;

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
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
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
        .D(\dest_graysync_ff[1] [6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
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
        .D(src_in_bin[6]),
        .Q(async_path[6]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module dma_fifo_student_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "5" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module dma_fifo_student_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [4:0]syncstages_ff;

  assign dest_out = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module dma_fifo_student_xpm_cdc_sync_rst
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule

(* DEF_VAL = "1'b1" *) (* DEST_SYNC_FF = "5" *) (* INIT = "1" *) 
(* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_sync_rst" *) (* SIM_ASSERT_CHK = "0" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "SYNC_RST" *) 
module dma_fifo_student_xpm_cdc_sync_rst__2
   (src_rst,
    dest_clk,
    dest_rst);
  input src_rst;
  input dest_clk;
  output dest_rst;

  wire dest_clk;
  wire src_rst;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SYNC_RST" *) wire [4:0]syncstages_ff;

  assign dest_rst = syncstages_ff[4];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_rst),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SYNC_RST" *) 
  FDRE #(
    .INIT(1'b1)) 
    \syncstages_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[3]),
        .Q(syncstages_ff[4]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 114736)
`pragma protect data_block
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
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
