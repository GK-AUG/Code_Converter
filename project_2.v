// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Sep 13 16:23:32 2026
// Host        : LAPTOP-TRMK4AJ6 running 64-bit major release  (build 9200)
// Command     : write_verilog D:/vivado/project_2.v
// Design      : binary_gray_converter
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7z007sclg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* STRUCTURAL_NETLIST = "yes" *)
module binary_gray_converter
   (b,
    g);
  input [3:0]b;
  output [3:0]g;

  wire [3:0]b;
  wire [2:0]b_IBUF;
  wire [3:0]g;
  wire [3:0]g_OBUF;

  IBUF \b_IBUF[0]_inst 
       (.I(b[0]),
        .O(b_IBUF[0]));
  IBUF \b_IBUF[1]_inst 
       (.I(b[1]),
        .O(b_IBUF[1]));
  IBUF \b_IBUF[2]_inst 
       (.I(b[2]),
        .O(b_IBUF[2]));
  IBUF \b_IBUF[3]_inst 
       (.I(b[3]),
        .O(g_OBUF[3]));
  OBUF \g_OBUF[0]_inst 
       (.I(g_OBUF[0]),
        .O(g[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \g_OBUF[0]_inst_i_1 
       (.I0(b_IBUF[0]),
        .I1(b_IBUF[1]),
        .O(g_OBUF[0]));
  OBUF \g_OBUF[1]_inst 
       (.I(g_OBUF[1]),
        .O(g[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \g_OBUF[1]_inst_i_1 
       (.I0(b_IBUF[1]),
        .I1(b_IBUF[2]),
        .O(g_OBUF[1]));
  OBUF \g_OBUF[2]_inst 
       (.I(g_OBUF[2]),
        .O(g[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \g_OBUF[2]_inst_i_1 
       (.I0(b_IBUF[2]),
        .I1(g_OBUF[3]),
        .O(g_OBUF[2]));
  OBUF \g_OBUF[3]_inst 
       (.I(g_OBUF[3]),
        .O(g[3]));
endmodule
