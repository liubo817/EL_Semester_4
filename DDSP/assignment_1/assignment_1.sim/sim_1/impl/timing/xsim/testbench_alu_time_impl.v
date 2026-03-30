// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Tue Feb 24 13:50:17 2026
// Host        : DESKTOP-QU8QVCL running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/liubo/Documents/SDU/Semester
//               4/DDSP/assignment_1/assignment_1.sim/sim_1/impl/timing/xsim/testbench_alu_time_impl.v}
// Design      : assignment_1
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "b7d0279a" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module assignment_1
   (Sel,
    A,
    B,
    Cin,
    Cout,
    AluOut);
  input [1:0]Sel;
  input [7:0]A;
  input [7:0]B;
  input Cin;
  output Cout;
  output [7:0]AluOut;

  wire [7:0]A;
  wire [7:0]A_IBUF;
  wire [7:0]AluOut;
  wire [7:0]AluOut_OBUF;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire C_int_40;
  wire C_int_4012_out;
  wire Cin;
  wire Cin_IBUF;
  wire Cout;
  wire Cout_OBUF;
  wire [1:0]Sel;
  wire [1:0]Sel_IBUF;
  wire \c1/C_int_0__1 ;
  wire \c1/C_int_1__1 ;
  wire \c1/C_int_2__1 ;
  wire \c1/C_int_3__1 ;
  wire \c1/C_int_41__0 ;
  wire \c1/C_int_4__1 ;
  wire \c1/C_int_5__1 ;
  wire \c1/C_int_6__1 ;

initial begin
 $sdf_annotate("testbench_alu_time_impl.sdf",,,,"tool_control");
end
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  OBUF \AluOut_OBUF[0]_inst 
       (.I(AluOut_OBUF[0]),
        .O(AluOut[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[0]_inst_i_1 
       (.I0(Cin_IBUF),
        .I1(A_IBUF[0]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[0]),
        .O(AluOut_OBUF[0]));
  OBUF \AluOut_OBUF[1]_inst 
       (.I(AluOut_OBUF[1]),
        .O(AluOut[1]));
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[1]_inst_i_1 
       (.I0(\c1/C_int_0__1 ),
        .I1(A_IBUF[1]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[1]),
        .O(AluOut_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \AluOut_OBUF[1]_inst_i_2 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(Cin_IBUF),
        .O(\c1/C_int_0__1 ));
  OBUF \AluOut_OBUF[2]_inst 
       (.I(AluOut_OBUF[2]),
        .O(AluOut[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[2]_inst_i_1 
       (.I0(\c1/C_int_1__1 ),
        .I1(A_IBUF[2]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[2]),
        .O(AluOut_OBUF[2]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \AluOut_OBUF[2]_inst_i_2 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(Cin_IBUF),
        .O(\c1/C_int_1__1 ));
  OBUF \AluOut_OBUF[3]_inst 
       (.I(AluOut_OBUF[3]),
        .O(AluOut[3]));
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[3]_inst_i_1 
       (.I0(\c1/C_int_2__1 ),
        .I1(A_IBUF[3]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[3]),
        .O(AluOut_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \AluOut_OBUF[3]_inst_i_2 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(\c1/C_int_1__1 ),
        .O(\c1/C_int_2__1 ));
  OBUF \AluOut_OBUF[4]_inst 
       (.I(AluOut_OBUF[4]),
        .O(AluOut[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[4]_inst_i_1 
       (.I0(\c1/C_int_3__1 ),
        .I1(A_IBUF[4]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[4]),
        .O(AluOut_OBUF[4]));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    \AluOut_OBUF[4]_inst_i_2 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[2]),
        .I4(\c1/C_int_1__1 ),
        .O(\c1/C_int_3__1 ));
  OBUF \AluOut_OBUF[5]_inst 
       (.I(AluOut_OBUF[5]),
        .O(AluOut[5]));
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[5]_inst_i_1 
       (.I0(\c1/C_int_4__1 ),
        .I1(A_IBUF[5]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[5]),
        .O(AluOut_OBUF[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \AluOut_OBUF[5]_inst_i_2 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .I2(\c1/C_int_3__1 ),
        .O(\c1/C_int_4__1 ));
  OBUF \AluOut_OBUF[6]_inst 
       (.I(AluOut_OBUF[6]),
        .O(AluOut[6]));
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[6]_inst_i_1 
       (.I0(\c1/C_int_5__1 ),
        .I1(A_IBUF[6]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[6]),
        .O(AluOut_OBUF[6]));
  OBUF \AluOut_OBUF[7]_inst 
       (.I(AluOut_OBUF[7]),
        .O(AluOut[7]));
  LUT5 #(
    .INIT(32'h3FC93C06)) 
    \AluOut_OBUF[7]_inst_i_1 
       (.I0(\c1/C_int_6__1 ),
        .I1(A_IBUF[7]),
        .I2(Sel_IBUF[0]),
        .I3(Sel_IBUF[1]),
        .I4(B_IBUF[7]),
        .O(AluOut_OBUF[7]));
  LUT6 #(
    .INIT(64'hEEE8EEE8EEE8E888)) 
    \AluOut_OBUF[7]_inst_i_2 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[5]),
        .I4(C_int_4012_out),
        .I5(C_int_40),
        .O(\c1/C_int_6__1 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \AluOut_OBUF[7]_inst_i_3 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(C_int_4012_out));
  LUT6 #(
    .INIT(64'hFFE8E80000000000)) 
    \AluOut_OBUF[7]_inst_i_4 
       (.I0(\c1/C_int_1__1 ),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[2]),
        .I3(A_IBUF[3]),
        .I4(B_IBUF[3]),
        .I5(\c1/C_int_41__0 ),
        .O(C_int_40));
  LUT2 #(
    .INIT(4'h6)) 
    \AluOut_OBUF[7]_inst_i_5 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .O(\c1/C_int_41__0 ));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
  IBUF Cin_IBUF_inst
       (.I(Cin),
        .O(Cin_IBUF));
  OBUF Cout_OBUF_inst
       (.I(Cout_OBUF),
        .O(Cout));
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Cout_OBUF_inst_i_1
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .I2(B_IBUF[6]),
        .I3(A_IBUF[6]),
        .I4(\c1/C_int_5__1 ),
        .O(Cout_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEEE8E888)) 
    Cout_OBUF_inst_i_2
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .I2(B_IBUF[4]),
        .I3(A_IBUF[4]),
        .I4(\c1/C_int_3__1 ),
        .O(\c1/C_int_5__1 ));
  IBUF \Sel_IBUF[0]_inst 
       (.I(Sel[0]),
        .O(Sel_IBUF[0]));
  IBUF \Sel_IBUF[1]_inst 
       (.I(Sel[1]),
        .O(Sel_IBUF[1]));
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
