// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2.1 (win64) Build 4081461 Thu Dec 14 12:24:51 MST 2023
// Date        : Sun Mar  3 21:22:02 2024
// Host        : LAPTOP-D2TRK901 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/verilog_practice/project_line_buffer_2/project_line_buffer_2.gen/sources_1/ip/line_fifo/line_fifo_stub.v
// Design      : line_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_9,Vivado 2023.2.1" *)
module line_fifo(clk, srst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="srst,din[3:0],wr_en,rd_en,dout[3:0],full,empty" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input srst;
  input [3:0]din;
  input wr_en;
  input rd_en;
  output [3:0]dout;
  output full;
  output empty;
endmodule
