// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Feb 24 15:40:03 2026
// Host        : Viktorio running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/vikip/Desktop/SDU/Projects/DDSP/timing/timing.sim/sim_1/impl/timing/xsim/test4_time_impl.v
// Design      : task4
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "de37c8a7" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module task4
   (A,
    B,
    Sum,
    Carry,
    clk);
  input A;
  input B;
  output Sum;
  output Carry;
  input clk;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire Carry;
  wire Carry_OBUF;
  wire Carry_i_1_n_0;
  wire Sum;
  wire Sum_OBUF;
  wire Sum_i_1_n_0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;

initial begin
 $sdf_annotate("test4_time_impl.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  OBUF Carry_OBUF_inst
       (.I(Carry_OBUF),
        .O(Carry));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    Carry_i_1
       (.I0(A_IBUF),
        .I1(B_IBUF),
        .O(Carry_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Carry_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Carry_i_1_n_0),
        .Q(Carry_OBUF),
        .R(1'b0));
  OBUF Sum_OBUF_inst
       (.I(Sum_OBUF),
        .O(Sum));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    Sum_i_1
       (.I0(B_IBUF),
        .I1(A_IBUF),
        .O(Sum_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    Sum_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Sum_i_1_n_0),
        .Q(Sum_OBUF),
        .R(1'b0));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
endmodule
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
