module SYS_TOP (
	RST_N, 
	REF_CLK, 
	UART_CLK, 
	UART_RX_IN, 
	SI, 
	SE, 
	scan_clk, 
	scan_rst, 
	test_mode, 
	SO, 
	UART_TX_O, 
	parity_error, 
	framing_error, 
	test_si2, 
	test_so2, 
	test_si3, 
	test_so3, 
	test_si4);
   input RST_N;
   input REF_CLK;
   input UART_CLK;
   input UART_RX_IN;
   input SI;
   input SE;
   input scan_clk;
   input scan_rst;
   input test_mode;
   output SO;
   output UART_TX_O;
   output parity_error;
   output framing_error;
   input test_si2;
   output test_so2;
   input test_si3;
   output test_so3;
   input test_si4;

   // Internal wires
   wire REF_CLK__L2_N0;
   wire REF_CLK__L1_N0;
   wire UART_CLK__L2_N0;
   wire UART_CLK__L1_N0;
   wire scan_clk__L10_N0;
   wire scan_clk__L9_N0;
   wire scan_clk__L8_N0;
   wire scan_clk__L7_N1;
   wire scan_clk__L7_N0;
   wire scan_clk__L6_N1;
   wire scan_clk__L6_N0;
   wire scan_clk__L5_N1;
   wire scan_clk__L5_N0;
   wire scan_clk__L4_N1;
   wire scan_clk__L4_N0;
   wire scan_clk__L3_N1;
   wire scan_clk__L3_N0;
   wire scan_clk__L2_N2;
   wire scan_clk__L2_N1;
   wire scan_clk__L2_N0;
   wire scan_clk__L1_N0;
   wire Ref_muxed_clk__L7_N11;
   wire Ref_muxed_clk__L7_N10;
   wire Ref_muxed_clk__L7_N9;
   wire Ref_muxed_clk__L7_N8;
   wire Ref_muxed_clk__L7_N7;
   wire Ref_muxed_clk__L7_N6;
   wire Ref_muxed_clk__L7_N5;
   wire Ref_muxed_clk__L7_N4;
   wire Ref_muxed_clk__L7_N3;
   wire Ref_muxed_clk__L7_N2;
   wire Ref_muxed_clk__L7_N1;
   wire Ref_muxed_clk__L7_N0;
   wire Ref_muxed_clk__L6_N6;
   wire Ref_muxed_clk__L6_N5;
   wire Ref_muxed_clk__L6_N4;
   wire Ref_muxed_clk__L6_N3;
   wire Ref_muxed_clk__L6_N2;
   wire Ref_muxed_clk__L6_N1;
   wire Ref_muxed_clk__L6_N0;
   wire Ref_muxed_clk__L5_N1;
   wire Ref_muxed_clk__L5_N0;
   wire Ref_muxed_clk__L4_N0;
   wire Ref_muxed_clk__L3_N0;
   wire Ref_muxed_clk__L2_N1;
   wire Ref_muxed_clk__L2_N0;
   wire Ref_muxed_clk__L1_N0;
   wire ALU_CLK__L3_N0;
   wire ALU_CLK__L2_N0;
   wire ALU_CLK__L1_N0;
   wire UART_muxed_clk__L12_N1;
   wire UART_muxed_clk__L12_N0;
   wire UART_muxed_clk__L11_N0;
   wire UART_muxed_clk__L10_N0;
   wire UART_muxed_clk__L9_N0;
   wire UART_muxed_clk__L8_N0;
   wire UART_muxed_clk__L7_N1;
   wire UART_muxed_clk__L7_N0;
   wire UART_muxed_clk__L6_N1;
   wire UART_muxed_clk__L6_N0;
   wire UART_muxed_clk__L5_N0;
   wire UART_muxed_clk__L4_N0;
   wire UART_muxed_clk__L3_N0;
   wire UART_muxed_clk__L2_N0;
   wire UART_muxed_clk__L1_N0;
   wire UART_TX_CLK_M__L3_N0;
   wire UART_TX_CLK_M__L2_N0;
   wire UART_TX_CLK_M__L1_N0;
   wire UART_RX_CLK_M__L3_N0;
   wire UART_RX_CLK_M__L2_N0;
   wire UART_RX_CLK_M__L1_N0;
   wire FE_OFN7_SE;
   wire FE_OFN6_UART_SYNC_RST_M;
   wire FE_OFN4_REF_SYNC_RST_M;
   wire FE_OFN3_REF_SYNC_RST_M;
   wire FE_OFN0_REF_SYNC_RST_M;
   wire Ref_muxed_clk;
   wire UART_muxed_clk;
   wire UART_TX_CLK;
   wire UART_TX_CLK_M;
   wire UART_RX_CLK;
   wire UART_RX_CLK_M;
   wire MUXed_rst;
   wire REF_SYNC_RST;
   wire REF_SYNC_RST_M;
   wire UART_SYNC_RST;
   wire UART_SYNC_RST_M;
   wire UART_RX_VLD;
   wire SYNC_VLD;
   wire WR_INC;
   wire RD_INC;
   wire F_FULL;
   wire F_EMPITY;
   wire UART_TX_BUSY;
   wire Rd_D_VLD;
   wire ALU_OUT_VLD;
   wire WrEn;
   wire RdEn;
   wire ALU_EN;
   wire GATE_EN;
   wire ALU_CLK;
   wire n2;
   wire n8;
   wire n9;
   wire n10;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire [7:0] UART_RX_DATA;
   wire [7:0] SYNC_RX_DATA;
   wire [7:0] WR_DATA_FIFO;
   wire [7:0] RD_DATA_FIFO;
   wire [7:0] DIV_RATiO;
   wire [7:0] UART_CONF;
   wire [7:0] RX_div_Ratio;
   wire [7:0] Rd_DATA_RF;
   wire [15:0] ALU_OUT_DATA;
   wire [3:0] Address;
   wire [7:0] WR_D_RF;
   wire [3:0] ALU_FUN;
   wire [7:0] Op_A;
   wire [7:0] Op_B;
   wire SYNOPSYS_UNCONNECTED__0;
   wire SYNOPSYS_UNCONNECTED__1;
   wire SYNOPSYS_UNCONNECTED__2;
   wire SYNOPSYS_UNCONNECTED__3;

   CLKINVX40M REF_CLK__L2_I0 (.Y(REF_CLK__L2_N0), 
	.A(REF_CLK__L1_N0));
   CLKINVX40M REF_CLK__L1_I0 (.Y(REF_CLK__L1_N0), 
	.A(REF_CLK));
   CLKINVX40M UART_CLK__L2_I0 (.Y(UART_CLK__L2_N0), 
	.A(UART_CLK__L1_N0));
   CLKINVX40M UART_CLK__L1_I0 (.Y(UART_CLK__L1_N0), 
	.A(UART_CLK));
   CLKINVX6M scan_clk__L10_I0 (.Y(scan_clk__L10_N0), 
	.A(scan_clk__L9_N0));
   CLKBUFX20M scan_clk__L9_I0 (.Y(scan_clk__L9_N0), 
	.A(scan_clk__L8_N0));
   CLKBUFX20M scan_clk__L8_I0 (.Y(scan_clk__L8_N0), 
	.A(scan_clk__L7_N1));
   CLKBUFX20M scan_clk__L7_I1 (.Y(scan_clk__L7_N1), 
	.A(scan_clk__L6_N1));
   CLKINVX6M scan_clk__L7_I0 (.Y(scan_clk__L7_N0), 
	.A(scan_clk__L6_N0));
   CLKBUFX20M scan_clk__L6_I1 (.Y(scan_clk__L6_N1), 
	.A(scan_clk__L5_N1));
   CLKBUFX20M scan_clk__L6_I0 (.Y(scan_clk__L6_N0), 
	.A(scan_clk__L5_N0));
   CLKBUFX20M scan_clk__L5_I1 (.Y(scan_clk__L5_N1), 
	.A(scan_clk__L4_N1));
   CLKBUFX20M scan_clk__L5_I0 (.Y(scan_clk__L5_N0), 
	.A(scan_clk__L4_N0));
   CLKBUFX20M scan_clk__L4_I1 (.Y(scan_clk__L4_N1), 
	.A(scan_clk__L3_N1));
   CLKBUFX20M scan_clk__L4_I0 (.Y(scan_clk__L4_N0), 
	.A(scan_clk__L3_N0));
   CLKBUFX20M scan_clk__L3_I1 (.Y(scan_clk__L3_N1), 
	.A(scan_clk__L2_N2));
   CLKBUFX20M scan_clk__L3_I0 (.Y(scan_clk__L3_N0), 
	.A(scan_clk__L2_N1));
   CLKBUFX40M scan_clk__L2_I2 (.Y(scan_clk__L2_N2), 
	.A(scan_clk__L1_N0));
   CLKBUFX20M scan_clk__L2_I1 (.Y(scan_clk__L2_N1), 
	.A(scan_clk__L1_N0));
   CLKINVX6M scan_clk__L2_I0 (.Y(scan_clk__L2_N0), 
	.A(scan_clk__L1_N0));
   CLKINVX40M scan_clk__L1_I0 (.Y(scan_clk__L1_N0), 
	.A(scan_clk));
   CLKINVX32M Ref_muxed_clk__L7_I11 (.Y(Ref_muxed_clk__L7_N11), 
	.A(Ref_muxed_clk__L6_N6));
   CLKINVX32M Ref_muxed_clk__L7_I10 (.Y(Ref_muxed_clk__L7_N10), 
	.A(Ref_muxed_clk__L6_N5));
   CLKINVX32M Ref_muxed_clk__L7_I9 (.Y(Ref_muxed_clk__L7_N9), 
	.A(Ref_muxed_clk__L6_N5));
   CLKINVX32M Ref_muxed_clk__L7_I8 (.Y(Ref_muxed_clk__L7_N8), 
	.A(Ref_muxed_clk__L6_N4));
   CLKINVX32M Ref_muxed_clk__L7_I7 (.Y(Ref_muxed_clk__L7_N7), 
	.A(Ref_muxed_clk__L6_N3));
   CLKINVX32M Ref_muxed_clk__L7_I6 (.Y(Ref_muxed_clk__L7_N6), 
	.A(Ref_muxed_clk__L6_N3));
   CLKINVX40M Ref_muxed_clk__L7_I5 (.Y(Ref_muxed_clk__L7_N5), 
	.A(Ref_muxed_clk__L6_N2));
   CLKINVX40M Ref_muxed_clk__L7_I4 (.Y(Ref_muxed_clk__L7_N4), 
	.A(Ref_muxed_clk__L6_N2));
   CLKINVX40M Ref_muxed_clk__L7_I3 (.Y(Ref_muxed_clk__L7_N3), 
	.A(Ref_muxed_clk__L6_N1));
   CLKINVX40M Ref_muxed_clk__L7_I2 (.Y(Ref_muxed_clk__L7_N2), 
	.A(Ref_muxed_clk__L6_N1));
   CLKINVX32M Ref_muxed_clk__L7_I1 (.Y(Ref_muxed_clk__L7_N1), 
	.A(Ref_muxed_clk__L6_N0));
   CLKINVX32M Ref_muxed_clk__L7_I0 (.Y(Ref_muxed_clk__L7_N0), 
	.A(Ref_muxed_clk__L6_N0));
   CLKINVX24M Ref_muxed_clk__L6_I6 (.Y(Ref_muxed_clk__L6_N6), 
	.A(Ref_muxed_clk__L5_N1));
   CLKINVX24M Ref_muxed_clk__L6_I5 (.Y(Ref_muxed_clk__L6_N5), 
	.A(Ref_muxed_clk__L5_N1));
   CLKINVX24M Ref_muxed_clk__L6_I4 (.Y(Ref_muxed_clk__L6_N4), 
	.A(Ref_muxed_clk__L5_N1));
   CLKINVX24M Ref_muxed_clk__L6_I3 (.Y(Ref_muxed_clk__L6_N3), 
	.A(Ref_muxed_clk__L5_N1));
   CLKINVX24M Ref_muxed_clk__L6_I2 (.Y(Ref_muxed_clk__L6_N2), 
	.A(Ref_muxed_clk__L5_N0));
   CLKINVX24M Ref_muxed_clk__L6_I1 (.Y(Ref_muxed_clk__L6_N1), 
	.A(Ref_muxed_clk__L5_N0));
   CLKINVX24M Ref_muxed_clk__L6_I0 (.Y(Ref_muxed_clk__L6_N0), 
	.A(Ref_muxed_clk__L5_N0));
   CLKINVX40M Ref_muxed_clk__L5_I1 (.Y(Ref_muxed_clk__L5_N1), 
	.A(Ref_muxed_clk__L4_N0));
   CLKINVX40M Ref_muxed_clk__L5_I0 (.Y(Ref_muxed_clk__L5_N0), 
	.A(Ref_muxed_clk__L4_N0));
   CLKINVX40M Ref_muxed_clk__L4_I0 (.Y(Ref_muxed_clk__L4_N0), 
	.A(Ref_muxed_clk__L3_N0));
   CLKINVX40M Ref_muxed_clk__L3_I0 (.Y(Ref_muxed_clk__L3_N0), 
	.A(Ref_muxed_clk__L2_N1));
   CLKBUFX24M Ref_muxed_clk__L2_I1 (.Y(Ref_muxed_clk__L2_N1), 
	.A(Ref_muxed_clk__L1_N0));
   CLKINVX6M Ref_muxed_clk__L2_I0 (.Y(Ref_muxed_clk__L2_N0), 
	.A(Ref_muxed_clk__L1_N0));
   CLKINVX8M Ref_muxed_clk__L1_I0 (.Y(Ref_muxed_clk__L1_N0), 
	.A(Ref_muxed_clk));
   CLKINVX32M ALU_CLK__L3_I0 (.Y(ALU_CLK__L3_N0), 
	.A(ALU_CLK__L2_N0));
   BUFX14M ALU_CLK__L2_I0 (.Y(ALU_CLK__L2_N0), 
	.A(ALU_CLK__L1_N0));
   CLKINVX6M ALU_CLK__L1_I0 (.Y(ALU_CLK__L1_N0), 
	.A(ALU_CLK));
   CLKINVX40M UART_muxed_clk__L12_I1 (.Y(UART_muxed_clk__L12_N1), 
	.A(UART_muxed_clk__L11_N0));
   CLKINVX40M UART_muxed_clk__L12_I0 (.Y(UART_muxed_clk__L12_N0), 
	.A(UART_muxed_clk__L11_N0));
   CLKINVX40M UART_muxed_clk__L11_I0 (.Y(UART_muxed_clk__L11_N0), 
	.A(UART_muxed_clk__L10_N0));
   CLKBUFX40M UART_muxed_clk__L10_I0 (.Y(UART_muxed_clk__L10_N0), 
	.A(UART_muxed_clk__L9_N0));
   CLKBUFX24M UART_muxed_clk__L9_I0 (.Y(UART_muxed_clk__L9_N0), 
	.A(UART_muxed_clk__L8_N0));
   CLKBUFX24M UART_muxed_clk__L8_I0 (.Y(UART_muxed_clk__L8_N0), 
	.A(UART_muxed_clk__L7_N1));
   CLKBUFX24M UART_muxed_clk__L7_I1 (.Y(UART_muxed_clk__L7_N1), 
	.A(UART_muxed_clk__L6_N1));
   CLKINVX40M UART_muxed_clk__L7_I0 (.Y(UART_muxed_clk__L7_N0), 
	.A(UART_muxed_clk__L6_N0));
   CLKBUFX24M UART_muxed_clk__L6_I1 (.Y(UART_muxed_clk__L6_N1), 
	.A(UART_muxed_clk__L5_N0));
   CLKINVX40M UART_muxed_clk__L6_I0 (.Y(UART_muxed_clk__L6_N0), 
	.A(UART_muxed_clk__L5_N0));
   CLKBUFX40M UART_muxed_clk__L5_I0 (.Y(UART_muxed_clk__L5_N0), 
	.A(UART_muxed_clk__L4_N0));
   CLKBUFX24M UART_muxed_clk__L4_I0 (.Y(UART_muxed_clk__L4_N0), 
	.A(UART_muxed_clk__L3_N0));
   BUFX8M UART_muxed_clk__L3_I0 (.Y(UART_muxed_clk__L3_N0), 
	.A(UART_muxed_clk__L2_N0));
   CLKINVX16M UART_muxed_clk__L2_I0 (.Y(UART_muxed_clk__L2_N0), 
	.A(UART_muxed_clk__L1_N0));
   CLKINVX8M UART_muxed_clk__L1_I0 (.Y(UART_muxed_clk__L1_N0), 
	.A(UART_muxed_clk));
   CLKINVX32M UART_TX_CLK_M__L3_I0 (.Y(UART_TX_CLK_M__L3_N0), 
	.A(UART_TX_CLK_M__L2_N0));
   CLKINVX24M UART_TX_CLK_M__L2_I0 (.Y(UART_TX_CLK_M__L2_N0), 
	.A(UART_TX_CLK_M__L1_N0));
   CLKBUFX12M UART_TX_CLK_M__L1_I0 (.Y(UART_TX_CLK_M__L1_N0), 
	.A(UART_TX_CLK_M));
   CLKINVX40M UART_RX_CLK_M__L3_I0 (.Y(UART_RX_CLK_M__L3_N0), 
	.A(UART_RX_CLK_M__L2_N0));
   BUFX14M UART_RX_CLK_M__L2_I0 (.Y(UART_RX_CLK_M__L2_N0), 
	.A(UART_RX_CLK_M__L1_N0));
   CLKINVX6M UART_RX_CLK_M__L1_I0 (.Y(UART_RX_CLK_M__L1_N0), 
	.A(UART_RX_CLK_M));
   BUFX4M FE_OFC7_SE (.Y(FE_OFN7_SE), 
	.A(SE));
   CLKBUFX8M FE_OFC6_UART_SYNC_RST_M (.Y(FE_OFN6_UART_SYNC_RST_M), 
	.A(UART_SYNC_RST_M));
   CLKINVX6M FE_OFC4_REF_SYNC_RST_M (.Y(FE_OFN4_REF_SYNC_RST_M), 
	.A(FE_OFN0_REF_SYNC_RST_M));
   CLKINVX6M FE_OFC3_REF_SYNC_RST_M (.Y(FE_OFN3_REF_SYNC_RST_M), 
	.A(FE_OFN0_REF_SYNC_RST_M));
   CLKINVX1M FE_OFC0_REF_SYNC_RST_M (.Y(FE_OFN0_REF_SYNC_RST_M), 
	.A(REF_SYNC_RST_M));
   BUFX2M U8 (.Y(n2), 
	.A(test_mode));
   DLY1X4M U13 (.Y(n22), 
	.A(n25));
   INVXLM U14 (.Y(n23), 
	.A(n35));
   CLKINVX2M U15 (.Y(n24), 
	.A(n23));
   INVXLM U16 (.Y(n25), 
	.A(n23));
   CLKINVX2M U17 (.Y(n26), 
	.A(n23));
   INVXLM U18 (.Y(n27), 
	.A(n34));
   CLKINVX2M U19 (.Y(n28), 
	.A(n27));
   DLY1X4M U20 (.Y(n29), 
	.A(n31));
   INVXLM U21 (.Y(n30), 
	.A(n36));
   INVXLM U22 (.Y(n31), 
	.A(n30));
   INVXLM U23 (.Y(n32), 
	.A(n30));
   INVXLM U24 (.Y(n33), 
	.A(FE_OFN7_SE));
   INVXLM U25 (.Y(n34), 
	.A(n33));
   INVXLM U26 (.Y(n35), 
	.A(n33));
   CLKINVX2M U27 (.Y(n36), 
	.A(n33));
   mux2X1_1 U0_MUX2x1 (.IN_0(REF_CLK__L2_N0), 
	.IN_1(scan_clk__L7_N0), 
	.SEL(n2), 
	.OUT(Ref_muxed_clk));
   mux2X1_4 U1_MUX2x1 (.IN_0(UART_CLK__L2_N0), 
	.IN_1(scan_clk__L2_N0), 
	.SEL(n2), 
	.OUT(UART_muxed_clk));
   mux2X1_3 U3_MUX2x1 (.IN_0(UART_TX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(n2), 
	.OUT(UART_TX_CLK_M));
   mux2X1_2 U4_MUX2x1 (.IN_0(UART_RX_CLK), 
	.IN_1(scan_clk__L10_N0), 
	.SEL(n2), 
	.OUT(UART_RX_CLK_M));
   mux2X1_0 U5_MUX2x1 (.IN_0(RST_N), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(MUXed_rst));
   mux2X1_6 U6_MUX2x1 (.IN_0(REF_SYNC_RST), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(REF_SYNC_RST_M));
   mux2X1_5 U7_MUX2x1 (.IN_0(UART_SYNC_RST), 
	.IN_1(scan_rst), 
	.SEL(n2), 
	.OUT(UART_SYNC_RST_M));
   sync_rst_test_0 U0_RST_SYNC (.RST(MUXed_rst), 
	.clk(Ref_muxed_clk__L7_N0), 
	.SYNC_rst(REF_SYNC_RST), 
	.test_si(n15), 
	.test_se(n34));
   sync_rst_test_1 U1_RST_SYNC (.RST(MUXed_rst), 
	.clk(UART_muxed_clk__L12_N0), 
	.SYNC_rst(UART_SYNC_RST), 
	.test_si(n8), 
	.test_se(n32), 
	.UART_muxed_clk__L12_N1(UART_muxed_clk__L12_N1));
   DATA_SYNC_test_1 U0_DATA_SYNC (.CLK(Ref_muxed_clk__L7_N4), 
	.RST(FE_OFN4_REF_SYNC_RST_M), 
	.unsync_bus({ UART_RX_DATA[7],
		UART_RX_DATA[6],
		UART_RX_DATA[5],
		UART_RX_DATA[4],
		UART_RX_DATA[3],
		UART_RX_DATA[2],
		UART_RX_DATA[1],
		UART_RX_DATA[0] }), 
	.bus_enable(UART_RX_VLD), 
	.sync_bus({ SYNC_RX_DATA[7],
		SYNC_RX_DATA[6],
		SYNC_RX_DATA[5],
		SYNC_RX_DATA[4],
		SYNC_RX_DATA[3],
		SYNC_RX_DATA[2],
		SYNC_RX_DATA[1],
		SYNC_RX_DATA[0] }), 
	.enable_pulse_d(SYNC_VLD), 
	.test_si(n17), 
	.test_so(n16), 
	.test_se(n28), 
	.Ref_muxed_clk__L7_N6(Ref_muxed_clk__L7_N6));
   Async_FIFO_test_1 U0_ASYNC_FIFO (.WR_clk(Ref_muxed_clk__L7_N0), 
	.WR_rst(REF_SYNC_RST_M), 
	.WR_inc(WR_INC), 
	.WR_Data({ WR_DATA_FIFO[7],
		WR_DATA_FIFO[6],
		WR_DATA_FIFO[5],
		WR_DATA_FIFO[4],
		WR_DATA_FIFO[3],
		WR_DATA_FIFO[2],
		WR_DATA_FIFO[1],
		WR_DATA_FIFO[0] }), 
	.RD_clk(UART_muxed_clk__L12_N0), 
	.RD_rst(UART_SYNC_RST_M), 
	.RD_inc(RD_INC), 
	.FULL(F_FULL), 
	.EMPTY(F_EMPITY), 
	.RD_Data({ RD_DATA_FIFO[7],
		RD_DATA_FIFO[6],
		RD_DATA_FIFO[5],
		RD_DATA_FIFO[4],
		RD_DATA_FIFO[3],
		RD_DATA_FIFO[2],
		RD_DATA_FIFO[1],
		RD_DATA_FIFO[0] }), 
	.test_si2(test_si2), 
	.test_si1(ALU_OUT_VLD), 
	.test_so2(n18), 
	.test_so1(SO), 
	.test_se(FE_OFN7_SE), 
	.FE_OFN0_REF_SYNC_RST_M(FE_OFN0_REF_SYNC_RST_M), 
	.FE_OFN4_REF_SYNC_RST_M(FE_OFN4_REF_SYNC_RST_M), 
	.FE_OFN6_UART_SYNC_RST_M(FE_OFN6_UART_SYNC_RST_M), 
	.UART_muxed_clk__L12_N1(UART_muxed_clk__L12_N1), 
	.Ref_muxed_clk__L7_N1(Ref_muxed_clk__L7_N1), 
	.Ref_muxed_clk__L7_N2(Ref_muxed_clk__L7_N2), 
	.Ref_muxed_clk__L7_N3(Ref_muxed_clk__L7_N3), 
	.Ref_muxed_clk__L7_N4(Ref_muxed_clk__L7_N4));
   pulse_Gen_test_1 U0_PULSE_GEN (.CLK(UART_TX_CLK_M__L3_N0), 
	.RST(FE_OFN6_UART_SYNC_RST_M), 
	.in_signal(UART_TX_BUSY), 
	.pulsed_signal(RD_INC), 
	.test_si(n16), 
	.test_so(n15), 
	.test_se(n28));
   CLK_div_test_0 U0_CLK_DIV (.i_rst_n(FE_OFN6_UART_SYNC_RST_M), 
	.i_ref_clk(UART_muxed_clk__L12_N1), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ DIV_RATiO[7],
		DIV_RATiO[6],
		DIV_RATiO[5],
		DIV_RATiO[4],
		DIV_RATiO[3],
		DIV_RATiO[2],
		DIV_RATiO[1],
		DIV_RATiO[0] }), 
	.o_div_clk(UART_TX_CLK), 
	.test_si(n18), 
	.test_so(n17), 
	.test_se(n26), 
	.UART_muxed_clk__L2_N0(UART_muxed_clk__L2_N0), 
	.UART_muxed_clk__L7_N0(UART_muxed_clk__L7_N0));
   clk_div_mux U0_MUXED_CLK_DIV (.in({ UART_CONF[7],
		UART_CONF[6],
		UART_CONF[5],
		UART_CONF[4],
		UART_CONF[3],
		UART_CONF[2] }), 
	.div_ratio({ SYNOPSYS_UNCONNECTED__0,
		SYNOPSYS_UNCONNECTED__1,
		SYNOPSYS_UNCONNECTED__2,
		SYNOPSYS_UNCONNECTED__3,
		RX_div_Ratio[3],
		RX_div_Ratio[2],
		RX_div_Ratio[1],
		RX_div_Ratio[0] }));
   CLK_div_test_1 U1_CLK_DIV (.i_rst_n(UART_SYNC_RST_M), 
	.i_ref_clk(UART_muxed_clk__L12_N0), 
	.i_clk_en(1'b1), 
	.i_div_ratio({ 1'b0,
		1'b0,
		1'b0,
		1'b0,
		RX_div_Ratio[3],
		RX_div_Ratio[2],
		RX_div_Ratio[1],
		RX_div_Ratio[0] }), 
	.o_div_clk(UART_RX_CLK), 
	.test_si(n9), 
	.test_so(n8), 
	.test_se(n36), 
	.UART_muxed_clk__L12_N1(UART_muxed_clk__L12_N1), 
	.UART_muxed_clk__L2_N0(UART_muxed_clk__L2_N0), 
	.UART_muxed_clk__L7_N0(UART_muxed_clk__L7_N0));
   UART_test_1 U0_UART (.RST(UART_SYNC_RST_M), 
	.TX_CLK(UART_TX_CLK_M__L3_N0), 
	.RX_CLK(UART_RX_CLK_M__L3_N0), 
	.RX_IN_S(UART_RX_IN), 
	.RX_OUT_P({ UART_RX_DATA[7],
		UART_RX_DATA[6],
		UART_RX_DATA[5],
		UART_RX_DATA[4],
		UART_RX_DATA[3],
		UART_RX_DATA[2],
		UART_RX_DATA[1],
		UART_RX_DATA[0] }), 
	.RX_OUT_V(UART_RX_VLD), 
	.TX_IN_P({ RD_DATA_FIFO[7],
		RD_DATA_FIFO[6],
		RD_DATA_FIFO[5],
		RD_DATA_FIFO[4],
		RD_DATA_FIFO[3],
		RD_DATA_FIFO[2],
		RD_DATA_FIFO[1],
		RD_DATA_FIFO[0] }), 
	.TX_IN_V(F_EMPITY), 
	.TX_OUT_S(UART_TX_O), 
	.TX_OUT_V(UART_TX_BUSY), 
	.Prescale({ UART_CONF[7],
		UART_CONF[6],
		UART_CONF[5],
		UART_CONF[4],
		UART_CONF[3],
		UART_CONF[2] }), 
	.parity_enable(UART_CONF[0]), 
	.parity_type(UART_CONF[1]), 
	.parity_error(parity_error), 
	.framing_error(framing_error), 
	.test_si2(UART_SYNC_RST), 
	.test_si1(n10), 
	.test_so1(n9), 
	.test_se(n29), 
	.FE_OFN6_UART_SYNC_RST_M(FE_OFN6_UART_SYNC_RST_M));
   Sys_Ctrl_test_1 U0_SYS_CTRL (.Sys_clk(Ref_muxed_clk__L7_N4), 
	.Sys_rst(REF_SYNC_RST_M), 
	.RX_P_Data({ SYNC_RX_DATA[7],
		SYNC_RX_DATA[6],
		SYNC_RX_DATA[5],
		SYNC_RX_DATA[4],
		SYNC_RX_DATA[3],
		SYNC_RX_DATA[2],
		SYNC_RX_DATA[1],
		SYNC_RX_DATA[0] }), 
	.RX_D_VLd(SYNC_VLD), 
	.Rd_Data({ Rd_DATA_RF[7],
		Rd_DATA_RF[6],
		Rd_DATA_RF[5],
		Rd_DATA_RF[4],
		Rd_DATA_RF[3],
		Rd_DATA_RF[2],
		Rd_DATA_RF[1],
		Rd_DATA_RF[0] }), 
	.Rd_Data_VLd(Rd_D_VLD), 
	.ALU_out({ ALU_OUT_DATA[15],
		ALU_OUT_DATA[14],
		ALU_OUT_DATA[13],
		ALU_OUT_DATA[12],
		ALU_OUT_DATA[11],
		ALU_OUT_DATA[10],
		ALU_OUT_DATA[9],
		ALU_OUT_DATA[8],
		ALU_OUT_DATA[7],
		ALU_OUT_DATA[6],
		ALU_OUT_DATA[5],
		ALU_OUT_DATA[4],
		ALU_OUT_DATA[3],
		ALU_OUT_DATA[2],
		ALU_OUT_DATA[1],
		ALU_OUT_DATA[0] }), 
	.ALU_out_VLd(ALU_OUT_VLD), 
	.FIFO_full(F_FULL), 
	.Address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.Wr_En(WrEn), 
	.Rd_En(RdEn), 
	.Wr_Data({ WR_D_RF[7],
		WR_D_RF[6],
		WR_D_RF[5],
		WR_D_RF[4],
		WR_D_RF[3],
		WR_D_RF[2],
		WR_D_RF[1],
		WR_D_RF[0] }), 
	.ALU_fun({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_EN(ALU_EN), 
	.CLK_ALU_EN(GATE_EN), 
	.WR_Data_FIFO({ WR_DATA_FIFO[7],
		WR_DATA_FIFO[6],
		WR_DATA_FIFO[5],
		WR_DATA_FIFO[4],
		WR_DATA_FIFO[3],
		WR_DATA_FIFO[2],
		WR_DATA_FIFO[1],
		WR_DATA_FIFO[0] }), 
	.WR_INC(WR_INC), 
	.test_si(test_si4), 
	.test_so(n10), 
	.test_se(n22), 
	.FE_OFN3_REF_SYNC_RST_M(FE_OFN3_REF_SYNC_RST_M), 
	.FE_OFN4_REF_SYNC_RST_M(FE_OFN4_REF_SYNC_RST_M), 
	.Ref_muxed_clk__L7_N5(Ref_muxed_clk__L7_N5), 
	.Ref_muxed_clk__L7_N7(Ref_muxed_clk__L7_N7));
   Register_file_test_1 U0_Reg_file (.Wr_Data({ WR_D_RF[7],
		WR_D_RF[6],
		WR_D_RF[5],
		WR_D_RF[4],
		WR_D_RF[3],
		WR_D_RF[2],
		WR_D_RF[1],
		WR_D_RF[0] }), 
	.address({ Address[3],
		Address[2],
		Address[1],
		Address[0] }), 
	.Wr_En(WrEn), 
	.Rd_En(RdEn), 
	.clk(Ref_muxed_clk__L7_N10), 
	.rst(FE_OFN0_REF_SYNC_RST_M), 
	.Rd_Data_VLD(Rd_D_VLD), 
	.Rd_Data({ Rd_DATA_RF[7],
		Rd_DATA_RF[6],
		Rd_DATA_RF[5],
		Rd_DATA_RF[4],
		Rd_DATA_RF[3],
		Rd_DATA_RF[2],
		Rd_DATA_RF[1],
		Rd_DATA_RF[0] }), 
	.Reg0({ Op_A[7],
		Op_A[6],
		Op_A[5],
		Op_A[4],
		Op_A[3],
		Op_A[2],
		Op_A[1],
		Op_A[0] }), 
	.Reg1({ Op_B[7],
		Op_B[6],
		Op_B[5],
		Op_B[4],
		Op_B[3],
		Op_B[2],
		Op_B[1],
		Op_B[0] }), 
	.Reg2({ UART_CONF[7],
		UART_CONF[6],
		UART_CONF[5],
		UART_CONF[4],
		UART_CONF[3],
		UART_CONF[2],
		UART_CONF[1],
		UART_CONF[0] }), 
	.Reg3({ DIV_RATiO[7],
		DIV_RATiO[6],
		DIV_RATiO[5],
		DIV_RATiO[4],
		DIV_RATiO[3],
		DIV_RATiO[2],
		DIV_RATiO[1],
		DIV_RATiO[0] }), 
	.test_si2(test_si3), 
	.test_si1(REF_SYNC_RST), 
	.test_so2(test_so3), 
	.test_so1(test_so2), 
	.test_se(FE_OFN7_SE), 
	.FE_OFN3_REF_SYNC_RST_M(FE_OFN3_REF_SYNC_RST_M), 
	.FE_OFN4_REF_SYNC_RST_M(FE_OFN4_REF_SYNC_RST_M), 
	.Ref_muxed_clk__L7_N11(Ref_muxed_clk__L7_N11), 
	.Ref_muxed_clk__L7_N6(Ref_muxed_clk__L7_N6), 
	.Ref_muxed_clk__L7_N7(Ref_muxed_clk__L7_N7), 
	.Ref_muxed_clk__L7_N8(Ref_muxed_clk__L7_N8), 
	.Ref_muxed_clk__L7_N9(Ref_muxed_clk__L7_N9));
   Alu_16_test_1 U0_ALU (.A({ Op_A[7],
		Op_A[6],
		Op_A[5],
		Op_A[4],
		Op_A[3],
		Op_A[2],
		Op_A[1],
		Op_A[0] }), 
	.B({ Op_B[7],
		Op_B[6],
		Op_B[5],
		Op_B[4],
		Op_B[3],
		Op_B[2],
		Op_B[1],
		Op_B[0] }), 
	.Alu_Fun({ ALU_FUN[3],
		ALU_FUN[2],
		ALU_FUN[1],
		ALU_FUN[0] }), 
	.ALU_EN(ALU_EN), 
	.clk(ALU_CLK__L3_N0), 
	.Alu_Rst(FE_OFN3_REF_SYNC_RST_M), 
	.Out_VLD(ALU_OUT_VLD), 
	.Alu_Out({ ALU_OUT_DATA[15],
		ALU_OUT_DATA[14],
		ALU_OUT_DATA[13],
		ALU_OUT_DATA[12],
		ALU_OUT_DATA[11],
		ALU_OUT_DATA[10],
		ALU_OUT_DATA[9],
		ALU_OUT_DATA[8],
		ALU_OUT_DATA[7],
		ALU_OUT_DATA[6],
		ALU_OUT_DATA[5],
		ALU_OUT_DATA[4],
		ALU_OUT_DATA[3],
		ALU_OUT_DATA[2],
		ALU_OUT_DATA[1],
		ALU_OUT_DATA[0] }), 
	.test_si(SI), 
	.test_se(n24), 
	.FE_OFN4_REF_SYNC_RST_M(FE_OFN4_REF_SYNC_RST_M));
   CLK_GATE U0_CLK_GATE (.CLK_EN(GATE_EN), 
	.test_en(n2), 
	.CLK(Ref_muxed_clk__L2_N0), 
	.GATED_CLK(ALU_CLK));
endmodule

/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Oct 10 21:52:37 2026
/////////////////////////////////////////////////////////////
module mux2X1_1 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X6M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_4 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_3 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_2 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire N0;

   assign N0 = SEL ;

   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(IN_1), 
	.A(IN_0));
endmodule

module mux2X1_0 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN19_RST_N;
   wire FE_PHN18_RST_N;
   wire FE_PHN9_scan_rst;
   wire FE_PHN6_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC19_RST_N (.Y(FE_PHN19_RST_N), 
	.A(FE_PHN18_RST_N));
   DLY4X1M FE_PHC18_RST_N (.Y(FE_PHN18_RST_N), 
	.A(IN_0));
   DLY4X1M FE_PHC9_scan_rst (.Y(FE_PHN9_scan_rst), 
	.A(FE_PHN6_scan_rst));
   DLY4X1M FE_PHC6_scan_rst (.Y(FE_PHN6_scan_rst), 
	.A(IN_1));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN9_scan_rst), 
	.A(FE_PHN19_RST_N));
endmodule

module mux2X1_6 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN8_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC8_scan_rst (.Y(FE_PHN8_scan_rst), 
	.A(IN_1));
   CLKMX2X4M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN8_scan_rst), 
	.A(IN_0));
endmodule

module mux2X1_5 (
	IN_0, 
	IN_1, 
	SEL, 
	OUT);
   input IN_0;
   input IN_1;
   input SEL;
   output OUT;

   // Internal wires
   wire FE_PHN7_scan_rst;
   wire N0;

   assign N0 = SEL ;

   DLY4X1M FE_PHC7_scan_rst (.Y(FE_PHN7_scan_rst), 
	.A(IN_1));
   MX2X2M U1 (.Y(OUT), 
	.S0(N0), 
	.B(FE_PHN7_scan_rst), 
	.A(IN_0));
endmodule

module sync_rst_test_0 (
	RST, 
	clk, 
	SYNC_rst, 
	test_si, 
	test_se);
   input RST;
   input clk;
   output SYNC_rst;
   input test_si;
   input test_se;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \q_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \q_reg_reg[1]  (.SI(\q_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_rst), 
	.D(\q_reg[0] ), 
	.CK(clk));
   SDFFRQX2M \q_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\q_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
endmodule

module sync_rst_test_1 (
	RST, 
	clk, 
	SYNC_rst, 
	test_si, 
	test_se, 
	UART_muxed_clk__L12_N1);
   input RST;
   input clk;
   output SYNC_rst;
   input test_si;
   input test_se;
   input UART_muxed_clk__L12_N1;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire \q_reg[0] ;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M \q_reg_reg[1]  (.SI(\q_reg[0] ), 
	.SE(test_se), 
	.RN(RST), 
	.Q(SYNC_rst), 
	.D(\q_reg[0] ), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \q_reg_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(\q_reg[0] ), 
	.D(HTIE_LTIEHI_NET), 
	.CK(clk));
endmodule

module DATA_SYNC_test_1 (
	CLK, 
	RST, 
	unsync_bus, 
	bus_enable, 
	sync_bus, 
	enable_pulse_d, 
	test_si, 
	test_so, 
	test_se, 
	Ref_muxed_clk__L7_N6);
   input CLK;
   input RST;
   input [7:0] unsync_bus;
   input bus_enable;
   output [7:0] sync_bus;
   output enable_pulse_d;
   input test_si;
   output test_so;
   input test_se;
   input Ref_muxed_clk__L7_N6;

   // Internal wires
   wire enable_flop;
   wire n1;
   wire n4;
   wire n6;
   wire n8;
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n22;
   wire [1:0] sync_reg;

   assign test_so = sync_reg[1] ;

   SDFFRQX2M enable_flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_flop), 
	.D(sync_reg[1]), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[7]  (.SI(sync_bus[6]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[7]), 
	.D(n18), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_reg_reg[1]  (.SI(sync_reg[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[1]), 
	.D(sync_reg[0]), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[6]  (.SI(sync_bus[5]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[6]), 
	.D(n16), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[4]  (.SI(sync_bus[3]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[4]), 
	.D(n12), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[5]  (.SI(sync_bus[4]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[5]), 
	.D(n14), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[3]  (.SI(sync_bus[2]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[3]), 
	.D(n10), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[2]  (.SI(sync_bus[1]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[2]), 
	.D(n8), 
	.CK(CLK));
   SDFFRQX2M enable_pulse_d_reg (.SI(enable_flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(enable_pulse_d), 
	.D(n22), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[0]  (.SI(enable_pulse_d), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[0]), 
	.D(n4), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_bus_reg[1]  (.SI(sync_bus[0]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_bus[1]), 
	.D(n6), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \sync_reg_reg[0]  (.SI(sync_bus[7]), 
	.SE(test_se), 
	.RN(RST), 
	.Q(sync_reg[0]), 
	.D(bus_enable), 
	.CK(Ref_muxed_clk__L7_N6));
   INVX2M U3 (.Y(n22), 
	.A(n1));
   NAND2BX2M U4 (.Y(n1), 
	.B(sync_reg[1]), 
	.AN(enable_flop));
   AO22X1M U5 (.Y(n4), 
	.B1(n1), 
	.B0(sync_bus[0]), 
	.A1(n22), 
	.A0(unsync_bus[0]));
   AO22X1M U6 (.Y(n6), 
	.B1(n1), 
	.B0(sync_bus[1]), 
	.A1(n22), 
	.A0(unsync_bus[1]));
   AO22X1M U7 (.Y(n8), 
	.B1(n1), 
	.B0(sync_bus[2]), 
	.A1(n22), 
	.A0(unsync_bus[2]));
   AO22X1M U8 (.Y(n10), 
	.B1(n1), 
	.B0(sync_bus[3]), 
	.A1(n22), 
	.A0(unsync_bus[3]));
   AO22X1M U9 (.Y(n12), 
	.B1(n1), 
	.B0(sync_bus[4]), 
	.A1(n22), 
	.A0(unsync_bus[4]));
   AO22X1M U10 (.Y(n14), 
	.B1(n1), 
	.B0(sync_bus[5]), 
	.A1(n22), 
	.A0(unsync_bus[5]));
   AO22X1M U11 (.Y(n16), 
	.B1(n1), 
	.B0(sync_bus[6]), 
	.A1(n22), 
	.A0(unsync_bus[6]));
   AO22X1M U12 (.Y(n18), 
	.B1(n1), 
	.B0(sync_bus[7]), 
	.A1(n22), 
	.A0(unsync_bus[7]));
endmodule

module FIFO_Mem_test_1 (
	wr_clk_mem, 
	Wr_rst_mem, 
	wr_full_mem, 
	wr_inc_mem, 
	wr_Data_mem, 
	wr_adr_mem, 
	rd_adr_mem, 
	rd_Data_mem, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN4_REF_SYNC_RST_M, 
	FE_OFN1_REF_SYNC_RST_M, 
	Ref_muxed_clk__L7_N2, 
	Ref_muxed_clk__L7_N3, 
	Ref_muxed_clk__L7_N4);
   input wr_clk_mem;
   input Wr_rst_mem;
   input wr_full_mem;
   input wr_inc_mem;
   input [7:0] wr_Data_mem;
   input [2:0] wr_adr_mem;
   input [2:0] rd_adr_mem;
   output [7:0] rd_Data_mem;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN4_REF_SYNC_RST_M;
   input FE_OFN1_REF_SYNC_RST_M;
   input Ref_muxed_clk__L7_N2;
   input Ref_muxed_clk__L7_N3;
   input Ref_muxed_clk__L7_N4;

   // Internal wires
   wire N10;
   wire N11;
   wire N12;
   wire \MEM[0][7] ;
   wire \MEM[0][6] ;
   wire \MEM[0][5] ;
   wire \MEM[0][4] ;
   wire \MEM[0][3] ;
   wire \MEM[0][2] ;
   wire \MEM[0][1] ;
   wire \MEM[0][0] ;
   wire \MEM[1][7] ;
   wire \MEM[1][6] ;
   wire \MEM[1][5] ;
   wire \MEM[1][4] ;
   wire \MEM[1][3] ;
   wire \MEM[1][2] ;
   wire \MEM[1][1] ;
   wire \MEM[1][0] ;
   wire \MEM[2][7] ;
   wire \MEM[2][6] ;
   wire \MEM[2][5] ;
   wire \MEM[2][4] ;
   wire \MEM[2][3] ;
   wire \MEM[2][2] ;
   wire \MEM[2][1] ;
   wire \MEM[2][0] ;
   wire \MEM[3][7] ;
   wire \MEM[3][6] ;
   wire \MEM[3][5] ;
   wire \MEM[3][4] ;
   wire \MEM[3][3] ;
   wire \MEM[3][2] ;
   wire \MEM[3][1] ;
   wire \MEM[3][0] ;
   wire \MEM[4][7] ;
   wire \MEM[4][6] ;
   wire \MEM[4][5] ;
   wire \MEM[4][4] ;
   wire \MEM[4][3] ;
   wire \MEM[4][2] ;
   wire \MEM[4][1] ;
   wire \MEM[4][0] ;
   wire \MEM[5][7] ;
   wire \MEM[5][6] ;
   wire \MEM[5][5] ;
   wire \MEM[5][4] ;
   wire \MEM[5][3] ;
   wire \MEM[5][2] ;
   wire \MEM[5][1] ;
   wire \MEM[5][0] ;
   wire \MEM[6][7] ;
   wire \MEM[6][6] ;
   wire \MEM[6][5] ;
   wire \MEM[6][4] ;
   wire \MEM[6][3] ;
   wire \MEM[6][2] ;
   wire \MEM[6][1] ;
   wire \MEM[6][0] ;
   wire \MEM[7][7] ;
   wire \MEM[7][6] ;
   wire \MEM[7][5] ;
   wire \MEM[7][4] ;
   wire \MEM[7][3] ;
   wire \MEM[7][2] ;
   wire \MEM[7][1] ;
   wire \MEM[7][0] ;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n93;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n102;
   wire n103;
   wire n104;
   wire n105;
   wire n106;
   wire n107;
   wire n108;
   wire n109;
   wire n110;
   wire n111;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n128;
   wire n129;
   wire n130;
   wire n131;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n70;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;

   assign N10 = rd_adr_mem[0] ;
   assign N11 = rd_adr_mem[1] ;
   assign N12 = rd_adr_mem[2] ;
   assign test_so = \MEM[7][7]  ;

   SDFFRQX2M \MEM_reg[0][7]  (.SI(\MEM[0][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[0][7] ), 
	.D(n149), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[0][6]  (.SI(\MEM[0][5] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[0][6] ), 
	.D(n148), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[0][5]  (.SI(\MEM[0][4] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[0][5] ), 
	.D(n147), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[0][4]  (.SI(\MEM[0][3] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[0][4] ), 
	.D(n146), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[0][3]  (.SI(\MEM[0][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[0][3] ), 
	.D(n145), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[0][2]  (.SI(\MEM[0][1] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[0][2] ), 
	.D(n144), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[0][1]  (.SI(\MEM[0][0] ), 
	.SE(n207), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(\MEM[0][1] ), 
	.D(n143), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[0][0]  (.SI(test_si), 
	.SE(n206), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[0][0] ), 
	.D(n142), 
	.CK(Ref_muxed_clk__L7_N4));
   SDFFRQX2M \MEM_reg[1][7]  (.SI(\MEM[1][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][7] ), 
	.D(n141), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[1][6]  (.SI(\MEM[1][5] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][6] ), 
	.D(n140), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[1][5]  (.SI(\MEM[1][4] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][5] ), 
	.D(n139), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[1][4]  (.SI(\MEM[1][3] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][4] ), 
	.D(n138), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[1][3]  (.SI(\MEM[1][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][3] ), 
	.D(n137), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[1][2]  (.SI(\MEM[1][1] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][2] ), 
	.D(n136), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[1][1]  (.SI(\MEM[1][0] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][1] ), 
	.D(n135), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[1][0]  (.SI(\MEM[0][7] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[1][0] ), 
	.D(n134), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[4][7]  (.SI(\MEM[4][6] ), 
	.SE(n209), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[4][7] ), 
	.D(n117), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[4][6]  (.SI(\MEM[4][5] ), 
	.SE(n208), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[4][6] ), 
	.D(n116), 
	.CK(Ref_muxed_clk__L7_N4));
   SDFFRQX2M \MEM_reg[4][5]  (.SI(\MEM[4][4] ), 
	.SE(n207), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[4][5] ), 
	.D(n115), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[4][4]  (.SI(\MEM[4][3] ), 
	.SE(n206), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[4][4] ), 
	.D(n114), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[4][3]  (.SI(\MEM[4][2] ), 
	.SE(n209), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(\MEM[4][3] ), 
	.D(n113), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[4][2]  (.SI(\MEM[4][1] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[4][2] ), 
	.D(n112), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[4][1]  (.SI(\MEM[4][0] ), 
	.SE(n207), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[4][1] ), 
	.D(n111), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[4][0]  (.SI(\MEM[3][7] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[4][0] ), 
	.D(n110), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[5][7]  (.SI(\MEM[5][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][7] ), 
	.D(n109), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[5][6]  (.SI(\MEM[5][5] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][6] ), 
	.D(n108), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[5][5]  (.SI(\MEM[5][4] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][5] ), 
	.D(n107), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[5][4]  (.SI(\MEM[5][3] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][4] ), 
	.D(n106), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[5][3]  (.SI(\MEM[5][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][3] ), 
	.D(n105), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[5][2]  (.SI(\MEM[5][1] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][2] ), 
	.D(n104), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[5][1]  (.SI(\MEM[5][0] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][1] ), 
	.D(n103), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[5][0]  (.SI(\MEM[4][7] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[5][0] ), 
	.D(n102), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[6][7]  (.SI(\MEM[6][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[6][7] ), 
	.D(n101), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[6][6]  (.SI(\MEM[6][5] ), 
	.SE(n208), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[6][6] ), 
	.D(n100), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[6][5]  (.SI(\MEM[6][4] ), 
	.SE(n207), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[6][5] ), 
	.D(n99), 
	.CK(Ref_muxed_clk__L7_N4));
   SDFFRQX2M \MEM_reg[6][4]  (.SI(\MEM[6][3] ), 
	.SE(n206), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[6][4] ), 
	.D(n98), 
	.CK(Ref_muxed_clk__L7_N4));
   SDFFRQX2M \MEM_reg[6][3]  (.SI(\MEM[6][2] ), 
	.SE(n209), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[6][3] ), 
	.D(n97), 
	.CK(Ref_muxed_clk__L7_N4));
   SDFFRQX2M \MEM_reg[6][2]  (.SI(\MEM[6][1] ), 
	.SE(n208), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[6][2] ), 
	.D(n96), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[6][1]  (.SI(\MEM[6][0] ), 
	.SE(n207), 
	.RN(Wr_rst_mem), 
	.Q(\MEM[6][1] ), 
	.D(n95), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[6][0]  (.SI(\MEM[5][7] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[6][0] ), 
	.D(n94), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][7]  (.SI(\MEM[7][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][7] ), 
	.D(n93), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][6]  (.SI(\MEM[7][5] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][6] ), 
	.D(n92), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][5]  (.SI(\MEM[7][4] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][5] ), 
	.D(n91), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][4]  (.SI(\MEM[7][3] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][4] ), 
	.D(n90), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][3]  (.SI(\MEM[7][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][3] ), 
	.D(n89), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][2]  (.SI(\MEM[7][1] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][2] ), 
	.D(n88), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][1]  (.SI(\MEM[7][0] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][1] ), 
	.D(n87), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[7][0]  (.SI(\MEM[6][7] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[7][0] ), 
	.D(n86), 
	.CK(wr_clk_mem));
   SDFFRQX2M \MEM_reg[2][7]  (.SI(\MEM[2][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][7] ), 
	.D(n133), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[2][6]  (.SI(\MEM[2][5] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][6] ), 
	.D(n132), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[2][5]  (.SI(\MEM[2][4] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][5] ), 
	.D(n131), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[2][4]  (.SI(\MEM[2][3] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][4] ), 
	.D(n130), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[2][3]  (.SI(\MEM[2][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][3] ), 
	.D(n129), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[2][2]  (.SI(\MEM[2][1] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][2] ), 
	.D(n128), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[2][1]  (.SI(\MEM[2][0] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][1] ), 
	.D(n127), 
	.CK(Ref_muxed_clk__L7_N3));
   SDFFRQX2M \MEM_reg[2][0]  (.SI(\MEM[1][7] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[2][0] ), 
	.D(n126), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][7]  (.SI(\MEM[3][6] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][7] ), 
	.D(n125), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][6]  (.SI(\MEM[3][5] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][6] ), 
	.D(n124), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][5]  (.SI(\MEM[3][4] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][5] ), 
	.D(n123), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][4]  (.SI(\MEM[3][3] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][4] ), 
	.D(n122), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][3]  (.SI(\MEM[3][2] ), 
	.SE(n209), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][3] ), 
	.D(n121), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][2]  (.SI(\MEM[3][1] ), 
	.SE(n208), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][2] ), 
	.D(n120), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][1]  (.SI(\MEM[3][0] ), 
	.SE(n207), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][1] ), 
	.D(n119), 
	.CK(Ref_muxed_clk__L7_N2));
   SDFFRQX2M \MEM_reg[3][0]  (.SI(\MEM[2][7] ), 
	.SE(n206), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(\MEM[3][0] ), 
	.D(n118), 
	.CK(Ref_muxed_clk__L7_N2));
   NOR2BX2M U78 (.Y(n80), 
	.B(wr_full_mem), 
	.AN(wr_inc_mem));
   NAND3X2M U81 (.Y(n79), 
	.C(n76), 
	.B(n202), 
	.A(n201));
   NAND3X2M U82 (.Y(n85), 
	.C(n82), 
	.B(n202), 
	.A(n201));
   NOR2X2M U83 (.Y(n172), 
	.B(n177), 
	.A(n176));
   NOR2BX2M U84 (.Y(n82), 
	.B(wr_adr_mem[2]), 
	.AN(n80));
   OAI2BB2X1M U85 (.Y(n142), 
	.B1(n85), 
	.B0(n193), 
	.A1N(n85), 
	.A0N(\MEM[0][0] ));
   OAI2BB2X1M U86 (.Y(n143), 
	.B1(n85), 
	.B0(n194), 
	.A1N(n85), 
	.A0N(\MEM[0][1] ));
   OAI2BB2X1M U87 (.Y(n144), 
	.B1(n85), 
	.B0(n195), 
	.A1N(n85), 
	.A0N(\MEM[0][2] ));
   OAI2BB2X1M U88 (.Y(n145), 
	.B1(n85), 
	.B0(n196), 
	.A1N(n85), 
	.A0N(\MEM[0][3] ));
   OAI2BB2X1M U89 (.Y(n146), 
	.B1(n85), 
	.B0(n197), 
	.A1N(n85), 
	.A0N(\MEM[0][4] ));
   OAI2BB2X1M U90 (.Y(n147), 
	.B1(n85), 
	.B0(n198), 
	.A1N(n85), 
	.A0N(\MEM[0][5] ));
   OAI2BB2X1M U91 (.Y(n148), 
	.B1(n85), 
	.B0(n199), 
	.A1N(n85), 
	.A0N(\MEM[0][6] ));
   OAI2BB2X1M U92 (.Y(n149), 
	.B1(n85), 
	.B0(n200), 
	.A1N(n85), 
	.A0N(\MEM[0][7] ));
   OAI2BB2X1M U93 (.Y(n110), 
	.B1(n79), 
	.B0(n193), 
	.A1N(n79), 
	.A0N(\MEM[4][0] ));
   OAI2BB2X1M U94 (.Y(n111), 
	.B1(n79), 
	.B0(n194), 
	.A1N(n79), 
	.A0N(\MEM[4][1] ));
   OAI2BB2X1M U95 (.Y(n112), 
	.B1(n79), 
	.B0(n195), 
	.A1N(n79), 
	.A0N(\MEM[4][2] ));
   OAI2BB2X1M U96 (.Y(n113), 
	.B1(n79), 
	.B0(n196), 
	.A1N(n79), 
	.A0N(\MEM[4][3] ));
   OAI2BB2X1M U97 (.Y(n114), 
	.B1(n79), 
	.B0(n197), 
	.A1N(n79), 
	.A0N(\MEM[4][4] ));
   OAI2BB2X1M U98 (.Y(n115), 
	.B1(n79), 
	.B0(n198), 
	.A1N(n79), 
	.A0N(\MEM[4][5] ));
   OAI2BB2X1M U99 (.Y(n116), 
	.B1(n79), 
	.B0(n199), 
	.A1N(n79), 
	.A0N(\MEM[4][6] ));
   OAI2BB2X1M U100 (.Y(n117), 
	.B1(n79), 
	.B0(n200), 
	.A1N(n79), 
	.A0N(\MEM[4][7] ));
   OAI2BB2X1M U101 (.Y(n94), 
	.B1(n77), 
	.B0(n193), 
	.A1N(n77), 
	.A0N(\MEM[6][0] ));
   OAI2BB2X1M U102 (.Y(n95), 
	.B1(n77), 
	.B0(n194), 
	.A1N(n77), 
	.A0N(\MEM[6][1] ));
   OAI2BB2X1M U103 (.Y(n96), 
	.B1(n77), 
	.B0(n195), 
	.A1N(n77), 
	.A0N(\MEM[6][2] ));
   OAI2BB2X1M U104 (.Y(n97), 
	.B1(n77), 
	.B0(n196), 
	.A1N(n77), 
	.A0N(\MEM[6][3] ));
   OAI2BB2X1M U105 (.Y(n98), 
	.B1(n77), 
	.B0(n197), 
	.A1N(n77), 
	.A0N(\MEM[6][4] ));
   OAI2BB2X1M U106 (.Y(n99), 
	.B1(n77), 
	.B0(n198), 
	.A1N(n77), 
	.A0N(\MEM[6][5] ));
   OAI2BB2X1M U107 (.Y(n100), 
	.B1(n77), 
	.B0(n199), 
	.A1N(n77), 
	.A0N(\MEM[6][6] ));
   OAI2BB2X1M U108 (.Y(n101), 
	.B1(n77), 
	.B0(n200), 
	.A1N(n77), 
	.A0N(\MEM[6][7] ));
   OAI2BB2X1M U109 (.Y(n102), 
	.B1(n78), 
	.B0(n193), 
	.A1N(n78), 
	.A0N(\MEM[5][0] ));
   OAI2BB2X1M U110 (.Y(n103), 
	.B1(n78), 
	.B0(n194), 
	.A1N(n78), 
	.A0N(\MEM[5][1] ));
   OAI2BB2X1M U111 (.Y(n104), 
	.B1(n78), 
	.B0(n195), 
	.A1N(n78), 
	.A0N(\MEM[5][2] ));
   OAI2BB2X1M U112 (.Y(n105), 
	.B1(n78), 
	.B0(n196), 
	.A1N(n78), 
	.A0N(\MEM[5][3] ));
   OAI2BB2X1M U113 (.Y(n106), 
	.B1(n78), 
	.B0(n197), 
	.A1N(n78), 
	.A0N(\MEM[5][4] ));
   OAI2BB2X1M U114 (.Y(n107), 
	.B1(n78), 
	.B0(n198), 
	.A1N(n78), 
	.A0N(\MEM[5][5] ));
   OAI2BB2X1M U115 (.Y(n108), 
	.B1(n78), 
	.B0(n199), 
	.A1N(n78), 
	.A0N(\MEM[5][6] ));
   OAI2BB2X1M U116 (.Y(n109), 
	.B1(n78), 
	.B0(n200), 
	.A1N(n78), 
	.A0N(\MEM[5][7] ));
   OAI2BB2X1M U117 (.Y(n118), 
	.B1(n81), 
	.B0(n193), 
	.A1N(n81), 
	.A0N(\MEM[3][0] ));
   OAI2BB2X1M U118 (.Y(n119), 
	.B1(n81), 
	.B0(n194), 
	.A1N(n81), 
	.A0N(\MEM[3][1] ));
   OAI2BB2X1M U119 (.Y(n120), 
	.B1(n81), 
	.B0(n195), 
	.A1N(n81), 
	.A0N(\MEM[3][2] ));
   OAI2BB2X1M U120 (.Y(n121), 
	.B1(n81), 
	.B0(n196), 
	.A1N(n81), 
	.A0N(\MEM[3][3] ));
   OAI2BB2X1M U121 (.Y(n122), 
	.B1(n81), 
	.B0(n197), 
	.A1N(n81), 
	.A0N(\MEM[3][4] ));
   OAI2BB2X1M U122 (.Y(n123), 
	.B1(n81), 
	.B0(n198), 
	.A1N(n81), 
	.A0N(\MEM[3][5] ));
   OAI2BB2X1M U123 (.Y(n124), 
	.B1(n81), 
	.B0(n199), 
	.A1N(n81), 
	.A0N(\MEM[3][6] ));
   OAI2BB2X1M U124 (.Y(n125), 
	.B1(n81), 
	.B0(n200), 
	.A1N(n81), 
	.A0N(\MEM[3][7] ));
   OAI2BB2X1M U125 (.Y(n126), 
	.B1(n83), 
	.B0(n193), 
	.A1N(n83), 
	.A0N(\MEM[2][0] ));
   OAI2BB2X1M U126 (.Y(n127), 
	.B1(n83), 
	.B0(n194), 
	.A1N(n83), 
	.A0N(\MEM[2][1] ));
   OAI2BB2X1M U127 (.Y(n128), 
	.B1(n83), 
	.B0(n195), 
	.A1N(n83), 
	.A0N(\MEM[2][2] ));
   OAI2BB2X1M U128 (.Y(n129), 
	.B1(n83), 
	.B0(n196), 
	.A1N(n83), 
	.A0N(\MEM[2][3] ));
   OAI2BB2X1M U129 (.Y(n130), 
	.B1(n83), 
	.B0(n197), 
	.A1N(n83), 
	.A0N(\MEM[2][4] ));
   OAI2BB2X1M U130 (.Y(n131), 
	.B1(n83), 
	.B0(n198), 
	.A1N(n83), 
	.A0N(\MEM[2][5] ));
   OAI2BB2X1M U131 (.Y(n132), 
	.B1(n83), 
	.B0(n199), 
	.A1N(n83), 
	.A0N(\MEM[2][6] ));
   OAI2BB2X1M U132 (.Y(n133), 
	.B1(n83), 
	.B0(n200), 
	.A1N(n83), 
	.A0N(\MEM[2][7] ));
   OAI2BB2X1M U133 (.Y(n134), 
	.B1(n84), 
	.B0(n193), 
	.A1N(n84), 
	.A0N(\MEM[1][0] ));
   OAI2BB2X1M U134 (.Y(n135), 
	.B1(n84), 
	.B0(n194), 
	.A1N(n84), 
	.A0N(\MEM[1][1] ));
   OAI2BB2X1M U135 (.Y(n136), 
	.B1(n84), 
	.B0(n195), 
	.A1N(n84), 
	.A0N(\MEM[1][2] ));
   OAI2BB2X1M U136 (.Y(n137), 
	.B1(n84), 
	.B0(n196), 
	.A1N(n84), 
	.A0N(\MEM[1][3] ));
   OAI2BB2X1M U137 (.Y(n138), 
	.B1(n84), 
	.B0(n197), 
	.A1N(n84), 
	.A0N(\MEM[1][4] ));
   OAI2BB2X1M U138 (.Y(n139), 
	.B1(n84), 
	.B0(n198), 
	.A1N(n84), 
	.A0N(\MEM[1][5] ));
   OAI2BB2X1M U139 (.Y(n140), 
	.B1(n84), 
	.B0(n199), 
	.A1N(n84), 
	.A0N(\MEM[1][6] ));
   OAI2BB2X1M U140 (.Y(n141), 
	.B1(n84), 
	.B0(n200), 
	.A1N(n84), 
	.A0N(\MEM[1][7] ));
   OAI2BB2X1M U141 (.Y(n86), 
	.B1(n193), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][0] ));
   OAI2BB2X1M U142 (.Y(n87), 
	.B1(n194), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][1] ));
   OAI2BB2X1M U143 (.Y(n88), 
	.B1(n195), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][2] ));
   OAI2BB2X1M U144 (.Y(n89), 
	.B1(n196), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][3] ));
   OAI2BB2X1M U145 (.Y(n90), 
	.B1(n197), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][4] ));
   OAI2BB2X1M U146 (.Y(n91), 
	.B1(n198), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][5] ));
   OAI2BB2X1M U147 (.Y(n92), 
	.B1(n199), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][6] ));
   OAI2BB2X1M U148 (.Y(n93), 
	.B1(n200), 
	.B0(n75), 
	.A1N(n75), 
	.A0N(\MEM[7][7] ));
   AND2X2M U149 (.Y(n76), 
	.B(n80), 
	.A(wr_adr_mem[2]));
   NAND3X2M U150 (.Y(n77), 
	.C(wr_adr_mem[1]), 
	.B(n201), 
	.A(n76));
   NAND3X2M U151 (.Y(n78), 
	.C(wr_adr_mem[0]), 
	.B(n202), 
	.A(n76));
   NAND3X2M U152 (.Y(n81), 
	.C(n82), 
	.B(wr_adr_mem[0]), 
	.A(wr_adr_mem[1]));
   NAND3X2M U153 (.Y(n83), 
	.C(n82), 
	.B(n201), 
	.A(wr_adr_mem[1]));
   NAND3X2M U154 (.Y(n84), 
	.C(n82), 
	.B(n202), 
	.A(wr_adr_mem[0]));
   NAND3X2M U155 (.Y(n75), 
	.C(wr_adr_mem[1]), 
	.B(n76), 
	.A(wr_adr_mem[0]));
   INVX2M U156 (.Y(n193), 
	.A(wr_Data_mem[0]));
   INVX2M U157 (.Y(n194), 
	.A(wr_Data_mem[1]));
   INVX2M U158 (.Y(n195), 
	.A(wr_Data_mem[2]));
   INVX2M U159 (.Y(n196), 
	.A(wr_Data_mem[3]));
   INVX2M U160 (.Y(n197), 
	.A(wr_Data_mem[4]));
   INVX2M U161 (.Y(n198), 
	.A(wr_Data_mem[5]));
   INVX2M U162 (.Y(n199), 
	.A(wr_Data_mem[6]));
   INVX2M U163 (.Y(n200), 
	.A(wr_Data_mem[7]));
   INVX2M U164 (.Y(n202), 
	.A(wr_adr_mem[1]));
   INVX2M U165 (.Y(n201), 
	.A(wr_adr_mem[0]));
   NOR2X2M U166 (.Y(n173), 
	.B(N11), 
	.A(n176));
   NOR2X2M U167 (.Y(n170), 
	.B(N12), 
	.A(n177));
   NOR2X2M U168 (.Y(n169), 
	.B(N12), 
	.A(N11));
   INVX2M U169 (.Y(n177), 
	.A(N11));
   INVX2M U170 (.Y(n176), 
	.A(N12));
   INVX2M U171 (.Y(n178), 
	.A(N10));
   AO22X1M U172 (.Y(n65), 
	.B1(n169), 
	.B0(\MEM[1][0] ), 
	.A1(n170), 
	.A0(\MEM[3][0] ));
   AOI221XLM U173 (.Y(n68), 
	.C0(n65), 
	.B1(n172), 
	.B0(\MEM[7][0] ), 
	.A1(n173), 
	.A0(\MEM[5][0] ));
   AO22X1M U174 (.Y(n66), 
	.B1(n169), 
	.B0(\MEM[0][0] ), 
	.A1(n170), 
	.A0(\MEM[2][0] ));
   AOI221XLM U175 (.Y(n67), 
	.C0(n66), 
	.B1(n172), 
	.B0(\MEM[6][0] ), 
	.A1(n173), 
	.A0(\MEM[4][0] ));
   OAI22X1M U176 (.Y(rd_Data_mem[0]), 
	.B1(n67), 
	.B0(N10), 
	.A1(n68), 
	.A0(n178));
   AO22X1M U177 (.Y(n69), 
	.B1(n169), 
	.B0(\MEM[1][1] ), 
	.A1(n170), 
	.A0(\MEM[3][1] ));
   AOI221XLM U178 (.Y(n72), 
	.C0(n69), 
	.B1(n172), 
	.B0(\MEM[7][1] ), 
	.A1(n173), 
	.A0(\MEM[5][1] ));
   AO22X1M U179 (.Y(n70), 
	.B1(n169), 
	.B0(\MEM[0][1] ), 
	.A1(n170), 
	.A0(\MEM[2][1] ));
   AOI221XLM U180 (.Y(n71), 
	.C0(n70), 
	.B1(n172), 
	.B0(\MEM[6][1] ), 
	.A1(n173), 
	.A0(\MEM[4][1] ));
   OAI22X1M U181 (.Y(rd_Data_mem[1]), 
	.B1(n71), 
	.B0(N10), 
	.A1(n72), 
	.A0(n178));
   AO22X1M U182 (.Y(n73), 
	.B1(n169), 
	.B0(\MEM[1][2] ), 
	.A1(n170), 
	.A0(\MEM[3][2] ));
   AOI221XLM U183 (.Y(n151), 
	.C0(n73), 
	.B1(n172), 
	.B0(\MEM[7][2] ), 
	.A1(n173), 
	.A0(\MEM[5][2] ));
   AO22X1M U184 (.Y(n74), 
	.B1(n169), 
	.B0(\MEM[0][2] ), 
	.A1(n170), 
	.A0(\MEM[2][2] ));
   AOI221XLM U185 (.Y(n150), 
	.C0(n74), 
	.B1(n172), 
	.B0(\MEM[6][2] ), 
	.A1(n173), 
	.A0(\MEM[4][2] ));
   OAI22X1M U186 (.Y(rd_Data_mem[2]), 
	.B1(n150), 
	.B0(N10), 
	.A1(n151), 
	.A0(n178));
   AO22X1M U187 (.Y(n152), 
	.B1(n169), 
	.B0(\MEM[1][3] ), 
	.A1(n170), 
	.A0(\MEM[3][3] ));
   AOI221XLM U188 (.Y(n155), 
	.C0(n152), 
	.B1(n172), 
	.B0(\MEM[7][3] ), 
	.A1(n173), 
	.A0(\MEM[5][3] ));
   AO22X1M U189 (.Y(n153), 
	.B1(n169), 
	.B0(\MEM[0][3] ), 
	.A1(n170), 
	.A0(\MEM[2][3] ));
   AOI221XLM U190 (.Y(n154), 
	.C0(n153), 
	.B1(n172), 
	.B0(\MEM[6][3] ), 
	.A1(n173), 
	.A0(\MEM[4][3] ));
   OAI22X1M U191 (.Y(rd_Data_mem[3]), 
	.B1(n154), 
	.B0(N10), 
	.A1(n155), 
	.A0(n178));
   AO22X1M U192 (.Y(n156), 
	.B1(n169), 
	.B0(\MEM[1][4] ), 
	.A1(n170), 
	.A0(\MEM[3][4] ));
   AOI221XLM U193 (.Y(n159), 
	.C0(n156), 
	.B1(n172), 
	.B0(\MEM[7][4] ), 
	.A1(n173), 
	.A0(\MEM[5][4] ));
   AO22X1M U194 (.Y(n157), 
	.B1(n169), 
	.B0(\MEM[0][4] ), 
	.A1(n170), 
	.A0(\MEM[2][4] ));
   AOI221XLM U195 (.Y(n158), 
	.C0(n157), 
	.B1(n172), 
	.B0(\MEM[6][4] ), 
	.A1(n173), 
	.A0(\MEM[4][4] ));
   OAI22X1M U196 (.Y(rd_Data_mem[4]), 
	.B1(n158), 
	.B0(N10), 
	.A1(n159), 
	.A0(n178));
   AO22X1M U197 (.Y(n160), 
	.B1(n169), 
	.B0(\MEM[1][5] ), 
	.A1(n170), 
	.A0(\MEM[3][5] ));
   AOI221XLM U198 (.Y(n163), 
	.C0(n160), 
	.B1(n172), 
	.B0(\MEM[7][5] ), 
	.A1(n173), 
	.A0(\MEM[5][5] ));
   AO22X1M U199 (.Y(n161), 
	.B1(n169), 
	.B0(\MEM[0][5] ), 
	.A1(n170), 
	.A0(\MEM[2][5] ));
   AOI221XLM U200 (.Y(n162), 
	.C0(n161), 
	.B1(n172), 
	.B0(\MEM[6][5] ), 
	.A1(n173), 
	.A0(\MEM[4][5] ));
   OAI22X1M U201 (.Y(rd_Data_mem[5]), 
	.B1(n162), 
	.B0(N10), 
	.A1(n163), 
	.A0(n178));
   AO22X1M U202 (.Y(n164), 
	.B1(n169), 
	.B0(\MEM[1][6] ), 
	.A1(n170), 
	.A0(\MEM[3][6] ));
   AOI221XLM U203 (.Y(n167), 
	.C0(n164), 
	.B1(n172), 
	.B0(\MEM[7][6] ), 
	.A1(n173), 
	.A0(\MEM[5][6] ));
   AO22X1M U204 (.Y(n165), 
	.B1(n169), 
	.B0(\MEM[0][6] ), 
	.A1(n170), 
	.A0(\MEM[2][6] ));
   AOI221XLM U205 (.Y(n166), 
	.C0(n165), 
	.B1(n172), 
	.B0(\MEM[6][6] ), 
	.A1(n173), 
	.A0(\MEM[4][6] ));
   OAI22X1M U206 (.Y(rd_Data_mem[6]), 
	.B1(n166), 
	.B0(N10), 
	.A1(n167), 
	.A0(n178));
   AO22X1M U207 (.Y(n168), 
	.B1(n169), 
	.B0(\MEM[1][7] ), 
	.A1(n170), 
	.A0(\MEM[3][7] ));
   AOI221XLM U208 (.Y(n175), 
	.C0(n168), 
	.B1(n172), 
	.B0(\MEM[7][7] ), 
	.A1(n173), 
	.A0(\MEM[5][7] ));
   AO22X1M U209 (.Y(n171), 
	.B1(n169), 
	.B0(\MEM[0][7] ), 
	.A1(n170), 
	.A0(\MEM[2][7] ));
   AOI221XLM U210 (.Y(n174), 
	.C0(n171), 
	.B1(n172), 
	.B0(\MEM[6][7] ), 
	.A1(n173), 
	.A0(\MEM[4][7] ));
   OAI22X1M U211 (.Y(rd_Data_mem[7]), 
	.B1(n174), 
	.B0(N10), 
	.A1(n178), 
	.A0(n175));
   INVXLM U212 (.Y(n205), 
	.A(test_se));
   CLKINVX2M U213 (.Y(n206), 
	.A(n205));
   CLKINVX2M U214 (.Y(n207), 
	.A(n205));
   CLKINVX2M U215 (.Y(n208), 
	.A(n205));
   CLKINVX2M U216 (.Y(n209), 
	.A(n205));
endmodule

module wptr_Full_blk_test_1 (
	wr_clk_blk, 
	wr_rst_blk, 
	wr_inc_blk, 
	wq2_rptr_blk, 
	wr_full_blk, 
	wr_adr_blk, 
	wr_ptr_blk, 
	test_si, 
	test_se, 
	FE_OFN1_REF_SYNC_RST_M, 
	Ref_muxed_clk__L7_N1);
   input wr_clk_blk;
   input wr_rst_blk;
   input wr_inc_blk;
   input [3:0] wq2_rptr_blk;
   output wr_full_blk;
   output [2:0] wr_adr_blk;
   output [3:0] wr_ptr_blk;
   input test_si;
   input test_se;
   input FE_OFN1_REF_SYNC_RST_M;
   input Ref_muxed_clk__L7_N1;

   // Internal wires
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire [3:0] gray_bin_ptr;
   wire [3:0] ptr_bin_next;

   SDFFRQX2M \bin_ptr_reg[3]  (.SI(wr_adr_blk[2]), 
	.SE(test_se), 
	.RN(wr_rst_blk), 
	.Q(gray_bin_ptr[3]), 
	.D(ptr_bin_next[3]), 
	.CK(wr_clk_blk));
   SDFFRQX2M \bin_ptr_reg[2]  (.SI(wr_adr_blk[1]), 
	.SE(test_se), 
	.RN(FE_OFN1_REF_SYNC_RST_M), 
	.Q(wr_adr_blk[2]), 
	.D(ptr_bin_next[2]), 
	.CK(Ref_muxed_clk__L7_N1));
   SDFFRQX2M \wr_ptr_blk_reg[3]  (.SI(wr_ptr_blk[2]), 
	.SE(test_se), 
	.RN(wr_rst_blk), 
	.Q(wr_ptr_blk[3]), 
	.D(gray_bin_ptr[3]), 
	.CK(wr_clk_blk));
   SDFFRQX2M \wr_ptr_blk_reg[2]  (.SI(wr_ptr_blk[1]), 
	.SE(test_se), 
	.RN(wr_rst_blk), 
	.Q(wr_ptr_blk[2]), 
	.D(gray_bin_ptr[2]), 
	.CK(wr_clk_blk));
   SDFFRQX2M \wr_ptr_blk_reg[1]  (.SI(wr_ptr_blk[0]), 
	.SE(test_se), 
	.RN(wr_rst_blk), 
	.Q(wr_ptr_blk[1]), 
	.D(gray_bin_ptr[1]), 
	.CK(wr_clk_blk));
   SDFFRQX2M \wr_ptr_blk_reg[0]  (.SI(gray_bin_ptr[3]), 
	.SE(test_se), 
	.RN(wr_rst_blk), 
	.Q(wr_ptr_blk[0]), 
	.D(gray_bin_ptr[0]), 
	.CK(wr_clk_blk));
   SDFFRX1M \bin_ptr_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(wr_rst_blk), 
	.QN(n9), 
	.Q(wr_adr_blk[0]), 
	.D(ptr_bin_next[0]), 
	.CK(wr_clk_blk));
   SDFFRQX2M \bin_ptr_reg[1]  (.SI(wr_adr_blk[0]), 
	.SE(test_se), 
	.RN(wr_rst_blk), 
	.Q(wr_adr_blk[1]), 
	.D(ptr_bin_next[1]), 
	.CK(wr_clk_blk));
   INVX2M U11 (.Y(wr_full_blk), 
	.A(n10));
   NAND2X2M U12 (.Y(n14), 
	.B(n10), 
	.A(wr_inc_blk));
   NOR2X2M U13 (.Y(n12), 
	.B(n9), 
	.A(n14));
   XNOR2X2M U14 (.Y(n15), 
	.B(wq2_rptr_blk[1]), 
	.A(gray_bin_ptr[1]));
   XNOR2X2M U15 (.Y(gray_bin_ptr[0]), 
	.B(wr_adr_blk[1]), 
	.A(n9));
   XNOR2X2M U16 (.Y(ptr_bin_next[2]), 
	.B(n13), 
	.A(wr_adr_blk[2]));
   NAND2X2M U17 (.Y(n13), 
	.B(wr_adr_blk[1]), 
	.A(n12));
   NAND4X2M U18 (.Y(n10), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   CLKXOR2X2M U19 (.Y(n18), 
	.B(gray_bin_ptr[3]), 
	.A(wq2_rptr_blk[3]));
   XNOR2X2M U20 (.Y(n16), 
	.B(wq2_rptr_blk[0]), 
	.A(gray_bin_ptr[0]));
   CLKXOR2X2M U21 (.Y(n17), 
	.B(gray_bin_ptr[2]), 
	.A(wq2_rptr_blk[2]));
   XNOR2X2M U22 (.Y(ptr_bin_next[3]), 
	.B(n11), 
	.A(gray_bin_ptr[3]));
   NAND3X2M U23 (.Y(n11), 
	.C(n12), 
	.B(wr_adr_blk[2]), 
	.A(wr_adr_blk[1]));
   CLKXOR2X2M U24 (.Y(gray_bin_ptr[2]), 
	.B(wr_adr_blk[2]), 
	.A(gray_bin_ptr[3]));
   CLKXOR2X2M U25 (.Y(gray_bin_ptr[1]), 
	.B(wr_adr_blk[2]), 
	.A(wr_adr_blk[1]));
   CLKXOR2X2M U26 (.Y(ptr_bin_next[1]), 
	.B(n12), 
	.A(wr_adr_blk[1]));
   CLKXOR2X2M U27 (.Y(ptr_bin_next[0]), 
	.B(n14), 
	.A(n9));
endmodule

module rptr_empty_blk_test_1 (
	rd_clk_blk, 
	rd_rst_blk, 
	rd_inc_blk, 
	rq2_wptr_blk, 
	rd_empty_blk, 
	rd_adr_blk, 
	rd_ptr_blk, 
	test_si2, 
	test_si1, 
	test_se, 
	FE_OFN6_UART_SYNC_RST_M, 
	UART_muxed_clk__L12_N1);
   input rd_clk_blk;
   input rd_rst_blk;
   input rd_inc_blk;
   input [3:0] rq2_wptr_blk;
   output rd_empty_blk;
   output [2:0] rd_adr_blk;
   output [3:0] rd_ptr_blk;
   input test_si2;
   input test_si1;
   input test_se;
   input FE_OFN6_UART_SYNC_RST_M;
   input UART_muxed_clk__L12_N1;

   // Internal wires
   wire FE_PHN5_test_si2;
   wire FE_PHN4_test_si2;
   wire n9;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire [3:0] gray_bin_ptr;
   wire [3:0] ptr_bin_next;

   DLY4X1M FE_PHC5_test_si2 (.Y(FE_PHN5_test_si2), 
	.A(FE_PHN4_test_si2));
   DLY4X1M FE_PHC4_test_si2 (.Y(FE_PHN4_test_si2), 
	.A(test_si2));
   SDFFRQX2M \bin_ptr_reg[3]  (.SI(FE_PHN5_test_si2), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(gray_bin_ptr[3]), 
	.D(ptr_bin_next[3]), 
	.CK(rd_clk_blk));
   SDFFRX1M \bin_ptr_reg[0]  (.SI(test_si1), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.QN(n9), 
	.Q(rd_adr_blk[0]), 
	.D(ptr_bin_next[0]), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX4M \bin_ptr_reg[2]  (.SI(rd_adr_blk[1]), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(rd_adr_blk[2]), 
	.D(ptr_bin_next[2]), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \bin_ptr_reg[1]  (.SI(rd_adr_blk[0]), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(rd_adr_blk[1]), 
	.D(ptr_bin_next[1]), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \rd_ptr_blk_reg[3]  (.SI(rd_ptr_blk[2]), 
	.SE(test_se), 
	.RN(rd_rst_blk), 
	.Q(rd_ptr_blk[3]), 
	.D(gray_bin_ptr[3]), 
	.CK(rd_clk_blk));
   SDFFRQX2M \rd_ptr_blk_reg[2]  (.SI(rd_ptr_blk[1]), 
	.SE(test_se), 
	.RN(rd_rst_blk), 
	.Q(rd_ptr_blk[2]), 
	.D(gray_bin_ptr[2]), 
	.CK(rd_clk_blk));
   SDFFRQX2M \rd_ptr_blk_reg[1]  (.SI(rd_ptr_blk[0]), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(rd_ptr_blk[1]), 
	.D(gray_bin_ptr[1]), 
	.CK(rd_clk_blk));
   SDFFRQX2M \rd_ptr_blk_reg[0]  (.SI(gray_bin_ptr[3]), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(rd_ptr_blk[0]), 
	.D(gray_bin_ptr[0]), 
	.CK(rd_clk_blk));
   NOR2X2M U12 (.Y(n12), 
	.B(n9), 
	.A(n14));
   XNOR2X2M U13 (.Y(n18), 
	.B(rq2_wptr_blk[2]), 
	.A(gray_bin_ptr[2]));
   XNOR2X2M U14 (.Y(gray_bin_ptr[0]), 
	.B(rd_adr_blk[1]), 
	.A(n9));
   XNOR2X2M U15 (.Y(ptr_bin_next[3]), 
	.B(n11), 
	.A(gray_bin_ptr[3]));
   NAND3X2M U16 (.Y(n11), 
	.C(n12), 
	.B(rd_adr_blk[2]), 
	.A(rd_adr_blk[1]));
   XNOR2X2M U17 (.Y(ptr_bin_next[2]), 
	.B(n13), 
	.A(rd_adr_blk[2]));
   NAND2X2M U18 (.Y(n13), 
	.B(rd_adr_blk[1]), 
	.A(n12));
   NAND4X2M U19 (.Y(rd_empty_blk), 
	.D(n18), 
	.C(n17), 
	.B(n16), 
	.A(n15));
   XNOR2X2M U20 (.Y(n17), 
	.B(rq2_wptr_blk[3]), 
	.A(gray_bin_ptr[3]));
   XNOR2X2M U21 (.Y(n16), 
	.B(rq2_wptr_blk[0]), 
	.A(gray_bin_ptr[0]));
   XNOR2X2M U22 (.Y(n15), 
	.B(rq2_wptr_blk[1]), 
	.A(gray_bin_ptr[1]));
   NAND2X2M U23 (.Y(n14), 
	.B(rd_empty_blk), 
	.A(rd_inc_blk));
   CLKXOR2X2M U24 (.Y(gray_bin_ptr[1]), 
	.B(rd_adr_blk[2]), 
	.A(rd_adr_blk[1]));
   CLKXOR2X2M U25 (.Y(gray_bin_ptr[2]), 
	.B(rd_adr_blk[2]), 
	.A(gray_bin_ptr[3]));
   CLKXOR2X2M U26 (.Y(ptr_bin_next[1]), 
	.B(n12), 
	.A(rd_adr_blk[1]));
   CLKXOR2X2M U27 (.Y(ptr_bin_next[0]), 
	.B(n14), 
	.A(n9));
endmodule

module sync_2FF_test_0 (
	clk_sync, 
	rst_sync, 
	ptr_sync, 
	Sync_out, 
	test_so, 
	test_se);
   input clk_sync;
   input rst_sync;
   input [3:0] ptr_sync;
   output [3:0] Sync_out;
   output test_so;
   input test_se;

   // Internal wires
   wire [3:0] wq1_reg;

   assign test_so = wq1_reg[3] ;

   SDFFRQX2M \Sync_out_reg[1]  (.SI(Sync_out[0]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[1]), 
	.D(wq1_reg[1]), 
	.CK(clk_sync));
   SDFFRQX2M \Sync_out_reg[0]  (.SI(ptr_sync[3]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[0]), 
	.D(wq1_reg[0]), 
	.CK(clk_sync));
   SDFFRQX2M \Sync_out_reg[3]  (.SI(Sync_out[2]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[3]), 
	.D(wq1_reg[3]), 
	.CK(clk_sync));
   SDFFRQX2M \Sync_out_reg[2]  (.SI(Sync_out[1]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[2]), 
	.D(wq1_reg[2]), 
	.CK(clk_sync));
   SDFFRQX2M \wq1_reg_reg[3]  (.SI(wq1_reg[2]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[3]), 
	.D(ptr_sync[3]), 
	.CK(clk_sync));
   SDFFRQX2M \wq1_reg_reg[2]  (.SI(wq1_reg[1]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[2]), 
	.D(ptr_sync[2]), 
	.CK(clk_sync));
   SDFFRQX2M \wq1_reg_reg[1]  (.SI(wq1_reg[0]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[1]), 
	.D(ptr_sync[1]), 
	.CK(clk_sync));
   SDFFRQX2M \wq1_reg_reg[0]  (.SI(Sync_out[3]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[0]), 
	.D(ptr_sync[0]), 
	.CK(clk_sync));
endmodule

module sync_2FF_test_1 (
	clk_sync, 
	rst_sync, 
	ptr_sync, 
	Sync_out, 
	test_si, 
	test_so, 
	test_se, 
	UART_muxed_clk__L12_N1);
   input clk_sync;
   input rst_sync;
   input [3:0] ptr_sync;
   output [3:0] Sync_out;
   input test_si;
   output test_so;
   input test_se;
   input UART_muxed_clk__L12_N1;

   // Internal wires
   wire [3:0] wq1_reg;

   assign test_so = wq1_reg[3] ;

   SDFFRQX2M \Sync_out_reg[3]  (.SI(Sync_out[2]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[3]), 
	.D(wq1_reg[3]), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \Sync_out_reg[2]  (.SI(Sync_out[1]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[2]), 
	.D(wq1_reg[2]), 
	.CK(clk_sync));
   SDFFRQX2M \Sync_out_reg[1]  (.SI(Sync_out[0]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[1]), 
	.D(wq1_reg[1]), 
	.CK(clk_sync));
   SDFFRQX2M \Sync_out_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(Sync_out[0]), 
	.D(wq1_reg[0]), 
	.CK(clk_sync));
   SDFFRQX2M \wq1_reg_reg[3]  (.SI(wq1_reg[2]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[3]), 
	.D(ptr_sync[3]), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \wq1_reg_reg[2]  (.SI(wq1_reg[1]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[2]), 
	.D(ptr_sync[2]), 
	.CK(clk_sync));
   SDFFRQX2M \wq1_reg_reg[1]  (.SI(wq1_reg[0]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[1]), 
	.D(ptr_sync[1]), 
	.CK(clk_sync));
   SDFFRQX2M \wq1_reg_reg[0]  (.SI(Sync_out[3]), 
	.SE(test_se), 
	.RN(rst_sync), 
	.Q(wq1_reg[0]), 
	.D(ptr_sync[0]), 
	.CK(clk_sync));
endmodule

module Async_FIFO_test_1 (
	WR_clk, 
	WR_rst, 
	WR_inc, 
	WR_Data, 
	RD_clk, 
	RD_rst, 
	RD_inc, 
	FULL, 
	EMPTY, 
	RD_Data, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN0_REF_SYNC_RST_M, 
	FE_OFN4_REF_SYNC_RST_M, 
	FE_OFN6_UART_SYNC_RST_M, 
	UART_muxed_clk__L12_N1, 
	Ref_muxed_clk__L7_N1, 
	Ref_muxed_clk__L7_N2, 
	Ref_muxed_clk__L7_N3, 
	Ref_muxed_clk__L7_N4);
   input WR_clk;
   input WR_rst;
   input WR_inc;
   input [7:0] WR_Data;
   input RD_clk;
   input RD_rst;
   input RD_inc;
   output FULL;
   output EMPTY;
   output [7:0] RD_Data;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN0_REF_SYNC_RST_M;
   input FE_OFN4_REF_SYNC_RST_M;
   input FE_OFN6_UART_SYNC_RST_M;
   input UART_muxed_clk__L12_N1;
   input Ref_muxed_clk__L7_N1;
   input Ref_muxed_clk__L7_N2;
   input Ref_muxed_clk__L7_N3;
   input Ref_muxed_clk__L7_N4;

   // Internal wires
   wire FE_OFN1_REF_SYNC_RST_M;
   wire n7;
   wire n8;
   wire [2:0] Waddr;
   wire [2:0] Raddr;
   wire [3:0] wq2_rptr;
   wire [3:0] Wptr;
   wire [3:0] rq2_wptr;
   wire [3:0] Rptr;

   assign test_so1 = Raddr[2] ;

   CLKINVX6M FE_OFC1_REF_SYNC_RST_M (.Y(FE_OFN1_REF_SYNC_RST_M), 
	.A(FE_OFN0_REF_SYNC_RST_M));
   FIFO_Mem_test_1 U0_FIFO_MEM (.wr_clk_mem(Ref_muxed_clk__L7_N1), 
	.Wr_rst_mem(WR_rst), 
	.wr_full_mem(FULL), 
	.wr_inc_mem(WR_inc), 
	.wr_Data_mem({ WR_Data[7],
		WR_Data[6],
		WR_Data[5],
		WR_Data[4],
		WR_Data[3],
		WR_Data[2],
		WR_Data[1],
		WR_Data[0] }), 
	.wr_adr_mem({ Waddr[2],
		Waddr[1],
		Waddr[0] }), 
	.rd_adr_mem({ Raddr[2],
		Raddr[1],
		Raddr[0] }), 
	.rd_Data_mem({ RD_Data[7],
		RD_Data[6],
		RD_Data[5],
		RD_Data[4],
		RD_Data[3],
		RD_Data[2],
		RD_Data[1],
		RD_Data[0] }), 
	.test_si(test_si1), 
	.test_so(n8), 
	.test_se(test_se), 
	.FE_OFN4_REF_SYNC_RST_M(FE_OFN4_REF_SYNC_RST_M), 
	.FE_OFN1_REF_SYNC_RST_M(FE_OFN1_REF_SYNC_RST_M), 
	.Ref_muxed_clk__L7_N2(Ref_muxed_clk__L7_N2), 
	.Ref_muxed_clk__L7_N3(Ref_muxed_clk__L7_N3), 
	.Ref_muxed_clk__L7_N4(Ref_muxed_clk__L7_N4));
   wptr_Full_blk_test_1 U0_full_blk (.wr_clk_blk(WR_clk), 
	.wr_rst_blk(WR_rst), 
	.wr_inc_blk(WR_inc), 
	.wq2_rptr_blk({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.wr_full_blk(FULL), 
	.wr_adr_blk({ Waddr[2],
		Waddr[1],
		Waddr[0] }), 
	.wr_ptr_blk({ Wptr[3],
		Wptr[2],
		Wptr[1],
		Wptr[0] }), 
	.test_si(n8), 
	.test_se(test_se), 
	.FE_OFN1_REF_SYNC_RST_M(FE_OFN1_REF_SYNC_RST_M), 
	.Ref_muxed_clk__L7_N1(Ref_muxed_clk__L7_N1));
   rptr_empty_blk_test_1 u0_empty_blk (.rd_clk_blk(RD_clk), 
	.rd_rst_blk(RD_rst), 
	.rd_inc_blk(RD_inc), 
	.rq2_wptr_blk({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.rd_empty_blk(EMPTY), 
	.rd_adr_blk({ Raddr[2],
		Raddr[1],
		Raddr[0] }), 
	.rd_ptr_blk({ Rptr[3],
		Rptr[2],
		Rptr[1],
		Rptr[0] }), 
	.test_si2(test_si2), 
	.test_si1(Wptr[3]), 
	.test_se(test_se), 
	.FE_OFN6_UART_SYNC_RST_M(FE_OFN6_UART_SYNC_RST_M), 
	.UART_muxed_clk__L12_N1(UART_muxed_clk__L12_N1));
   sync_2FF_test_0 u0_sync_r2w (.clk_sync(WR_clk), 
	.rst_sync(WR_rst), 
	.ptr_sync({ Rptr[3],
		Rptr[2],
		Rptr[1],
		Rptr[0] }), 
	.Sync_out({ wq2_rptr[3],
		wq2_rptr[2],
		wq2_rptr[1],
		wq2_rptr[0] }), 
	.test_so(n7), 
	.test_se(test_se));
   sync_2FF_test_1 u0_sync_w2r (.clk_sync(RD_clk), 
	.rst_sync(FE_OFN6_UART_SYNC_RST_M), 
	.ptr_sync({ Wptr[3],
		Wptr[2],
		Wptr[1],
		Wptr[0] }), 
	.Sync_out({ rq2_wptr[3],
		rq2_wptr[2],
		rq2_wptr[1],
		rq2_wptr[0] }), 
	.test_si(n7), 
	.test_so(test_so2), 
	.test_se(test_se), 
	.UART_muxed_clk__L12_N1(UART_muxed_clk__L12_N1));
endmodule

module pulse_Gen_test_1 (
	CLK, 
	RST, 
	in_signal, 
	pulsed_signal, 
	test_si, 
	test_so, 
	test_se);
   input CLK;
   input RST;
   input in_signal;
   output pulsed_signal;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire out_Flop;
   wire in_Flop;

   assign test_so = out_Flop ;

   SDFFRQX2M out_Flop_reg (.SI(in_Flop), 
	.SE(test_se), 
	.RN(RST), 
	.Q(out_Flop), 
	.D(in_Flop), 
	.CK(CLK));
   SDFFRQX2M in_Flop_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(RST), 
	.Q(in_Flop), 
	.D(in_signal), 
	.CK(CLK));
   AND2X2M U5 (.Y(pulsed_signal), 
	.B(in_Flop), 
	.A(out_Flop));
endmodule

module CLK_div_0_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module CLK_div_test_0 (
	i_rst_n, 
	i_ref_clk, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_muxed_clk__L2_N0, 
	UART_muxed_clk__L7_N0);
   input i_rst_n;
   input i_ref_clk;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_muxed_clk__L2_N0;
   input UART_muxed_clk__L7_N0;

   // Internal wires
   wire FE_PHN21_div_clk_reg__Exclude_0_NET;
   wire div_clk_reg__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire N2;
   wire div_clk_reg;
   wire toggle_flag;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N61;
   wire N62;
   wire N63;
   wire N64;
   wire N65;
   wire N66;
   wire N67;
   wire N68;
   wire n35;
   wire n36;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire [7:0] counter;

   assign test_so = toggle_flag ;

   DLY4X1M FE_PHC21_div_clk_reg__Exclude_0_NET (.Y(FE_PHN21_div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg__Exclude_0_NET));
   BUFX8M div_clk_reg__Exclude_0 (.Y(div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   SDFFRQX2M div_clk_reg_reg (.SI(counter[7]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk_reg), 
	.D(n35), 
	.CK(UART_muxed_clk__L2_N0));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(N68), 
	.CK(i_ref_clk));
   SDFFRQX2M toggle_flag_reg (.SI(FE_PHN21_div_clk_reg__Exclude_0_NET), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(toggle_flag), 
	.D(n36), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N61), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N62), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N63), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N64), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N65), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N66), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N67), 
	.CK(i_ref_clk));
   OR2X2M U7 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   MX2X2M U8 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk_reg), 
	.A(UART_muxed_clk__L7_N0));
   NAND2X2M U9 (.Y(n22), 
	.B(n20), 
	.A(n23));
   CLKINVX1M U16 (.Y(N9), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(N10), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(N11), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   OR2X1M U20 (.Y(n3), 
	.B(i_div_ratio[4]), 
	.A(n2));
   OAI2BB1X1M U21 (.Y(N12), 
	.B0(n3), 
	.A1N(i_div_ratio[4]), 
	.A0N(n2));
   OR2X1M U22 (.Y(n4), 
	.B(i_div_ratio[5]), 
	.A(n3));
   OAI2BB1X1M U23 (.Y(N13), 
	.B0(n4), 
	.A1N(i_div_ratio[5]), 
	.A0N(n3));
   XNOR2X1M U24 (.Y(N14), 
	.B(n4), 
	.A(i_div_ratio[6]));
   NOR3X1M U25 (.Y(N16), 
	.C(n4), 
	.B(i_div_ratio[7]), 
	.A(i_div_ratio[6]));
   OAI21X1M U26 (.Y(n5), 
	.B0(i_div_ratio[7]), 
	.A1(n4), 
	.A0(i_div_ratio[6]));
   NAND2BX1M U27 (.Y(N15), 
	.B(n5), 
	.AN(N16));
   MXI2X1M U28 (.Y(n36), 
	.S0(toggle_flag), 
	.B(n7), 
	.A(n6));
   CLKNAND2X2M U29 (.Y(n6), 
	.B(n7), 
	.A(N2));
   OAI21X1M U30 (.Y(n7), 
	.B0(n20), 
	.A1(n19), 
	.A0(n18));
   MXI2X1M U31 (.Y(n35), 
	.S0(div_clk_reg__Exclude_0_NET), 
	.B(n22), 
	.A(n21));
   CLKNAND2X2M U32 (.Y(n21), 
	.B(n22), 
	.A(N2));
   NOR2BX1M U33 (.Y(N68), 
	.B(n22), 
	.AN(N32));
   NOR2BX1M U34 (.Y(N67), 
	.B(n22), 
	.AN(N31));
   NOR2BX1M U35 (.Y(N66), 
	.B(n22), 
	.AN(N30));
   NOR2BX1M U36 (.Y(N65), 
	.B(n22), 
	.AN(N29));
   NOR2BX1M U37 (.Y(N64), 
	.B(n22), 
	.AN(N28));
   NOR2BX1M U38 (.Y(N63), 
	.B(n22), 
	.AN(N27));
   NOR2BX1M U39 (.Y(N62), 
	.B(n22), 
	.AN(N26));
   NOR2BX1M U40 (.Y(N61), 
	.B(n22), 
	.AN(N25));
   CLKINVX1M U41 (.Y(n20), 
	.A(n24));
   OAI31X1M U42 (.Y(n24), 
	.B0(N2), 
	.A2(n27), 
	.A1(n26), 
	.A0(n25));
   CLKNAND2X2M U43 (.Y(n27), 
	.B(n29), 
	.A(n28));
   XNOR2X1M U44 (.Y(n29), 
	.B(N14), 
	.A(counter[5]));
   XNOR2X1M U45 (.Y(n28), 
	.B(N15), 
	.A(counter[6]));
   NAND3X1M U46 (.Y(n26), 
	.C(n32), 
	.B(n31), 
	.A(n30));
   XNOR2X1M U47 (.Y(n32), 
	.B(N12), 
	.A(counter[3]));
   XNOR2X1M U48 (.Y(n31), 
	.B(N13), 
	.A(counter[4]));
   XNOR2X1M U49 (.Y(n30), 
	.B(N9), 
	.A(counter[0]));
   NAND4X1M U50 (.Y(n25), 
	.D(n38), 
	.C(n37), 
	.B(n34), 
	.A(n33));
   XNOR2X1M U51 (.Y(n38), 
	.B(N10), 
	.A(counter[1]));
   NOR2X1M U52 (.Y(n37), 
	.B(n18), 
	.A(toggle_flag));
   XNOR2X1M U53 (.Y(n34), 
	.B(N11), 
	.A(counter[2]));
   CLKXOR2X2M U54 (.Y(n33), 
	.B(N16), 
	.A(n39));
   AOI31X1M U55 (.Y(n23), 
	.B0(n42), 
	.A2(n41), 
	.A1(n18), 
	.A0(n40));
   CLKINVX1M U56 (.Y(n42), 
	.A(n19));
   NAND3X1M U57 (.Y(n19), 
	.C(toggle_flag), 
	.B(n40), 
	.A(n41));
   AND4X1M U58 (.Y(n41), 
	.D(n45), 
	.C(n44), 
	.B(n43), 
	.A(n39));
   XNOR2X1M U59 (.Y(n45), 
	.B(i_div_ratio[1]), 
	.A(counter[0]));
   XNOR2X1M U60 (.Y(n44), 
	.B(i_div_ratio[2]), 
	.A(counter[1]));
   XNOR2X1M U61 (.Y(n43), 
	.B(i_div_ratio[3]), 
	.A(counter[2]));
   CLKINVX1M U62 (.Y(n39), 
	.A(counter[7]));
   CLKINVX1M U63 (.Y(n18), 
	.A(i_div_ratio[0]));
   AND4X1M U64 (.Y(n40), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   XNOR2X1M U65 (.Y(n49), 
	.B(i_div_ratio[4]), 
	.A(counter[3]));
   XNOR2X1M U66 (.Y(n48), 
	.B(i_div_ratio[5]), 
	.A(counter[4]));
   XNOR2X1M U67 (.Y(n47), 
	.B(i_div_ratio[6]), 
	.A(counter[5]));
   XNOR2X1M U68 (.Y(n46), 
	.B(i_div_ratio[7]), 
	.A(counter[6]));
   OA21X1M U69 (.Y(N2), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n51), 
	.A0(n50));
   OR3X1M U70 (.Y(n51), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U71 (.Y(n50), 
	.D(i_div_ratio[7]), 
	.C(i_div_ratio[6]), 
	.B(i_div_ratio[5]), 
	.A(i_div_ratio[4]));
   CLK_div_0_DW01_inc_0 r73 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N32,
		N31,
		N30,
		N29,
		N28,
		N27,
		N26,
		N25 }));
endmodule

module clk_div_mux (
	in, 
	div_ratio);
   input [5:0] in;
   output [7:0] div_ratio;

   // Internal wires
   wire HTIE_LTIEHI_NET;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n14;
   wire n15;
   wire n16;
   wire n17;

   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   NAND4BX1M U11 (.Y(n6), 
	.D(n14), 
	.C(n15), 
	.B(in[3]), 
	.AN(in[4]));
   NAND4BX1M U12 (.Y(n7), 
	.D(n14), 
	.C(n15), 
	.B(in[4]), 
	.AN(in[3]));
   NOR3X2M U13 (.Y(div_ratio[1]), 
	.C(in[0]), 
	.B(in[1]), 
	.A(n7));
   NOR3X2M U14 (.Y(div_ratio[2]), 
	.C(in[0]), 
	.B(in[1]), 
	.A(n6));
   NOR4X1M U15 (.Y(div_ratio[3]), 
	.D(in[4]), 
	.C(in[5]), 
	.B(in[3]), 
	.A(n5));
   NAND3X2M U16 (.Y(n5), 
	.C(in[2]), 
	.B(n16), 
	.A(n17));
   INVX2M U17 (.Y(n15), 
	.A(in[2]));
   INVX2M U18 (.Y(n16), 
	.A(in[1]));
   INVX2M U19 (.Y(n17), 
	.A(in[0]));
   INVX2M U20 (.Y(n14), 
	.A(in[5]));
   OAI211X2M U21 (.Y(div_ratio[0]), 
	.C0(n16), 
	.B0(n17), 
	.A1(n9), 
	.A0(n8));
   NOR4X1M U22 (.Y(n8), 
	.D(n15), 
	.C(in[3]), 
	.B(in[4]), 
	.A(in[5]));
   NAND2X2M U23 (.Y(n9), 
	.B(n6), 
	.A(n7));
   INVX2M U3 (.Y(div_ratio[7]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U5 (.Y(div_ratio[6]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U7 (.Y(div_ratio[5]), 
	.A(HTIE_LTIEHI_NET));
   INVX2M U9 (.Y(div_ratio[4]), 
	.A(HTIE_LTIEHI_NET));
endmodule

module CLK_div_1_DW01_inc_0 (
	A, 
	SUM);
   input [7:0] A;
   output [7:0] SUM;

   // Internal wires
   wire [7:2] carry;

   ADDHX1M U1_1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.B(carry[6]), 
	.A(A[6]));
   ADDHX1M U1_1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.B(carry[5]), 
	.A(A[5]));
   ADDHX1M U1_1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.B(carry[4]), 
	.A(A[4]));
   ADDHX1M U1_1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.B(carry[3]), 
	.A(A[3]));
   ADDHX1M U1_1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.B(carry[2]), 
	.A(A[2]));
   ADDHX1M U1_1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.B(A[0]), 
	.A(A[1]));
   CLKXOR2X2M U1 (.Y(SUM[7]), 
	.B(A[7]), 
	.A(carry[7]));
   CLKINVX1M U2 (.Y(SUM[0]), 
	.A(A[0]));
endmodule

module CLK_div_test_1 (
	i_rst_n, 
	i_ref_clk, 
	i_clk_en, 
	i_div_ratio, 
	o_div_clk, 
	test_si, 
	test_so, 
	test_se, 
	UART_muxed_clk__L12_N1, 
	UART_muxed_clk__L2_N0, 
	UART_muxed_clk__L7_N0);
   input i_rst_n;
   input i_ref_clk;
   input i_clk_en;
   input [7:0] i_div_ratio;
   output o_div_clk;
   input test_si;
   output test_so;
   input test_se;
   input UART_muxed_clk__L12_N1;
   input UART_muxed_clk__L2_N0;
   input UART_muxed_clk__L7_N0;

   // Internal wires
   wire FE_PHN20_div_clk_reg__Exclude_0_NET;
   wire div_clk_reg__Exclude_0_NET;
   wire HTIE_LTIEHI_NET;
   wire LTIE_LTIELO_NET;
   wire N2;
   wire div_clk_reg;
   wire toggle_flag;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire N15;
   wire N16;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire N30;
   wire N31;
   wire N32;
   wire N61;
   wire N62;
   wire N63;
   wire N64;
   wire N65;
   wire N66;
   wire N67;
   wire N68;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire [7:0] counter;

   assign test_so = toggle_flag ;

   DLY3X1M FE_PHC20_div_clk_reg__Exclude_0_NET (.Y(FE_PHN20_div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg__Exclude_0_NET));
   BUFX8M div_clk_reg__Exclude_0 (.Y(div_clk_reg__Exclude_0_NET), 
	.A(div_clk_reg));
   TIEHIM HTIE_LTIEHI (.Y(HTIE_LTIEHI_NET));
   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   SDFFRQX2M div_clk_reg_reg (.SI(counter[7]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(div_clk_reg), 
	.D(n53), 
	.CK(UART_muxed_clk__L2_N0));
   SDFFRQX2M \counter_reg[7]  (.SI(counter[6]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[7]), 
	.D(N68), 
	.CK(i_ref_clk));
   SDFFRQX2M toggle_flag_reg (.SI(FE_PHN20_div_clk_reg__Exclude_0_NET), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(toggle_flag), 
	.D(n52), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \counter_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[0]), 
	.D(N61), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[1]), 
	.D(N62), 
	.CK(UART_muxed_clk__L12_N1));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[2]), 
	.D(N63), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[3]), 
	.D(N64), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[4]  (.SI(counter[3]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[4]), 
	.D(N65), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[5]  (.SI(counter[4]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[5]), 
	.D(N66), 
	.CK(i_ref_clk));
   SDFFRQX2M \counter_reg[6]  (.SI(counter[5]), 
	.SE(test_se), 
	.RN(i_rst_n), 
	.Q(counter[6]), 
	.D(N67), 
	.CK(i_ref_clk));
   OR2X2M U7 (.Y(n1), 
	.B(i_div_ratio[1]), 
	.A(i_div_ratio[2]));
   MX2X2M U8 (.Y(o_div_clk), 
	.S0(N2), 
	.B(div_clk_reg), 
	.A(UART_muxed_clk__L7_N0));
   NAND2X2M U9 (.Y(n22), 
	.B(n20), 
	.A(n23));
   CLKINVX1M U16 (.Y(N9), 
	.A(i_div_ratio[1]));
   OAI2BB1X1M U17 (.Y(N10), 
	.B0(n1), 
	.A1N(i_div_ratio[2]), 
	.A0N(i_div_ratio[1]));
   OR2X1M U18 (.Y(n2), 
	.B(i_div_ratio[3]), 
	.A(n1));
   OAI2BB1X1M U19 (.Y(N11), 
	.B0(n2), 
	.A1N(i_div_ratio[3]), 
	.A0N(n1));
   OR2X1M U20 (.Y(n3), 
	.B(LTIE_LTIELO_NET), 
	.A(n2));
   OAI2BB1X1M U21 (.Y(N12), 
	.B0(n3), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n2));
   OR2X1M U22 (.Y(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(n3));
   OAI2BB1X1M U23 (.Y(N13), 
	.B0(n4), 
	.A1N(LTIE_LTIELO_NET), 
	.A0N(n3));
   XNOR2X1M U24 (.Y(N14), 
	.B(n4), 
	.A(LTIE_LTIELO_NET));
   NOR3X1M U25 (.Y(N16), 
	.C(n4), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   OAI21X1M U26 (.Y(n5), 
	.B0(LTIE_LTIELO_NET), 
	.A1(n4), 
	.A0(LTIE_LTIELO_NET));
   NAND2BX1M U27 (.Y(N15), 
	.B(n5), 
	.AN(N16));
   MXI2X1M U28 (.Y(n52), 
	.S0(toggle_flag), 
	.B(n7), 
	.A(n6));
   CLKNAND2X2M U29 (.Y(n6), 
	.B(n7), 
	.A(N2));
   OAI21X1M U30 (.Y(n7), 
	.B0(n20), 
	.A1(n19), 
	.A0(n18));
   MXI2X1M U31 (.Y(n53), 
	.S0(div_clk_reg__Exclude_0_NET), 
	.B(n22), 
	.A(n21));
   CLKNAND2X2M U32 (.Y(n21), 
	.B(n22), 
	.A(N2));
   NOR2BX1M U33 (.Y(N68), 
	.B(n22), 
	.AN(N32));
   NOR2BX1M U34 (.Y(N67), 
	.B(n22), 
	.AN(N31));
   NOR2BX1M U35 (.Y(N66), 
	.B(n22), 
	.AN(N30));
   NOR2BX1M U36 (.Y(N65), 
	.B(n22), 
	.AN(N29));
   NOR2BX1M U37 (.Y(N64), 
	.B(n22), 
	.AN(N28));
   NOR2BX1M U38 (.Y(N63), 
	.B(n22), 
	.AN(N27));
   NOR2BX1M U39 (.Y(N62), 
	.B(n22), 
	.AN(N26));
   NOR2BX1M U40 (.Y(N61), 
	.B(n22), 
	.AN(N25));
   CLKINVX1M U41 (.Y(n20), 
	.A(n24));
   OAI31X1M U42 (.Y(n24), 
	.B0(N2), 
	.A2(n27), 
	.A1(n26), 
	.A0(n25));
   CLKNAND2X2M U43 (.Y(n27), 
	.B(n29), 
	.A(n28));
   XNOR2X1M U44 (.Y(n29), 
	.B(N14), 
	.A(counter[5]));
   XNOR2X1M U45 (.Y(n28), 
	.B(N15), 
	.A(counter[6]));
   NAND3X1M U46 (.Y(n26), 
	.C(n32), 
	.B(n31), 
	.A(n30));
   XNOR2X1M U47 (.Y(n32), 
	.B(N12), 
	.A(counter[3]));
   XNOR2X1M U48 (.Y(n31), 
	.B(N13), 
	.A(counter[4]));
   XNOR2X1M U49 (.Y(n30), 
	.B(N9), 
	.A(counter[0]));
   NAND4X1M U50 (.Y(n25), 
	.D(n38), 
	.C(n37), 
	.B(n34), 
	.A(n33));
   XNOR2X1M U51 (.Y(n38), 
	.B(N10), 
	.A(counter[1]));
   NOR2X1M U52 (.Y(n37), 
	.B(n18), 
	.A(toggle_flag));
   XNOR2X1M U53 (.Y(n34), 
	.B(N11), 
	.A(counter[2]));
   CLKXOR2X2M U54 (.Y(n33), 
	.B(N16), 
	.A(n39));
   AOI31X1M U55 (.Y(n23), 
	.B0(n42), 
	.A2(n41), 
	.A1(n18), 
	.A0(n40));
   CLKINVX1M U56 (.Y(n42), 
	.A(n19));
   NAND3X1M U57 (.Y(n19), 
	.C(toggle_flag), 
	.B(n40), 
	.A(n41));
   AND4X1M U58 (.Y(n41), 
	.D(n45), 
	.C(n44), 
	.B(n43), 
	.A(n39));
   XNOR2X1M U59 (.Y(n45), 
	.B(i_div_ratio[1]), 
	.A(counter[0]));
   XNOR2X1M U60 (.Y(n44), 
	.B(i_div_ratio[2]), 
	.A(counter[1]));
   XNOR2X1M U61 (.Y(n43), 
	.B(i_div_ratio[3]), 
	.A(counter[2]));
   CLKINVX1M U62 (.Y(n39), 
	.A(counter[7]));
   CLKINVX1M U63 (.Y(n18), 
	.A(i_div_ratio[0]));
   AND4X1M U64 (.Y(n40), 
	.D(n49), 
	.C(n48), 
	.B(n47), 
	.A(n46));
   XNOR2X1M U65 (.Y(n49), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[3]));
   XNOR2X1M U66 (.Y(n48), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[4]));
   XNOR2X1M U67 (.Y(n47), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[5]));
   XNOR2X1M U68 (.Y(n46), 
	.B(LTIE_LTIELO_NET), 
	.A(counter[6]));
   OA21X1M U69 (.Y(N2), 
	.B0(HTIE_LTIEHI_NET), 
	.A1(n51), 
	.A0(n50));
   OR3X1M U70 (.Y(n51), 
	.C(i_div_ratio[1]), 
	.B(i_div_ratio[3]), 
	.A(i_div_ratio[2]));
   OR4X1M U71 (.Y(n50), 
	.D(LTIE_LTIELO_NET), 
	.C(LTIE_LTIELO_NET), 
	.B(LTIE_LTIELO_NET), 
	.A(LTIE_LTIELO_NET));
   CLK_div_1_DW01_inc_0 r73 (.A({ counter[7],
		counter[6],
		counter[5],
		counter[4],
		counter[3],
		counter[2],
		counter[1],
		counter[0] }), 
	.SUM({ N32,
		N31,
		N30,
		N29,
		N28,
		N27,
		N26,
		N25 }));
endmodule

module Serializer_tx_test_1 (
	P_Data_ser, 
	ser_en_ser, 
	rst_ser, 
	clk_ser, 
	Data_valid_ser, 
	out_Data_ser, 
	ser_done_ser, 
	test_si, 
	test_se);
   input [7:0] P_Data_ser;
   input ser_en_ser;
   input rst_ser;
   input clk_ser;
   input Data_valid_ser;
   output out_Data_ser;
   output ser_done_ser;
   input test_si;
   input test_se;

   // Internal wires
   wire n14;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n46;
   wire n48;
   wire n50;
   wire n51;
   wire [3:0] counter;
   wire [7:0] P_Data_register;

   SDFFRQX2M out_Data_ser_reg (.SI(counter[3]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(out_Data_ser), 
	.D(n33), 
	.CK(clk_ser));
   SDFFRX1M \P_Data_register_reg[0]  (.SI(test_si), 
	.SE(n51), 
	.RN(rst_ser), 
	.QN(n14), 
	.Q(n48), 
	.D(n41), 
	.CK(clk_ser));
   SDFFRQX2M \P_Data_register_reg[7]  (.SI(P_Data_register[6]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(P_Data_register[7]), 
	.D(n34), 
	.CK(clk_ser));
   SDFFRQX2M \P_Data_register_reg[6]  (.SI(P_Data_register[5]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(P_Data_register[6]), 
	.D(n35), 
	.CK(clk_ser));
   SDFFRQX2M \P_Data_register_reg[5]  (.SI(P_Data_register[4]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(P_Data_register[5]), 
	.D(n36), 
	.CK(clk_ser));
   SDFFRQX2M \P_Data_register_reg[4]  (.SI(P_Data_register[3]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(P_Data_register[4]), 
	.D(n37), 
	.CK(clk_ser));
   SDFFRQX2M \P_Data_register_reg[3]  (.SI(P_Data_register[2]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(P_Data_register[3]), 
	.D(n38), 
	.CK(clk_ser));
   SDFFRQX2M \P_Data_register_reg[2]  (.SI(P_Data_register[1]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(P_Data_register[2]), 
	.D(n39), 
	.CK(clk_ser));
   SDFFRQX2M \P_Data_register_reg[1]  (.SI(n48), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(P_Data_register[1]), 
	.D(n40), 
	.CK(clk_ser));
   SDFFRQX2M \counter_reg[3]  (.SI(counter[2]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(counter[3]), 
	.D(n44), 
	.CK(clk_ser));
   SDFFRQX2M \counter_reg[2]  (.SI(counter[1]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(counter[2]), 
	.D(n43), 
	.CK(clk_ser));
   SDFFRQX2M \counter_reg[0]  (.SI(P_Data_register[7]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(counter[0]), 
	.D(n45), 
	.CK(clk_ser));
   SDFFRQX2M \counter_reg[1]  (.SI(counter[0]), 
	.SE(n51), 
	.RN(rst_ser), 
	.Q(counter[1]), 
	.D(n42), 
	.CK(clk_ser));
   OR2X2M U16 (.Y(n20), 
	.B(n22), 
	.A(Data_valid_ser));
   INVX2M U17 (.Y(n16), 
	.A(n22));
   NOR3BX4M U19 (.Y(n22), 
	.C(Data_valid_ser), 
	.B(ser_done_ser), 
	.AN(ser_en_ser));
   AOI21BX2M U20 (.Y(n29), 
	.B0N(n20), 
	.A1(n22), 
	.A0(n17));
   OAI32X1M U21 (.Y(n44), 
	.B1(n46), 
	.B0(n32), 
	.A2(n30), 
	.A1(counter[3]), 
	.A0(n19));
   AOI21X2M U22 (.Y(n32), 
	.B0(n31), 
	.A1(n19), 
	.A0(n22));
   INVX2M U23 (.Y(n19), 
	.A(counter[2]));
   OAI32X1M U24 (.Y(n42), 
	.B1(n18), 
	.B0(n29), 
	.A2(n16), 
	.A1(counter[1]), 
	.A0(n17));
   INVX2M U25 (.Y(n18), 
	.A(counter[1]));
   NOR4X1M U26 (.Y(ser_done_ser), 
	.D(counter[2]), 
	.C(counter[1]), 
	.B(counter[0]), 
	.A(n46));
   OAI22X1M U27 (.Y(n45), 
	.B1(n16), 
	.B0(counter[0]), 
	.A1(n17), 
	.A0(n20));
   OAI21X2M U28 (.Y(n31), 
	.B0(n29), 
	.A1(n16), 
	.A0(counter[1]));
   OAI2BB2X1M U29 (.Y(n43), 
	.B1(n30), 
	.B0(counter[2]), 
	.A1N(counter[2]), 
	.A0N(n31));
   OAI2BB2X1M U30 (.Y(n33), 
	.B1(n14), 
	.B0(n16), 
	.A1N(n16), 
	.A0N(out_Data_ser));
   OAI2B1X2M U31 (.Y(n40), 
	.B0(n27), 
	.A1N(P_Data_register[1]), 
	.A0(n20));
   AOI22X1M U32 (.Y(n27), 
	.B1(n22), 
	.B0(P_Data_register[2]), 
	.A1(Data_valid_ser), 
	.A0(P_Data_ser[1]));
   OAI2B1X2M U33 (.Y(n39), 
	.B0(n26), 
	.A1N(P_Data_register[2]), 
	.A0(n20));
   AOI22X1M U34 (.Y(n26), 
	.B1(n22), 
	.B0(P_Data_register[3]), 
	.A1(Data_valid_ser), 
	.A0(P_Data_ser[2]));
   OAI2B1X2M U35 (.Y(n38), 
	.B0(n25), 
	.A1N(P_Data_register[3]), 
	.A0(n20));
   AOI22X1M U36 (.Y(n25), 
	.B1(n22), 
	.B0(P_Data_register[4]), 
	.A1(Data_valid_ser), 
	.A0(P_Data_ser[3]));
   OAI2B1X2M U37 (.Y(n37), 
	.B0(n24), 
	.A1N(P_Data_register[4]), 
	.A0(n20));
   AOI22X1M U38 (.Y(n24), 
	.B1(n22), 
	.B0(P_Data_register[5]), 
	.A1(Data_valid_ser), 
	.A0(P_Data_ser[4]));
   OAI2B1X2M U39 (.Y(n36), 
	.B0(n23), 
	.A1N(P_Data_register[5]), 
	.A0(n20));
   AOI22X1M U40 (.Y(n23), 
	.B1(n22), 
	.B0(P_Data_register[6]), 
	.A1(Data_valid_ser), 
	.A0(P_Data_ser[5]));
   OAI2B1X2M U41 (.Y(n35), 
	.B0(n21), 
	.A1N(P_Data_register[6]), 
	.A0(n20));
   AOI22X1M U42 (.Y(n21), 
	.B1(n22), 
	.B0(P_Data_register[7]), 
	.A1(Data_valid_ser), 
	.A0(P_Data_ser[6]));
   OAI21X2M U43 (.Y(n41), 
	.B0(n28), 
	.A1(n20), 
	.A0(n14));
   AOI22X1M U44 (.Y(n28), 
	.B1(n22), 
	.B0(P_Data_register[1]), 
	.A1(Data_valid_ser), 
	.A0(P_Data_ser[0]));
   NAND3X2M U45 (.Y(n30), 
	.C(counter[1]), 
	.B(n22), 
	.A(counter[0]));
   AO2B2X2M U46 (.Y(n34), 
	.B1(Data_valid_ser), 
	.B0(P_Data_ser[7]), 
	.A1N(n20), 
	.A0(P_Data_register[7]));
   INVX2M U47 (.Y(n46), 
	.A(counter[3]));
   INVX2M U48 (.Y(n17), 
	.A(counter[0]));
   INVXLM U49 (.Y(n50), 
	.A(test_se));
   CLKINVX2M U50 (.Y(n51), 
	.A(n50));
endmodule

module FSM_tx_test_1 (
	clk_fsm, 
	rst_fsm, 
	Data_v_fsm, 
	Par_en_fsm, 
	ser_done_fsm, 
	ser_en_fsm, 
	mux_sel_fsm, 
	busy_fsm, 
	test_si, 
	test_se);
   input clk_fsm;
   input rst_fsm;
   input Data_v_fsm;
   input Par_en_fsm;
   input ser_done_fsm;
   output ser_en_fsm;
   output [1:0] mux_sel_fsm;
   output busy_fsm;
   input test_si;
   input test_se;

   // Internal wires
   wire busy_c;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n5;
   wire n6;
   wire n7;
   wire [2:0] C_S;
   wire [2:0] N_S;

   SDFFRQX2M \C_S_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_fsm), 
	.Q(C_S[0]), 
	.D(N_S[0]), 
	.CK(clk_fsm));
   SDFFRQX2M \C_S_reg[1]  (.SI(C_S[0]), 
	.SE(test_se), 
	.RN(rst_fsm), 
	.Q(C_S[1]), 
	.D(N_S[1]), 
	.CK(clk_fsm));
   SDFFRQX2M \C_S_reg[2]  (.SI(C_S[1]), 
	.SE(test_se), 
	.RN(rst_fsm), 
	.Q(C_S[2]), 
	.D(N_S[2]), 
	.CK(clk_fsm));
   SDFFRQX2M busy_fsm_reg (.SI(C_S[2]), 
	.SE(test_se), 
	.RN(rst_fsm), 
	.Q(busy_fsm), 
	.D(busy_c), 
	.CK(clk_fsm));
   NAND2X2M U7 (.Y(mux_sel_fsm[1]), 
	.B(n7), 
	.A(n9));
   INVX2M U8 (.Y(ser_en_fsm), 
	.A(mux_sel_fsm[1]));
   NOR2X2M U9 (.Y(n10), 
	.B(n6), 
	.A(n5));
   XNOR2X2M U10 (.Y(n9), 
	.B(C_S[1]), 
	.A(n5));
   NOR3X2M U11 (.Y(N_S[0]), 
	.C(C_S[0]), 
	.B(C_S[2]), 
	.A(n14));
   AOI32X1M U12 (.Y(n14), 
	.B1(n6), 
	.B0(Data_v_fsm), 
	.A2(Par_en_fsm), 
	.A1(C_S[1]), 
	.A0(ser_done_fsm));
   INVX2M U13 (.Y(n7), 
	.A(C_S[2]));
   INVX2M U14 (.Y(n5), 
	.A(C_S[0]));
   NOR2BX2M U15 (.Y(n12), 
	.B(Par_en_fsm), 
	.AN(ser_done_fsm));
   OAI21X2M U16 (.Y(N_S[1]), 
	.B0(n13), 
	.A1(mux_sel_fsm[0]), 
	.A0(C_S[1]));
   NAND4BX1M U17 (.Y(n13), 
	.D(n7), 
	.C(n5), 
	.B(C_S[1]), 
	.AN(n12));
   OAI21X2M U18 (.Y(busy_c), 
	.B0(mux_sel_fsm[1]), 
	.A1(n9), 
	.A0(n8));
   XNOR2X2M U19 (.Y(n8), 
	.B(C_S[2]), 
	.A(n10));
   NAND2X2M U20 (.Y(mux_sel_fsm[0]), 
	.B(n7), 
	.A(C_S[0]));
   NOR2X2M U21 (.Y(N_S[2]), 
	.B(n11), 
	.A(C_S[2]));
   AOI21X2M U22 (.Y(n11), 
	.B0(n10), 
	.A1(C_S[1]), 
	.A0(n12));
   INVX2M U23 (.Y(n6), 
	.A(C_S[1]));
endmodule

module parity_calc_test_1 (
	P_Data_par, 
	Data_valid_par, 
	Par_TYP_par, 
	rst_par, 
	clk_par, 
	Par_bit_par, 
	test_si, 
	test_se);
   input [7:0] P_Data_par;
   input Data_valid_par;
   input Par_TYP_par;
   input rst_par;
   input clk_par;
   output Par_bit_par;
   input test_si;
   input test_se;

   // Internal wires
   wire n1;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n8;
   wire n2;

   SDFFRQX2M Par_bit_par_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst_par), 
	.Q(Par_bit_par), 
	.D(n8), 
	.CK(clk_par));
   XOR3XLM U2 (.Y(n3), 
	.C(n6), 
	.B(P_Data_par[4]), 
	.A(P_Data_par[5]));
   CLKXOR2X2M U3 (.Y(n6), 
	.B(P_Data_par[6]), 
	.A(P_Data_par[7]));
   XNOR2X2M U4 (.Y(n5), 
	.B(P_Data_par[2]), 
	.A(P_Data_par[3]));
   OAI2BB2X1M U5 (.Y(n8), 
	.B1(n2), 
	.B0(n1), 
	.A1N(n2), 
	.A0N(Par_bit_par));
   INVX2M U6 (.Y(n2), 
	.A(Data_valid_par));
   XOR3XLM U7 (.Y(n1), 
	.C(n4), 
	.B(Par_TYP_par), 
	.A(n3));
   XOR3XLM U8 (.Y(n4), 
	.C(n5), 
	.B(P_Data_par[0]), 
	.A(P_Data_par[1]));
endmodule

module mux_tx (
	mux_sel, 
	ser_data_mux, 
	Par_bit_mux, 
	TX_out_max);
   input [1:0] mux_sel;
   input ser_data_mux;
   input Par_bit_mux;
   output TX_out_max;

   // Internal wires
   wire n1;

   OAI2BB1X2M U3 (.Y(TX_out_max), 
	.B0(n1), 
	.A1N(mux_sel[0]), 
	.A0N(ser_data_mux));
   OAI21X2M U4 (.Y(n1), 
	.B0(mux_sel[1]), 
	.A1(mux_sel[0]), 
	.A0(Par_bit_mux));
endmodule

module Top_Tx_test_1 (
	P_DATA, 
	PAR_EN, 
	Data_Valid, 
	PAR_TYP, 
	CLK, 
	RST, 
	TX_OUT, 
	Busy, 
	test_si, 
	test_so, 
	test_se);
   input [7:0] P_DATA;
   input PAR_EN;
   input Data_Valid;
   input PAR_TYP;
   input CLK;
   input RST;
   output TX_OUT;
   output Busy;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire ser_en;
   wire ser_done;
   wire ser_data;
   wire Par_bit;
   wire [1:0] MUX_SEL;

   assign test_so = ser_data ;

   Serializer_tx_test_1 ser_U0 (.P_Data_ser({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.ser_en_ser(ser_en), 
	.rst_ser(RST), 
	.clk_ser(CLK), 
	.Data_valid_ser(Data_Valid), 
	.out_Data_ser(ser_data), 
	.ser_done_ser(ser_done), 
	.test_si(Par_bit), 
	.test_se(test_se));
   FSM_tx_test_1 fsm_U0 (.clk_fsm(CLK), 
	.rst_fsm(RST), 
	.Data_v_fsm(Data_Valid), 
	.Par_en_fsm(PAR_EN), 
	.ser_done_fsm(ser_done), 
	.ser_en_fsm(ser_en), 
	.mux_sel_fsm({ MUX_SEL[1],
		MUX_SEL[0] }), 
	.busy_fsm(Busy), 
	.test_si(test_si), 
	.test_se(test_se));
   parity_calc_test_1 parity_U0 (.P_Data_par({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.Data_valid_par(Data_Valid), 
	.Par_TYP_par(PAR_TYP), 
	.rst_par(RST), 
	.clk_par(CLK), 
	.Par_bit_par(Par_bit), 
	.test_si(Busy), 
	.test_se(test_se));
   mux_tx mux_U0 (.mux_sel({ MUX_SEL[1],
		MUX_SEL[0] }), 
	.ser_data_mux(ser_data), 
	.Par_bit_mux(Par_bit), 
	.TX_out_max(TX_OUT));
endmodule

module FSM_RX_test_1 (
	RX_in_fsm, 
	clk, 
	rst, 
	Par_en_fsm, 
	prescale_fsm, 
	edge_cnt_fsm, 
	bit_cnt_fsm, 
	strt_glitch_fsm, 
	par_err_fsm, 
	stp_err_fsm, 
	par_chk_en, 
	strt_chk_en, 
	stp_chk_en, 
	deser_en_fsm, 
	enable, 
	data_samp_en, 
	data_valid_fsm, 
	test_so, 
	test_se);
   input RX_in_fsm;
   input clk;
   input rst;
   input Par_en_fsm;
   input [5:0] prescale_fsm;
   input [5:0] edge_cnt_fsm;
   input [3:0] bit_cnt_fsm;
   input strt_glitch_fsm;
   input par_err_fsm;
   input stp_err_fsm;
   output par_chk_en;
   output strt_chk_en;
   output stp_chk_en;
   output deser_en_fsm;
   output enable;
   output data_samp_en;
   output data_valid_fsm;
   output test_so;
   input test_se;

   // Internal wires
   wire FE_PHN17_UART_RX_IN;
   wire FE_PHN16_UART_RX_IN;
   wire FE_PHN13_UART_RX_IN;
   wire FE_PHN12_UART_RX_IN;
   wire N47;
   wire N48;
   wire N49;
   wire N50;
   wire N51;
   wire N52;
   wire N53;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire [2:0] current_state;
   wire [2:0] next_state;

   assign test_so = current_state[2] ;

   DLY4X1M FE_PHC17_UART_RX_IN (.Y(FE_PHN17_UART_RX_IN), 
	.A(FE_PHN13_UART_RX_IN));
   DLY4X1M FE_PHC16_UART_RX_IN (.Y(FE_PHN16_UART_RX_IN), 
	.A(FE_PHN12_UART_RX_IN));
   DLY4X1M FE_PHC13_UART_RX_IN (.Y(FE_PHN13_UART_RX_IN), 
	.A(RX_in_fsm));
   DLY4X1M FE_PHC12_UART_RX_IN (.Y(FE_PHN12_UART_RX_IN), 
	.A(RX_in_fsm));
   SDFFRQX2M \current_state_reg[0]  (.SI(edge_cnt_fsm[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[0]), 
	.D(next_state[0]), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[2]  (.SI(current_state[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[2]), 
	.D(next_state[2]), 
	.CK(clk));
   SDFFRQX2M \current_state_reg[1]  (.SI(current_state[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(current_state[1]), 
	.D(next_state[1]), 
	.CK(clk));
   NAND2X2M U6 (.Y(n19), 
	.B(n29), 
	.A(N53));
   NOR2X2M U7 (.Y(deser_en_fsm), 
	.B(n37), 
	.A(n19));
   INVX2M U8 (.Y(n32), 
	.A(N53));
   INVX2M U9 (.Y(n34), 
	.A(n29));
   OR2X2M U10 (.Y(n2), 
	.B(prescale_fsm[0]), 
	.A(prescale_fsm[1]));
   NOR3BX2M U11 (.Y(stp_chk_en), 
	.C(n20), 
	.B(n32), 
	.AN(current_state[2]));
   OAI21X2M U12 (.Y(next_state[1]), 
	.B0(n26), 
	.A1(n37), 
	.A0(current_state[2]));
   AOI32X1M U13 (.Y(n26), 
	.B1(n32), 
	.B0(n35), 
	.A2(n27), 
	.A1(n24), 
	.A0(bit_cnt_fsm[0]));
   INVX2M U14 (.Y(n35), 
	.A(n20));
   NOR3X2M U15 (.Y(n27), 
	.C(bit_cnt_fsm[3]), 
	.B(strt_glitch_fsm), 
	.A(n34));
   AOI2B1X1M U16 (.Y(next_state[2]), 
	.B0(n37), 
	.A1N(n21), 
	.A0(n22));
   NOR3BX2M U17 (.Y(n21), 
	.C(n34), 
	.B(Par_en_fsm), 
	.AN(n25));
   OAI21X2M U18 (.Y(n22), 
	.B0(n36), 
	.A1(current_state[2]), 
	.A0(n23));
   AND4XLM U19 (.Y(n23), 
	.D(bit_cnt_fsm[0]), 
	.C(bit_cnt_fsm[3]), 
	.B(n24), 
	.A(N53));
   INVX2M U20 (.Y(n6), 
	.A(prescale_fsm[3]));
   NOR3X2M U21 (.Y(par_chk_en), 
	.C(n32), 
	.B(current_state[2]), 
	.A(n20));
   NOR2X2M U22 (.Y(strt_chk_en), 
	.B(n19), 
	.A(current_state[1]));
   NOR2X2M U23 (.Y(n29), 
	.B(current_state[2]), 
	.A(n36));
   NAND2X2M U24 (.Y(n20), 
	.B(n36), 
	.A(current_state[1]));
   INVX2M U25 (.Y(n36), 
	.A(current_state[0]));
   OAI32X1M U26 (.Y(next_state[0]), 
	.B1(n28), 
	.B0(current_state[1]), 
	.A2(n34), 
	.A1(n25), 
	.A0(n37));
   AOI2BB2XLM U27 (.Y(n28), 
	.B1(n30), 
	.B0(n29), 
	.A1N(current_state[0]), 
	.A0N(FE_PHN16_UART_RX_IN));
   NAND4X2M U28 (.Y(n30), 
	.D(n33), 
	.C(n24), 
	.B(bit_cnt_fsm[0]), 
	.A(strt_glitch_fsm));
   NOR2X2M U29 (.Y(n24), 
	.B(bit_cnt_fsm[1]), 
	.A(bit_cnt_fsm[2]));
   NOR4X1M U30 (.Y(data_valid_fsm), 
	.D(par_err_fsm), 
	.C(stp_err_fsm), 
	.B(current_state[1]), 
	.A(n31));
   NAND2X2M U31 (.Y(n31), 
	.B(n36), 
	.A(current_state[2]));
   AOI2B1X1M U32 (.Y(n25), 
	.B0(n33), 
	.A1N(bit_cnt_fsm[0]), 
	.A0(n24));
   INVX2M U33 (.Y(n37), 
	.A(current_state[1]));
   INVX2M U34 (.Y(n33), 
	.A(bit_cnt_fsm[3]));
   OAI211X2M U36 (.Y(enable), 
	.C0(n34), 
	.B0(n20), 
	.A1(FE_PHN17_UART_RX_IN), 
	.A0(current_state[2]));
   CLKINVX1M U37 (.Y(N47), 
	.A(prescale_fsm[0]));
   OAI2BB1X1M U38 (.Y(N48), 
	.B0(n2), 
	.A1N(prescale_fsm[1]), 
	.A0N(prescale_fsm[0]));
   NOR2X1M U39 (.Y(n3), 
	.B(prescale_fsm[2]), 
	.A(n2));
   AO21XLM U40 (.Y(N49), 
	.B0(n3), 
	.A1(prescale_fsm[2]), 
	.A0(n2));
   CLKNAND2X2M U41 (.Y(n4), 
	.B(n6), 
	.A(n3));
   OAI21X1M U42 (.Y(N50), 
	.B0(n4), 
	.A1(n6), 
	.A0(n3));
   XNOR2X1M U43 (.Y(N51), 
	.B(n4), 
	.A(prescale_fsm[4]));
   NOR2X1M U44 (.Y(n5), 
	.B(n4), 
	.A(prescale_fsm[4]));
   CLKXOR2X2M U45 (.Y(N52), 
	.B(n5), 
	.A(prescale_fsm[5]));
   NOR2BX1M U46 (.Y(n7), 
	.B(N47), 
	.AN(edge_cnt_fsm[0]));
   OAI2B2X1M U47 (.Y(n14), 
	.B1(n7), 
	.B0(edge_cnt_fsm[1]), 
	.A1N(N48), 
	.A0(n7));
   NOR2BX1M U48 (.Y(n8), 
	.B(edge_cnt_fsm[0]), 
	.AN(N47));
   OAI2B2X1M U49 (.Y(n13), 
	.B1(n8), 
	.B0(N48), 
	.A1N(edge_cnt_fsm[1]), 
	.A0(n8));
   XNOR2X1M U50 (.Y(n9), 
	.B(edge_cnt_fsm[5]), 
	.A(N52));
   NAND3X1M U51 (.Y(n18), 
	.C(n9), 
	.B(n13), 
	.A(n14));
   CLKXOR2X2M U52 (.Y(n17), 
	.B(edge_cnt_fsm[4]), 
	.A(N51));
   CLKXOR2X2M U53 (.Y(n16), 
	.B(edge_cnt_fsm[2]), 
	.A(N49));
   CLKXOR2X2M U54 (.Y(n15), 
	.B(edge_cnt_fsm[3]), 
	.A(N50));
   NOR4X1M U55 (.Y(N53), 
	.D(n15), 
	.C(n16), 
	.B(n17), 
	.A(n18));
endmodule

module data_sampling_RX_test_1 (
	clk, 
	rst, 
	RX_in_sampling, 
	data_samp_en, 
	prescale_sampling, 
	edge_cnt_sampling, 
	sampled_out, 
	test_si, 
	test_so, 
	test_se);
   input clk;
   input rst;
   input RX_in_sampling;
   input data_samp_en;
   input [5:0] prescale_sampling;
   input [5:0] edge_cnt_sampling;
   output sampled_out;
   input test_si;
   output test_so;
   input test_se;

   // Internal wires
   wire FE_PHN15_UART_RX_IN;
   wire FE_PHN14_UART_RX_IN;
   wire FE_PHN11_UART_RX_IN;
   wire FE_PHN10_UART_RX_IN;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N13;
   wire N16;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N24;
   wire N25;
   wire N26;
   wire N27;
   wire N28;
   wire N29;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire \add_37/carry[4] ;
   wire \add_37/carry[3] ;
   wire \add_31/carry[4] ;
   wire \add_31/carry[3] ;
   wire \add_31/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire [2:0] sampled_reg;

   assign test_so = sampled_reg[2] ;
   assign N24 = prescale_sampling[1] ;

   DLY4X1M FE_PHC15_UART_RX_IN (.Y(FE_PHN15_UART_RX_IN), 
	.A(FE_PHN11_UART_RX_IN));
   DLY4X1M FE_PHC14_UART_RX_IN (.Y(FE_PHN14_UART_RX_IN), 
	.A(FE_PHN10_UART_RX_IN));
   DLY4X1M FE_PHC11_UART_RX_IN (.Y(FE_PHN11_UART_RX_IN), 
	.A(RX_in_sampling));
   DLY4X1M FE_PHC10_UART_RX_IN (.Y(FE_PHN10_UART_RX_IN), 
	.A(RX_in_sampling));
   SDFFRQX2M \sampled_reg_reg[2]  (.SI(sampled_reg[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sampled_reg[2]), 
	.D(n38), 
	.CK(clk));
   SDFFRQX2M \sampled_reg_reg[0]  (.SI(sampled_out), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sampled_reg[0]), 
	.D(n40), 
	.CK(clk));
   SDFFRQX2M \sampled_reg_reg[1]  (.SI(sampled_reg[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sampled_reg[1]), 
	.D(n39), 
	.CK(clk));
   SDFFRQX2M sampled_out_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(sampled_out), 
	.D(n37), 
	.CK(clk));
   OR2X2M U5 (.Y(n1), 
	.B(N24), 
	.A(prescale_sampling[2]));
   ADDHX1M U6 (.S(N18), 
	.CO(\add_31/carry[3] ), 
	.B(\add_31/carry[2] ), 
	.A(prescale_sampling[3]));
   ADDHX1M U7 (.S(N19), 
	.CO(\add_31/carry[4] ), 
	.B(\add_31/carry[3] ), 
	.A(prescale_sampling[4]));
   ADDHX1M U8 (.S(N17), 
	.CO(\add_31/carry[2] ), 
	.B(N24), 
	.A(prescale_sampling[2]));
   ADDHX1M U9 (.S(N20), 
	.CO(N21), 
	.B(\add_31/carry[4] ), 
	.A(prescale_sampling[5]));
   INVX2M U10 (.Y(N25), 
	.A(prescale_sampling[2]));
   AND2X1M U11 (.Y(N29), 
	.B(prescale_sampling[5]), 
	.A(\add_37/carry[4] ));
   CLKXOR2X2M U12 (.Y(N28), 
	.B(\add_37/carry[4] ), 
	.A(prescale_sampling[5]));
   AND2X1M U13 (.Y(\add_37/carry[4] ), 
	.B(prescale_sampling[4]), 
	.A(\add_37/carry[3] ));
   CLKXOR2X2M U16 (.Y(N27), 
	.B(\add_37/carry[3] ), 
	.A(prescale_sampling[4]));
   AND2X1M U17 (.Y(\add_37/carry[3] ), 
	.B(prescale_sampling[3]), 
	.A(prescale_sampling[2]));
   CLKXOR2X2M U18 (.Y(N26), 
	.B(prescale_sampling[2]), 
	.A(prescale_sampling[3]));
   OAI2BB1X1M U19 (.Y(N9), 
	.B0(n1), 
	.A1N(prescale_sampling[2]), 
	.A0N(N24));
   OR2X1M U20 (.Y(n2), 
	.B(prescale_sampling[3]), 
	.A(n1));
   OAI2BB1X1M U21 (.Y(N10), 
	.B0(n2), 
	.A1N(prescale_sampling[3]), 
	.A0N(n1));
   XNOR2X1M U22 (.Y(N11), 
	.B(n2), 
	.A(prescale_sampling[4]));
   NOR3X1M U23 (.Y(N13), 
	.C(n2), 
	.B(prescale_sampling[5]), 
	.A(prescale_sampling[4]));
   OAI21X1M U24 (.Y(n3), 
	.B0(prescale_sampling[5]), 
	.A1(n2), 
	.A0(prescale_sampling[4]));
   NAND2BX1M U25 (.Y(N12), 
	.B(n3), 
	.AN(N13));
   CLKINVX1M U26 (.Y(N16), 
	.A(N24));
   OAI2B2X1M U27 (.Y(n40), 
	.B1(n6), 
	.B0(n5), 
	.A1N(FE_PHN14_UART_RX_IN), 
	.A0(n4));
   OAI22X1M U28 (.Y(n39), 
	.B1(n6), 
	.B0(n4), 
	.A1(n7), 
	.A0(n5));
   OAI22X1M U29 (.Y(n38), 
	.B1(n7), 
	.B0(n4), 
	.A1(n8), 
	.A0(n5));
   CLKNAND2X2M U30 (.Y(n4), 
	.B(n5), 
	.A(data_samp_en));
   OAI2B1X1M U31 (.Y(n5), 
	.B0(data_samp_en), 
	.A1N(n9), 
	.A0(n10));
   NOR2BX1M U32 (.Y(n37), 
	.B(n11), 
	.AN(data_samp_en));
   AOI21X1M U33 (.Y(n11), 
	.B0(n13), 
	.A1(FE_PHN15_UART_RX_IN), 
	.A0(n12));
   MXI2X1M U34 (.Y(n13), 
	.S0(n16), 
	.B(n15), 
	.A(n14));
   NOR4X1M U35 (.Y(n16), 
	.D(n9), 
	.C(n10), 
	.B(n18), 
	.A(n17));
   OAI211X1M U36 (.Y(n9), 
	.C0(n26), 
	.B0(n25), 
	.A1(n24), 
	.A0(n19));
   NAND4X1M U37 (.Y(n26), 
	.D(n30), 
	.C(n29), 
	.B(n28), 
	.A(n27));
   NOR3X1M U38 (.Y(n30), 
	.C(n33), 
	.B(n32), 
	.A(n31));
   XNOR2X1M U39 (.Y(n33), 
	.B(N16), 
	.A(n34));
   XNOR2X1M U40 (.Y(n32), 
	.B(N18), 
	.A(n35));
   CLKINVX1M U41 (.Y(n35), 
	.A(edge_cnt_sampling[2]));
   XNOR2X1M U42 (.Y(n31), 
	.B(N17), 
	.A(n36));
   CLKINVX1M U43 (.Y(n36), 
	.A(edge_cnt_sampling[1]));
   XNOR2X1M U44 (.Y(n29), 
	.B(N20), 
	.A(edge_cnt_sampling[4]));
   XNOR2X1M U45 (.Y(n28), 
	.B(N21), 
	.A(edge_cnt_sampling[5]));
   XNOR2X1M U46 (.Y(n27), 
	.B(N19), 
	.A(edge_cnt_sampling[3]));
   NAND3X1M U47 (.Y(n24), 
	.C(n43), 
	.B(n42), 
	.A(n41));
   XNOR2X1M U48 (.Y(n43), 
	.B(N10), 
	.A(edge_cnt_sampling[2]));
   XNOR2X1M U49 (.Y(n42), 
	.B(N11), 
	.A(edge_cnt_sampling[3]));
   XNOR2X1M U50 (.Y(n41), 
	.B(N9), 
	.A(edge_cnt_sampling[1]));
   NAND3X1M U51 (.Y(n19), 
	.C(n46), 
	.B(n45), 
	.A(n44));
   XNOR2X1M U52 (.Y(n46), 
	.B(N13), 
	.A(edge_cnt_sampling[5]));
   XNOR2X1M U53 (.Y(n45), 
	.B(N16), 
	.A(edge_cnt_sampling[0]));
   XNOR2X1M U54 (.Y(n44), 
	.B(N12), 
	.A(edge_cnt_sampling[4]));
   CLKNAND2X2M U55 (.Y(n18), 
	.B(n48), 
	.A(n47));
   XNOR2X1M U56 (.Y(n48), 
	.B(N24), 
	.A(edge_cnt_sampling[0]));
   XNOR2X1M U57 (.Y(n47), 
	.B(N25), 
	.A(edge_cnt_sampling[1]));
   NAND4X1M U58 (.Y(n17), 
	.D(n52), 
	.C(n51), 
	.B(n50), 
	.A(n49));
   XNOR2X1M U59 (.Y(n52), 
	.B(N26), 
	.A(edge_cnt_sampling[2]));
   XNOR2X1M U60 (.Y(n51), 
	.B(N27), 
	.A(edge_cnt_sampling[3]));
   XNOR2X1M U61 (.Y(n50), 
	.B(N28), 
	.A(edge_cnt_sampling[4]));
   XNOR2X1M U62 (.Y(n49), 
	.B(N29), 
	.A(edge_cnt_sampling[5]));
   AOI21X1M U63 (.Y(n15), 
	.B0(n53), 
	.A1(sampled_reg[0]), 
	.A0(sampled_reg[1]));
   AOI21X1M U64 (.Y(n53), 
	.B0(n8), 
	.A1(n6), 
	.A0(n7));
   CLKINVX1M U65 (.Y(n8), 
	.A(sampled_reg[2]));
   CLKINVX1M U66 (.Y(n6), 
	.A(sampled_reg[0]));
   CLKINVX1M U67 (.Y(n7), 
	.A(sampled_reg[1]));
   NAND2BX1M U68 (.Y(n14), 
	.B(sampled_out), 
	.AN(n12));
   NOR2BX1M U69 (.Y(n12), 
	.B(n25), 
	.AN(n10));
   NAND4X1M U70 (.Y(n25), 
	.D(n57), 
	.C(n56), 
	.B(n55), 
	.A(n54));
   NOR3X1M U71 (.Y(n57), 
	.C(n59), 
	.B(edge_cnt_sampling[5]), 
	.A(n58));
   XNOR2X1M U72 (.Y(n59), 
	.B(n34), 
	.A(N24));
   CLKINVX1M U73 (.Y(n34), 
	.A(edge_cnt_sampling[0]));
   XNOR2X1M U74 (.Y(n58), 
	.B(n60), 
	.A(prescale_sampling[5]));
   CLKINVX1M U75 (.Y(n60), 
	.A(edge_cnt_sampling[4]));
   XNOR2X1M U76 (.Y(n56), 
	.B(edge_cnt_sampling[2]), 
	.A(prescale_sampling[3]));
   XNOR2X1M U77 (.Y(n55), 
	.B(edge_cnt_sampling[3]), 
	.A(prescale_sampling[4]));
   XNOR2X1M U78 (.Y(n54), 
	.B(edge_cnt_sampling[1]), 
	.A(prescale_sampling[2]));
   NOR4BX1M U79 (.Y(n10), 
	.D(prescale_sampling[5]), 
	.C(prescale_sampling[4]), 
	.B(prescale_sampling[3]), 
	.AN(n61));
   OAI21X1M U80 (.Y(n61), 
	.B0(prescale_sampling[2]), 
	.A1(prescale_sampling[0]), 
	.A0(N24));
endmodule

module deserializer_test_1 (
	clk, 
	rst, 
	sampled_data_bit, 
	deser_en, 
	deser_out, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input sampled_data_bit;
   input deser_en;
   output [7:0] deser_out;
   input test_si;
   input test_se;

   // Internal wires
   wire n10;
   wire n12;
   wire n14;
   wire n16;
   wire n18;
   wire n20;
   wire n22;
   wire n24;
   wire n2;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n25;

   SDFFRQX2M \deser_out_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[0]), 
	.D(n10), 
	.CK(clk));
   SDFFRQX2M \deser_out_reg[5]  (.SI(deser_out[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[5]), 
	.D(n20), 
	.CK(clk));
   SDFFRQX2M \deser_out_reg[1]  (.SI(deser_out[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[1]), 
	.D(n12), 
	.CK(clk));
   SDFFRQX2M \deser_out_reg[4]  (.SI(deser_out[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[4]), 
	.D(n18), 
	.CK(clk));
   SDFFRQX2M \deser_out_reg[7]  (.SI(deser_out[6]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[7]), 
	.D(n24), 
	.CK(clk));
   SDFFRQX2M \deser_out_reg[3]  (.SI(deser_out[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[3]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX2M \deser_out_reg[6]  (.SI(deser_out[5]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[6]), 
	.D(n22), 
	.CK(clk));
   SDFFRQX2M \deser_out_reg[2]  (.SI(deser_out[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(deser_out[2]), 
	.D(n14), 
	.CK(clk));
   INVX2M U2 (.Y(n2), 
	.A(deser_en));
   OAI22X1M U3 (.Y(n12), 
	.B1(n25), 
	.B0(deser_en), 
	.A1(n8), 
	.A0(n2));
   OAI22X1M U4 (.Y(n14), 
	.B1(n8), 
	.B0(deser_en), 
	.A1(n7), 
	.A0(n2));
   OAI22X1M U5 (.Y(n16), 
	.B1(n7), 
	.B0(deser_en), 
	.A1(n6), 
	.A0(n2));
   OAI22X1M U6 (.Y(n18), 
	.B1(n6), 
	.B0(deser_en), 
	.A1(n5), 
	.A0(n2));
   OAI22X1M U7 (.Y(n20), 
	.B1(n5), 
	.B0(deser_en), 
	.A1(n4), 
	.A0(n2));
   OAI22X1M U8 (.Y(n22), 
	.B1(n4), 
	.B0(deser_en), 
	.A1(n3), 
	.A0(n2));
   OAI2BB2X1M U10 (.Y(n10), 
	.B1(n25), 
	.B0(n2), 
	.A1N(n2), 
	.A0N(deser_out[0]));
   OAI2BB2X1M U11 (.Y(n24), 
	.B1(n3), 
	.B0(deser_en), 
	.A1N(deser_en), 
	.A0N(sampled_data_bit));
   INVX2M U12 (.Y(n8), 
	.A(deser_out[2]));
   INVX2M U13 (.Y(n4), 
	.A(deser_out[6]));
   INVX2M U14 (.Y(n3), 
	.A(deser_out[7]));
   INVX2M U15 (.Y(n7), 
	.A(deser_out[3]));
   INVX2M U16 (.Y(n25), 
	.A(deser_out[1]));
   INVX2M U17 (.Y(n6), 
	.A(deser_out[4]));
   INVX2M U26 (.Y(n5), 
	.A(deser_out[5]));
endmodule

module parity_chk_RX_test_1 (
	clk, 
	rst, 
	par_chk_en, 
	par_typ, 
	sampled_data, 
	sampled_par_bit, 
	par_err, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input par_chk_en;
   input par_typ;
   input [7:0] sampled_data;
   input sampled_par_bit;
   output par_err;
   input test_si;
   input test_se;

   // Internal wires
   wire par_calc;
   wire N8;
   wire N11;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;

   SDFFRQX2M par_calc_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_calc), 
	.D(N8), 
	.CK(clk));
   SDFFRQX2M par_err_reg (.SI(par_calc), 
	.SE(test_se), 
	.RN(rst), 
	.Q(par_err), 
	.D(N11), 
	.CK(clk));
   NOR2BX2M U5 (.Y(N11), 
	.B(n7), 
	.AN(par_chk_en));
   XNOR2X2M U6 (.Y(n7), 
	.B(par_calc), 
	.A(sampled_par_bit));
   XNOR2X2M U7 (.Y(n6), 
	.B(sampled_data[6]), 
	.A(sampled_data[7]));
   XOR3XLM U8 (.Y(N8), 
	.C(n4), 
	.B(n3), 
	.A(par_typ));
   XOR3XLM U9 (.Y(n4), 
	.C(n5), 
	.B(sampled_data[0]), 
	.A(sampled_data[1]));
   XOR3XLM U10 (.Y(n3), 
	.C(n6), 
	.B(sampled_data[4]), 
	.A(sampled_data[5]));
   XNOR2X2M U11 (.Y(n5), 
	.B(sampled_data[2]), 
	.A(sampled_data[3]));
endmodule

module start_chk_RX_test_1 (
	strt_chk_en, 
	sampled_strt_bit, 
	rst, 
	clk, 
	strt_glitch, 
	test_si, 
	test_se);
   input strt_chk_en;
   input sampled_strt_bit;
   input rst;
   input clk;
   output strt_glitch;
   input test_si;
   input test_se;

   // Internal wires
   wire N4;

   SDFFRQX2M strt_glitch_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(strt_glitch), 
	.D(N4), 
	.CK(clk));
   AND2X2M U4 (.Y(N4), 
	.B(sampled_strt_bit), 
	.A(strt_chk_en));
endmodule

module stop_chk_RX_test_1 (
	clk, 
	rst, 
	stp_chk_en, 
	sampled_stp_bit, 
	stp_err, 
	test_si, 
	test_se);
   input clk;
   input rst;
   input stp_chk_en;
   input sampled_stp_bit;
   output stp_err;
   input test_si;
   input test_se;

   // Internal wires
   wire N4;

   SDFFRQX2M stp_err_reg (.SI(test_si), 
	.SE(test_se), 
	.RN(rst), 
	.Q(stp_err), 
	.D(N4), 
	.CK(clk));
   NOR2BX2M U4 (.Y(N4), 
	.B(sampled_stp_bit), 
	.AN(stp_chk_en));
endmodule

module edge_bit_counter_test_1 (
	clk, 
	rst, 
	enable_edge, 
	prescale_edge, 
	edge_cnt_edge, 
	bit_cnt_edge, 
	test_si, 
	test_se, 
	FE_OFN6_UART_SYNC_RST_M);
   input clk;
   input rst;
   input enable_edge;
   input [5:0] prescale_edge;
   output [5:0] edge_cnt_edge;
   output [3:0] bit_cnt_edge;
   input test_si;
   input test_se;
   input FE_OFN6_UART_SYNC_RST_M;

   // Internal wires
   wire N7;
   wire N8;
   wire N9;
   wire N10;
   wire N11;
   wire N12;
   wire N17;
   wire N18;
   wire N19;
   wire N20;
   wire N21;
   wire N22;
   wire n19;
   wire n20;
   wire n21;
   wire n23;
   wire n24;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire \add_21/carry[5] ;
   wire \add_21/carry[4] ;
   wire \add_21/carry[3] ;
   wire \add_21/carry[2] ;
   wire n1;
   wire n2;
   wire n3;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n25;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;

   SDFFRQX2M \bit_cnt_edge_reg[1]  (.SI(bit_cnt_edge[0]), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(bit_cnt_edge[1]), 
	.D(n28), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_edge_reg[2]  (.SI(bit_cnt_edge[1]), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(bit_cnt_edge[2]), 
	.D(n27), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_edge_reg[3]  (.SI(bit_cnt_edge[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(bit_cnt_edge[3]), 
	.D(n30), 
	.CK(clk));
   SDFFRQX2M \bit_cnt_edge_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(bit_cnt_edge[0]), 
	.D(n29), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_edge_reg[5]  (.SI(edge_cnt_edge[4]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(edge_cnt_edge[5]), 
	.D(n17), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_edge_reg[0]  (.SI(bit_cnt_edge[3]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(edge_cnt_edge[0]), 
	.D(n16), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_edge_reg[4]  (.SI(edge_cnt_edge[3]), 
	.SE(test_se), 
	.RN(FE_OFN6_UART_SYNC_RST_M), 
	.Q(edge_cnt_edge[4]), 
	.D(n15), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_edge_reg[2]  (.SI(edge_cnt_edge[1]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(edge_cnt_edge[2]), 
	.D(n3), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_edge_reg[3]  (.SI(edge_cnt_edge[2]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(edge_cnt_edge[3]), 
	.D(n14), 
	.CK(clk));
   SDFFRQX2M \edge_cnt_edge_reg[1]  (.SI(edge_cnt_edge[0]), 
	.SE(test_se), 
	.RN(rst), 
	.Q(edge_cnt_edge[1]), 
	.D(n2), 
	.CK(clk));
   AND4X2M U6 (.Y(n1), 
	.D(n39), 
	.C(n40), 
	.B(n41), 
	.A(n42));
   INVX2M U14 (.Y(n43), 
	.A(n26));
   NOR3BX2M U15 (.Y(n20), 
	.C(n45), 
	.B(n44), 
	.AN(n1));
   NOR2X2M U16 (.Y(n26), 
	.B(n46), 
	.A(n1));
   AND2X2M U18 (.Y(n2), 
	.B(n26), 
	.A(N18));
   AND2X2M U19 (.Y(n3), 
	.B(n26), 
	.A(N19));
   AND2X2M U20 (.Y(n14), 
	.B(n26), 
	.A(N20));
   AND2X2M U21 (.Y(n15), 
	.B(n26), 
	.A(N21));
   INVX2M U22 (.Y(n46), 
	.A(enable_edge));
   OAI32X1M U23 (.Y(n29), 
	.B1(n43), 
	.B0(n44), 
	.A2(n26), 
	.A1(bit_cnt_edge[0]), 
	.A0(n46));
   OAI22X1M U24 (.Y(n28), 
	.B1(n46), 
	.B0(n21), 
	.A1(n43), 
	.A0(n45));
   AOI32X1M U25 (.Y(n21), 
	.B1(n44), 
	.B0(bit_cnt_edge[1]), 
	.A2(bit_cnt_edge[0]), 
	.A1(n45), 
	.A0(n43));
   OR2X2M U26 (.Y(n18), 
	.B(prescale_edge[0]), 
	.A(prescale_edge[1]));
   AND2X2M U27 (.Y(n16), 
	.B(n26), 
	.A(N17));
   NOR2X2M U28 (.Y(n30), 
	.B(n46), 
	.A(n23));
   CLKXOR2X2M U29 (.Y(n23), 
	.B(bit_cnt_edge[3]), 
	.A(n24));
   NAND2X2M U30 (.Y(n24), 
	.B(bit_cnt_edge[2]), 
	.A(n20));
   NOR2X2M U31 (.Y(n27), 
	.B(n46), 
	.A(n19));
   XNOR2X2M U32 (.Y(n19), 
	.B(bit_cnt_edge[2]), 
	.A(n20));
   INVX2M U33 (.Y(n33), 
	.A(prescale_edge[3]));
   AND2X2M U34 (.Y(n17), 
	.B(n26), 
	.A(N22));
   INVX2M U35 (.Y(n44), 
	.A(bit_cnt_edge[0]));
   INVX2M U36 (.Y(n45), 
	.A(bit_cnt_edge[1]));
   ADDHX1M U37 (.S(N18), 
	.CO(\add_21/carry[2] ), 
	.B(edge_cnt_edge[0]), 
	.A(edge_cnt_edge[1]));
   ADDHX1M U38 (.S(N20), 
	.CO(\add_21/carry[4] ), 
	.B(\add_21/carry[3] ), 
	.A(edge_cnt_edge[3]));
   ADDHX1M U39 (.S(N19), 
	.CO(\add_21/carry[3] ), 
	.B(\add_21/carry[2] ), 
	.A(edge_cnt_edge[2]));
   ADDHX1M U40 (.S(N21), 
	.CO(\add_21/carry[5] ), 
	.B(\add_21/carry[4] ), 
	.A(edge_cnt_edge[4]));
   CLKINVX1M U41 (.Y(N7), 
	.A(prescale_edge[0]));
   OAI2BB1X1M U42 (.Y(N8), 
	.B0(n18), 
	.A1N(prescale_edge[1]), 
	.A0N(prescale_edge[0]));
   NOR2X1M U43 (.Y(n25), 
	.B(prescale_edge[2]), 
	.A(n18));
   AO21XLM U44 (.Y(N9), 
	.B0(n25), 
	.A1(prescale_edge[2]), 
	.A0(n18));
   CLKNAND2X2M U45 (.Y(n31), 
	.B(n33), 
	.A(n25));
   OAI21X1M U46 (.Y(N10), 
	.B0(n31), 
	.A1(n33), 
	.A0(n25));
   XNOR2X1M U47 (.Y(N11), 
	.B(n31), 
	.A(prescale_edge[4]));
   NOR2X1M U48 (.Y(n32), 
	.B(n31), 
	.A(prescale_edge[4]));
   CLKXOR2X2M U49 (.Y(N12), 
	.B(n32), 
	.A(prescale_edge[5]));
   CLKINVX1M U50 (.Y(N17), 
	.A(edge_cnt_edge[0]));
   CLKXOR2X2M U51 (.Y(N22), 
	.B(edge_cnt_edge[5]), 
	.A(\add_21/carry[5] ));
   NOR2BX1M U52 (.Y(n34), 
	.B(N7), 
	.AN(edge_cnt_edge[0]));
   OAI2B2X1M U53 (.Y(n42), 
	.B1(n34), 
	.B0(edge_cnt_edge[1]), 
	.A1N(N8), 
	.A0(n34));
   NOR2BX1M U54 (.Y(n35), 
	.B(edge_cnt_edge[0]), 
	.AN(N7));
   OAI2B2X1M U55 (.Y(n41), 
	.B1(n35), 
	.B0(N8), 
	.A1N(edge_cnt_edge[1]), 
	.A0(n35));
   XNOR2X1M U56 (.Y(n40), 
	.B(edge_cnt_edge[5]), 
	.A(N12));
   CLKXOR2X2M U57 (.Y(n38), 
	.B(edge_cnt_edge[4]), 
	.A(N11));
   CLKXOR2X2M U58 (.Y(n37), 
	.B(edge_cnt_edge[2]), 
	.A(N9));
   CLKXOR2X2M U59 (.Y(n36), 
	.B(edge_cnt_edge[3]), 
	.A(N10));
   NOR3X1M U60 (.Y(n39), 
	.C(n36), 
	.B(n37), 
	.A(n38));
endmodule

module TOP_RX_test_1 (
	RX_IN, 
	PRESCALE, 
	CLK, 
	RST, 
	PAR_EN, 
	PAR_TYP, 
	P_DATA, 
	PARITY_ERR, 
	STOP_ERR, 
	DATA_VALID, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN6_UART_SYNC_RST_M);
   input RX_IN;
   input [5:0] PRESCALE;
   input CLK;
   input RST;
   input PAR_EN;
   input PAR_TYP;
   output [7:0] P_DATA;
   output PARITY_ERR;
   output STOP_ERR;
   output DATA_VALID;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN6_UART_SYNC_RST_M;

   // Internal wires
   wire FE_PT0_;
   wire FE_UNCONNECTED_0;
   wire Strt_Glitch;
   wire Par_Chk_En;
   wire Strt_Chk_En;
   wire Stp_Chk_En;
   wire Deser_En;
   wire Enable;
   wire Sampled_Bit;
   wire n4;
   wire n5;
   wire [3:0] Bit_Cnt;
   wire [5:0] Edge_Cnt;

   assign test_so1 = Strt_Glitch ;

   FSM_RX_test_1 U0_FSM (.RX_in_fsm(RX_IN), 
	.clk(CLK), 
	.rst(FE_OFN6_UART_SYNC_RST_M), 
	.Par_en_fsm(PAR_EN), 
	.prescale_fsm({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.edge_cnt_fsm({ Edge_Cnt[5],
		Edge_Cnt[4],
		Edge_Cnt[3],
		Edge_Cnt[2],
		Edge_Cnt[1],
		Edge_Cnt[0] }), 
	.bit_cnt_fsm({ Bit_Cnt[3],
		Bit_Cnt[2],
		Bit_Cnt[1],
		Bit_Cnt[0] }), 
	.strt_glitch_fsm(Strt_Glitch), 
	.par_err_fsm(PARITY_ERR), 
	.stp_err_fsm(STOP_ERR), 
	.par_chk_en(Par_Chk_En), 
	.strt_chk_en(Strt_Chk_En), 
	.stp_chk_en(Stp_Chk_En), 
	.deser_en_fsm(Deser_En), 
	.enable(Enable), 
	.data_samp_en(FE_PT0_), 
	.data_valid_fsm(DATA_VALID), 
	.test_so(n4), 
	.test_se(test_se));
   data_sampling_RX_test_1 U0_DATA_SAMPLing (.clk(CLK), 
	.rst(FE_OFN6_UART_SYNC_RST_M), 
	.RX_in_sampling(RX_IN), 
	.data_samp_en(Enable), 
	.prescale_sampling({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.edge_cnt_sampling({ Edge_Cnt[5],
		Edge_Cnt[4],
		Edge_Cnt[3],
		Edge_Cnt[2],
		Edge_Cnt[1],
		Edge_Cnt[0] }), 
	.sampled_out(Sampled_Bit), 
	.test_si(test_si1), 
	.test_so(n5), 
	.test_se(test_se));
   deserializer_test_1 U0_Deserializer (.clk(CLK), 
	.rst(FE_OFN6_UART_SYNC_RST_M), 
	.sampled_data_bit(Sampled_Bit), 
	.deser_en(Deser_En), 
	.deser_out({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.test_si(n5), 
	.test_se(test_se));
   parity_chk_RX_test_1 U0_Parity_Chk (.clk(CLK), 
	.rst(FE_OFN6_UART_SYNC_RST_M), 
	.par_chk_en(Par_Chk_En), 
	.par_typ(PAR_TYP), 
	.sampled_data({ P_DATA[7],
		P_DATA[6],
		P_DATA[5],
		P_DATA[4],
		P_DATA[3],
		P_DATA[2],
		P_DATA[1],
		P_DATA[0] }), 
	.sampled_par_bit(Sampled_Bit), 
	.par_err(PARITY_ERR), 
	.test_si(n4), 
	.test_se(test_se));
   start_chk_RX_test_1 U0_Start_Chk (.strt_chk_en(Strt_Chk_En), 
	.sampled_strt_bit(Sampled_Bit), 
	.rst(FE_OFN6_UART_SYNC_RST_M), 
	.clk(CLK), 
	.strt_glitch(Strt_Glitch), 
	.test_si(PARITY_ERR), 
	.test_se(test_se));
   stop_chk_RX_test_1 U0_Stop_Chk (.clk(CLK), 
	.rst(FE_OFN6_UART_SYNC_RST_M), 
	.stp_chk_en(Stp_Chk_En), 
	.sampled_stp_bit(Sampled_Bit), 
	.stp_err(STOP_ERR), 
	.test_si(test_si2), 
	.test_se(test_se));
   edge_bit_counter_test_1 U0_Edge_Bit_Counter (.clk(CLK), 
	.rst(RST), 
	.enable_edge(Enable), 
	.prescale_edge({ PRESCALE[5],
		PRESCALE[4],
		PRESCALE[3],
		PRESCALE[2],
		PRESCALE[1],
		PRESCALE[0] }), 
	.edge_cnt_edge({ Edge_Cnt[5],
		Edge_Cnt[4],
		Edge_Cnt[3],
		Edge_Cnt[2],
		Edge_Cnt[1],
		Edge_Cnt[0] }), 
	.bit_cnt_edge({ Bit_Cnt[3],
		Bit_Cnt[2],
		Bit_Cnt[1],
		Bit_Cnt[0] }), 
	.test_si(P_DATA[7]), 
	.test_se(test_se), 
	.FE_OFN6_UART_SYNC_RST_M(FE_OFN6_UART_SYNC_RST_M));
endmodule

module UART_test_1 (
	RST, 
	TX_CLK, 
	RX_CLK, 
	RX_IN_S, 
	RX_OUT_P, 
	RX_OUT_V, 
	TX_IN_P, 
	TX_IN_V, 
	TX_OUT_S, 
	TX_OUT_V, 
	Prescale, 
	parity_enable, 
	parity_type, 
	parity_error, 
	framing_error, 
	test_si2, 
	test_si1, 
	test_so1, 
	test_se, 
	FE_OFN6_UART_SYNC_RST_M);
   input RST;
   input TX_CLK;
   input RX_CLK;
   input RX_IN_S;
   output [7:0] RX_OUT_P;
   output RX_OUT_V;
   input [7:0] TX_IN_P;
   input TX_IN_V;
   output TX_OUT_S;
   output TX_OUT_V;
   input [5:0] Prescale;
   input parity_enable;
   input parity_type;
   output parity_error;
   output framing_error;
   input test_si2;
   input test_si1;
   output test_so1;
   input test_se;
   input FE_OFN6_UART_SYNC_RST_M;

   // Internal wires
   wire n5;

   Top_Tx_test_1 U0_UART_TX (.P_DATA({ TX_IN_P[7],
		TX_IN_P[6],
		TX_IN_P[5],
		TX_IN_P[4],
		TX_IN_P[3],
		TX_IN_P[2],
		TX_IN_P[1],
		TX_IN_P[0] }), 
	.PAR_EN(parity_enable), 
	.Data_Valid(TX_IN_V), 
	.PAR_TYP(parity_type), 
	.CLK(TX_CLK), 
	.RST(FE_OFN6_UART_SYNC_RST_M), 
	.TX_OUT(TX_OUT_S), 
	.Busy(TX_OUT_V), 
	.test_si(n5), 
	.test_so(test_so1), 
	.test_se(test_se));
   TOP_RX_test_1 U0_UART_RX (.RX_IN(RX_IN_S), 
	.PRESCALE({ Prescale[5],
		Prescale[4],
		Prescale[3],
		Prescale[2],
		Prescale[1],
		Prescale[0] }), 
	.CLK(RX_CLK), 
	.RST(RST), 
	.PAR_EN(parity_enable), 
	.PAR_TYP(parity_type), 
	.P_DATA({ RX_OUT_P[7],
		RX_OUT_P[6],
		RX_OUT_P[5],
		RX_OUT_P[4],
		RX_OUT_P[3],
		RX_OUT_P[2],
		RX_OUT_P[1],
		RX_OUT_P[0] }), 
	.PARITY_ERR(parity_error), 
	.STOP_ERR(framing_error), 
	.DATA_VALID(RX_OUT_V), 
	.test_si2(test_si2), 
	.test_si1(test_si1), 
	.test_so1(n5), 
	.test_se(test_se), 
	.FE_OFN6_UART_SYNC_RST_M(FE_OFN6_UART_SYNC_RST_M));
endmodule

module Sys_Ctrl_test_1 (
	Sys_clk, 
	Sys_rst, 
	RX_P_Data, 
	RX_D_VLd, 
	Rd_Data, 
	Rd_Data_VLd, 
	ALU_out, 
	ALU_out_VLd, 
	FIFO_full, 
	Address, 
	Wr_En, 
	Rd_En, 
	Wr_Data, 
	ALU_fun, 
	ALU_EN, 
	CLK_ALU_EN, 
	WR_Data_FIFO, 
	WR_INC, 
	test_si, 
	test_so, 
	test_se, 
	FE_OFN3_REF_SYNC_RST_M, 
	FE_OFN4_REF_SYNC_RST_M, 
	Ref_muxed_clk__L7_N5, 
	Ref_muxed_clk__L7_N7);
   input Sys_clk;
   input Sys_rst;
   input [7:0] RX_P_Data;
   input RX_D_VLd;
   input [7:0] Rd_Data;
   input Rd_Data_VLd;
   input [15:0] ALU_out;
   input ALU_out_VLd;
   input FIFO_full;
   output [3:0] Address;
   output Wr_En;
   output Rd_En;
   output [7:0] Wr_Data;
   output [3:0] ALU_fun;
   output ALU_EN;
   output CLK_ALU_EN;
   output [7:0] WR_Data_FIFO;
   output WR_INC;
   input test_si;
   output test_so;
   input test_se;
   input FE_OFN3_REF_SYNC_RST_M;
   input FE_OFN4_REF_SYNC_RST_M;
   input Ref_muxed_clk__L7_N5;
   input Ref_muxed_clk__L7_N7;

   // Internal wires
   wire FE_PHN1_test_si4;
   wire FE_PHN0_test_si4;
   wire rd_got;
   wire n1;
   wire n13;
   wire n30;
   wire n31;
   wire n33;
   wire n34;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n51;
   wire n52;
   wire n53;
   wire n55;
   wire n57;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n66;
   wire n68;
   wire n69;
   wire n70;
   wire n72;
   wire n73;
   wire n74;
   wire n76;
   wire n77;
   wire n78;
   wire n79;
   wire n81;
   wire n82;
   wire n83;
   wire n84;
   wire n85;
   wire n86;
   wire n88;
   wire n89;
   wire n90;
   wire n91;
   wire n92;
   wire n94;
   wire n95;
   wire n96;
   wire n97;
   wire n98;
   wire n99;
   wire n100;
   wire n101;
   wire n103;
   wire n105;
   wire n107;
   wire n109;
   wire n111;
   wire n113;
   wire n115;
   wire n117;
   wire n119;
   wire n121;
   wire n123;
   wire n125;
   wire n127;
   wire n129;
   wire n131;
   wire n133;
   wire n135;
   wire n137;
   wire n139;
   wire n141;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n32;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n45;
   wire n54;
   wire n56;
   wire n58;
   wire n59;
   wire n60;
   wire n65;
   wire n67;
   wire n71;
   wire n75;
   wire n80;
   wire n87;
   wire n93;
   wire n164;
   wire n165;
   wire n166;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire [3:0] C_S;
   wire [3:0] addr_reg;
   wire [15:0] ALU_out_reg;
   wire [3:0] N_S;

   assign test_so = rd_got ;

   DLY4X1M FE_PHC1_test_si4 (.Y(FE_PHN1_test_si4), 
	.A(FE_PHN0_test_si4));
   DLY4X1M FE_PHC0_test_si4 (.Y(FE_PHN0_test_si4), 
	.A(test_si));
   SDFFRQX2M \ALU_out_reg_reg[8]  (.SI(ALU_out_reg[7]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[8]), 
	.D(n127), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[9]  (.SI(ALU_out_reg[8]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[9]), 
	.D(n125), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[10]  (.SI(ALU_out_reg[9]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[10]), 
	.D(n123), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[11]  (.SI(ALU_out_reg[10]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[11]), 
	.D(n121), 
	.CK(Sys_clk));
   SDFFRQX2M \ALU_out_reg_reg[12]  (.SI(ALU_out_reg[11]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[12]), 
	.D(n119), 
	.CK(Sys_clk));
   SDFFRQX2M \ALU_out_reg_reg[13]  (.SI(ALU_out_reg[12]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[13]), 
	.D(n117), 
	.CK(Sys_clk));
   SDFFRQX2M \ALU_out_reg_reg[14]  (.SI(ALU_out_reg[13]), 
	.SE(test_se), 
	.RN(Sys_rst), 
	.Q(ALU_out_reg[14]), 
	.D(n115), 
	.CK(Sys_clk));
   SDFFRQX2M \ALU_out_reg_reg[15]  (.SI(ALU_out_reg[14]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[15]), 
	.D(n113), 
	.CK(Sys_clk));
   SDFFRQX2M \ALU_out_reg_reg[1]  (.SI(ALU_out_reg[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[1]), 
	.D(n141), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[2]  (.SI(ALU_out_reg[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[2]), 
	.D(n139), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[3]  (.SI(ALU_out_reg[2]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[3]), 
	.D(n137), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[4]  (.SI(ALU_out_reg[3]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[4]), 
	.D(n135), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[5]  (.SI(ALU_out_reg[4]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[5]), 
	.D(n133), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[6]  (.SI(ALU_out_reg[5]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[6]), 
	.D(n131), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[7]  (.SI(ALU_out_reg[6]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[7]), 
	.D(n129), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \ALU_out_reg_reg[0]  (.SI(FE_PHN1_test_si4), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(ALU_out_reg[0]), 
	.D(n111), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRX1M \rd_data_reg_reg[7]  (.SI(n169), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.QN(n168), 
	.Q(n101), 
	.D(n155), 
	.CK(Sys_clk));
   SDFFRX1M \rd_data_reg_reg[6]  (.SI(n170), 
	.SE(test_se), 
	.RN(Sys_rst), 
	.QN(n169), 
	.Q(n100), 
	.D(n156), 
	.CK(Sys_clk));
   SDFFRX1M \rd_data_reg_reg[5]  (.SI(n171), 
	.SE(test_se), 
	.RN(Sys_rst), 
	.QN(n170), 
	.Q(n99), 
	.D(n157), 
	.CK(Sys_clk));
   SDFFRX1M \rd_data_reg_reg[4]  (.SI(n172), 
	.SE(test_se), 
	.RN(Sys_rst), 
	.QN(n171), 
	.Q(n98), 
	.D(n158), 
	.CK(Sys_clk));
   SDFFRX1M \rd_data_reg_reg[3]  (.SI(n173), 
	.SE(test_se), 
	.RN(Sys_rst), 
	.QN(n172), 
	.Q(n97), 
	.D(n159), 
	.CK(Sys_clk));
   SDFFRX1M \rd_data_reg_reg[2]  (.SI(n174), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.QN(n173), 
	.Q(n96), 
	.D(n160), 
	.CK(Sys_clk));
   SDFFRX1M \rd_data_reg_reg[1]  (.SI(n175), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.QN(n174), 
	.Q(n95), 
	.D(n161), 
	.CK(Sys_clk));
   SDFFRX1M \rd_data_reg_reg[0]  (.SI(addr_reg[3]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.QN(n175), 
	.Q(n94), 
	.D(n162), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \addr_reg_reg[3]  (.SI(addr_reg[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(addr_reg[3]), 
	.D(n107), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \addr_reg_reg[2]  (.SI(addr_reg[1]), 
	.SE(test_se), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(addr_reg[2]), 
	.D(n105), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRQX2M rd_got_reg (.SI(n168), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(rd_got), 
	.D(n163), 
	.CK(Sys_clk));
   SDFFRQX2M \addr_reg_reg[0]  (.SI(C_S[3]), 
	.SE(test_se), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(addr_reg[0]), 
	.D(n109), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \addr_reg_reg[1]  (.SI(addr_reg[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(addr_reg[1]), 
	.D(n103), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \C_S_reg[2]  (.SI(C_S[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(C_S[2]), 
	.D(N_S[2]), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \C_S_reg[3]  (.SI(C_S[2]), 
	.SE(test_se), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(C_S[3]), 
	.D(N_S[3]), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \C_S_reg[0]  (.SI(ALU_out_reg[15]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(C_S[0]), 
	.D(N_S[0]), 
	.CK(Ref_muxed_clk__L7_N5));
   SDFFRQX2M \C_S_reg[1]  (.SI(C_S[0]), 
	.SE(test_se), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(C_S[1]), 
	.D(N_S[1]), 
	.CK(Ref_muxed_clk__L7_N5));
   OAI222X1M U3 (.Y(Address[0]), 
	.C1(n11), 
	.C0(n165), 
	.B1(n73), 
	.B0(n60), 
	.A1(n19), 
	.A0(n166));
   OAI22X1M U4 (.Y(Address[3]), 
	.B1(n73), 
	.B0(n65), 
	.A1(n11), 
	.A0(n87));
   OAI22X1M U5 (.Y(Address[2]), 
	.B1(n73), 
	.B0(n67), 
	.A1(n11), 
	.A0(n93));
   OAI22X1M U6 (.Y(Address[1]), 
	.B1(n73), 
	.B0(n71), 
	.A1(n11), 
	.A0(n164));
   NOR2X2M U7 (.Y(ALU_fun[0]), 
	.B(n20), 
	.A(n165));
   NOR3X2M U8 (.Y(n1), 
	.C(n166), 
	.B(C_S[1]), 
	.A(n74));
   INVX2M U9 (.Y(n11), 
	.A(Rd_En));
   INVX2M U10 (.Y(n20), 
	.A(ALU_EN));
   NAND2X2M U11 (.Y(n43), 
	.B(n5), 
	.A(n10));
   INVX2M U12 (.Y(n5), 
	.A(FIFO_full));
   NOR2X2M U14 (.Y(Rd_En), 
	.B(n166), 
	.A(n78));
   INVX2M U15 (.Y(n19), 
	.A(n39));
   NOR3X2M U16 (.Y(n40), 
	.C(n21), 
	.B(FIFO_full), 
	.A(n53));
   NAND4BX1M U17 (.Y(WR_INC), 
	.D(n43), 
	.C(n42), 
	.B(n41), 
	.AN(n40));
   NOR2X2M U18 (.Y(ALU_EN), 
	.B(n166), 
	.A(n81));
   NOR2X2M U19 (.Y(ALU_fun[3]), 
	.B(n20), 
	.A(n87));
   NOR2X2M U20 (.Y(ALU_fun[1]), 
	.B(n20), 
	.A(n164));
   NOR2X2M U21 (.Y(ALU_fun[2]), 
	.B(n20), 
	.A(n93));
   NOR2BX2M U22 (.Y(n31), 
	.B(FIFO_full), 
	.AN(n33));
   INVX2M U23 (.Y(n14), 
	.A(n73));
   INVX2M U24 (.Y(n9), 
	.A(n61));
   INVX2M U25 (.Y(Wr_En), 
	.A(n34));
   NOR2X2M U26 (.Y(Wr_Data[6]), 
	.B(n75), 
	.A(n34));
   NOR2X2M U27 (.Y(Wr_Data[2]), 
	.B(n34), 
	.A(n93));
   NOR2X2M U28 (.Y(Wr_Data[1]), 
	.B(n34), 
	.A(n164));
   NOR2X2M U29 (.Y(Wr_Data[3]), 
	.B(n34), 
	.A(n87));
   NOR2X2M U30 (.Y(Wr_Data[4]), 
	.B(n80), 
	.A(n34));
   NOR2X2M U31 (.Y(Wr_Data[0]), 
	.B(n34), 
	.A(n165));
   INVX2M U32 (.Y(n6), 
	.A(n30));
   INVX2M U33 (.Y(n7), 
	.A(n41));
   INVX2M U34 (.Y(n10), 
	.A(n55));
   OAI22X1M U35 (.Y(n107), 
	.B1(n87), 
	.B0(n12), 
	.A1(n65), 
	.A0(n1));
   OAI22X1M U36 (.Y(n103), 
	.B1(n164), 
	.B0(n12), 
	.A1(n71), 
	.A0(n1));
   OAI22X1M U37 (.Y(n109), 
	.B1(n165), 
	.B0(n12), 
	.A1(n60), 
	.A0(n1));
   OAI22X1M U38 (.Y(n105), 
	.B1(n93), 
	.B0(n12), 
	.A1(n67), 
	.A0(n1));
   INVX2M U39 (.Y(n12), 
	.A(n1));
   INVX2M U40 (.Y(n8), 
	.A(n13));
   OAI21X2M U41 (.Y(n163), 
	.B0(n30), 
	.A1(n35), 
	.A0(n31));
   NAND3X2M U42 (.Y(CLK_ALU_EN), 
	.C(n55), 
	.B(n20), 
	.A(n53));
   NAND3X2M U43 (.Y(N_S[3]), 
	.C(n57), 
	.B(n20), 
	.A(n55));
   OAI21X2M U44 (.Y(n57), 
	.B0(n15), 
	.A1(n21), 
	.A0(FIFO_full));
   INVX2M U45 (.Y(n15), 
	.A(n53));
   INVX2M U46 (.Y(n17), 
	.A(n86));
   NOR3BX2M U48 (.Y(n39), 
	.C(n21), 
	.B(C_S[0]), 
	.AN(n68));
   NAND3BX2M U49 (.Y(n74), 
	.C(C_S[0]), 
	.B(n22), 
	.AN(C_S[3]));
   NOR2X2M U50 (.Y(n68), 
	.B(C_S[3]), 
	.A(n22));
   INVX2M U51 (.Y(n21), 
	.A(C_S[1]));
   NAND2BX2M U52 (.Y(n78), 
	.B(C_S[1]), 
	.AN(n74));
   INVX2M U53 (.Y(n22), 
	.A(C_S[2]));
   NOR3BX2M U54 (.Y(n33), 
	.C(C_S[1]), 
	.B(C_S[0]), 
	.AN(n68));
   NAND3BX2M U55 (.Y(n73), 
	.C(C_S[1]), 
	.B(n91), 
	.AN(C_S[3]));
   NAND3BX2M U56 (.Y(n42), 
	.C(n31), 
	.B(rd_got), 
	.AN(Rd_Data_VLd));
   NOR2X2M U57 (.Y(n91), 
	.B(C_S[2]), 
	.A(C_S[0]));
   INVX2M U58 (.Y(n93), 
	.A(RX_P_Data[2]));
   NAND3X2M U59 (.Y(n61), 
	.C(n68), 
	.B(n21), 
	.A(C_S[0]));
   INVX2M U60 (.Y(n165), 
	.A(RX_P_Data[0]));
   INVX2M U61 (.Y(n166), 
	.A(RX_D_VLd));
   INVX2M U62 (.Y(n164), 
	.A(RX_P_Data[1]));
   OAI31X4M U64 (.Y(n34), 
	.B0(RX_D_VLd), 
	.A2(n39), 
	.A1(n14), 
	.A0(n9));
   NAND3X2M U65 (.Y(n81), 
	.C(C_S[1]), 
	.B(C_S[0]), 
	.A(n68));
   NAND2X2M U66 (.Y(n41), 
	.B(Rd_Data_VLd), 
	.A(n31));
   INVX2M U67 (.Y(n87), 
	.A(RX_P_Data[3]));
   INVX2M U68 (.Y(n71), 
	.A(addr_reg[1]));
   INVX2M U69 (.Y(n60), 
	.A(addr_reg[0]));
   NAND4X2M U70 (.Y(N_S[0]), 
	.D(n77), 
	.C(n76), 
	.B(n13), 
	.A(n66));
   AOI31X2M U71 (.Y(n76), 
	.B0(n89), 
	.A2(n88), 
	.A1(n165), 
	.A0(n17));
   AOI221XLM U72 (.Y(n77), 
	.C0(n72), 
	.B1(RX_D_VLd), 
	.B0(n39), 
	.A1(FIFO_full), 
	.A0(n10));
   NOR3X2M U73 (.Y(n88), 
	.C(RX_P_Data[4]), 
	.B(RX_P_Data[6]), 
	.A(RX_P_Data[2]));
   NAND4X2M U74 (.Y(N_S[2]), 
	.D(n62), 
	.C(n61), 
	.B(n11), 
	.A(n19));
   AOI211X2M U75 (.Y(n62), 
	.C0(n16), 
	.B0(n64), 
	.A1(n63), 
	.A0(n33));
   INVX2M U76 (.Y(n16), 
	.A(n66));
   OAI21X2M U77 (.Y(n63), 
	.B0(n5), 
	.A1(Rd_Data_VLd), 
	.A0(rd_got));
   NAND4BX1M U78 (.Y(N_S[1]), 
	.D(n70), 
	.C(n12), 
	.B(n19), 
	.AN(n69));
   AOI221XLM U79 (.Y(n70), 
	.C0(n72), 
	.B1(n166), 
	.B0(n14), 
	.A1(RX_D_VLd), 
	.A0(n9));
   OAI31X1M U80 (.Y(n69), 
	.B0(n43), 
	.A2(n21), 
	.A1(n53), 
	.A0(n5));
   OAI21X2M U81 (.Y(n64), 
	.B0(n82), 
	.A1(n81), 
	.A0(RX_D_VLd));
   NAND4X2M U82 (.Y(n82), 
	.D(n84), 
	.C(n83), 
	.B(RX_P_Data[6]), 
	.A(RX_P_Data[4]));
   NOR4X1M U83 (.Y(n84), 
	.D(n165), 
	.C(n93), 
	.B(RX_P_Data[1]), 
	.A(RX_P_Data[5]));
   NAND4X2M U84 (.Y(n30), 
	.D(n35), 
	.C(n33), 
	.B(FIFO_full), 
	.A(Rd_Data_VLd));
   NAND4X2M U85 (.Y(n55), 
	.D(n22), 
	.C(n21), 
	.B(C_S[0]), 
	.A(C_S[3]));
   NOR2BX2M U86 (.Y(Wr_Data[5]), 
	.B(n34), 
	.AN(RX_P_Data[5]));
   OAI221X1M U87 (.Y(WR_Data_FIFO[0]), 
	.C0(n52), 
	.B1(n43), 
	.B0(n59), 
	.A1(n42), 
	.A0(n32));
   AOI22X1M U88 (.Y(n52), 
	.B1(Rd_Data[0]), 
	.B0(n7), 
	.A1(ALU_out_reg[8]), 
	.A0(n40));
   OAI221X1M U89 (.Y(WR_Data_FIFO[1]), 
	.C0(n51), 
	.B1(n43), 
	.B0(n36), 
	.A1(n42), 
	.A0(n29));
   AOI22X1M U90 (.Y(n51), 
	.B1(Rd_Data[1]), 
	.B0(n7), 
	.A1(ALU_out_reg[9]), 
	.A0(n40));
   OAI221X1M U91 (.Y(WR_Data_FIFO[2]), 
	.C0(n50), 
	.B1(n43), 
	.B0(n37), 
	.A1(n42), 
	.A0(n28));
   AOI22X1M U92 (.Y(n50), 
	.B1(Rd_Data[2]), 
	.B0(n7), 
	.A1(ALU_out_reg[10]), 
	.A0(n40));
   OAI221X1M U93 (.Y(WR_Data_FIFO[3]), 
	.C0(n49), 
	.B1(n43), 
	.B0(n38), 
	.A1(n42), 
	.A0(n27));
   AOI22X1M U94 (.Y(n49), 
	.B1(Rd_Data[3]), 
	.B0(n7), 
	.A1(ALU_out_reg[11]), 
	.A0(n40));
   OAI221X1M U95 (.Y(WR_Data_FIFO[4]), 
	.C0(n48), 
	.B1(n43), 
	.B0(n45), 
	.A1(n42), 
	.A0(n26));
   AOI22X1M U96 (.Y(n48), 
	.B1(Rd_Data[4]), 
	.B0(n7), 
	.A1(ALU_out_reg[12]), 
	.A0(n40));
   OAI221X1M U97 (.Y(WR_Data_FIFO[5]), 
	.C0(n47), 
	.B1(n43), 
	.B0(n54), 
	.A1(n42), 
	.A0(n25));
   AOI22X1M U98 (.Y(n47), 
	.B1(Rd_Data[5]), 
	.B0(n7), 
	.A1(ALU_out_reg[13]), 
	.A0(n40));
   OAI221X1M U99 (.Y(WR_Data_FIFO[6]), 
	.C0(n46), 
	.B1(n43), 
	.B0(n56), 
	.A1(n42), 
	.A0(n24));
   AOI22X1M U100 (.Y(n46), 
	.B1(Rd_Data[6]), 
	.B0(n7), 
	.A1(ALU_out_reg[14]), 
	.A0(n40));
   OAI221X1M U101 (.Y(WR_Data_FIFO[7]), 
	.C0(n44), 
	.B1(n43), 
	.B0(n58), 
	.A1(n42), 
	.A0(n23));
   AOI22X1M U102 (.Y(n44), 
	.B1(Rd_Data[7]), 
	.B0(n7), 
	.A1(ALU_out_reg[15]), 
	.A0(n40));
   NOR2BX2M U103 (.Y(Wr_Data[7]), 
	.B(n34), 
	.AN(RX_P_Data[7]));
   NAND4X2M U104 (.Y(n66), 
	.D(n90), 
	.C(n83), 
	.B(RX_P_Data[2]), 
	.A(RX_P_Data[6]));
   NOR4X1M U105 (.Y(n90), 
	.D(RX_P_Data[0]), 
	.C(RX_P_Data[1]), 
	.B(RX_P_Data[4]), 
	.A(RX_P_Data[5]));
   AND4X2M U106 (.Y(n83), 
	.D(n92), 
	.C(RX_P_Data[7]), 
	.B(RX_P_Data[3]), 
	.A(n91));
   NOR3X2M U107 (.Y(n92), 
	.C(C_S[1]), 
	.B(C_S[3]), 
	.A(n166));
   NAND2X2M U108 (.Y(n53), 
	.B(n91), 
	.A(C_S[3]));
   NAND3X2M U109 (.Y(n86), 
	.C(n83), 
	.B(RX_P_Data[1]), 
	.A(RX_P_Data[5]));
   OAI211X2M U110 (.Y(n72), 
	.C0(n18), 
	.B0(n79), 
	.A1(n78), 
	.A0(RX_D_VLd));
   INVX2M U111 (.Y(n18), 
	.A(n64));
   NAND4X2M U112 (.Y(n79), 
	.D(n85), 
	.C(RX_P_Data[0]), 
	.B(n75), 
	.A(n93));
   NOR2X2M U113 (.Y(n85), 
	.B(n86), 
	.A(n80));
   OAI2BB2X1M U114 (.Y(n162), 
	.B1(n32), 
	.B0(n6), 
	.A1N(Rd_Data[0]), 
	.A0N(n6));
   OAI2BB2X1M U115 (.Y(n161), 
	.B1(n29), 
	.B0(n6), 
	.A1N(Rd_Data[1]), 
	.A0N(n6));
   OAI2BB2X1M U116 (.Y(n160), 
	.B1(n28), 
	.B0(n6), 
	.A1N(Rd_Data[2]), 
	.A0N(n6));
   OAI2BB2X1M U117 (.Y(n159), 
	.B1(n27), 
	.B0(n6), 
	.A1N(Rd_Data[3]), 
	.A0N(n6));
   OAI2BB2X1M U118 (.Y(n158), 
	.B1(n26), 
	.B0(n6), 
	.A1N(Rd_Data[4]), 
	.A0N(n6));
   OAI2BB2X1M U119 (.Y(n157), 
	.B1(n25), 
	.B0(n6), 
	.A1N(Rd_Data[5]), 
	.A0N(n6));
   OAI2BB2X1M U120 (.Y(n156), 
	.B1(n24), 
	.B0(n6), 
	.A1N(Rd_Data[6]), 
	.A0N(n6));
   OAI2BB2X1M U121 (.Y(n155), 
	.B1(n23), 
	.B0(n6), 
	.A1N(Rd_Data[7]), 
	.A0N(n6));
   INVX2M U122 (.Y(n67), 
	.A(addr_reg[2]));
   INVX2M U123 (.Y(n65), 
	.A(addr_reg[3]));
   NAND3X2M U124 (.Y(n13), 
	.C(ALU_out_VLd), 
	.B(n21), 
	.A(n15));
   AOI21X2M U125 (.Y(n89), 
	.B0(RX_D_VLd), 
	.A1(n74), 
	.A0(n61));
   OAI2BB2X1M U126 (.Y(n129), 
	.B1(n58), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[7]));
   OAI2BB2X1M U127 (.Y(n131), 
	.B1(n56), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[6]));
   OAI2BB2X1M U128 (.Y(n133), 
	.B1(n54), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[5]));
   OAI2BB2X1M U129 (.Y(n135), 
	.B1(n45), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[4]));
   OAI2BB2X1M U130 (.Y(n137), 
	.B1(n38), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[3]));
   OAI2BB2X1M U131 (.Y(n139), 
	.B1(n37), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[2]));
   OAI2BB2X1M U132 (.Y(n141), 
	.B1(n36), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[1]));
   INVX2M U133 (.Y(n80), 
	.A(RX_P_Data[4]));
   INVX2M U134 (.Y(n75), 
	.A(RX_P_Data[6]));
   INVX2M U135 (.Y(n35), 
	.A(rd_got));
   AO22X1M U136 (.Y(n113), 
	.B1(n8), 
	.B0(ALU_out[15]), 
	.A1(ALU_out_reg[15]), 
	.A0(n13));
   AO22X1M U137 (.Y(n115), 
	.B1(n8), 
	.B0(ALU_out[14]), 
	.A1(ALU_out_reg[14]), 
	.A0(n13));
   AO22X1M U138 (.Y(n117), 
	.B1(n8), 
	.B0(ALU_out[13]), 
	.A1(ALU_out_reg[13]), 
	.A0(n13));
   AO22X1M U139 (.Y(n119), 
	.B1(n8), 
	.B0(ALU_out[12]), 
	.A1(ALU_out_reg[12]), 
	.A0(n13));
   AO22X1M U140 (.Y(n121), 
	.B1(n8), 
	.B0(ALU_out[11]), 
	.A1(ALU_out_reg[11]), 
	.A0(n13));
   AO22X1M U141 (.Y(n123), 
	.B1(n8), 
	.B0(ALU_out[10]), 
	.A1(ALU_out_reg[10]), 
	.A0(n13));
   AO22X1M U142 (.Y(n125), 
	.B1(n8), 
	.B0(ALU_out[9]), 
	.A1(ALU_out_reg[9]), 
	.A0(n13));
   AO22X1M U143 (.Y(n127), 
	.B1(n8), 
	.B0(ALU_out[8]), 
	.A1(ALU_out_reg[8]), 
	.A0(n13));
   INVX2M U144 (.Y(n32), 
	.A(n94));
   INVX2M U145 (.Y(n29), 
	.A(n95));
   INVX2M U146 (.Y(n28), 
	.A(n96));
   INVX2M U147 (.Y(n27), 
	.A(n97));
   INVX2M U148 (.Y(n26), 
	.A(n98));
   INVX2M U149 (.Y(n25), 
	.A(n99));
   INVX2M U150 (.Y(n24), 
	.A(n100));
   INVX2M U151 (.Y(n23), 
	.A(n101));
   INVX2M U152 (.Y(n36), 
	.A(ALU_out_reg[1]));
   INVX2M U153 (.Y(n37), 
	.A(ALU_out_reg[2]));
   INVX2M U154 (.Y(n38), 
	.A(ALU_out_reg[3]));
   INVX2M U155 (.Y(n45), 
	.A(ALU_out_reg[4]));
   INVX2M U156 (.Y(n54), 
	.A(ALU_out_reg[5]));
   INVX2M U157 (.Y(n56), 
	.A(ALU_out_reg[6]));
   INVX2M U191 (.Y(n58), 
	.A(ALU_out_reg[7]));
   INVX2M U192 (.Y(n59), 
	.A(ALU_out_reg[0]));
   OAI2BB2X1M U193 (.Y(n111), 
	.B1(n59), 
	.B0(n8), 
	.A1N(n8), 
	.A0N(ALU_out[0]));
endmodule

module Register_file_test_1 (
	Wr_Data, 
	address, 
	Wr_En, 
	Rd_En, 
	clk, 
	rst, 
	Rd_Data_VLD, 
	Rd_Data, 
	Reg0, 
	Reg1, 
	Reg2, 
	Reg3, 
	test_si2, 
	test_si1, 
	test_so2, 
	test_so1, 
	test_se, 
	FE_OFN3_REF_SYNC_RST_M, 
	FE_OFN4_REF_SYNC_RST_M, 
	Ref_muxed_clk__L7_N11, 
	Ref_muxed_clk__L7_N6, 
	Ref_muxed_clk__L7_N7, 
	Ref_muxed_clk__L7_N8, 
	Ref_muxed_clk__L7_N9);
   input [7:0] Wr_Data;
   input [3:0] address;
   input Wr_En;
   input Rd_En;
   input clk;
   input rst;
   output Rd_Data_VLD;
   output [7:0] Rd_Data;
   output [7:0] Reg0;
   output [7:0] Reg1;
   output [7:0] Reg2;
   output [7:0] Reg3;
   input test_si2;
   input test_si1;
   output test_so2;
   output test_so1;
   input test_se;
   input FE_OFN3_REF_SYNC_RST_M;
   input FE_OFN4_REF_SYNC_RST_M;
   input Ref_muxed_clk__L7_N11;
   input Ref_muxed_clk__L7_N6;
   input Ref_muxed_clk__L7_N7;
   input Ref_muxed_clk__L7_N8;
   input Ref_muxed_clk__L7_N9;

   // Internal wires
   wire FE_PHN3_test_si3;
   wire FE_PHN2_test_si3;
   wire FE_OFN18_Op_A_5_;
   wire FE_OFN17_Op_B_3_;
   wire FE_OFN16_Op_B_0_;
   wire FE_OFN15_Op_B_6_;
   wire FE_OFN14_Op_A_7_;
   wire FE_OFN13_Op_B_5_;
   wire FE_OFN12_Op_B_4_;
   wire FE_OFN11_Op_B_7_;
   wire FE_OFN10_Op_A_6_;
   wire FE_OFN9_Op_B_1_;
   wire FE_OFN8_Op_B_2_;
   wire FE_OFN5_REF_SYNC_RST_M;
   wire FE_OFN2_REF_SYNC_RST_M;
   wire N11;
   wire N12;
   wire N13;
   wire N14;
   wire \mem[15][7] ;
   wire \mem[15][6] ;
   wire \mem[15][5] ;
   wire \mem[15][4] ;
   wire \mem[15][3] ;
   wire \mem[15][2] ;
   wire \mem[15][1] ;
   wire \mem[15][0] ;
   wire \mem[14][7] ;
   wire \mem[14][6] ;
   wire \mem[14][5] ;
   wire \mem[14][4] ;
   wire \mem[14][3] ;
   wire \mem[14][2] ;
   wire \mem[14][1] ;
   wire \mem[14][0] ;
   wire \mem[13][7] ;
   wire \mem[13][6] ;
   wire \mem[13][5] ;
   wire \mem[13][4] ;
   wire \mem[13][3] ;
   wire \mem[13][2] ;
   wire \mem[13][1] ;
   wire \mem[13][0] ;
   wire \mem[12][7] ;
   wire \mem[12][6] ;
   wire \mem[12][5] ;
   wire \mem[12][4] ;
   wire \mem[12][3] ;
   wire \mem[12][2] ;
   wire \mem[12][1] ;
   wire \mem[12][0] ;
   wire \mem[11][7] ;
   wire \mem[11][6] ;
   wire \mem[11][5] ;
   wire \mem[11][4] ;
   wire \mem[11][3] ;
   wire \mem[11][2] ;
   wire \mem[11][1] ;
   wire \mem[11][0] ;
   wire \mem[10][7] ;
   wire \mem[10][6] ;
   wire \mem[10][5] ;
   wire \mem[10][4] ;
   wire \mem[10][3] ;
   wire \mem[10][2] ;
   wire \mem[10][1] ;
   wire \mem[10][0] ;
   wire \mem[9][7] ;
   wire \mem[9][6] ;
   wire \mem[9][5] ;
   wire \mem[9][4] ;
   wire \mem[9][3] ;
   wire \mem[9][2] ;
   wire \mem[9][1] ;
   wire \mem[9][0] ;
   wire \mem[8][7] ;
   wire \mem[8][6] ;
   wire \mem[8][5] ;
   wire \mem[8][4] ;
   wire \mem[8][3] ;
   wire \mem[8][2] ;
   wire \mem[8][1] ;
   wire \mem[8][0] ;
   wire \mem[7][7] ;
   wire \mem[7][6] ;
   wire \mem[7][5] ;
   wire \mem[7][4] ;
   wire \mem[7][3] ;
   wire \mem[7][2] ;
   wire \mem[7][1] ;
   wire \mem[7][0] ;
   wire \mem[6][7] ;
   wire \mem[6][6] ;
   wire \mem[6][5] ;
   wire \mem[6][4] ;
   wire \mem[6][3] ;
   wire \mem[6][2] ;
   wire \mem[6][1] ;
   wire \mem[6][0] ;
   wire \mem[5][7] ;
   wire \mem[5][6] ;
   wire \mem[5][5] ;
   wire \mem[5][4] ;
   wire \mem[5][3] ;
   wire \mem[5][2] ;
   wire \mem[5][1] ;
   wire \mem[5][0] ;
   wire \mem[4][7] ;
   wire \mem[4][6] ;
   wire \mem[4][5] ;
   wire \mem[4][4] ;
   wire \mem[4][3] ;
   wire \mem[4][2] ;
   wire \mem[4][1] ;
   wire \mem[4][0] ;
   wire N36;
   wire N37;
   wire N38;
   wire N39;
   wire N40;
   wire N41;
   wire N42;
   wire N43;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire n192;
   wire n193;
   wire n194;
   wire n195;
   wire n196;
   wire n197;
   wire n198;
   wire n199;
   wire n200;
   wire n201;
   wire n202;
   wire n203;
   wire n204;
   wire n205;
   wire n206;
   wire n207;
   wire n208;
   wire n209;
   wire n210;
   wire n211;
   wire n212;
   wire n213;
   wire n214;
   wire n215;
   wire n216;
   wire n217;
   wire n218;
   wire n219;
   wire n220;
   wire n221;
   wire n222;
   wire n223;
   wire n224;
   wire n225;
   wire n226;
   wire n227;
   wire n228;
   wire n229;
   wire n230;
   wire n231;
   wire n232;
   wire n233;
   wire n234;
   wire n235;
   wire n236;
   wire n237;
   wire n238;
   wire n239;
   wire n240;
   wire n241;
   wire n242;
   wire n243;
   wire n244;
   wire n245;
   wire n246;
   wire n247;
   wire n248;
   wire n249;
   wire n250;
   wire n251;
   wire n252;
   wire n253;
   wire n254;
   wire n255;
   wire n256;
   wire n257;
   wire n258;
   wire n259;
   wire n260;
   wire n261;
   wire n262;
   wire n263;
   wire n264;
   wire n265;
   wire n266;
   wire n267;
   wire n268;
   wire n269;
   wire n270;
   wire n271;
   wire n272;
   wire n273;
   wire n274;
   wire n275;
   wire n276;
   wire n277;
   wire n278;
   wire n279;
   wire n280;
   wire n281;
   wire n282;
   wire n283;
   wire n284;
   wire n285;
   wire n286;
   wire n287;
   wire n288;
   wire n289;
   wire n290;
   wire n291;
   wire n292;
   wire n293;
   wire n294;
   wire n295;
   wire n296;
   wire n297;
   wire n298;
   wire n299;
   wire n300;
   wire n301;
   wire n302;
   wire n303;
   wire n304;
   wire n305;
   wire n306;
   wire n307;
   wire n308;
   wire n309;
   wire n310;
   wire n311;
   wire n312;
   wire n313;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n153;
   wire n314;
   wire n315;
   wire n316;
   wire n317;
   wire n318;
   wire n319;
   wire n320;
   wire n321;
   wire n322;
   wire n323;
   wire n324;
   wire n325;
   wire n326;
   wire n327;
   wire n328;
   wire n329;
   wire n330;
   wire n331;
   wire n332;
   wire n333;
   wire n334;
   wire n335;
   wire n336;
   wire n337;
   wire n338;
   wire n339;
   wire n340;
   wire n341;
   wire n342;
   wire n343;
   wire n344;
   wire n345;
   wire n346;
   wire n347;
   wire n348;
   wire n349;
   wire n350;
   wire n351;
   wire n352;
   wire n353;
   wire n354;
   wire n355;
   wire n356;
   wire n357;
   wire n358;
   wire n359;
   wire n360;
   wire n361;
   wire n362;
   wire n363;
   wire n364;
   wire n365;
   wire n366;
   wire n367;
   wire n368;
   wire n369;
   wire n370;
   wire n371;
   wire n372;
   wire n373;
   wire n374;
   wire n375;
   wire n376;
   wire n377;
   wire n378;
   wire n379;
   wire n380;
   wire n381;
   wire n382;
   wire n383;
   wire n384;
   wire n385;
   wire n386;
   wire n387;
   wire n388;
   wire n389;
   wire n390;
   wire n391;
   wire n392;
   wire n393;
   wire n394;
   wire n395;
   wire n396;
   wire n397;
   wire n398;
   wire n399;
   wire n400;
   wire n401;
   wire n402;
   wire n403;
   wire n404;
   wire n405;
   wire n406;
   wire n407;
   wire n408;
   wire n409;
   wire n410;
   wire n412;
   wire n413;
   wire n414;
   wire n416;
   wire n434;
   wire n435;
   wire n436;
   wire n437;
   wire n438;
   wire n439;
   wire n440;
   wire n441;
   wire n442;
   wire n443;
   wire n444;
   wire n445;
   wire n449;
   wire n450;
   wire n451;
   wire n452;
   wire n453;
   wire n454;

   assign N11 = address[0] ;
   assign N12 = address[1] ;
   assign N13 = address[2] ;
   assign N14 = address[3] ;
   assign test_so2 = \mem[15][7]  ;
   assign test_so1 = \mem[4][3]  ;

   DLY4X1M FE_PHC3_test_si3 (.Y(FE_PHN3_test_si3), 
	.A(FE_PHN2_test_si3));
   DLY4X1M FE_PHC2_test_si3 (.Y(FE_PHN2_test_si3), 
	.A(test_si2));
   BUFX2M FE_OFC18_Op_A_5_ (.Y(Reg0[5]), 
	.A(FE_OFN18_Op_A_5_));
   BUFX4M FE_OFC17_Op_B_3_ (.Y(Reg1[3]), 
	.A(FE_OFN17_Op_B_3_));
   BUFX4M FE_OFC16_Op_B_0_ (.Y(Reg1[0]), 
	.A(FE_OFN16_Op_B_0_));
   BUFX8M FE_OFC15_Op_B_6_ (.Y(Reg1[6]), 
	.A(FE_OFN15_Op_B_6_));
   BUFX4M FE_OFC14_Op_A_7_ (.Y(Reg0[7]), 
	.A(FE_OFN14_Op_A_7_));
   BUFX4M FE_OFC13_Op_B_5_ (.Y(Reg1[5]), 
	.A(FE_OFN13_Op_B_5_));
   BUFX5M FE_OFC12_Op_B_4_ (.Y(Reg1[4]), 
	.A(FE_OFN12_Op_B_4_));
   BUFX10M FE_OFC11_Op_B_7_ (.Y(Reg1[7]), 
	.A(FE_OFN11_Op_B_7_));
   BUFX2M FE_OFC10_Op_A_6_ (.Y(Reg0[6]), 
	.A(FE_OFN10_Op_A_6_));
   BUFX4M FE_OFC9_Op_B_1_ (.Y(Reg1[1]), 
	.A(FE_OFN9_Op_B_1_));
   BUFX4M FE_OFC8_Op_B_2_ (.Y(Reg1[2]), 
	.A(FE_OFN8_Op_B_2_));
   BUFX4M FE_OFC5_REF_SYNC_RST_M (.Y(FE_OFN5_REF_SYNC_RST_M), 
	.A(FE_OFN2_REF_SYNC_RST_M));
   INVX6M FE_OFC2_REF_SYNC_RST_M (.Y(FE_OFN2_REF_SYNC_RST_M), 
	.A(rst));
   SDFFSQX2M \mem_reg[3][5]  (.SN(FE_OFN3_REF_SYNC_RST_M), 
	.SI(Reg3[4]), 
	.SE(n453), 
	.Q(Reg3[5]), 
	.D(n214), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[15][7]  (.SI(\mem[15][6] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][7] ), 
	.D(n312), 
	.CK(clk));
   SDFFRQX2M \mem_reg[15][6]  (.SI(\mem[15][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][6] ), 
	.D(n311), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[15][5]  (.SI(\mem[15][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][5] ), 
	.D(n310), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[15][4]  (.SI(\mem[15][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][4] ), 
	.D(n309), 
	.CK(clk));
   SDFFRQX2M \mem_reg[15][3]  (.SI(\mem[15][2] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][3] ), 
	.D(n308), 
	.CK(clk));
   SDFFRQX2M \mem_reg[15][2]  (.SI(\mem[15][1] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][2] ), 
	.D(n307), 
	.CK(clk));
   SDFFRQX2M \mem_reg[15][1]  (.SI(\mem[15][0] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][1] ), 
	.D(n306), 
	.CK(clk));
   SDFFRQX2M \mem_reg[15][0]  (.SI(\mem[14][7] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[15][0] ), 
	.D(n305), 
	.CK(clk));
   SDFFRQX2M \mem_reg[13][7]  (.SI(\mem[13][6] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][7] ), 
	.D(n296), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[13][6]  (.SI(\mem[13][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][6] ), 
	.D(n295), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[13][5]  (.SI(\mem[13][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][5] ), 
	.D(n294), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[13][4]  (.SI(\mem[13][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][4] ), 
	.D(n293), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[13][3]  (.SI(\mem[13][2] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][3] ), 
	.D(n292), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[13][2]  (.SI(\mem[13][1] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][2] ), 
	.D(n291), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[13][1]  (.SI(\mem[13][0] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][1] ), 
	.D(n290), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[13][0]  (.SI(\mem[12][7] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[13][0] ), 
	.D(n289), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[11][7]  (.SI(\mem[11][6] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[11][7] ), 
	.D(n280), 
	.CK(clk));
   SDFFRQX2M \mem_reg[11][6]  (.SI(\mem[11][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[11][6] ), 
	.D(n279), 
	.CK(clk));
   SDFFRQX2M \mem_reg[11][5]  (.SI(\mem[11][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[11][5] ), 
	.D(n278), 
	.CK(clk));
   SDFFRQX2M \mem_reg[11][4]  (.SI(\mem[11][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[11][4] ), 
	.D(n277), 
	.CK(clk));
   SDFFRQX2M \mem_reg[11][3]  (.SI(\mem[11][2] ), 
	.SE(n450), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[11][3] ), 
	.D(n276), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[11][2]  (.SI(\mem[11][1] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[11][2] ), 
	.D(n275), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[11][1]  (.SI(\mem[11][0] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[11][1] ), 
	.D(n274), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[11][0]  (.SI(\mem[10][7] ), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[11][0] ), 
	.D(n273), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[9][7]  (.SI(\mem[9][6] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[9][7] ), 
	.D(n264), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[9][6]  (.SI(\mem[9][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[9][6] ), 
	.D(n263), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[9][5]  (.SI(\mem[9][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[9][5] ), 
	.D(n262), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[9][4]  (.SI(\mem[9][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[9][4] ), 
	.D(n261), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[9][3]  (.SI(\mem[9][2] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[9][3] ), 
	.D(n260), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[9][2]  (.SI(\mem[9][1] ), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[9][2] ), 
	.D(n259), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[9][1]  (.SI(\mem[9][0] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[9][1] ), 
	.D(n258), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[9][0]  (.SI(\mem[8][7] ), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[9][0] ), 
	.D(n257), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[7][7]  (.SI(\mem[7][6] ), 
	.SE(n450), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[7][7] ), 
	.D(n248), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[7][6]  (.SI(\mem[7][5] ), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[7][6] ), 
	.D(n247), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[7][5]  (.SI(\mem[7][4] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[7][5] ), 
	.D(n246), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[7][4]  (.SI(\mem[7][3] ), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[7][4] ), 
	.D(n245), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[7][3]  (.SI(\mem[7][2] ), 
	.SE(n450), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[7][3] ), 
	.D(n244), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[7][2]  (.SI(\mem[7][1] ), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[7][2] ), 
	.D(n243), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[7][1]  (.SI(\mem[7][0] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[7][1] ), 
	.D(n242), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[7][0]  (.SI(\mem[6][7] ), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[7][0] ), 
	.D(n241), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[5][7]  (.SI(\mem[5][6] ), 
	.SE(n450), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[5][7] ), 
	.D(n232), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[5][6]  (.SI(\mem[5][5] ), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[5][6] ), 
	.D(n231), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[5][5]  (.SI(\mem[5][4] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[5][5] ), 
	.D(n230), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[5][4]  (.SI(\mem[5][3] ), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[5][4] ), 
	.D(n229), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[5][3]  (.SI(\mem[5][2] ), 
	.SE(n450), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[5][3] ), 
	.D(n228), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[5][2]  (.SI(\mem[5][1] ), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[5][2] ), 
	.D(n227), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[5][1]  (.SI(\mem[5][0] ), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[5][1] ), 
	.D(n226), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[5][0]  (.SI(\mem[4][7] ), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[5][0] ), 
	.D(n225), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[14][7]  (.SI(\mem[14][6] ), 
	.SE(n450), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][7] ), 
	.D(n304), 
	.CK(clk));
   SDFFRQX2M \mem_reg[14][6]  (.SI(\mem[14][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][6] ), 
	.D(n303), 
	.CK(clk));
   SDFFRQX2M \mem_reg[14][5]  (.SI(\mem[14][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][5] ), 
	.D(n302), 
	.CK(clk));
   SDFFRQX2M \mem_reg[14][4]  (.SI(\mem[14][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][4] ), 
	.D(n301), 
	.CK(clk));
   SDFFRQX2M \mem_reg[14][3]  (.SI(\mem[14][2] ), 
	.SE(n449), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][3] ), 
	.D(n300), 
	.CK(clk));
   SDFFRQX2M \mem_reg[14][2]  (.SI(\mem[14][1] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][2] ), 
	.D(n299), 
	.CK(clk));
   SDFFRQX2M \mem_reg[14][1]  (.SI(\mem[14][0] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][1] ), 
	.D(n298), 
	.CK(clk));
   SDFFRQX2M \mem_reg[14][0]  (.SI(\mem[13][7] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[14][0] ), 
	.D(n297), 
	.CK(clk));
   SDFFRQX2M \mem_reg[12][7]  (.SI(\mem[12][6] ), 
	.SE(n449), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][7] ), 
	.D(n288), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[12][6]  (.SI(\mem[12][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][6] ), 
	.D(n287), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[12][5]  (.SI(\mem[12][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][5] ), 
	.D(n286), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[12][4]  (.SI(\mem[12][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][4] ), 
	.D(n285), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[12][3]  (.SI(\mem[12][2] ), 
	.SE(n449), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][3] ), 
	.D(n284), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[12][2]  (.SI(\mem[12][1] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][2] ), 
	.D(n283), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[12][1]  (.SI(\mem[12][0] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][1] ), 
	.D(n282), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[12][0]  (.SI(\mem[11][7] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[12][0] ), 
	.D(n281), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[10][7]  (.SI(\mem[10][6] ), 
	.SE(n449), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[10][7] ), 
	.D(n272), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[10][6]  (.SI(\mem[10][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[10][6] ), 
	.D(n271), 
	.CK(clk));
   SDFFRQX2M \mem_reg[10][5]  (.SI(\mem[10][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[10][5] ), 
	.D(n270), 
	.CK(clk));
   SDFFRQX2M \mem_reg[10][4]  (.SI(\mem[10][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[10][4] ), 
	.D(n269), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[10][3]  (.SI(\mem[10][2] ), 
	.SE(n449), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[10][3] ), 
	.D(n268), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[10][2]  (.SI(\mem[10][1] ), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[10][2] ), 
	.D(n267), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[10][1]  (.SI(\mem[10][0] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[10][1] ), 
	.D(n266), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[10][0]  (.SI(\mem[9][7] ), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[10][0] ), 
	.D(n265), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][7]  (.SI(\mem[8][6] ), 
	.SE(n449), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[8][7] ), 
	.D(n256), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][6]  (.SI(\mem[8][5] ), 
	.SE(n453), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[8][6] ), 
	.D(n255), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][5]  (.SI(\mem[8][4] ), 
	.SE(n452), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[8][5] ), 
	.D(n254), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][4]  (.SI(\mem[8][3] ), 
	.SE(n451), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[8][4] ), 
	.D(n253), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][3]  (.SI(\mem[8][2] ), 
	.SE(n449), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[8][3] ), 
	.D(n252), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][2]  (.SI(\mem[8][1] ), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[8][2] ), 
	.D(n251), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][1]  (.SI(\mem[8][0] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[8][1] ), 
	.D(n250), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[8][0]  (.SI(\mem[7][7] ), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[8][0] ), 
	.D(n249), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[6][7]  (.SI(\mem[6][6] ), 
	.SE(n449), 
	.RN(FE_OFN2_REF_SYNC_RST_M), 
	.Q(\mem[6][7] ), 
	.D(n240), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[6][6]  (.SI(\mem[6][5] ), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[6][6] ), 
	.D(n239), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[6][5]  (.SI(\mem[6][4] ), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[6][5] ), 
	.D(n238), 
	.CK(Ref_muxed_clk__L7_N9));
   SDFFRQX2M \mem_reg[6][4]  (.SI(\mem[6][3] ), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[6][4] ), 
	.D(n237), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[6][3]  (.SI(\mem[6][2] ), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[6][3] ), 
	.D(n236), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[6][2]  (.SI(\mem[6][1] ), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[6][2] ), 
	.D(n235), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[6][1]  (.SI(\mem[6][0] ), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[6][1] ), 
	.D(n234), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[6][0]  (.SI(\mem[5][7] ), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(\mem[6][0] ), 
	.D(n233), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][7]  (.SI(\mem[4][6] ), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][7] ), 
	.D(n224), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][6]  (.SI(\mem[4][5] ), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][6] ), 
	.D(n223), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][5]  (.SI(\mem[4][4] ), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][5] ), 
	.D(n222), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][4]  (.SI(FE_PHN3_test_si3), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][4] ), 
	.D(n221), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][3]  (.SI(\mem[4][2] ), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][3] ), 
	.D(n220), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][2]  (.SI(\mem[4][1] ), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][2] ), 
	.D(n219), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][1]  (.SI(\mem[4][0] ), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][1] ), 
	.D(n218), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[4][0]  (.SI(Reg3[7]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(\mem[4][0] ), 
	.D(n217), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[3][0]  (.SI(Reg2[7]), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg3[0]), 
	.D(n209), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[3][2]  (.SI(Reg3[1]), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg3[2]), 
	.D(n211), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[3][3]  (.SI(Reg3[2]), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg3[3]), 
	.D(n212), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[3][4]  (.SI(Reg3[3]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg3[4]), 
	.D(n213), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[2][1]  (.SI(Reg2[0]), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg2[1]), 
	.D(n202), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRQX2M \mem_reg[3][7]  (.SI(Reg3[6]), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg3[7]), 
	.D(n216), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[3][6]  (.SI(Reg3[5]), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg3[6]), 
	.D(n215), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \Rd_Data_reg[7]  (.SI(Rd_Data[6]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Rd_Data[7]), 
	.D(n184), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \Rd_Data_reg[6]  (.SI(Rd_Data[5]), 
	.SE(n449), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Rd_Data[6]), 
	.D(n183), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \Rd_Data_reg[5]  (.SI(Rd_Data[4]), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Rd_Data[5]), 
	.D(n182), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \Rd_Data_reg[4]  (.SI(Rd_Data[3]), 
	.SE(n452), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Rd_Data[4]), 
	.D(n181), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \Rd_Data_reg[3]  (.SI(Rd_Data[2]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Rd_Data[3]), 
	.D(n180), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \Rd_Data_reg[2]  (.SI(Rd_Data[1]), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Rd_Data[2]), 
	.D(n179), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRQX2M \Rd_Data_reg[1]  (.SI(Rd_Data[0]), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Rd_Data[1]), 
	.D(n178), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \Rd_Data_reg[0]  (.SI(Rd_Data_VLD), 
	.SE(n452), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Rd_Data[0]), 
	.D(n177), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFSQX2M \mem_reg[2][0]  (.SN(FE_OFN3_REF_SYNC_RST_M), 
	.SI(Reg1[7]), 
	.SE(n452), 
	.Q(Reg2[0]), 
	.D(n201), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRQX2M \mem_reg[3][1]  (.SI(Reg3[0]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg3[1]), 
	.D(n210), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[2][2]  (.SI(Reg2[1]), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg2[2]), 
	.D(n203), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[2][3]  (.SI(Reg2[2]), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg2[3]), 
	.D(n204), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[2][4]  (.SI(Reg2[3]), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg2[4]), 
	.D(n205), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFSQX2M \mem_reg[2][7]  (.SN(FE_OFN3_REF_SYNC_RST_M), 
	.SI(Reg2[6]), 
	.SE(n451), 
	.Q(Reg2[7]), 
	.D(n208), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M \mem_reg[2][6]  (.SI(Reg2[5]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg2[6]), 
	.D(n207), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRQX2M Rd_Data_VLD_reg (.SI(test_si1), 
	.SE(n449), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Rd_Data_VLD), 
	.D(n313), 
	.CK(Ref_muxed_clk__L7_N6));
   SDFFRQX2M \mem_reg[0][2]  (.SI(Reg0[1]), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(Reg0[2]), 
	.D(n187), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[0][0]  (.SI(Rd_Data[7]), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg0[0]), 
	.D(n185), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRQX2M \mem_reg[0][1]  (.SI(Reg0[0]), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(Reg0[1]), 
	.D(n186), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[0][3]  (.SI(Reg0[2]), 
	.SE(n449), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(Reg0[3]), 
	.D(n188), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[0][4]  (.SI(Reg0[3]), 
	.SE(n453), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(Reg0[4]), 
	.D(n189), 
	.CK(Ref_muxed_clk__L7_N11));
   SDFFRQX2M \mem_reg[0][5]  (.SI(Reg0[4]), 
	.SE(n452), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(FE_OFN18_Op_A_5_), 
	.D(n190), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRQX2M \mem_reg[2][5]  (.SI(Reg2[4]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(Reg2[5]), 
	.D(n206), 
	.CK(Ref_muxed_clk__L7_N8));
   SDFFRHQX2M \mem_reg[1][3]  (.SI(Reg1[2]), 
	.SE(n450), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(FE_OFN17_Op_B_3_), 
	.D(n196), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX2M \mem_reg[1][0]  (.SI(Reg0[7]), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(FE_OFN16_Op_B_0_), 
	.D(n193), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX2M \mem_reg[1][6]  (.SI(Reg1[5]), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(FE_OFN15_Op_B_6_), 
	.D(n199), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX2M \mem_reg[0][7]  (.SI(Reg0[6]), 
	.SE(n451), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(FE_OFN14_Op_A_7_), 
	.D(n192), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX2M \mem_reg[1][5]  (.SI(Reg1[4]), 
	.SE(n451), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(FE_OFN13_Op_B_5_), 
	.D(n198), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX2M \mem_reg[1][4]  (.SI(Reg1[3]), 
	.SE(n453), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(FE_OFN12_Op_B_4_), 
	.D(n197), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX4M \mem_reg[1][7]  (.SI(Reg1[6]), 
	.SE(n450), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(FE_OFN11_Op_B_7_), 
	.D(n200), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX1M \mem_reg[0][6]  (.SI(Reg0[5]), 
	.SE(n450), 
	.RN(FE_OFN5_REF_SYNC_RST_M), 
	.Q(FE_OFN10_Op_A_6_), 
	.D(n191), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX2M \mem_reg[1][1]  (.SI(Reg1[0]), 
	.SE(n452), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(FE_OFN9_Op_B_1_), 
	.D(n194), 
	.CK(Ref_muxed_clk__L7_N7));
   SDFFRHQX2M \mem_reg[1][2]  (.SI(Reg1[1]), 
	.SE(n450), 
	.RN(FE_OFN3_REF_SYNC_RST_M), 
	.Q(FE_OFN8_Op_B_2_), 
	.D(n195), 
	.CK(Ref_muxed_clk__L7_N7));
   NOR2X2M U140 (.Y(n138), 
	.B(n435), 
	.A(n436));
   NOR2BX2M U141 (.Y(n167), 
	.B(N11), 
	.AN(n175));
   NOR2BX2M U142 (.Y(n152), 
	.B(N11), 
	.AN(n163));
   NOR2BX2M U143 (.Y(n159), 
	.B(N12), 
	.AN(N13));
   NOR2BX2M U144 (.Y(n162), 
	.B(n408), 
	.AN(N13));
   NOR2X2M U145 (.Y(n156), 
	.B(N13), 
	.A(n408));
   MX2XLM U146 (.Y(n190), 
	.S0(n434), 
	.B(Wr_Data[5]), 
	.A(Reg0[5]));
   MX2XLM U147 (.Y(n191), 
	.S0(n434), 
	.B(Wr_Data[6]), 
	.A(Reg0[6]));
   INVX2M U148 (.Y(n412), 
	.A(n139));
   INVX2M U150 (.Y(n416), 
	.A(n141));
   INVX2M U151 (.Y(n435), 
	.A(n154));
   INVX2M U152 (.Y(n434), 
	.A(n150));
   OR2X2M U153 (.Y(n139), 
	.B(n407), 
	.A(n408));
   INVX2M U155 (.Y(n413), 
	.A(n142));
   INVX2M U156 (.Y(n414), 
	.A(n140));
   NOR2BX2M U157 (.Y(n169), 
	.B(n407), 
	.AN(n175));
   NOR2BX2M U158 (.Y(n154), 
	.B(n407), 
	.AN(n163));
   NAND2X2M U159 (.Y(n155), 
	.B(n152), 
	.A(n156));
   NAND2X2M U160 (.Y(n158), 
	.B(n152), 
	.A(n159));
   NAND2X2M U161 (.Y(n161), 
	.B(n152), 
	.A(n162));
   NAND2X2M U162 (.Y(n166), 
	.B(n151), 
	.A(n167));
   NAND2X2M U163 (.Y(n168), 
	.B(n151), 
	.A(n169));
   NAND2X2M U164 (.Y(n170), 
	.B(n156), 
	.A(n167));
   NAND2X2M U165 (.Y(n171), 
	.B(n156), 
	.A(n169));
   NAND2X2M U166 (.Y(n172), 
	.B(n159), 
	.A(n167));
   NAND2X2M U167 (.Y(n173), 
	.B(n159), 
	.A(n169));
   NAND2X2M U168 (.Y(n174), 
	.B(n162), 
	.A(n167));
   NAND2X2M U169 (.Y(n176), 
	.B(n162), 
	.A(n169));
   NAND2X2M U170 (.Y(n157), 
	.B(n154), 
	.A(n156));
   NAND2X2M U171 (.Y(n160), 
	.B(n154), 
	.A(n159));
   NAND2X2M U172 (.Y(n164), 
	.B(n154), 
	.A(n162));
   NAND2BX2M U173 (.Y(n150), 
	.B(n152), 
	.AN(n436));
   INVX2M U174 (.Y(n445), 
	.A(n149));
   INVX2M U175 (.Y(n436), 
	.A(n151));
   OR2X2M U176 (.Y(n140), 
	.B(N12), 
	.A(n407));
   OR2X2M U177 (.Y(n141), 
	.B(N12), 
	.A(N11));
   OR2X2M U178 (.Y(n142), 
	.B(N11), 
	.A(n408));
   INVX2M U179 (.Y(n407), 
	.A(N11));
   NOR2BX2M U180 (.Y(n165), 
	.B(Rd_En), 
	.AN(Wr_En));
   NOR2BX2M U181 (.Y(n163), 
	.B(N14), 
	.AN(n165));
   INVX2M U182 (.Y(n409), 
	.A(N13));
   INVX2M U183 (.Y(n408), 
	.A(N12));
   INVX2M U184 (.Y(n410), 
	.A(N14));
   AND2X2M U185 (.Y(n175), 
	.B(n165), 
	.A(N14));
   INVX2M U186 (.Y(n439), 
	.A(Wr_Data[2]));
   INVX2M U187 (.Y(n437), 
	.A(Wr_Data[0]));
   INVX2M U188 (.Y(n438), 
	.A(Wr_Data[1]));
   INVX2M U189 (.Y(n440), 
	.A(Wr_Data[3]));
   INVX2M U190 (.Y(n441), 
	.A(Wr_Data[4]));
   INVX2M U191 (.Y(n443), 
	.A(Wr_Data[6]));
   NOR2X2M U192 (.Y(n151), 
	.B(N13), 
	.A(N12));
   NAND2BX2M U193 (.Y(n149), 
	.B(Rd_En), 
	.AN(Wr_En));
   MX2X1M U204 (.Y(n200), 
	.S0(n138), 
	.B(Wr_Data[7]), 
	.A(Reg1[7]));
   INVX2M U205 (.Y(n444), 
	.A(Wr_Data[7]));
   INVX2M U206 (.Y(n442), 
	.A(Wr_Data[5]));
   AO22X1M U212 (.Y(n177), 
	.B1(n149), 
	.B0(Rd_Data[0]), 
	.A1(n445), 
	.A0(N43));
   AO22X1M U213 (.Y(n178), 
	.B1(n149), 
	.B0(Rd_Data[1]), 
	.A1(n445), 
	.A0(N42));
   AO22X1M U214 (.Y(n179), 
	.B1(n149), 
	.B0(Rd_Data[2]), 
	.A1(n445), 
	.A0(N41));
   AO22X1M U215 (.Y(n180), 
	.B1(n149), 
	.B0(Rd_Data[3]), 
	.A1(n445), 
	.A0(N40));
   AO22X1M U216 (.Y(n181), 
	.B1(n149), 
	.B0(Rd_Data[4]), 
	.A1(n445), 
	.A0(N39));
   AO22X1M U217 (.Y(n182), 
	.B1(n149), 
	.B0(Rd_Data[5]), 
	.A1(n445), 
	.A0(N38));
   AO22X1M U218 (.Y(n183), 
	.B1(n149), 
	.B0(Rd_Data[6]), 
	.A1(n445), 
	.A0(N37));
   AO22X1M U219 (.Y(n184), 
	.B1(n149), 
	.B0(Rd_Data[7]), 
	.A1(n445), 
	.A0(N36));
   OAI2BB2X1M U220 (.Y(n249), 
	.B1(n166), 
	.B0(n437), 
	.A1N(n166), 
	.A0N(\mem[8][0] ));
   OAI2BB2X1M U221 (.Y(n250), 
	.B1(n166), 
	.B0(n438), 
	.A1N(n166), 
	.A0N(\mem[8][1] ));
   OAI2BB2X1M U222 (.Y(n251), 
	.B1(n166), 
	.B0(n439), 
	.A1N(n166), 
	.A0N(\mem[8][2] ));
   OAI2BB2X1M U223 (.Y(n252), 
	.B1(n166), 
	.B0(n440), 
	.A1N(n166), 
	.A0N(\mem[8][3] ));
   OAI2BB2X1M U224 (.Y(n253), 
	.B1(n166), 
	.B0(n441), 
	.A1N(n166), 
	.A0N(\mem[8][4] ));
   OAI2BB2X1M U225 (.Y(n254), 
	.B1(n166), 
	.B0(n442), 
	.A1N(n166), 
	.A0N(\mem[8][5] ));
   OAI2BB2X1M U226 (.Y(n255), 
	.B1(n166), 
	.B0(n443), 
	.A1N(n166), 
	.A0N(\mem[8][6] ));
   OAI2BB2X1M U227 (.Y(n256), 
	.B1(n166), 
	.B0(n444), 
	.A1N(n166), 
	.A0N(\mem[8][7] ));
   OAI2BB2X1M U228 (.Y(n265), 
	.B1(n170), 
	.B0(n437), 
	.A1N(n170), 
	.A0N(\mem[10][0] ));
   OAI2BB2X1M U229 (.Y(n266), 
	.B1(n170), 
	.B0(n438), 
	.A1N(n170), 
	.A0N(\mem[10][1] ));
   OAI2BB2X1M U230 (.Y(n267), 
	.B1(n170), 
	.B0(n439), 
	.A1N(n170), 
	.A0N(\mem[10][2] ));
   OAI2BB2X1M U231 (.Y(n268), 
	.B1(n170), 
	.B0(n440), 
	.A1N(n170), 
	.A0N(\mem[10][3] ));
   OAI2BB2X1M U232 (.Y(n269), 
	.B1(n170), 
	.B0(n441), 
	.A1N(n170), 
	.A0N(\mem[10][4] ));
   OAI2BB2X1M U233 (.Y(n270), 
	.B1(n170), 
	.B0(n442), 
	.A1N(n170), 
	.A0N(\mem[10][5] ));
   OAI2BB2X1M U234 (.Y(n271), 
	.B1(n170), 
	.B0(n443), 
	.A1N(n170), 
	.A0N(\mem[10][6] ));
   OAI2BB2X1M U235 (.Y(n272), 
	.B1(n170), 
	.B0(n444), 
	.A1N(n170), 
	.A0N(\mem[10][7] ));
   OAI2BB2X1M U236 (.Y(n281), 
	.B1(n172), 
	.B0(n437), 
	.A1N(n172), 
	.A0N(\mem[12][0] ));
   OAI2BB2X1M U237 (.Y(n282), 
	.B1(n172), 
	.B0(n438), 
	.A1N(n172), 
	.A0N(\mem[12][1] ));
   OAI2BB2X1M U238 (.Y(n283), 
	.B1(n172), 
	.B0(n439), 
	.A1N(n172), 
	.A0N(\mem[12][2] ));
   OAI2BB2X1M U239 (.Y(n284), 
	.B1(n172), 
	.B0(n440), 
	.A1N(n172), 
	.A0N(\mem[12][3] ));
   OAI2BB2X1M U240 (.Y(n285), 
	.B1(n172), 
	.B0(n441), 
	.A1N(n172), 
	.A0N(\mem[12][4] ));
   OAI2BB2X1M U241 (.Y(n286), 
	.B1(n172), 
	.B0(n442), 
	.A1N(n172), 
	.A0N(\mem[12][5] ));
   OAI2BB2X1M U242 (.Y(n287), 
	.B1(n172), 
	.B0(n443), 
	.A1N(n172), 
	.A0N(\mem[12][6] ));
   OAI2BB2X1M U243 (.Y(n288), 
	.B1(n172), 
	.B0(n444), 
	.A1N(n172), 
	.A0N(\mem[12][7] ));
   OAI2BB2X1M U244 (.Y(n297), 
	.B1(n174), 
	.B0(n437), 
	.A1N(n174), 
	.A0N(\mem[14][0] ));
   OAI2BB2X1M U245 (.Y(n298), 
	.B1(n174), 
	.B0(n438), 
	.A1N(n174), 
	.A0N(\mem[14][1] ));
   OAI2BB2X1M U246 (.Y(n299), 
	.B1(n174), 
	.B0(n439), 
	.A1N(n174), 
	.A0N(\mem[14][2] ));
   OAI2BB2X1M U247 (.Y(n300), 
	.B1(n174), 
	.B0(n440), 
	.A1N(n174), 
	.A0N(\mem[14][3] ));
   OAI2BB2X1M U248 (.Y(n301), 
	.B1(n174), 
	.B0(n441), 
	.A1N(n174), 
	.A0N(\mem[14][4] ));
   OAI2BB2X1M U249 (.Y(n302), 
	.B1(n174), 
	.B0(n442), 
	.A1N(n174), 
	.A0N(\mem[14][5] ));
   OAI2BB2X1M U250 (.Y(n303), 
	.B1(n174), 
	.B0(n443), 
	.A1N(n174), 
	.A0N(\mem[14][6] ));
   OAI2BB2X1M U251 (.Y(n304), 
	.B1(n174), 
	.B0(n444), 
	.A1N(n174), 
	.A0N(\mem[14][7] ));
   OAI2BB2X1M U252 (.Y(n217), 
	.B1(n158), 
	.B0(n437), 
	.A1N(n158), 
	.A0N(\mem[4][0] ));
   OAI2BB2X1M U253 (.Y(n218), 
	.B1(n158), 
	.B0(n438), 
	.A1N(n158), 
	.A0N(\mem[4][1] ));
   OAI2BB2X1M U254 (.Y(n219), 
	.B1(n158), 
	.B0(n439), 
	.A1N(n158), 
	.A0N(\mem[4][2] ));
   OAI2BB2X1M U255 (.Y(n220), 
	.B1(n158), 
	.B0(n440), 
	.A1N(n158), 
	.A0N(\mem[4][3] ));
   OAI2BB2X1M U256 (.Y(n221), 
	.B1(n158), 
	.B0(n441), 
	.A1N(n158), 
	.A0N(\mem[4][4] ));
   OAI2BB2X1M U257 (.Y(n222), 
	.B1(n158), 
	.B0(n442), 
	.A1N(n158), 
	.A0N(\mem[4][5] ));
   OAI2BB2X1M U258 (.Y(n223), 
	.B1(n158), 
	.B0(n443), 
	.A1N(n158), 
	.A0N(\mem[4][6] ));
   OAI2BB2X1M U259 (.Y(n224), 
	.B1(n158), 
	.B0(n444), 
	.A1N(n158), 
	.A0N(\mem[4][7] ));
   OAI2BB2X1M U260 (.Y(n225), 
	.B1(n160), 
	.B0(n437), 
	.A1N(n160), 
	.A0N(\mem[5][0] ));
   OAI2BB2X1M U261 (.Y(n226), 
	.B1(n160), 
	.B0(n438), 
	.A1N(n160), 
	.A0N(\mem[5][1] ));
   OAI2BB2X1M U262 (.Y(n227), 
	.B1(n160), 
	.B0(n439), 
	.A1N(n160), 
	.A0N(\mem[5][2] ));
   OAI2BB2X1M U263 (.Y(n228), 
	.B1(n160), 
	.B0(n440), 
	.A1N(n160), 
	.A0N(\mem[5][3] ));
   OAI2BB2X1M U264 (.Y(n229), 
	.B1(n160), 
	.B0(n441), 
	.A1N(n160), 
	.A0N(\mem[5][4] ));
   OAI2BB2X1M U265 (.Y(n230), 
	.B1(n160), 
	.B0(n442), 
	.A1N(n160), 
	.A0N(\mem[5][5] ));
   OAI2BB2X1M U266 (.Y(n231), 
	.B1(n160), 
	.B0(n443), 
	.A1N(n160), 
	.A0N(\mem[5][6] ));
   OAI2BB2X1M U267 (.Y(n232), 
	.B1(n160), 
	.B0(n444), 
	.A1N(n160), 
	.A0N(\mem[5][7] ));
   OAI2BB2X1M U268 (.Y(n233), 
	.B1(n161), 
	.B0(n437), 
	.A1N(n161), 
	.A0N(\mem[6][0] ));
   OAI2BB2X1M U269 (.Y(n234), 
	.B1(n161), 
	.B0(n438), 
	.A1N(n161), 
	.A0N(\mem[6][1] ));
   OAI2BB2X1M U270 (.Y(n235), 
	.B1(n161), 
	.B0(n439), 
	.A1N(n161), 
	.A0N(\mem[6][2] ));
   OAI2BB2X1M U271 (.Y(n236), 
	.B1(n161), 
	.B0(n440), 
	.A1N(n161), 
	.A0N(\mem[6][3] ));
   OAI2BB2X1M U272 (.Y(n237), 
	.B1(n161), 
	.B0(n441), 
	.A1N(n161), 
	.A0N(\mem[6][4] ));
   OAI2BB2X1M U273 (.Y(n238), 
	.B1(n161), 
	.B0(n442), 
	.A1N(n161), 
	.A0N(\mem[6][5] ));
   OAI2BB2X1M U274 (.Y(n239), 
	.B1(n161), 
	.B0(n443), 
	.A1N(n161), 
	.A0N(\mem[6][6] ));
   OAI2BB2X1M U275 (.Y(n240), 
	.B1(n161), 
	.B0(n444), 
	.A1N(n161), 
	.A0N(\mem[6][7] ));
   OAI2BB2X1M U276 (.Y(n241), 
	.B1(n164), 
	.B0(n437), 
	.A1N(n164), 
	.A0N(\mem[7][0] ));
   OAI2BB2X1M U277 (.Y(n242), 
	.B1(n164), 
	.B0(n438), 
	.A1N(n164), 
	.A0N(\mem[7][1] ));
   OAI2BB2X1M U278 (.Y(n243), 
	.B1(n164), 
	.B0(n439), 
	.A1N(n164), 
	.A0N(\mem[7][2] ));
   OAI2BB2X1M U279 (.Y(n244), 
	.B1(n164), 
	.B0(n440), 
	.A1N(n164), 
	.A0N(\mem[7][3] ));
   OAI2BB2X1M U280 (.Y(n245), 
	.B1(n164), 
	.B0(n441), 
	.A1N(n164), 
	.A0N(\mem[7][4] ));
   OAI2BB2X1M U281 (.Y(n246), 
	.B1(n164), 
	.B0(n442), 
	.A1N(n164), 
	.A0N(\mem[7][5] ));
   OAI2BB2X1M U282 (.Y(n247), 
	.B1(n164), 
	.B0(n443), 
	.A1N(n164), 
	.A0N(\mem[7][6] ));
   OAI2BB2X1M U283 (.Y(n248), 
	.B1(n164), 
	.B0(n444), 
	.A1N(n164), 
	.A0N(\mem[7][7] ));
   OAI2BB2X1M U284 (.Y(n257), 
	.B1(n168), 
	.B0(n437), 
	.A1N(n168), 
	.A0N(\mem[9][0] ));
   OAI2BB2X1M U285 (.Y(n258), 
	.B1(n168), 
	.B0(n438), 
	.A1N(n168), 
	.A0N(\mem[9][1] ));
   OAI2BB2X1M U286 (.Y(n259), 
	.B1(n168), 
	.B0(n439), 
	.A1N(n168), 
	.A0N(\mem[9][2] ));
   OAI2BB2X1M U287 (.Y(n260), 
	.B1(n168), 
	.B0(n440), 
	.A1N(n168), 
	.A0N(\mem[9][3] ));
   OAI2BB2X1M U288 (.Y(n261), 
	.B1(n168), 
	.B0(n441), 
	.A1N(n168), 
	.A0N(\mem[9][4] ));
   OAI2BB2X1M U289 (.Y(n262), 
	.B1(n168), 
	.B0(n442), 
	.A1N(n168), 
	.A0N(\mem[9][5] ));
   OAI2BB2X1M U290 (.Y(n263), 
	.B1(n168), 
	.B0(n443), 
	.A1N(n168), 
	.A0N(\mem[9][6] ));
   OAI2BB2X1M U291 (.Y(n264), 
	.B1(n168), 
	.B0(n444), 
	.A1N(n168), 
	.A0N(\mem[9][7] ));
   OAI2BB2X1M U292 (.Y(n273), 
	.B1(n171), 
	.B0(n437), 
	.A1N(n171), 
	.A0N(\mem[11][0] ));
   OAI2BB2X1M U293 (.Y(n274), 
	.B1(n171), 
	.B0(n438), 
	.A1N(n171), 
	.A0N(\mem[11][1] ));
   OAI2BB2X1M U294 (.Y(n275), 
	.B1(n171), 
	.B0(n439), 
	.A1N(n171), 
	.A0N(\mem[11][2] ));
   OAI2BB2X1M U295 (.Y(n276), 
	.B1(n171), 
	.B0(n440), 
	.A1N(n171), 
	.A0N(\mem[11][3] ));
   OAI2BB2X1M U296 (.Y(n277), 
	.B1(n171), 
	.B0(n441), 
	.A1N(n171), 
	.A0N(\mem[11][4] ));
   OAI2BB2X1M U297 (.Y(n278), 
	.B1(n171), 
	.B0(n442), 
	.A1N(n171), 
	.A0N(\mem[11][5] ));
   OAI2BB2X1M U298 (.Y(n279), 
	.B1(n171), 
	.B0(n443), 
	.A1N(n171), 
	.A0N(\mem[11][6] ));
   OAI2BB2X1M U299 (.Y(n280), 
	.B1(n171), 
	.B0(n444), 
	.A1N(n171), 
	.A0N(\mem[11][7] ));
   OAI2BB2X1M U300 (.Y(n289), 
	.B1(n173), 
	.B0(n437), 
	.A1N(n173), 
	.A0N(\mem[13][0] ));
   OAI2BB2X1M U301 (.Y(n290), 
	.B1(n173), 
	.B0(n438), 
	.A1N(n173), 
	.A0N(\mem[13][1] ));
   OAI2BB2X1M U302 (.Y(n291), 
	.B1(n173), 
	.B0(n439), 
	.A1N(n173), 
	.A0N(\mem[13][2] ));
   OAI2BB2X1M U303 (.Y(n292), 
	.B1(n173), 
	.B0(n440), 
	.A1N(n173), 
	.A0N(\mem[13][3] ));
   OAI2BB2X1M U304 (.Y(n293), 
	.B1(n173), 
	.B0(n441), 
	.A1N(n173), 
	.A0N(\mem[13][4] ));
   OAI2BB2X1M U305 (.Y(n294), 
	.B1(n173), 
	.B0(n442), 
	.A1N(n173), 
	.A0N(\mem[13][5] ));
   OAI2BB2X1M U306 (.Y(n295), 
	.B1(n173), 
	.B0(n443), 
	.A1N(n173), 
	.A0N(\mem[13][6] ));
   OAI2BB2X1M U307 (.Y(n296), 
	.B1(n173), 
	.B0(n444), 
	.A1N(n173), 
	.A0N(\mem[13][7] ));
   OAI2BB2X1M U308 (.Y(n305), 
	.B1(n176), 
	.B0(n437), 
	.A1N(n176), 
	.A0N(\mem[15][0] ));
   OAI2BB2X1M U309 (.Y(n306), 
	.B1(n176), 
	.B0(n438), 
	.A1N(n176), 
	.A0N(\mem[15][1] ));
   OAI2BB2X1M U310 (.Y(n307), 
	.B1(n176), 
	.B0(n439), 
	.A1N(n176), 
	.A0N(\mem[15][2] ));
   OAI2BB2X1M U311 (.Y(n308), 
	.B1(n176), 
	.B0(n440), 
	.A1N(n176), 
	.A0N(\mem[15][3] ));
   OAI2BB2X1M U312 (.Y(n309), 
	.B1(n176), 
	.B0(n441), 
	.A1N(n176), 
	.A0N(\mem[15][4] ));
   OAI2BB2X1M U313 (.Y(n310), 
	.B1(n176), 
	.B0(n442), 
	.A1N(n176), 
	.A0N(\mem[15][5] ));
   OAI2BB2X1M U314 (.Y(n311), 
	.B1(n176), 
	.B0(n443), 
	.A1N(n176), 
	.A0N(\mem[15][6] ));
   OAI2BB2X1M U315 (.Y(n312), 
	.B1(n176), 
	.B0(n444), 
	.A1N(n176), 
	.A0N(\mem[15][7] ));
   OAI2BB2X1M U316 (.Y(n202), 
	.B1(n155), 
	.B0(n438), 
	.A1N(n155), 
	.A0N(Reg2[1]));
   OAI2BB2X1M U317 (.Y(n203), 
	.B1(n155), 
	.B0(n439), 
	.A1N(n155), 
	.A0N(Reg2[2]));
   OAI2BB2X1M U318 (.Y(n204), 
	.B1(n155), 
	.B0(n440), 
	.A1N(n155), 
	.A0N(Reg2[3]));
   OAI2BB2X1M U319 (.Y(n205), 
	.B1(n155), 
	.B0(n441), 
	.A1N(n155), 
	.A0N(Reg2[4]));
   OAI2BB2X1M U320 (.Y(n206), 
	.B1(n155), 
	.B0(n442), 
	.A1N(n155), 
	.A0N(Reg2[5]));
   OAI2BB2X1M U321 (.Y(n207), 
	.B1(n155), 
	.B0(n443), 
	.A1N(n155), 
	.A0N(Reg2[6]));
   OAI2BB2X1M U322 (.Y(n209), 
	.B1(n157), 
	.B0(n437), 
	.A1N(n157), 
	.A0N(Reg3[0]));
   OAI2BB2X1M U323 (.Y(n210), 
	.B1(n157), 
	.B0(n438), 
	.A1N(n157), 
	.A0N(Reg3[1]));
   OAI2BB2X1M U324 (.Y(n211), 
	.B1(n157), 
	.B0(n439), 
	.A1N(n157), 
	.A0N(Reg3[2]));
   OAI2BB2X1M U325 (.Y(n212), 
	.B1(n157), 
	.B0(n440), 
	.A1N(n157), 
	.A0N(Reg3[3]));
   OAI2BB2X1M U326 (.Y(n213), 
	.B1(n157), 
	.B0(n441), 
	.A1N(n157), 
	.A0N(Reg3[4]));
   OAI2BB2X1M U327 (.Y(n215), 
	.B1(n157), 
	.B0(n443), 
	.A1N(n157), 
	.A0N(Reg3[6]));
   OAI2BB2X1M U328 (.Y(n216), 
	.B1(n157), 
	.B0(n444), 
	.A1N(n157), 
	.A0N(Reg3[7]));
   OAI2BB2X1M U329 (.Y(n201), 
	.B1(n155), 
	.B0(n437), 
	.A1N(n155), 
	.A0N(Reg2[0]));
   OAI2BB2X1M U330 (.Y(n208), 
	.B1(n155), 
	.B0(n444), 
	.A1N(n155), 
	.A0N(Reg2[7]));
   OAI2BB2X1M U331 (.Y(n214), 
	.B1(n157), 
	.B0(n442), 
	.A1N(n157), 
	.A0N(Reg3[5]));
   OAI2BB2X1M U332 (.Y(n185), 
	.B1(n437), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(Reg0[0]));
   OAI2BB2X1M U333 (.Y(n186), 
	.B1(n438), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(Reg0[1]));
   OAI2BB2X1M U334 (.Y(n187), 
	.B1(n439), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(Reg0[2]));
   OAI2BB2X1M U335 (.Y(n188), 
	.B1(n440), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(Reg0[3]));
   OAI2BB2X1M U336 (.Y(n189), 
	.B1(n441), 
	.B0(n150), 
	.A1N(n150), 
	.A0N(Reg0[4]));
   MX2XLM U337 (.Y(n197), 
	.S0(n138), 
	.B(Wr_Data[4]), 
	.A(Reg1[4]));
   MX2XLM U338 (.Y(n198), 
	.S0(n138), 
	.B(Wr_Data[5]), 
	.A(Reg1[5]));
   MX2XLM U339 (.Y(n195), 
	.S0(n138), 
	.B(Wr_Data[2]), 
	.A(Reg1[2]));
   MX2XLM U340 (.Y(n194), 
	.S0(n138), 
	.B(Wr_Data[1]), 
	.A(Reg1[1]));
   MX2XLM U341 (.Y(n196), 
	.S0(n138), 
	.B(Wr_Data[3]), 
	.A(Reg1[3]));
   OAI2BB1X2M U342 (.Y(n313), 
	.B0(n149), 
	.A1N(n165), 
	.A0N(Rd_Data_VLD));
   AOI22X1M U343 (.Y(n144), 
	.B1(n412), 
	.B0(\mem[11][0] ), 
	.A1(n413), 
	.A0(\mem[10][0] ));
   AOI22X1M U344 (.Y(n143), 
	.B1(n414), 
	.B0(\mem[9][0] ), 
	.A1(n416), 
	.A0(\mem[8][0] ));
   CLKNAND2X2M U345 (.Y(n391), 
	.B(n409), 
	.A(N14));
   AOI21X1M U346 (.Y(n318), 
	.B0(n391), 
	.A1(n143), 
	.A0(n144));
   AOI22X1M U347 (.Y(n146), 
	.B1(n412), 
	.B0(\mem[15][0] ), 
	.A1(n413), 
	.A0(\mem[14][0] ));
   AOI22X1M U348 (.Y(n145), 
	.B1(n414), 
	.B0(\mem[13][0] ), 
	.A1(n416), 
	.A0(\mem[12][0] ));
   CLKNAND2X2M U349 (.Y(n394), 
	.B(N13), 
	.A(N14));
   AOI21X1M U350 (.Y(n317), 
	.B0(n394), 
	.A1(n145), 
	.A0(n146));
   AOI22X1M U351 (.Y(n148), 
	.B1(n412), 
	.B0(Reg3[0]), 
	.A1(n413), 
	.A0(Reg2[0]));
   CLKNAND2X2M U352 (.Y(n397), 
	.B(n410), 
	.A(n409));
   AOI21X1M U353 (.Y(n316), 
	.B0(n397), 
	.A1(n147), 
	.A0(n148));
   AOI22X1M U354 (.Y(n314), 
	.B1(n412), 
	.B0(\mem[7][0] ), 
	.A1(n413), 
	.A0(\mem[6][0] ));
   AOI22X1M U355 (.Y(n153), 
	.B1(n414), 
	.B0(\mem[5][0] ), 
	.A1(n416), 
	.A0(\mem[4][0] ));
   CLKNAND2X2M U356 (.Y(n400), 
	.B(n410), 
	.A(N13));
   AOI21X1M U357 (.Y(n315), 
	.B0(n400), 
	.A1(n153), 
	.A0(n314));
   OR4X1M U358 (.Y(N43), 
	.D(n315), 
	.C(n316), 
	.B(n317), 
	.A(n318));
   AOI22X1M U359 (.Y(n320), 
	.B1(n412), 
	.B0(\mem[11][1] ), 
	.A1(n413), 
	.A0(\mem[10][1] ));
   AOI22X1M U360 (.Y(n319), 
	.B1(n414), 
	.B0(\mem[9][1] ), 
	.A1(n416), 
	.A0(\mem[8][1] ));
   AOI21X1M U361 (.Y(n330), 
	.B0(n391), 
	.A1(n319), 
	.A0(n320));
   AOI22X1M U362 (.Y(n322), 
	.B1(n412), 
	.B0(\mem[15][1] ), 
	.A1(n413), 
	.A0(\mem[14][1] ));
   AOI22X1M U363 (.Y(n321), 
	.B1(n414), 
	.B0(\mem[13][1] ), 
	.A1(n416), 
	.A0(\mem[12][1] ));
   AOI21X1M U364 (.Y(n329), 
	.B0(n394), 
	.A1(n321), 
	.A0(n322));
   AOI22X1M U365 (.Y(n324), 
	.B1(n412), 
	.B0(Reg3[1]), 
	.A1(n413), 
	.A0(Reg2[1]));
   AOI22X1M U366 (.Y(n323), 
	.B1(n414), 
	.B0(Reg1[1]), 
	.A1(n416), 
	.A0(Reg0[1]));
   AOI21X1M U367 (.Y(n328), 
	.B0(n397), 
	.A1(n323), 
	.A0(n324));
   AOI22X1M U368 (.Y(n326), 
	.B1(n412), 
	.B0(\mem[7][1] ), 
	.A1(n413), 
	.A0(\mem[6][1] ));
   AOI22X1M U369 (.Y(n325), 
	.B1(n414), 
	.B0(\mem[5][1] ), 
	.A1(n416), 
	.A0(\mem[4][1] ));
   AOI21X1M U370 (.Y(n327), 
	.B0(n400), 
	.A1(n325), 
	.A0(n326));
   OR4X1M U371 (.Y(N42), 
	.D(n327), 
	.C(n328), 
	.B(n329), 
	.A(n330));
   AOI22X1M U372 (.Y(n332), 
	.B1(n412), 
	.B0(\mem[11][2] ), 
	.A1(n413), 
	.A0(\mem[10][2] ));
   AOI22X1M U373 (.Y(n331), 
	.B1(n414), 
	.B0(\mem[9][2] ), 
	.A1(n416), 
	.A0(\mem[8][2] ));
   AOI21X1M U374 (.Y(n342), 
	.B0(n391), 
	.A1(n331), 
	.A0(n332));
   AOI22X1M U375 (.Y(n334), 
	.B1(n412), 
	.B0(\mem[15][2] ), 
	.A1(n413), 
	.A0(\mem[14][2] ));
   AOI22X1M U376 (.Y(n333), 
	.B1(n414), 
	.B0(\mem[13][2] ), 
	.A1(n416), 
	.A0(\mem[12][2] ));
   AOI21X1M U377 (.Y(n341), 
	.B0(n394), 
	.A1(n333), 
	.A0(n334));
   AOI22X1M U378 (.Y(n336), 
	.B1(n412), 
	.B0(Reg3[2]), 
	.A1(n413), 
	.A0(Reg2[2]));
   AOI22X1M U379 (.Y(n335), 
	.B1(n414), 
	.B0(Reg1[2]), 
	.A1(n416), 
	.A0(Reg0[2]));
   AOI21X1M U380 (.Y(n340), 
	.B0(n397), 
	.A1(n335), 
	.A0(n336));
   AOI22X1M U381 (.Y(n338), 
	.B1(n412), 
	.B0(\mem[7][2] ), 
	.A1(n413), 
	.A0(\mem[6][2] ));
   AOI22X1M U382 (.Y(n337), 
	.B1(n414), 
	.B0(\mem[5][2] ), 
	.A1(n416), 
	.A0(\mem[4][2] ));
   AOI21X1M U383 (.Y(n339), 
	.B0(n400), 
	.A1(n337), 
	.A0(n338));
   OR4X1M U384 (.Y(N41), 
	.D(n339), 
	.C(n340), 
	.B(n341), 
	.A(n342));
   AOI22X1M U385 (.Y(n344), 
	.B1(n412), 
	.B0(\mem[11][3] ), 
	.A1(n413), 
	.A0(\mem[10][3] ));
   AOI22X1M U386 (.Y(n343), 
	.B1(n414), 
	.B0(\mem[9][3] ), 
	.A1(n416), 
	.A0(\mem[8][3] ));
   AOI21X1M U387 (.Y(n354), 
	.B0(n391), 
	.A1(n343), 
	.A0(n344));
   AOI22X1M U388 (.Y(n346), 
	.B1(n412), 
	.B0(\mem[15][3] ), 
	.A1(n413), 
	.A0(\mem[14][3] ));
   AOI22X1M U389 (.Y(n345), 
	.B1(n414), 
	.B0(\mem[13][3] ), 
	.A1(n416), 
	.A0(\mem[12][3] ));
   AOI21X1M U390 (.Y(n353), 
	.B0(n394), 
	.A1(n345), 
	.A0(n346));
   AOI22X1M U391 (.Y(n348), 
	.B1(n412), 
	.B0(Reg3[3]), 
	.A1(n413), 
	.A0(Reg2[3]));
   AOI22X1M U392 (.Y(n347), 
	.B1(n414), 
	.B0(Reg1[3]), 
	.A1(n416), 
	.A0(Reg0[3]));
   AOI21X1M U393 (.Y(n352), 
	.B0(n397), 
	.A1(n347), 
	.A0(n348));
   AOI22X1M U394 (.Y(n350), 
	.B1(n412), 
	.B0(\mem[7][3] ), 
	.A1(n413), 
	.A0(\mem[6][3] ));
   AOI22X1M U395 (.Y(n349), 
	.B1(n414), 
	.B0(\mem[5][3] ), 
	.A1(n416), 
	.A0(\mem[4][3] ));
   AOI21X1M U396 (.Y(n351), 
	.B0(n400), 
	.A1(n349), 
	.A0(n350));
   OR4X1M U397 (.Y(N40), 
	.D(n351), 
	.C(n352), 
	.B(n353), 
	.A(n354));
   AOI22X1M U398 (.Y(n356), 
	.B1(n412), 
	.B0(\mem[11][4] ), 
	.A1(n413), 
	.A0(\mem[10][4] ));
   AOI22X1M U399 (.Y(n355), 
	.B1(n414), 
	.B0(\mem[9][4] ), 
	.A1(n416), 
	.A0(\mem[8][4] ));
   AOI21X1M U400 (.Y(n366), 
	.B0(n391), 
	.A1(n355), 
	.A0(n356));
   AOI22X1M U401 (.Y(n358), 
	.B1(n412), 
	.B0(\mem[15][4] ), 
	.A1(n413), 
	.A0(\mem[14][4] ));
   AOI22X1M U402 (.Y(n357), 
	.B1(n414), 
	.B0(\mem[13][4] ), 
	.A1(n416), 
	.A0(\mem[12][4] ));
   AOI21X1M U403 (.Y(n365), 
	.B0(n394), 
	.A1(n357), 
	.A0(n358));
   AOI22X1M U404 (.Y(n360), 
	.B1(n412), 
	.B0(Reg3[4]), 
	.A1(n413), 
	.A0(Reg2[4]));
   AOI22X1M U405 (.Y(n359), 
	.B1(n414), 
	.B0(Reg1[4]), 
	.A1(n416), 
	.A0(Reg0[4]));
   AOI21X1M U406 (.Y(n364), 
	.B0(n397), 
	.A1(n359), 
	.A0(n360));
   AOI22X1M U407 (.Y(n362), 
	.B1(n412), 
	.B0(\mem[7][4] ), 
	.A1(n413), 
	.A0(\mem[6][4] ));
   AOI22X1M U408 (.Y(n361), 
	.B1(n414), 
	.B0(\mem[5][4] ), 
	.A1(n416), 
	.A0(\mem[4][4] ));
   AOI21X1M U409 (.Y(n363), 
	.B0(n400), 
	.A1(n361), 
	.A0(n362));
   OR4X1M U410 (.Y(N39), 
	.D(n363), 
	.C(n364), 
	.B(n365), 
	.A(n366));
   AOI22X1M U411 (.Y(n368), 
	.B1(n412), 
	.B0(\mem[11][5] ), 
	.A1(n413), 
	.A0(\mem[10][5] ));
   AOI22X1M U412 (.Y(n367), 
	.B1(n414), 
	.B0(\mem[9][5] ), 
	.A1(n416), 
	.A0(\mem[8][5] ));
   AOI21X1M U413 (.Y(n378), 
	.B0(n391), 
	.A1(n367), 
	.A0(n368));
   AOI22X1M U414 (.Y(n370), 
	.B1(n412), 
	.B0(\mem[15][5] ), 
	.A1(n413), 
	.A0(\mem[14][5] ));
   AOI22X1M U415 (.Y(n369), 
	.B1(n414), 
	.B0(\mem[13][5] ), 
	.A1(n416), 
	.A0(\mem[12][5] ));
   AOI21X1M U416 (.Y(n377), 
	.B0(n394), 
	.A1(n369), 
	.A0(n370));
   AOI22X1M U417 (.Y(n372), 
	.B1(n412), 
	.B0(Reg3[5]), 
	.A1(n413), 
	.A0(Reg2[5]));
   AOI22X1M U418 (.Y(n371), 
	.B1(n414), 
	.B0(Reg1[5]), 
	.A1(n416), 
	.A0(Reg0[5]));
   AOI21X1M U419 (.Y(n376), 
	.B0(n397), 
	.A1(n371), 
	.A0(n372));
   AOI22X1M U420 (.Y(n374), 
	.B1(n412), 
	.B0(\mem[7][5] ), 
	.A1(n413), 
	.A0(\mem[6][5] ));
   AOI22X1M U421 (.Y(n373), 
	.B1(n414), 
	.B0(\mem[5][5] ), 
	.A1(n416), 
	.A0(\mem[4][5] ));
   AOI21X1M U422 (.Y(n375), 
	.B0(n400), 
	.A1(n373), 
	.A0(n374));
   OR4X1M U423 (.Y(N38), 
	.D(n375), 
	.C(n376), 
	.B(n377), 
	.A(n378));
   AOI22X1M U424 (.Y(n380), 
	.B1(n412), 
	.B0(\mem[11][6] ), 
	.A1(n413), 
	.A0(\mem[10][6] ));
   AOI22X1M U425 (.Y(n379), 
	.B1(n414), 
	.B0(\mem[9][6] ), 
	.A1(n416), 
	.A0(\mem[8][6] ));
   AOI21X1M U426 (.Y(n390), 
	.B0(n391), 
	.A1(n379), 
	.A0(n380));
   AOI22X1M U427 (.Y(n382), 
	.B1(n412), 
	.B0(\mem[15][6] ), 
	.A1(n413), 
	.A0(\mem[14][6] ));
   AOI22X1M U428 (.Y(n381), 
	.B1(n414), 
	.B0(\mem[13][6] ), 
	.A1(n416), 
	.A0(\mem[12][6] ));
   AOI21X1M U429 (.Y(n389), 
	.B0(n394), 
	.A1(n381), 
	.A0(n382));
   AOI22X1M U430 (.Y(n384), 
	.B1(n412), 
	.B0(Reg3[6]), 
	.A1(n413), 
	.A0(Reg2[6]));
   AOI21X1M U431 (.Y(n388), 
	.B0(n397), 
	.A1(n383), 
	.A0(n384));
   AOI22X1M U432 (.Y(n386), 
	.B1(n412), 
	.B0(\mem[7][6] ), 
	.A1(n413), 
	.A0(\mem[6][6] ));
   AOI22X1M U433 (.Y(n385), 
	.B1(n414), 
	.B0(\mem[5][6] ), 
	.A1(n416), 
	.A0(\mem[4][6] ));
   AOI21X1M U434 (.Y(n387), 
	.B0(n400), 
	.A1(n385), 
	.A0(n386));
   OR4X1M U435 (.Y(N37), 
	.D(n387), 
	.C(n388), 
	.B(n389), 
	.A(n390));
   AOI22X1M U436 (.Y(n393), 
	.B1(n412), 
	.B0(\mem[11][7] ), 
	.A1(n413), 
	.A0(\mem[10][7] ));
   AOI22X1M U437 (.Y(n392), 
	.B1(n414), 
	.B0(\mem[9][7] ), 
	.A1(n416), 
	.A0(\mem[8][7] ));
   AOI21X1M U438 (.Y(n406), 
	.B0(n391), 
	.A1(n392), 
	.A0(n393));
   AOI22X1M U439 (.Y(n396), 
	.B1(n412), 
	.B0(\mem[15][7] ), 
	.A1(n413), 
	.A0(\mem[14][7] ));
   AOI22X1M U440 (.Y(n395), 
	.B1(n414), 
	.B0(\mem[13][7] ), 
	.A1(n416), 
	.A0(\mem[12][7] ));
   AOI21X1M U441 (.Y(n405), 
	.B0(n394), 
	.A1(n395), 
	.A0(n396));
   AOI22X1M U442 (.Y(n399), 
	.B1(n412), 
	.B0(Reg3[7]), 
	.A1(n413), 
	.A0(Reg2[7]));
   AOI21X1M U443 (.Y(n404), 
	.B0(n397), 
	.A1(n398), 
	.A0(n399));
   AOI22X1M U444 (.Y(n402), 
	.B1(n412), 
	.B0(\mem[7][7] ), 
	.A1(n413), 
	.A0(\mem[6][7] ));
   AOI22X1M U445 (.Y(n401), 
	.B1(n414), 
	.B0(\mem[5][7] ), 
	.A1(n416), 
	.A0(\mem[4][7] ));
   AOI21X1M U446 (.Y(n403), 
	.B0(n400), 
	.A1(n401), 
	.A0(n402));
   OR4X1M U447 (.Y(N36), 
	.D(n403), 
	.C(n404), 
	.B(n405), 
	.A(n406));
   AOI22XLM U448 (.Y(n398), 
	.B1(n414), 
	.B0(Reg1[7]), 
	.A1(n416), 
	.A0(Reg0[7]));
   AOI22XLM U449 (.Y(n147), 
	.B1(n414), 
	.B0(Reg1[0]), 
	.A1(n416), 
	.A0(Reg0[0]));
   AOI22XLM U450 (.Y(n383), 
	.B1(n414), 
	.B0(Reg1[6]), 
	.A1(n416), 
	.A0(Reg0[6]));
   MX2XLM U453 (.Y(n192), 
	.S0(n434), 
	.B(Wr_Data[7]), 
	.A(Reg0[7]));
   MX2XLM U454 (.Y(n199), 
	.S0(n138), 
	.B(Wr_Data[6]), 
	.A(Reg1[6]));
   MX2XLM U455 (.Y(n193), 
	.S0(n138), 
	.B(Wr_Data[0]), 
	.A(Reg1[0]));
   INVXLM U456 (.Y(n454), 
	.A(test_se));
   INVX2M U457 (.Y(n449), 
	.A(n454));
   INVX2M U458 (.Y(n450), 
	.A(n454));
   DLY1X4M U459 (.Y(n451), 
	.A(test_se));
   DLY1X4M U460 (.Y(n452), 
	.A(test_se));
   DLY1X4M U461 (.Y(n453), 
	.A(test_se));
endmodule

module Alu_16_DW01_sub_0 (
	A, 
	B, 
	CI, 
	DIFF, 
	CO, 
	n175, 
	n183, 
	n179, 
	n182, 
	n181, 
	n180, 
	n147, 
	n177, 
	n188);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] DIFF;
   output CO;
   input n175;
   input n183;
   input n179;
   input n182;
   input n181;
   input n180;
   input n147;
   input n177;
   input n188;

   // Internal wires
   wire [9:0] carry;

   ADDFX2M U2_1 (.S(DIFF[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(n183), 
	.A(A[1]));
   ADDFX2M U2_5 (.S(DIFF[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(n181), 
	.A(A[5]));
   ADDFX2M U2_4 (.S(DIFF[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(n182), 
	.A(A[4]));
   ADDFX2M U2_3 (.S(DIFF[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(n177), 
	.A(A[3]));
   ADDFX2M U2_2 (.S(DIFF[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(n175), 
	.A(A[2]));
   ADDFX2M U2_7 (.S(DIFF[7]), 
	.CO(carry[8]), 
	.CI(carry[7]), 
	.B(n179), 
	.A(A[7]));
   ADDFX2M U2_6 (.S(DIFF[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(n180), 
	.A(A[6]));
   XNOR2X2M U1 (.Y(DIFF[0]), 
	.B(A[0]), 
	.A(n147));
   NAND2X2M U7 (.Y(carry[1]), 
	.B(n188), 
	.A(B[0]));
   CLKINVX1M U12 (.Y(DIFF[8]), 
	.A(carry[8]));
endmodule

module Alu_16_DW01_add_0 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [8:0] A;
   input [8:0] B;
   input CI;
   output [8:0] SUM;
   output CO;

   // Internal wires
   wire LTIE_LTIELO_NET;
   wire [8:1] carry;

   TIELOM LTIE_LTIELO (.Y(LTIE_LTIELO_NET));
   ADDFX2M U1_6 (.S(SUM[6]), 
	.CO(carry[7]), 
	.CI(carry[6]), 
	.B(B[6]), 
	.A(A[6]));
   ADDFX2M U1_5 (.S(SUM[5]), 
	.CO(carry[6]), 
	.CI(carry[5]), 
	.B(B[5]), 
	.A(A[5]));
   ADDFX2M U1_4 (.S(SUM[4]), 
	.CO(carry[5]), 
	.CI(carry[4]), 
	.B(B[4]), 
	.A(A[4]));
   ADDFX2M U1_3 (.S(SUM[3]), 
	.CO(carry[4]), 
	.CI(carry[3]), 
	.B(B[3]), 
	.A(A[3]));
   ADDFX2M U1_2 (.S(SUM[2]), 
	.CO(carry[3]), 
	.CI(carry[2]), 
	.B(B[2]), 
	.A(A[2]));
   ADDFX2M U1_1 (.S(SUM[1]), 
	.CO(carry[2]), 
	.CI(carry[1]), 
	.B(B[1]), 
	.A(A[1]));
   ADDFX2M U1_7 (.S(SUM[7]), 
	.CO(SUM[8]), 
	.CI(carry[7]), 
	.B(B[7]), 
	.A(A[7]));
   ADDFX2M U1_0 (.S(SUM[0]), 
	.CO(carry[1]), 
	.CI(LTIE_LTIELO_NET), 
	.B(B[0]), 
	.A(A[0]));
endmodule

module Alu_16_DW01_add_1 (
	A, 
	B, 
	CI, 
	SUM, 
	CO);
   input [13:0] A;
   input [13:0] B;
   input CI;
   output [13:0] SUM;
   output CO;

   // Internal wires
   wire n1;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;

   AOI21BX2M U2 (.Y(n1), 
	.B0N(n19), 
	.A1(A[12]), 
	.A0(n18));
   NAND2X2M U3 (.Y(n15), 
	.B(B[7]), 
	.A(A[7]));
   XNOR2X2M U4 (.Y(SUM[13]), 
	.B(n1), 
	.A(B[13]));
   XNOR2X2M U5 (.Y(SUM[7]), 
	.B(n8), 
	.A(A[7]));
   INVX2M U6 (.Y(n8), 
	.A(B[7]));
   INVX2M U7 (.Y(n9), 
	.A(A[6]));
   INVX2M U8 (.Y(SUM[6]), 
	.A(n9));
   BUFX2M U9 (.Y(SUM[0]), 
	.A(A[0]));
   BUFX2M U10 (.Y(SUM[1]), 
	.A(A[1]));
   BUFX2M U11 (.Y(SUM[2]), 
	.A(A[2]));
   BUFX2M U12 (.Y(SUM[3]), 
	.A(A[3]));
   BUFX2M U13 (.Y(SUM[4]), 
	.A(A[4]));
   BUFX2M U14 (.Y(SUM[5]), 
	.A(A[5]));
   XNOR2X1M U15 (.Y(SUM[9]), 
	.B(n11), 
	.A(n10));
   NOR2X1M U16 (.Y(n11), 
	.B(n13), 
	.A(n12));
   CLKXOR2X2M U17 (.Y(SUM[8]), 
	.B(n15), 
	.A(n14));
   NAND2BX1M U18 (.Y(n14), 
	.B(n17), 
	.AN(n16));
   OAI21X1M U19 (.Y(n19), 
	.B0(B[12]), 
	.A1(n18), 
	.A0(A[12]));
   XOR3XLM U20 (.Y(SUM[12]), 
	.C(n18), 
	.B(A[12]), 
	.A(B[12]));
   OAI21BX1M U21 (.Y(n18), 
	.B0N(n22), 
	.A1(n21), 
	.A0(n20));
   XNOR2X1M U22 (.Y(SUM[11]), 
	.B(n23), 
	.A(n21));
   NOR2X1M U23 (.Y(n23), 
	.B(n20), 
	.A(n22));
   NOR2X1M U24 (.Y(n20), 
	.B(A[11]), 
	.A(B[11]));
   AND2X1M U25 (.Y(n22), 
	.B(A[11]), 
	.A(B[11]));
   OA21X1M U26 (.Y(n21), 
	.B0(n26), 
	.A1(n25), 
	.A0(n24));
   CLKXOR2X2M U27 (.Y(SUM[10]), 
	.B(n25), 
	.A(n27));
   AOI2BB1X1M U28 (.Y(n25), 
	.B0(n12), 
	.A1N(n13), 
	.A0N(n10));
   AND2X1M U29 (.Y(n12), 
	.B(A[9]), 
	.A(B[9]));
   NOR2X1M U30 (.Y(n13), 
	.B(A[9]), 
	.A(B[9]));
   OA21X1M U31 (.Y(n10), 
	.B0(n17), 
	.A1(n16), 
	.A0(n15));
   CLKNAND2X2M U32 (.Y(n17), 
	.B(A[8]), 
	.A(B[8]));
   NOR2X1M U33 (.Y(n16), 
	.B(A[8]), 
	.A(B[8]));
   NAND2BX1M U34 (.Y(n27), 
	.B(n26), 
	.AN(n24));
   CLKNAND2X2M U35 (.Y(n26), 
	.B(A[10]), 
	.A(B[10]));
   NOR2X1M U36 (.Y(n24), 
	.B(A[10]), 
	.A(B[10]));
endmodule

module Alu_16_DW02_mult_0 (
	A, 
	B, 
	TC, 
	PRODUCT, 
	n185, 
	n70, 
	n186, 
	n45, 
	n146, 
	n188, 
	n187);
   input [7:0] A;
   input [7:0] B;
   input TC;
   output [15:0] PRODUCT;
   input n185;
   input n70;
   input n186;
   input n45;
   input n146;
   input n188;
   input n187;

   // Internal wires
   wire \ab[7][7] ;
   wire \ab[7][6] ;
   wire \ab[7][5] ;
   wire \ab[7][4] ;
   wire \ab[7][3] ;
   wire \ab[7][2] ;
   wire \ab[7][1] ;
   wire \ab[7][0] ;
   wire \ab[6][7] ;
   wire \ab[6][6] ;
   wire \ab[6][5] ;
   wire \ab[6][4] ;
   wire \ab[6][3] ;
   wire \ab[6][2] ;
   wire \ab[6][1] ;
   wire \ab[6][0] ;
   wire \ab[5][7] ;
   wire \ab[5][6] ;
   wire \ab[5][5] ;
   wire \ab[5][4] ;
   wire \ab[5][3] ;
   wire \ab[5][2] ;
   wire \ab[5][1] ;
   wire \ab[5][0] ;
   wire \ab[4][7] ;
   wire \ab[4][6] ;
   wire \ab[4][5] ;
   wire \ab[4][4] ;
   wire \ab[4][3] ;
   wire \ab[4][2] ;
   wire \ab[4][1] ;
   wire \ab[4][0] ;
   wire \ab[3][7] ;
   wire \ab[3][6] ;
   wire \ab[3][5] ;
   wire \ab[3][4] ;
   wire \ab[3][3] ;
   wire \ab[3][2] ;
   wire \ab[3][1] ;
   wire \ab[3][0] ;
   wire \ab[2][7] ;
   wire \ab[2][6] ;
   wire \ab[2][5] ;
   wire \ab[2][4] ;
   wire \ab[2][3] ;
   wire \ab[2][2] ;
   wire \ab[2][1] ;
   wire \ab[2][0] ;
   wire \ab[1][7] ;
   wire \ab[1][6] ;
   wire \ab[1][5] ;
   wire \ab[1][4] ;
   wire \ab[1][3] ;
   wire \ab[1][2] ;
   wire \ab[1][1] ;
   wire \ab[1][0] ;
   wire \ab[0][7] ;
   wire \ab[0][6] ;
   wire \ab[0][5] ;
   wire \ab[0][4] ;
   wire \ab[0][3] ;
   wire \ab[0][2] ;
   wire \ab[0][1] ;
   wire \CARRYB[7][6] ;
   wire \CARRYB[7][5] ;
   wire \CARRYB[7][4] ;
   wire \CARRYB[7][3] ;
   wire \CARRYB[7][2] ;
   wire \CARRYB[7][1] ;
   wire \CARRYB[7][0] ;
   wire \CARRYB[6][6] ;
   wire \CARRYB[6][5] ;
   wire \CARRYB[6][4] ;
   wire \CARRYB[6][3] ;
   wire \CARRYB[6][2] ;
   wire \CARRYB[6][1] ;
   wire \CARRYB[6][0] ;
   wire \CARRYB[5][6] ;
   wire \CARRYB[5][5] ;
   wire \CARRYB[5][4] ;
   wire \CARRYB[5][3] ;
   wire \CARRYB[5][2] ;
   wire \CARRYB[5][1] ;
   wire \CARRYB[5][0] ;
   wire \CARRYB[4][6] ;
   wire \CARRYB[4][5] ;
   wire \CARRYB[4][4] ;
   wire \CARRYB[4][3] ;
   wire \CARRYB[4][2] ;
   wire \CARRYB[4][1] ;
   wire \CARRYB[4][0] ;
   wire \CARRYB[3][6] ;
   wire \CARRYB[3][5] ;
   wire \CARRYB[3][4] ;
   wire \CARRYB[3][3] ;
   wire \CARRYB[3][2] ;
   wire \CARRYB[3][1] ;
   wire \CARRYB[3][0] ;
   wire \CARRYB[2][6] ;
   wire \CARRYB[2][5] ;
   wire \CARRYB[2][4] ;
   wire \CARRYB[2][3] ;
   wire \CARRYB[2][2] ;
   wire \CARRYB[2][1] ;
   wire \CARRYB[2][0] ;
   wire \SUMB[7][6] ;
   wire \SUMB[7][5] ;
   wire \SUMB[7][4] ;
   wire \SUMB[7][3] ;
   wire \SUMB[7][2] ;
   wire \SUMB[7][1] ;
   wire \SUMB[7][0] ;
   wire \SUMB[6][6] ;
   wire \SUMB[6][5] ;
   wire \SUMB[6][4] ;
   wire \SUMB[6][3] ;
   wire \SUMB[6][2] ;
   wire \SUMB[6][1] ;
   wire \SUMB[5][6] ;
   wire \SUMB[5][5] ;
   wire \SUMB[5][4] ;
   wire \SUMB[5][3] ;
   wire \SUMB[5][2] ;
   wire \SUMB[5][1] ;
   wire \SUMB[4][6] ;
   wire \SUMB[4][5] ;
   wire \SUMB[4][4] ;
   wire \SUMB[4][3] ;
   wire \SUMB[4][2] ;
   wire \SUMB[4][1] ;
   wire \SUMB[3][6] ;
   wire \SUMB[3][5] ;
   wire \SUMB[3][4] ;
   wire \SUMB[3][3] ;
   wire \SUMB[3][2] ;
   wire \SUMB[3][1] ;
   wire \SUMB[2][6] ;
   wire \SUMB[2][5] ;
   wire \SUMB[2][4] ;
   wire \SUMB[2][3] ;
   wire \SUMB[2][2] ;
   wire \SUMB[2][1] ;
   wire \SUMB[1][6] ;
   wire \SUMB[1][5] ;
   wire \SUMB[1][4] ;
   wire \SUMB[1][3] ;
   wire \SUMB[1][2] ;
   wire \SUMB[1][1] ;
   wire \A1[12] ;
   wire \A1[11] ;
   wire \A1[10] ;
   wire \A1[9] ;
   wire \A1[8] ;
   wire \A1[7] ;
   wire \A1[6] ;
   wire \A1[4] ;
   wire \A1[3] ;
   wire \A1[2] ;
   wire \A1[1] ;
   wire \A1[0] ;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n13;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;

   ADDFX2M S1_5_0 (.S(\A1[3] ), 
	.CO(\CARRYB[5][0] ), 
	.CI(\SUMB[4][1] ), 
	.B(\CARRYB[4][0] ), 
	.A(\ab[5][0] ));
   ADDFX2M S1_4_0 (.S(\A1[2] ), 
	.CO(\CARRYB[4][0] ), 
	.CI(\SUMB[3][1] ), 
	.B(\CARRYB[3][0] ), 
	.A(\ab[4][0] ));
   ADDFX2M S1_3_0 (.S(\A1[1] ), 
	.CO(\CARRYB[3][0] ), 
	.CI(\SUMB[2][1] ), 
	.B(\CARRYB[2][0] ), 
	.A(\ab[3][0] ));
   ADDFX2M S1_2_0 (.S(\A1[0] ), 
	.CO(\CARRYB[2][0] ), 
	.CI(\SUMB[1][1] ), 
	.B(n8), 
	.A(\ab[2][0] ));
   ADDFX2M S3_6_6 (.S(\SUMB[6][6] ), 
	.CO(\CARRYB[6][6] ), 
	.CI(\ab[5][7] ), 
	.B(\CARRYB[5][6] ), 
	.A(\ab[6][6] ));
   ADDFX2M S2_6_5 (.S(\SUMB[6][5] ), 
	.CO(\CARRYB[6][5] ), 
	.CI(\SUMB[5][6] ), 
	.B(\CARRYB[5][5] ), 
	.A(\ab[6][5] ));
   ADDFX2M S3_5_6 (.S(\SUMB[5][6] ), 
	.CO(\CARRYB[5][6] ), 
	.CI(\ab[4][7] ), 
	.B(\CARRYB[4][6] ), 
	.A(\ab[5][6] ));
   ADDFX2M S5_6 (.S(\SUMB[7][6] ), 
	.CO(\CARRYB[7][6] ), 
	.CI(\ab[6][7] ), 
	.B(\CARRYB[6][6] ), 
	.A(\ab[7][6] ));
   ADDFX2M S4_5 (.S(\SUMB[7][5] ), 
	.CO(\CARRYB[7][5] ), 
	.CI(\SUMB[6][6] ), 
	.B(\CARRYB[6][5] ), 
	.A(\ab[7][5] ));
   ADDFX2M S2_6_2 (.S(\SUMB[6][2] ), 
	.CO(\CARRYB[6][2] ), 
	.CI(\SUMB[5][3] ), 
	.B(\CARRYB[5][2] ), 
	.A(\ab[6][2] ));
   ADDFX2M S2_5_3 (.S(\SUMB[5][3] ), 
	.CO(\CARRYB[5][3] ), 
	.CI(\SUMB[4][4] ), 
	.B(\CARRYB[4][3] ), 
	.A(\ab[5][3] ));
   ADDFX2M S1_6_0 (.S(\A1[4] ), 
	.CO(\CARRYB[6][0] ), 
	.CI(\SUMB[5][1] ), 
	.B(\CARRYB[5][0] ), 
	.A(\ab[6][0] ));
   ADDFX2M S2_6_1 (.S(\SUMB[6][1] ), 
	.CO(\CARRYB[6][1] ), 
	.CI(\SUMB[5][2] ), 
	.B(\CARRYB[5][1] ), 
	.A(\ab[6][1] ));
   ADDFX2M S2_4_4 (.S(\SUMB[4][4] ), 
	.CO(\CARRYB[4][4] ), 
	.CI(\SUMB[3][5] ), 
	.B(\CARRYB[3][4] ), 
	.A(\ab[4][4] ));
   ADDFX2M S2_5_1 (.S(\SUMB[5][1] ), 
	.CO(\CARRYB[5][1] ), 
	.CI(\SUMB[4][2] ), 
	.B(\CARRYB[4][1] ), 
	.A(\ab[5][1] ));
   ADDFX2M S2_5_2 (.S(\SUMB[5][2] ), 
	.CO(\CARRYB[5][2] ), 
	.CI(\SUMB[4][3] ), 
	.B(\CARRYB[4][2] ), 
	.A(\ab[5][2] ));
   ADDFX2M S2_3_5 (.S(\SUMB[3][5] ), 
	.CO(\CARRYB[3][5] ), 
	.CI(\SUMB[2][6] ), 
	.B(\CARRYB[2][5] ), 
	.A(\ab[3][5] ));
   ADDFX2M S2_4_1 (.S(\SUMB[4][1] ), 
	.CO(\CARRYB[4][1] ), 
	.CI(\SUMB[3][2] ), 
	.B(\CARRYB[3][1] ), 
	.A(\ab[4][1] ));
   ADDFX2M S2_4_2 (.S(\SUMB[4][2] ), 
	.CO(\CARRYB[4][2] ), 
	.CI(\SUMB[3][3] ), 
	.B(\CARRYB[3][2] ), 
	.A(\ab[4][2] ));
   ADDFX2M S2_3_1 (.S(\SUMB[3][1] ), 
	.CO(\CARRYB[3][1] ), 
	.CI(\SUMB[2][2] ), 
	.B(\CARRYB[2][1] ), 
	.A(\ab[3][1] ));
   ADDFX2M S2_3_2 (.S(\SUMB[3][2] ), 
	.CO(\CARRYB[3][2] ), 
	.CI(\SUMB[2][3] ), 
	.B(\CARRYB[2][2] ), 
	.A(\ab[3][2] ));
   ADDFX2M S2_3_4 (.S(\SUMB[3][4] ), 
	.CO(\CARRYB[3][4] ), 
	.CI(\SUMB[2][5] ), 
	.B(\CARRYB[2][4] ), 
	.A(\ab[3][4] ));
   ADDFX2M S2_6_4 (.S(\SUMB[6][4] ), 
	.CO(\CARRYB[6][4] ), 
	.CI(\SUMB[5][5] ), 
	.B(\CARRYB[5][4] ), 
	.A(\ab[6][4] ));
   ADDFX2M S2_5_5 (.S(\SUMB[5][5] ), 
	.CO(\CARRYB[5][5] ), 
	.CI(\SUMB[4][6] ), 
	.B(\CARRYB[4][5] ), 
	.A(\ab[5][5] ));
   ADDFX2M S2_6_3 (.S(\SUMB[6][3] ), 
	.CO(\CARRYB[6][3] ), 
	.CI(\SUMB[5][4] ), 
	.B(\CARRYB[5][3] ), 
	.A(\ab[6][3] ));
   ADDFX2M S3_4_6 (.S(\SUMB[4][6] ), 
	.CO(\CARRYB[4][6] ), 
	.CI(\ab[3][7] ), 
	.B(\CARRYB[3][6] ), 
	.A(\ab[4][6] ));
   ADDFX2M S2_5_4 (.S(\SUMB[5][4] ), 
	.CO(\CARRYB[5][4] ), 
	.CI(\SUMB[4][5] ), 
	.B(\CARRYB[4][4] ), 
	.A(\ab[5][4] ));
   ADDFX2M S2_4_5 (.S(\SUMB[4][5] ), 
	.CO(\CARRYB[4][5] ), 
	.CI(\SUMB[3][6] ), 
	.B(\CARRYB[3][5] ), 
	.A(\ab[4][5] ));
   ADDFX2M S3_3_6 (.S(\SUMB[3][6] ), 
	.CO(\CARRYB[3][6] ), 
	.CI(\ab[2][7] ), 
	.B(\CARRYB[2][6] ), 
	.A(\ab[3][6] ));
   ADDFX2M S2_4_3 (.S(\SUMB[4][3] ), 
	.CO(\CARRYB[4][3] ), 
	.CI(\SUMB[3][4] ), 
	.B(\CARRYB[3][3] ), 
	.A(\ab[4][3] ));
   ADDFX2M S2_3_3 (.S(\SUMB[3][3] ), 
	.CO(\CARRYB[3][3] ), 
	.CI(\SUMB[2][4] ), 
	.B(\CARRYB[2][3] ), 
	.A(\ab[3][3] ));
   ADDFX2M S3_2_6 (.S(\SUMB[2][6] ), 
	.CO(\CARRYB[2][6] ), 
	.CI(\ab[1][7] ), 
	.B(n9), 
	.A(\ab[2][6] ));
   ADDFX2M S2_2_3 (.S(\SUMB[2][3] ), 
	.CO(\CARRYB[2][3] ), 
	.CI(\SUMB[1][4] ), 
	.B(n7), 
	.A(\ab[2][3] ));
   ADDFX2M S2_2_4 (.S(\SUMB[2][4] ), 
	.CO(\CARRYB[2][4] ), 
	.CI(\SUMB[1][5] ), 
	.B(n6), 
	.A(\ab[2][4] ));
   ADDFX2M S2_2_5 (.S(\SUMB[2][5] ), 
	.CO(\CARRYB[2][5] ), 
	.CI(\SUMB[1][6] ), 
	.B(n3), 
	.A(\ab[2][5] ));
   ADDFX2M S4_0 (.S(\SUMB[7][0] ), 
	.CO(\CARRYB[7][0] ), 
	.CI(\SUMB[6][1] ), 
	.B(\CARRYB[6][0] ), 
	.A(\ab[7][0] ));
   ADDFX2M S4_4 (.S(\SUMB[7][4] ), 
	.CO(\CARRYB[7][4] ), 
	.CI(\SUMB[6][5] ), 
	.B(\CARRYB[6][4] ), 
	.A(\ab[7][4] ));
   ADDFX2M S4_3 (.S(\SUMB[7][3] ), 
	.CO(\CARRYB[7][3] ), 
	.CI(\SUMB[6][4] ), 
	.B(\CARRYB[6][3] ), 
	.A(\ab[7][3] ));
   ADDFX2M S4_2 (.S(\SUMB[7][2] ), 
	.CO(\CARRYB[7][2] ), 
	.CI(\SUMB[6][3] ), 
	.B(\CARRYB[6][2] ), 
	.A(\ab[7][2] ));
   ADDFX2M S4_1 (.S(\SUMB[7][1] ), 
	.CO(\CARRYB[7][1] ), 
	.CI(\SUMB[6][2] ), 
	.B(\CARRYB[6][1] ), 
	.A(\ab[7][1] ));
   ADDFX2M S2_2_1 (.S(\SUMB[2][1] ), 
	.CO(\CARRYB[2][1] ), 
	.CI(\SUMB[1][2] ), 
	.B(n5), 
	.A(\ab[2][1] ));
   ADDFX2M S2_2_2 (.S(\SUMB[2][2] ), 
	.CO(\CARRYB[2][2] ), 
	.CI(\SUMB[1][3] ), 
	.B(n4), 
	.A(\ab[2][2] ));
   AND2X2M U2 (.Y(n3), 
	.B(\ab[1][5] ), 
	.A(\ab[0][6] ));
   AND2X2M U3 (.Y(n4), 
	.B(\ab[1][2] ), 
	.A(\ab[0][3] ));
   AND2X2M U4 (.Y(n5), 
	.B(\ab[1][1] ), 
	.A(\ab[0][2] ));
   AND2X2M U5 (.Y(n6), 
	.B(\ab[1][4] ), 
	.A(\ab[0][5] ));
   AND2X2M U6 (.Y(n7), 
	.B(\ab[1][3] ), 
	.A(\ab[0][4] ));
   AND2X2M U7 (.Y(n8), 
	.B(\ab[1][0] ), 
	.A(\ab[0][1] ));
   AND2X2M U8 (.Y(n9), 
	.B(\ab[1][6] ), 
	.A(\ab[0][7] ));
   AND2X2M U9 (.Y(n10), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   INVX2M U10 (.Y(n22), 
	.A(\ab[0][6] ));
   CLKXOR2X2M U11 (.Y(\A1[8] ), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U12 (.Y(\A1[9] ), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   INVX2M U13 (.Y(n23), 
	.A(\ab[0][7] ));
   INVX2M U14 (.Y(n21), 
	.A(\ab[0][5] ));
   INVX2M U15 (.Y(n20), 
	.A(\ab[0][4] ));
   INVX2M U16 (.Y(n19), 
	.A(\ab[0][3] ));
   AND2X2M U17 (.Y(n11), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   AND2X2M U18 (.Y(n12), 
	.B(\SUMB[7][1] ), 
	.A(\CARRYB[7][0] ));
   CLKXOR2X2M U19 (.Y(\A1[7] ), 
	.B(\SUMB[7][2] ), 
	.A(\CARRYB[7][1] ));
   CLKXOR2X2M U20 (.Y(\A1[10] ), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   CLKXOR2X2M U21 (.Y(\A1[11] ), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   INVX2M U22 (.Y(n18), 
	.A(\ab[0][2] ));
   AND2X2M U23 (.Y(n13), 
	.B(\SUMB[7][5] ), 
	.A(\CARRYB[7][4] ));
   AND2X2M U24 (.Y(n14), 
	.B(\SUMB[7][4] ), 
	.A(\CARRYB[7][3] ));
   AND2X2M U25 (.Y(n15), 
	.B(\SUMB[7][3] ), 
	.A(\CARRYB[7][2] ));
   CLKXOR2X2M U26 (.Y(\A1[12] ), 
	.B(\ab[7][7] ), 
	.A(\CARRYB[7][6] ));
   XNOR2X2M U27 (.Y(\A1[6] ), 
	.B(n17), 
	.A(\CARRYB[7][0] ));
   INVX2M U28 (.Y(n17), 
	.A(\SUMB[7][1] ));
   AND2X2M U29 (.Y(n16), 
	.B(\SUMB[7][6] ), 
	.A(\CARRYB[7][5] ));
   CLKXOR2X2M U30 (.Y(PRODUCT[1]), 
	.B(\ab[0][1] ), 
	.A(\ab[1][0] ));
   XNOR2X2M U31 (.Y(\SUMB[1][3] ), 
	.B(n20), 
	.A(\ab[1][3] ));
   XNOR2X2M U32 (.Y(\SUMB[1][2] ), 
	.B(n19), 
	.A(\ab[1][2] ));
   XNOR2X2M U33 (.Y(\SUMB[1][6] ), 
	.B(n23), 
	.A(\ab[1][6] ));
   XNOR2X2M U34 (.Y(\SUMB[1][5] ), 
	.B(n22), 
	.A(\ab[1][5] ));
   XNOR2X2M U35 (.Y(\SUMB[1][4] ), 
	.B(n21), 
	.A(\ab[1][4] ));
   XNOR2X2M U38 (.Y(\SUMB[1][1] ), 
	.B(n18), 
	.A(\ab[1][1] ));
   INVXLM U44 (.Y(n29), 
	.A(B[2]));
   INVXLM U45 (.Y(n28), 
	.A(B[3]));
   INVXLM U46 (.Y(n27), 
	.A(B[4]));
   INVXLM U47 (.Y(n26), 
	.A(B[5]));
   INVXLM U48 (.Y(n30), 
	.A(B[1]));
   INVXLM U49 (.Y(n25), 
	.A(B[6]));
   INVXLM U50 (.Y(n32), 
	.A(A[7]));
   INVXLM U51 (.Y(n31), 
	.A(B[0]));
   INVXLM U52 (.Y(n24), 
	.A(B[7]));
   NOR2X1M U54 (.Y(\ab[7][7] ), 
	.B(n24), 
	.A(n32));
   NOR2X1M U55 (.Y(\ab[7][6] ), 
	.B(n25), 
	.A(n32));
   NOR2X1M U56 (.Y(\ab[7][5] ), 
	.B(n26), 
	.A(n32));
   NOR2X1M U57 (.Y(\ab[7][4] ), 
	.B(n27), 
	.A(n32));
   NOR2X1M U58 (.Y(\ab[7][3] ), 
	.B(n28), 
	.A(n32));
   NOR2X1M U59 (.Y(\ab[7][2] ), 
	.B(n29), 
	.A(n32));
   NOR2X1M U60 (.Y(\ab[7][1] ), 
	.B(n30), 
	.A(n32));
   NOR2X1M U61 (.Y(\ab[7][0] ), 
	.B(n31), 
	.A(n32));
   NOR2X1M U62 (.Y(\ab[6][7] ), 
	.B(n185), 
	.A(n24));
   NOR2X1M U63 (.Y(\ab[6][6] ), 
	.B(n185), 
	.A(n25));
   NOR2X1M U64 (.Y(\ab[6][5] ), 
	.B(n185), 
	.A(n26));
   NOR2X1M U65 (.Y(\ab[6][4] ), 
	.B(n185), 
	.A(n27));
   NOR2X1M U66 (.Y(\ab[6][3] ), 
	.B(n185), 
	.A(n28));
   NOR2X1M U67 (.Y(\ab[6][2] ), 
	.B(n185), 
	.A(n29));
   NOR2X1M U68 (.Y(\ab[6][1] ), 
	.B(n185), 
	.A(n30));
   NOR2X1M U69 (.Y(\ab[6][0] ), 
	.B(n185), 
	.A(n31));
   NOR2X1M U70 (.Y(\ab[5][7] ), 
	.B(n70), 
	.A(n24));
   NOR2X1M U71 (.Y(\ab[5][6] ), 
	.B(n70), 
	.A(n25));
   NOR2X1M U72 (.Y(\ab[5][5] ), 
	.B(n70), 
	.A(n26));
   NOR2X1M U73 (.Y(\ab[5][4] ), 
	.B(n70), 
	.A(n27));
   NOR2X1M U74 (.Y(\ab[5][3] ), 
	.B(n70), 
	.A(n28));
   NOR2X1M U75 (.Y(\ab[5][2] ), 
	.B(n70), 
	.A(n29));
   NOR2X1M U76 (.Y(\ab[5][1] ), 
	.B(n70), 
	.A(n30));
   NOR2X1M U77 (.Y(\ab[5][0] ), 
	.B(n70), 
	.A(n31));
   NOR2X1M U78 (.Y(\ab[4][7] ), 
	.B(n186), 
	.A(n24));
   NOR2X1M U79 (.Y(\ab[4][6] ), 
	.B(n186), 
	.A(n25));
   NOR2X1M U80 (.Y(\ab[4][5] ), 
	.B(n186), 
	.A(n26));
   NOR2X1M U81 (.Y(\ab[4][4] ), 
	.B(n186), 
	.A(n27));
   NOR2X1M U82 (.Y(\ab[4][3] ), 
	.B(n186), 
	.A(n28));
   NOR2X1M U83 (.Y(\ab[4][2] ), 
	.B(n186), 
	.A(n29));
   NOR2X1M U84 (.Y(\ab[4][1] ), 
	.B(n186), 
	.A(n30));
   NOR2X1M U85 (.Y(\ab[4][0] ), 
	.B(n186), 
	.A(n31));
   NOR2X1M U86 (.Y(\ab[3][7] ), 
	.B(n45), 
	.A(n24));
   NOR2X1M U87 (.Y(\ab[3][6] ), 
	.B(n45), 
	.A(n25));
   NOR2X1M U88 (.Y(\ab[3][5] ), 
	.B(n45), 
	.A(n26));
   NOR2X1M U89 (.Y(\ab[3][4] ), 
	.B(n45), 
	.A(n27));
   NOR2X1M U90 (.Y(\ab[3][3] ), 
	.B(n45), 
	.A(n28));
   NOR2X1M U91 (.Y(\ab[3][2] ), 
	.B(n45), 
	.A(n29));
   NOR2X1M U92 (.Y(\ab[3][1] ), 
	.B(n45), 
	.A(n30));
   NOR2X1M U93 (.Y(\ab[3][0] ), 
	.B(n45), 
	.A(n31));
   NOR2X1M U94 (.Y(\ab[2][7] ), 
	.B(n187), 
	.A(n24));
   NOR2X1M U95 (.Y(\ab[2][6] ), 
	.B(n187), 
	.A(n25));
   NOR2X1M U96 (.Y(\ab[2][5] ), 
	.B(n187), 
	.A(n26));
   NOR2X1M U97 (.Y(\ab[2][4] ), 
	.B(n187), 
	.A(n27));
   NOR2X1M U98 (.Y(\ab[2][3] ), 
	.B(n187), 
	.A(n28));
   NOR2X1M U99 (.Y(\ab[2][2] ), 
	.B(n187), 
	.A(n29));
   NOR2X1M U100 (.Y(\ab[2][1] ), 
	.B(n187), 
	.A(n30));
   NOR2X1M U101 (.Y(\ab[2][0] ), 
	.B(n187), 
	.A(n31));
   NOR2X1M U102 (.Y(\ab[1][7] ), 
	.B(n146), 
	.A(n24));
   NOR2X1M U103 (.Y(\ab[1][6] ), 
	.B(n146), 
	.A(n25));
   NOR2X1M U104 (.Y(\ab[1][5] ), 
	.B(n146), 
	.A(n26));
   NOR2X1M U105 (.Y(\ab[1][4] ), 
	.B(n146), 
	.A(n27));
   NOR2X1M U106 (.Y(\ab[1][3] ), 
	.B(n146), 
	.A(n28));
   NOR2X1M U107 (.Y(\ab[1][2] ), 
	.B(n146), 
	.A(n29));
   NOR2X1M U108 (.Y(\ab[1][1] ), 
	.B(n146), 
	.A(n30));
   NOR2X1M U109 (.Y(\ab[1][0] ), 
	.B(n146), 
	.A(n31));
   NOR2X1M U110 (.Y(\ab[0][7] ), 
	.B(n188), 
	.A(n24));
   NOR2X1M U111 (.Y(\ab[0][6] ), 
	.B(n188), 
	.A(n25));
   NOR2X1M U112 (.Y(\ab[0][5] ), 
	.B(n188), 
	.A(n26));
   NOR2X1M U113 (.Y(\ab[0][4] ), 
	.B(n188), 
	.A(n27));
   NOR2X1M U114 (.Y(\ab[0][3] ), 
	.B(n188), 
	.A(n28));
   NOR2X1M U115 (.Y(\ab[0][2] ), 
	.B(n188), 
	.A(n29));
   NOR2X1M U116 (.Y(\ab[0][1] ), 
	.B(n188), 
	.A(n30));
   NOR2X1M U117 (.Y(PRODUCT[0]), 
	.B(n188), 
	.A(n31));
   Alu_16_DW01_add_1 FS_1 (.A({ 1'b0,
		\A1[12] ,
		\A1[11] ,
		\A1[10] ,
		\A1[9] ,
		\A1[8] ,
		\A1[7] ,
		\A1[6] ,
		\SUMB[7][0] ,
		\A1[4] ,
		\A1[3] ,
		\A1[2] ,
		\A1[1] ,
		\A1[0]  }), 
	.B({ n10,
		n16,
		n13,
		n14,
		n15,
		n11,
		n12,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0,
		1'b0 }), 
	.CI(1'b0), 
	.SUM({ PRODUCT[15],
		PRODUCT[14],
		PRODUCT[13],
		PRODUCT[12],
		PRODUCT[11],
		PRODUCT[10],
		PRODUCT[9],
		PRODUCT[8],
		PRODUCT[7],
		PRODUCT[6],
		PRODUCT[5],
		PRODUCT[4],
		PRODUCT[3],
		PRODUCT[2] }));
endmodule

module Alu_16_DW_div_uns_1 (
	a, 
	b, 
	quotient, 
	remainder, 
	divide_by_0, 
	FE_PT1_n70, 
	n186, 
	FE_PT1_n45, 
	n146, 
	n188, 
	n185, 
	n184);
   input [7:0] a;
   input [7:0] b;
   output [7:0] quotient;
   output [7:0] remainder;
   output divide_by_0;
   input FE_PT1_n70;
   input n186;
   input FE_PT1_n45;
   input n146;
   input n188;
   input n185;
   input n184;

   // Internal wires
   wire FE_RN_293_0;
   wire FE_RN_292_0;
   wire FE_RN_291_0;
   wire FE_RN_290_0;
   wire FE_RN_289_0;
   wire FE_RN_287_0;
   wire FE_RN_286_0;
   wire FE_RN_285_0;
   wire FE_RN_284_0;
   wire FE_RN_283_0;
   wire FE_RN_282_0;
   wire FE_RN_280_0;
   wire FE_RN_279_0;
   wire FE_RN_189_0;
   wire FE_RN_188_0;
   wire FE_RN_187_0;
   wire FE_RN_186_0;
   wire FE_RN_185_0;
   wire FE_RN_184_0;
   wire FE_RN_183_0;
   wire FE_RN_182_0;
   wire FE_RN_181_0;
   wire FE_RN_180_0;
   wire FE_RN_179_0;
   wire FE_RN_159_0;
   wire FE_RN_158_0;
   wire FE_RN_157_0;
   wire FE_RN_154_0;
   wire FE_RN_153_0;
   wire FE_RN_152_0;
   wire FE_RN_151_0;
   wire FE_RN_149_0;
   wire FE_RN_145_0;
   wire FE_RN_144_0;
   wire FE_RN_143_0;
   wire FE_RN_142_0;
   wire FE_RN_141_0;
   wire FE_RN_140_0;
   wire FE_RN_139_0;
   wire FE_RN_138_0;
   wire FE_RN_136_0;
   wire FE_RN_135_0;
   wire FE_RN_134_0;
   wire FE_RN_133_0;
   wire FE_RN_132_0;
   wire FE_RN_131_0;
   wire FE_RN_129_0;
   wire FE_RN_91_0;
   wire FE_RN_90_0;
   wire FE_RN_88_0;
   wire FE_RN_87_0;
   wire FE_RN_86_0;
   wire FE_RN_85_0;
   wire FE_RN_84_0;
   wire FE_RN_83_0;
   wire FE_RN_82_0;
   wire FE_RN_81_0;
   wire FE_RN_80_0;
   wire FE_RN_78_0;
   wire FE_RN_77_0;
   wire FE_RN_75_0;
   wire FE_RN_72_0;
   wire FE_RN_71_0;
   wire FE_RN_70_0;
   wire FE_RN_69_0;
   wire FE_RN_65_0;
   wire FE_RN_64_0;
   wire FE_RN_63_0;
   wire FE_RN_62_0;
   wire FE_RN_61_0;
   wire FE_RN_59_0;
   wire FE_RN_58_0;
   wire FE_RN_55_0;
   wire FE_RN_54_0;
   wire FE_RN_53_0;
   wire FE_RN_52_0;
   wire FE_RN_7_0;
   wire n93;
   wire \u_div/SumTmp[1][1] ;
   wire \u_div/SumTmp[1][2] ;
   wire \u_div/SumTmp[1][5] ;
   wire \u_div/SumTmp[2][0] ;
   wire \u_div/SumTmp[2][1] ;
   wire \u_div/SumTmp[2][2] ;
   wire \u_div/SumTmp[2][3] ;
   wire \u_div/SumTmp[2][4] ;
   wire \u_div/SumTmp[2][5] ;
   wire \u_div/SumTmp[3][1] ;
   wire \u_div/SumTmp[3][2] ;
   wire \u_div/SumTmp[3][3] ;
   wire \u_div/SumTmp[3][4] ;
   wire \u_div/SumTmp[4][1] ;
   wire \u_div/SumTmp[4][2] ;
   wire \u_div/SumTmp[4][3] ;
   wire \u_div/SumTmp[5][1] ;
   wire \u_div/SumTmp[5][2] ;
   wire \u_div/SumTmp[6][0] ;
   wire \u_div/SumTmp[6][1] ;
   wire \u_div/CryTmp[0][1] ;
   wire \u_div/CryTmp[0][2] ;
   wire \u_div/CryTmp[0][3] ;
   wire \u_div/CryTmp[0][4] ;
   wire \u_div/CryTmp[0][5] ;
   wire \u_div/CryTmp[0][6] ;
   wire \u_div/CryTmp[0][7] ;
   wire \u_div/CryTmp[1][1] ;
   wire \u_div/CryTmp[1][2] ;
   wire \u_div/CryTmp[1][3] ;
   wire \u_div/CryTmp[1][4] ;
   wire \u_div/CryTmp[1][5] ;
   wire \u_div/CryTmp[1][6] ;
   wire \u_div/CryTmp[1][7] ;
   wire \u_div/CryTmp[2][1] ;
   wire \u_div/CryTmp[2][2] ;
   wire \u_div/CryTmp[2][3] ;
   wire \u_div/CryTmp[2][4] ;
   wire \u_div/CryTmp[2][5] ;
   wire \u_div/CryTmp[2][6] ;
   wire \u_div/CryTmp[3][1] ;
   wire \u_div/CryTmp[3][2] ;
   wire \u_div/CryTmp[3][3] ;
   wire \u_div/CryTmp[3][4] ;
   wire \u_div/CryTmp[3][5] ;
   wire \u_div/CryTmp[4][1] ;
   wire \u_div/CryTmp[4][3] ;
   wire \u_div/CryTmp[4][4] ;
   wire \u_div/CryTmp[5][1] ;
   wire \u_div/CryTmp[5][2] ;
   wire \u_div/CryTmp[5][3] ;
   wire \u_div/CryTmp[6][1] ;
   wire \u_div/CryTmp[6][2] ;
   wire \u_div/PartRem[1][1] ;
   wire \u_div/PartRem[1][2] ;
   wire \u_div/PartRem[1][3] ;
   wire \u_div/PartRem[1][4] ;
   wire \u_div/PartRem[1][5] ;
   wire \u_div/PartRem[1][6] ;
   wire \u_div/PartRem[1][7] ;
   wire \u_div/PartRem[2][1] ;
   wire \u_div/PartRem[2][2] ;
   wire \u_div/PartRem[2][3] ;
   wire \u_div/PartRem[2][4] ;
   wire \u_div/PartRem[2][5] ;
   wire \u_div/PartRem[2][6] ;
   wire \u_div/PartRem[4][1] ;
   wire \u_div/PartRem[5][1] ;
   wire \u_div/PartRem[6][1] ;
   wire n1;
   wire n3;
   wire n5;
   wire n7;
   wire n8;
   wire n9;
   wire n10;
   wire n11;
   wire n12;
   wire n14;
   wire n15;
   wire n16;
   wire n17;
   wire n18;
   wire n19;
   wire n20;
   wire n21;
   wire n22;
   wire n23;
   wire n24;
   wire n25;
   wire n26;
   wire n27;
   wire n28;
   wire n29;
   wire n30;
   wire n31;
   wire n32;
   wire n33;
   wire n34;
   wire n36;
   wire n37;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n49;
   wire n50;
   wire n53;
   wire n54;
   wire n55;
   wire n56;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n67;
   wire n68;
   wire n69;
   wire n71;
   wire n72;
   wire n73;
   wire n74;
   wire n75;
   wire n76;
   wire n78;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n84;
   wire n85;
   wire n86;
   wire n87;
   wire n88;
   wire n89;
   wire n91;
   wire n92;
   wire [7:0] \u_div/BInv ;

   INVX2M FE_RC_379_0 (.Y(FE_RN_293_0), 
	.A(FE_RN_280_0));
   NAND2X2M FE_RC_378_0 (.Y(FE_RN_292_0), 
	.B(\u_div/CryTmp[3][4] ), 
	.A(FE_RN_283_0));
   NAND2X2M FE_RC_377_0 (.Y(\u_div/CryTmp[3][5] ), 
	.B(FE_RN_293_0), 
	.A(FE_RN_292_0));
   INVX2M FE_RC_376_0 (.Y(FE_RN_291_0), 
	.A(\u_div/CryTmp[3][4] ));
   XOR2X2M FE_RC_375_0 (.Y(FE_RN_290_0), 
	.B(\u_div/BInv [4]), 
	.A(n46));
   INVX2M FE_RC_374_0 (.Y(FE_RN_289_0), 
	.A(FE_RN_283_0));
   OAI21BX1M FE_RC_372_0 (.Y(FE_RN_287_0), 
	.B0N(FE_RN_291_0), 
	.A1(FE_RN_289_0), 
	.A0(FE_RN_280_0));
   OAI2BB1X2M FE_RC_371_0 (.Y(\u_div/SumTmp[3][4] ), 
	.B0(FE_RN_287_0), 
	.A1N(FE_RN_290_0), 
	.A0N(FE_RN_291_0));
   INVX2M FE_RC_370_0 (.Y(FE_RN_286_0), 
	.A(n76));
   INVX2M FE_RC_369_0 (.Y(FE_RN_285_0), 
	.A(\u_div/BInv [4]));
   INVX2M FE_RC_368_0 (.Y(FE_RN_284_0), 
	.A(n46));
   NAND2X2M FE_RC_367_0 (.Y(FE_RN_283_0), 
	.B(FE_RN_285_0), 
	.A(FE_RN_284_0));
   NAND3X2M FE_RC_366_0 (.Y(FE_RN_282_0), 
	.C(FE_RN_286_0), 
	.B(\u_div/CryTmp[3][4] ), 
	.A(FE_RN_283_0));
   AND2X2M FE_RC_364_0 (.Y(FE_RN_280_0), 
	.B(\u_div/BInv [4]), 
	.A(n46));
   CLKNAND2X2M FE_RC_363_0 (.Y(FE_RN_279_0), 
	.B(FE_RN_286_0), 
	.A(FE_RN_280_0));
   NAND2X4M FE_RC_362_0 (.Y(n75), 
	.B(FE_RN_282_0), 
	.A(FE_RN_279_0));
   NAND2X2M FE_RC_254_0 (.Y(FE_RN_189_0), 
	.B(\u_div/CryTmp[4][3] ), 
	.A(FE_RN_179_0));
   NAND2X2M FE_RC_253_0 (.Y(\u_div/CryTmp[4][4] ), 
	.B(FE_RN_183_0), 
	.A(FE_RN_189_0));
   INVX2M FE_RC_252_0 (.Y(FE_RN_188_0), 
	.A(\u_div/CryTmp[4][3] ));
   XOR2X2M FE_RC_251_0 (.Y(FE_RN_187_0), 
	.B(\u_div/BInv [3]), 
	.A(n44));
   NAND2X2M FE_RC_250_0 (.Y(FE_RN_186_0), 
	.B(FE_RN_188_0), 
	.A(FE_RN_187_0));
   CLKNAND2X2M FE_RC_249_0 (.Y(FE_RN_185_0), 
	.B(FE_RN_183_0), 
	.A(FE_RN_179_0));
   CLKNAND2X2M FE_RC_248_0 (.Y(FE_RN_184_0), 
	.B(\u_div/CryTmp[4][3] ), 
	.A(FE_RN_185_0));
   NAND2X2M FE_RC_247_0 (.Y(\u_div/SumTmp[4][3] ), 
	.B(FE_RN_186_0), 
	.A(FE_RN_184_0));
   NAND2X2M FE_RC_246_0 (.Y(FE_RN_183_0), 
	.B(\u_div/BInv [3]), 
	.A(n44));
   INVX2M FE_RC_245_0 (.Y(FE_RN_182_0), 
	.A(FE_RN_183_0));
   INVX2M FE_RC_244_0 (.Y(FE_RN_181_0), 
	.A(\u_div/BInv [3]));
   INVX2M FE_RC_243_0 (.Y(FE_RN_180_0), 
	.A(n44));
   NAND2X4M FE_RC_242_0 (.Y(FE_RN_179_0), 
	.B(FE_RN_181_0), 
	.A(FE_RN_180_0));
   OAI21X4M FE_RC_241_0 (.Y(n73), 
	.B0(FE_RN_179_0), 
	.A1(\u_div/CryTmp[4][3] ), 
	.A0(FE_RN_182_0));
   INVX2M FE_RC_217_0 (.Y(FE_RN_159_0), 
	.A(\u_div/BInv [2]));
   INVX2M FE_RC_216_0 (.Y(FE_RN_158_0), 
	.A(FE_RN_131_0));
   NOR2X2M FE_RC_215_0 (.Y(FE_RN_157_0), 
	.B(FE_RN_159_0), 
	.A(FE_RN_158_0));
   INVX2M FE_RC_212_0 (.Y(FE_RN_154_0), 
	.A(FE_RN_133_0));
   AOI22X1M FE_RC_211_0 (.Y(FE_RN_153_0), 
	.B1(FE_RN_154_0), 
	.B0(\u_div/BInv [2]), 
	.A1(FE_RN_159_0), 
	.A0(FE_RN_158_0));
   OAI2B1X2M FE_RC_210_0 (.Y(FE_RN_152_0), 
	.B0(FE_RN_153_0), 
	.A1N(FE_RN_157_0), 
	.A0(\u_div/PartRem[5][1] ));
   AOI2B1X1M FE_RC_209_0 (.Y(FE_RN_151_0), 
	.B0(FE_RN_152_0), 
	.A1N(\u_div/BInv [2]), 
	.A0(FE_RN_132_0));
   INVX2M FE_RC_207_0 (.Y(FE_RN_149_0), 
	.A(FE_RN_136_0));
   AOI22X1M FE_RC_203_0 (.Y(FE_RN_145_0), 
	.B1(FE_RN_154_0), 
	.B0(FE_RN_159_0), 
	.A1(\u_div/BInv [2]), 
	.A0(FE_RN_158_0));
   OAI2B1X2M FE_RC_202_0 (.Y(FE_RN_144_0), 
	.B0(FE_RN_145_0), 
	.A1N(FE_RN_149_0), 
	.A0(\u_div/PartRem[5][1] ));
   AOI2B1X1M FE_RC_201_0 (.Y(FE_RN_143_0), 
	.B0(FE_RN_144_0), 
	.A1N(FE_RN_159_0), 
	.A0(FE_RN_132_0));
   MXI2X1M FE_RC_200_0 (.Y(\u_div/SumTmp[4][2] ), 
	.S0(n39), 
	.B(FE_RN_143_0), 
	.A(FE_RN_151_0));
   INVX2M FE_RC_199_0 (.Y(FE_RN_142_0), 
	.A(\u_div/CryTmp[4][1] ));
   MXI2X1M FE_RC_198_0 (.Y(FE_RN_141_0), 
	.S0(\u_div/BInv [1]), 
	.B(FE_RN_142_0), 
	.A(\u_div/CryTmp[4][1] ));
   INVX2M FE_RC_197_0 (.Y(FE_RN_140_0), 
	.A(FE_RN_141_0));
   CLKNAND2X2M FE_RC_196_0 (.Y(FE_RN_139_0), 
	.B(FE_RN_133_0), 
	.A(FE_RN_131_0));
   CLKNAND2X2M FE_RC_195_0 (.Y(FE_RN_138_0), 
	.B(\u_div/PartRem[5][1] ), 
	.A(FE_RN_139_0));
   OAI2B1X2M FE_RC_194_0 (.Y(\u_div/SumTmp[4][1] ), 
	.B0(FE_RN_138_0), 
	.A1N(FE_RN_140_0), 
	.A0(\u_div/PartRem[5][1] ));
   CLKNAND2X2M FE_RC_192_0 (.Y(FE_RN_136_0), 
	.B(FE_RN_159_0), 
	.A(FE_RN_131_0));
   OAI21X4M FE_RC_191_0 (.Y(FE_RN_135_0), 
	.B0(n39), 
	.A1(FE_RN_136_0), 
	.A0(FE_RN_132_0));
   INVX2M FE_RC_190_0 (.Y(FE_RN_134_0), 
	.A(\u_div/BInv [1]));
   NAND2BX2M FE_RC_189_0 (.Y(FE_RN_133_0), 
	.B(FE_RN_134_0), 
	.AN(\u_div/CryTmp[4][1] ));
   AND2X6M FE_RC_188_0 (.Y(FE_RN_132_0), 
	.B(\u_div/PartRem[5][1] ), 
	.A(FE_RN_133_0));
   CLKNAND2X2M FE_RC_187_0 (.Y(FE_RN_131_0), 
	.B(\u_div/CryTmp[4][1] ), 
	.A(\u_div/BInv [1]));
   OAI21X4M FE_RC_185_0 (.Y(FE_RN_129_0), 
	.B0(\u_div/BInv [2]), 
	.A1(FE_RN_158_0), 
	.A0(FE_RN_132_0));
   NAND2X4M FE_RC_184_0 (.Y(\u_div/CryTmp[4][3] ), 
	.B(FE_RN_135_0), 
	.A(FE_RN_129_0));
   AO21X2M FE_RC_136_0 (.Y(\u_div/CryTmp[6][2] ), 
	.B0(FE_RN_84_0), 
	.A1(n47), 
	.A0(FE_RN_83_0));
   AOI21X2M FE_RC_135_0 (.Y(FE_RN_91_0), 
	.B0(FE_RN_84_0), 
	.A1(n47), 
	.A0(FE_RN_83_0));
   NOR2X2M FE_RC_134_0 (.Y(quotient[6]), 
	.B(FE_RN_91_0), 
	.A(n65));
   INVX2M FE_RC_133_0 (.Y(FE_RN_90_0), 
	.A(n47));
   AOI2BB1X2M FE_RC_132_0 (.Y(n41), 
	.B0(FE_RN_90_0), 
	.A1N(n65), 
	.A0N(FE_RN_82_0));
   MXI2X1M FE_RC_130_0 (.Y(FE_RN_88_0), 
	.S0(FE_RN_159_0), 
	.B(n41), 
	.A(FE_RN_86_0));
   OAI21BX1M FE_RC_129_0 (.Y(FE_RN_87_0), 
	.B0N(FE_RN_84_0), 
	.A1(\u_div/BInv [1]), 
	.A0(\u_div/CryTmp[6][1] ));
   OAI21X2M FE_RC_128_0 (.Y(FE_RN_86_0), 
	.B0(n47), 
	.A1(n65), 
	.A0(FE_RN_87_0));
   MXI2X1M FE_RC_127_0 (.Y(FE_RN_85_0), 
	.S0(\u_div/BInv [2]), 
	.B(n41), 
	.A(FE_RN_86_0));
   MXI2X1M FE_RC_126_0 (.Y(\u_div/SumTmp[5][2] ), 
	.S0(\u_div/CryTmp[5][2] ), 
	.B(FE_RN_85_0), 
	.A(FE_RN_88_0));
   AND2X2M FE_RC_125_0 (.Y(FE_RN_84_0), 
	.B(\u_div/BInv [1]), 
	.A(\u_div/CryTmp[6][1] ));
   OR2X2M FE_RC_124_0 (.Y(FE_RN_83_0), 
	.B(\u_div/BInv [1]), 
	.A(\u_div/CryTmp[6][1] ));
   NAND2BX2M FE_RC_123_0 (.Y(FE_RN_82_0), 
	.B(FE_RN_83_0), 
	.AN(FE_RN_84_0));
   AOI21X2M FE_RC_122_0 (.Y(FE_RN_81_0), 
	.B0(\u_div/BInv [2]), 
	.A1(n47), 
	.A0(FE_RN_82_0));
   OAI2BB1X2M FE_RC_121_0 (.Y(FE_RN_80_0), 
	.B0(FE_RN_81_0), 
	.A1N(n47), 
	.A0N(n65));
   NAND2BX2M FE_RC_119_0 (.Y(FE_RN_78_0), 
	.B(n41), 
	.AN(FE_RN_159_0));
   OAI2BB1X4M FE_RC_118_0 (.Y(\u_div/CryTmp[5][3] ), 
	.B0(FE_RN_78_0), 
	.A1N(\u_div/CryTmp[5][2] ), 
	.A0N(FE_RN_80_0));
   INVX2M FE_RC_117_0 (.Y(FE_RN_77_0), 
	.A(\u_div/SumTmp[6][0] ));
   MXI2X1M FE_RC_115_0 (.Y(\u_div/PartRem[6][1] ), 
	.S0(n63), 
	.B(n185), 
	.A(FE_RN_77_0));
   INVX2M FE_RC_114_0 (.Y(FE_RN_75_0), 
	.A(\u_div/CryTmp[5][1] ));
   NAND2BX2M FE_RC_111_0 (.Y(FE_RN_72_0), 
	.B(\u_div/SumTmp[6][0] ), 
	.AN(\u_div/BInv [1]));
   OAI21X2M FE_RC_110_0 (.Y(FE_RN_71_0), 
	.B0(FE_RN_72_0), 
	.A1(FE_RN_134_0), 
	.A0(\u_div/SumTmp[6][0] ));
   NOR2X2M FE_RC_109_0 (.Y(FE_RN_70_0), 
	.B(FE_RN_75_0), 
	.A(FE_RN_71_0));
   AOI21X2M FE_RC_108_0 (.Y(FE_RN_69_0), 
	.B0(FE_RN_70_0), 
	.A1(FE_RN_75_0), 
	.A0(FE_RN_71_0));
   CLKNAND2X2M FE_RC_104_0 (.Y(FE_RN_65_0), 
	.B(\u_div/BInv [1]), 
	.A(n185));
   OAI21X2M FE_RC_103_0 (.Y(FE_RN_64_0), 
	.B0(FE_RN_65_0), 
	.A1(\u_div/BInv [1]), 
	.A0(n185));
   INVX2M FE_RC_102_0 (.Y(FE_RN_63_0), 
	.A(FE_RN_64_0));
   AOI22X1M FE_RC_101_0 (.Y(FE_RN_62_0), 
	.B1(FE_RN_63_0), 
	.B0(\u_div/CryTmp[5][1] ), 
	.A1(FE_RN_75_0), 
	.A0(FE_RN_64_0));
   MXI2X1M FE_RC_100_0 (.Y(\u_div/SumTmp[5][1] ), 
	.S0(n63), 
	.B(FE_RN_62_0), 
	.A(FE_RN_69_0));
   CLKNAND2X2M FE_RC_99_0 (.Y(FE_RN_61_0), 
	.B(\u_div/CryTmp[5][1] ), 
	.A(\u_div/BInv [1]));
   NAND3BX4M FE_RC_97_0 (.Y(FE_RN_59_0), 
	.C(FE_RN_55_0), 
	.B(n63), 
	.AN(n185));
   INVX2M FE_RC_96_0 (.Y(FE_RN_58_0), 
	.A(n63));
   NAND2BX2M FE_RC_93_0 (.Y(FE_RN_55_0), 
	.B(FE_RN_134_0), 
	.AN(\u_div/CryTmp[5][1] ));
   INVX2M FE_RC_92_0 (.Y(FE_RN_54_0), 
	.A(FE_RN_55_0));
   NOR2X2M FE_RC_91_0 (.Y(FE_RN_53_0), 
	.B(FE_RN_77_0), 
	.A(FE_RN_54_0));
   NAND2X2M FE_RC_90_0 (.Y(FE_RN_52_0), 
	.B(FE_RN_58_0), 
	.A(FE_RN_53_0));
   NAND3X4M FE_RC_89_0 (.Y(\u_div/CryTmp[5][2] ), 
	.C(FE_RN_61_0), 
	.B(FE_RN_59_0), 
	.A(FE_RN_52_0));
   CLKINVX2M FE_RC_33_0 (.Y(n85), 
	.A(n68));
   INVX2M FE_RC_32_0 (.Y(FE_RN_7_0), 
	.A(n84));
   NOR2X4M FE_RC_31_0 (.Y(quotient[7]), 
	.B(n68), 
	.A(FE_RN_7_0));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_6  (.CO(\u_div/CryTmp[0][7] ), 
	.CI(\u_div/CryTmp[0][6] ), 
	.B(n18), 
	.A(\u_div/PartRem[1][6] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_7  (.CO(quotient[0]), 
	.CI(\u_div/CryTmp[0][7] ), 
	.B(\u_div/BInv [7]), 
	.A(\u_div/PartRem[1][7] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_1  (.CO(\u_div/CryTmp[0][2] ), 
	.CI(\u_div/PartRem[1][1] ), 
	.B(\u_div/CryTmp[0][1] ), 
	.A(\u_div/BInv [1]));
   ADDFHX4M \u_div/u_fa_PartRem_0_1_5  (.S(\u_div/SumTmp[1][5] ), 
	.CO(\u_div/CryTmp[1][6] ), 
	.CI(\u_div/CryTmp[1][5] ), 
	.B(\u_div/BInv [5]), 
	.A(\u_div/PartRem[2][5] ));
   ADDFHX2M \u_div/u_fa_PartRem_0_0_3  (.CO(\u_div/CryTmp[0][4] ), 
	.CI(\u_div/CryTmp[0][3] ), 
	.B(\u_div/BInv [3]), 
	.A(\u_div/PartRem[1][3] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_4  (.CO(\u_div/CryTmp[0][5] ), 
	.CI(\u_div/CryTmp[0][4] ), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[1][4] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_5  (.CO(\u_div/CryTmp[0][6] ), 
	.CI(\u_div/CryTmp[0][5] ), 
	.B(\u_div/BInv [5]), 
	.A(\u_div/PartRem[1][5] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_1_1  (.S(\u_div/SumTmp[1][1] ), 
	.CO(\u_div/CryTmp[1][2] ), 
	.CI(\u_div/CryTmp[1][1] ), 
	.B(\u_div/PartRem[2][1] ), 
	.A(\u_div/BInv [1]));
   ADDFHX4M \u_div/u_fa_PartRem_0_1_2  (.S(\u_div/SumTmp[1][2] ), 
	.CO(\u_div/CryTmp[1][3] ), 
	.CI(\u_div/CryTmp[1][2] ), 
	.B(\u_div/BInv [2]), 
	.A(\u_div/PartRem[2][2] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_0_2  (.CO(\u_div/CryTmp[0][3] ), 
	.CI(\u_div/CryTmp[0][2] ), 
	.B(\u_div/BInv [2]), 
	.A(\u_div/PartRem[1][2] ));
   ADDFHX4M \u_div/u_fa_PartRem_0_3_3  (.S(\u_div/SumTmp[3][3] ), 
	.CO(\u_div/CryTmp[3][4] ), 
	.CI(\u_div/CryTmp[3][3] ), 
	.B(\u_div/BInv [3]), 
	.A(n45));
   ADDFHX4M \u_div/u_fa_PartRem_0_3_1  (.S(\u_div/SumTmp[3][1] ), 
	.CO(\u_div/CryTmp[3][2] ), 
	.CI(\u_div/CryTmp[3][1] ), 
	.B(\u_div/PartRem[4][1] ), 
	.A(\u_div/BInv [1]));
   ADDFHX4M \u_div/u_fa_PartRem_0_2_1  (.S(\u_div/SumTmp[2][1] ), 
	.CO(\u_div/CryTmp[2][2] ), 
	.CI(\u_div/CryTmp[2][1] ), 
	.B(\u_div/BInv [1]), 
	.A(n1));
   ADDFHX4M \u_div/u_fa_PartRem_0_2_4  (.S(\u_div/SumTmp[2][4] ), 
	.CO(\u_div/CryTmp[2][5] ), 
	.CI(\u_div/CryTmp[2][4] ), 
	.B(\u_div/BInv [4]), 
	.A(n43));
   ADDFHX4M \u_div/u_fa_PartRem_0_2_5  (.S(\u_div/SumTmp[2][5] ), 
	.CO(\u_div/CryTmp[2][6] ), 
	.CI(\u_div/CryTmp[2][5] ), 
	.B(\u_div/BInv [5]), 
	.A(n42));
   ADDFHX2M \u_div/u_fa_PartRem_0_2_3  (.S(\u_div/SumTmp[2][3] ), 
	.CO(\u_div/CryTmp[2][4] ), 
	.CI(\u_div/CryTmp[2][3] ), 
	.B(\u_div/BInv [3]), 
	.A(n40));
   INVX4M U1 (.Y(\u_div/BInv [2]), 
	.A(b[2]));
   INVX4M U2 (.Y(n81), 
	.A(\u_div/CryTmp[2][6] ));
   NAND2X2M U3 (.Y(n29), 
	.B(\u_div/BInv [2]), 
	.A(n55));
   CLKINVX6M U4 (.Y(\u_div/PartRem[2][2] ), 
	.A(n60));
   NOR2X2M U5 (.Y(n79), 
	.B(n81), 
	.A(n80));
   CLKINVX6M U6 (.Y(n89), 
	.A(n80));
   NAND2X6M U7 (.Y(n80), 
	.B(\u_div/BInv [7]), 
	.A(n18));
   NAND2X3M U8 (.Y(n20), 
	.B(\u_div/CryTmp[1][3] ), 
	.A(\u_div/PartRem[2][3] ));
   NAND2X4M U9 (.Y(n21), 
	.B(\u_div/CryTmp[1][3] ), 
	.A(\u_div/BInv [3]));
   XNOR3XLM U10 (.Y(n9), 
	.C(\u_div/CryTmp[1][3] ), 
	.B(\u_div/BInv [3]), 
	.A(\u_div/PartRem[2][3] ));
   CLKINVX12M U11 (.Y(\u_div/BInv [7]), 
	.A(b[7]));
   NAND2X4M U12 (.Y(n72), 
	.B(n89), 
	.A(n88));
   NAND2BX2M U13 (.Y(n92), 
	.B(\u_div/CryTmp[1][7] ), 
	.AN(b[7]));
   NAND3X6M U16 (.Y(\u_div/CryTmp[1][4] ), 
	.C(n21), 
	.B(n20), 
	.A(n19));
   MXI2X6M U17 (.Y(n1), 
	.S0(n75), 
	.B(n3), 
	.A(FE_PT1_n45));
   MXI2X2M U19 (.Y(n60), 
	.S0(n93), 
	.B(\u_div/SumTmp[2][1] ), 
	.A(n1));
   MXI2X4M U20 (.Y(\u_div/PartRem[1][2] ), 
	.S0(quotient[1]), 
	.B(n78), 
	.A(n61));
   INVX6M U21 (.Y(quotient[1]), 
	.A(n92));
   INVX4M U22 (.Y(\u_div/PartRem[2][1] ), 
	.A(n61));
   MXI2X3M U23 (.Y(n61), 
	.S0(n79), 
	.B(\u_div/SumTmp[2][0] ), 
	.A(a[2]));
   CLKNAND2X2M U24 (.Y(n31), 
	.B(n53), 
	.A(\u_div/CryTmp[2][2] ));
   XOR2XLM U26 (.Y(n3), 
	.B(a[3]), 
	.A(\u_div/BInv [0]));
   NOR2X4M U27 (.Y(n71), 
	.B(n73), 
	.A(n72));
   INVX2M U28 (.Y(n37), 
	.A(\u_div/SumTmp[4][1] ));
   CLKNAND2X2M U29 (.Y(n28), 
	.B(\u_div/BInv [2]), 
	.A(\u_div/CryTmp[3][2] ));
   CLKNAND2X2M U30 (.Y(n16), 
	.B(n18), 
	.A(\u_div/CryTmp[1][6] ));
   CLKNAND2X2M U31 (.Y(n15), 
	.B(\u_div/PartRem[2][6] ), 
	.A(\u_div/CryTmp[1][6] ));
   NAND2X4M U32 (.Y(n68), 
	.B(\u_div/BInv [3]), 
	.A(n87));
   NAND3X2M U33 (.Y(\u_div/CryTmp[2][3] ), 
	.C(n31), 
	.B(n32), 
	.A(n33));
   CLKNAND2X2M U34 (.Y(n32), 
	.B(\u_div/BInv [2]), 
	.A(\u_div/CryTmp[2][2] ));
   CLKNAND2X4M U35 (.Y(n25), 
	.B(\u_div/CryTmp[1][4] ), 
	.A(\u_div/BInv [4]));
   CLKNAND2X2M U36 (.Y(n24), 
	.B(\u_div/CryTmp[1][4] ), 
	.A(\u_div/PartRem[2][4] ));
   INVX2M U37 (.Y(\u_div/PartRem[2][6] ), 
	.A(n56));
   NAND3X2M U38 (.Y(\u_div/CryTmp[3][3] ), 
	.C(n27), 
	.B(n28), 
	.A(n29));
   CLKNAND2X2M U39 (.Y(n27), 
	.B(n55), 
	.A(\u_div/CryTmp[3][2] ));
   NOR2X2M U40 (.Y(n88), 
	.B(b[4]), 
	.A(b[5]));
   MX2X2M U41 (.Y(n44), 
	.S0(quotient[5]), 
	.B(\u_div/SumTmp[5][2] ), 
	.A(n41));
   CLKINVX6M U42 (.Y(\u_div/BInv [3]), 
	.A(b[3]));
   INVX4M U43 (.Y(n87), 
	.A(n72));
   CLKMX2X2M U46 (.Y(n53), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   INVX6M U48 (.Y(\u_div/BInv [0]), 
	.A(b[0]));
   OR2X2M U49 (.Y(n5), 
	.B(b[1]), 
	.A(b[2]));
   CLKINVX12M U50 (.Y(n18), 
	.A(b[6]));
   AND2X2M U51 (.Y(quotient[3]), 
	.B(FE_RN_286_0), 
	.A(\u_div/CryTmp[3][5] ));
   XNOR2X1M U53 (.Y(n7), 
	.B(\u_div/CryTmp[1][6] ), 
	.A(n14));
   XNOR2X1M U54 (.Y(n8), 
	.B(\u_div/CryTmp[1][4] ), 
	.A(n22));
   NOR2X2M U55 (.Y(n10), 
	.B(a[7]), 
	.A(\u_div/BInv [0]));
   CLKXOR2X2M U56 (.Y(n11), 
	.B(a[5]), 
	.A(\u_div/BInv [0]));
   CLKXOR2X2M U57 (.Y(n12), 
	.B(a[4]), 
	.A(\u_div/BInv [0]));
   OR2X2M U58 (.Y(\u_div/CryTmp[6][1] ), 
	.B(a[6]), 
	.A(\u_div/BInv [0]));
   XNOR2X1M U59 (.Y(\u_div/SumTmp[6][0] ), 
	.B(a[6]), 
	.A(\u_div/BInv [0]));
   OR2X1M U60 (.Y(\u_div/CryTmp[5][1] ), 
	.B(a[5]), 
	.A(\u_div/BInv [0]));
   OR2X1M U61 (.Y(\u_div/CryTmp[4][1] ), 
	.B(a[4]), 
	.A(\u_div/BInv [0]));
   OR2X1M U62 (.Y(\u_div/CryTmp[3][1] ), 
	.B(a[3]), 
	.A(\u_div/BInv [0]));
   MXI2X4M U63 (.Y(\u_div/PartRem[1][1] ), 
	.S0(n82), 
	.B(n50), 
	.A(n146));
   INVX2M U64 (.Y(quotient[2]), 
	.A(n91));
   INVX2M U65 (.Y(n93), 
	.A(n91));
   NAND2BX2M U66 (.Y(n91), 
	.B(n89), 
	.AN(n81));
   MXI2X1M U67 (.Y(n58), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][3] ), 
	.A(n40));
   NAND2BX2M U68 (.Y(n86), 
	.B(n85), 
	.AN(n69));
   NAND2XLM U69 (.Y(n65), 
	.B(\u_div/BInv [2]), 
	.A(n85));
   XOR2XLM U71 (.Y(n14), 
	.B(\u_div/PartRem[2][6] ), 
	.A(n18));
   NAND2X2M U72 (.Y(n17), 
	.B(n18), 
	.A(\u_div/PartRem[2][6] ));
   NAND3X4M U73 (.Y(\u_div/CryTmp[1][7] ), 
	.C(n15), 
	.B(n16), 
	.A(n17));
   NAND2X2M U74 (.Y(n19), 
	.B(\u_div/BInv [3]), 
	.A(\u_div/PartRem[2][3] ));
   XOR2XLM U75 (.Y(n22), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[2][4] ));
   NAND2X2M U76 (.Y(n23), 
	.B(\u_div/BInv [4]), 
	.A(\u_div/PartRem[2][4] ));
   NAND3X4M U77 (.Y(\u_div/CryTmp[1][5] ), 
	.C(n25), 
	.B(n24), 
	.A(n23));
   XOR2XLM U78 (.Y(n26), 
	.B(n55), 
	.A(\u_div/BInv [2]));
   XOR2XLM U79 (.Y(\u_div/SumTmp[3][2] ), 
	.B(\u_div/CryTmp[3][2] ), 
	.A(n26));
   XOR2XLM U80 (.Y(n30), 
	.B(n53), 
	.A(\u_div/BInv [2]));
   XOR2XLM U81 (.Y(\u_div/SumTmp[2][2] ), 
	.B(\u_div/CryTmp[2][2] ), 
	.A(n30));
   NAND2X2M U82 (.Y(n33), 
	.B(\u_div/BInv [2]), 
	.A(n53));
   INVXLM U83 (.Y(n34), 
	.A(n85));
   MXI2X1M U84 (.Y(n55), 
	.S0(quotient[4]), 
	.B(n37), 
	.A(n36));
   NOR2BX4M U85 (.Y(n82), 
	.B(b[7]), 
	.AN(\u_div/CryTmp[1][7] ));
   NAND2X4M U86 (.Y(n63), 
	.B(n64), 
	.A(\u_div/CryTmp[6][2] ));
   MX2X1M U87 (.Y(n40), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][2] ), 
	.A(n55));
   MX2X2M U88 (.Y(n45), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][2] ), 
	.A(n39));
   MX2XLM U89 (.Y(n46), 
	.S0(quotient[4]), 
	.B(\u_div/SumTmp[4][3] ), 
	.A(n44));
   MX2X2M U90 (.Y(n39), 
	.S0(n86), 
	.B(\u_div/PartRem[6][1] ), 
	.A(\u_div/SumTmp[5][1] ));
   INVX4M U91 (.Y(n69), 
	.A(\u_div/CryTmp[5][3] ));
   INVX2M U93 (.Y(quotient[5]), 
	.A(n86));
   MXI2X6M U95 (.Y(\u_div/PartRem[5][1] ), 
	.S0(n67), 
	.B(n11), 
	.A(FE_PT1_n70));
   NOR2X4M U96 (.Y(n67), 
	.B(n34), 
	.A(n69));
   MXI2X6M U97 (.Y(\u_div/PartRem[4][1] ), 
	.S0(n71), 
	.B(n12), 
	.A(n186));
   MXI2X4M U98 (.Y(n47), 
	.S0(quotient[7]), 
	.B(n49), 
	.A(n184));
   INVX2M U99 (.Y(n64), 
	.A(n65));
   NOR2X2M U100 (.Y(n84), 
	.B(n10), 
	.A(n5));
   AND2X2M U101 (.Y(quotient[4]), 
	.B(n87), 
	.A(\u_div/CryTmp[4][4] ));
   INVXLM U102 (.Y(n36), 
	.A(\u_div/PartRem[5][1] ));
   XOR2XLM U104 (.Y(n49), 
	.B(a[7]), 
	.A(\u_div/BInv [0]));
   OR2X2M U105 (.Y(\u_div/CryTmp[2][1] ), 
	.B(a[2]), 
	.A(\u_div/BInv [0]));
   MXI2X1M U106 (.Y(n59), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][2] ), 
	.A(n54));
   CLKINVX2M U108 (.Y(n78), 
	.A(\u_div/SumTmp[1][1] ));
   INVX2M U109 (.Y(\u_div/PartRem[2][3] ), 
	.A(n59));
   MXI2XLM U110 (.Y(n57), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][4] ), 
	.A(n43));
   MXI2XLM U111 (.Y(n56), 
	.S0(quotient[2]), 
	.B(\u_div/SumTmp[2][5] ), 
	.A(n42));
   MX2XLM U112 (.Y(n42), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][4] ), 
	.A(n46));
   MX2XLM U113 (.Y(n43), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][3] ), 
	.A(n45));
   INVX2M U114 (.Y(n62), 
	.A(\u_div/SumTmp[1][5] ));
   MXI2XLM U116 (.Y(\u_div/PartRem[1][4] ), 
	.S0(quotient[1]), 
	.B(n9), 
	.A(n59));
   NAND2X2M U118 (.Y(\u_div/CryTmp[0][1] ), 
	.B(n188), 
	.A(b[0]));
   XNOR2X2M U120 (.Y(\u_div/SumTmp[2][0] ), 
	.B(a[2]), 
	.A(\u_div/BInv [0]));
   INVX2M U121 (.Y(\u_div/PartRem[2][4] ), 
	.A(n58));
   INVX2M U122 (.Y(\u_div/PartRem[2][5] ), 
	.A(n57));
   MXI2XLM U123 (.Y(\u_div/PartRem[1][5] ), 
	.S0(quotient[1]), 
	.B(n8), 
	.A(n58));
   MXI2XLM U124 (.Y(\u_div/PartRem[1][3] ), 
	.S0(quotient[1]), 
	.B(n74), 
	.A(n60));
   INVX2M U125 (.Y(n74), 
	.A(\u_div/SumTmp[1][2] ));
   NAND2X2M U126 (.Y(\u_div/CryTmp[1][1] ), 
	.B(n146), 
	.A(b[0]));
   NAND2XLM U128 (.Y(n76), 
	.B(\u_div/BInv [5]), 
	.A(n89));
   CLKXOR2X2M U129 (.Y(n50), 
	.B(a[1]), 
	.A(\u_div/BInv [0]));
   INVX4M U130 (.Y(\u_div/BInv [1]), 
	.A(b[1]));
   INVX2M U131 (.Y(\u_div/BInv [4]), 
	.A(b[4]));
   INVX1M U132 (.Y(\u_div/BInv [5]), 
	.A(b[5]));
   MX2XLM U133 (.Y(n54), 
	.S0(quotient[3]), 
	.B(\u_div/SumTmp[3][1] ), 
	.A(\u_div/PartRem[4][1] ));
   MXI2XLM U134 (.Y(\u_div/PartRem[1][6] ), 
	.S0(quotient[1]), 
	.B(n62), 
	.A(n57));
   MXI2XLM U135 (.Y(\u_div/PartRem[1][7] ), 
	.S0(quotient[1]), 
	.B(n7), 
	.A(n56));
endmodule

module Alu_16_test_1 (
	A, 
	B, 
	Alu_Fun, 
	ALU_EN, 
	clk, 
	Alu_Rst, 
	Out_VLD, 
	Alu_Out, 
	test_si, 
	test_se, 
	FE_OFN4_REF_SYNC_RST_M);
   input [7:0] A;
   input [7:0] B;
   input [3:0] Alu_Fun;
   input ALU_EN;
   input clk;
   input Alu_Rst;
   output Out_VLD;
   output [15:0] Alu_Out;
   input test_si;
   input test_se;
   input FE_OFN4_REF_SYNC_RST_M;

   // Internal wires
   wire Out_VLD_Comb;
   wire N91;
   wire N92;
   wire N93;
   wire N94;
   wire N95;
   wire N96;
   wire N97;
   wire N98;
   wire N99;
   wire N100;
   wire N101;
   wire N102;
   wire N103;
   wire N104;
   wire N105;
   wire N106;
   wire N107;
   wire N108;
   wire N109;
   wire N110;
   wire N111;
   wire N112;
   wire N113;
   wire N114;
   wire N115;
   wire N116;
   wire N117;
   wire N118;
   wire N119;
   wire N120;
   wire N121;
   wire N122;
   wire N123;
   wire N124;
   wire N125;
   wire N126;
   wire N127;
   wire N128;
   wire N129;
   wire N130;
   wire N131;
   wire N132;
   wire N159;
   wire n51;
   wire n52;
   wire n53;
   wire n57;
   wire n58;
   wire n59;
   wire n60;
   wire n61;
   wire n62;
   wire n63;
   wire n64;
   wire n65;
   wire n66;
   wire n67;
   wire n68;
   wire n69;
   wire n71;
   wire n75;
   wire n76;
   wire n77;
   wire n78;
   wire n83;
   wire n84;
   wire n85;
   wire n89;
   wire n90;
   wire n91;
   wire n95;
   wire n96;
   wire n97;
   wire n101;
   wire n102;
   wire n103;
   wire n107;
   wire n108;
   wire n109;
   wire n112;
   wire n113;
   wire n114;
   wire n115;
   wire n116;
   wire n117;
   wire n118;
   wire n119;
   wire n128;
   wire n130;
   wire n131;
   wire n3;
   wire n4;
   wire n5;
   wire n6;
   wire n7;
   wire n35;
   wire n36;
   wire n37;
   wire n38;
   wire n39;
   wire n40;
   wire n41;
   wire n42;
   wire n43;
   wire n44;
   wire n45;
   wire n46;
   wire n47;
   wire n48;
   wire n49;
   wire n50;
   wire n54;
   wire n55;
   wire n56;
   wire n70;
   wire n72;
   wire n73;
   wire n74;
   wire n79;
   wire n80;
   wire n81;
   wire n82;
   wire n86;
   wire n87;
   wire n88;
   wire n92;
   wire n93;
   wire n94;
   wire n98;
   wire n99;
   wire n100;
   wire n104;
   wire n105;
   wire n106;
   wire n110;
   wire n111;
   wire n120;
   wire n121;
   wire n122;
   wire n123;
   wire n124;
   wire n125;
   wire n126;
   wire n127;
   wire n129;
   wire n132;
   wire n133;
   wire n134;
   wire n135;
   wire n136;
   wire n137;
   wire n138;
   wire n139;
   wire n140;
   wire n141;
   wire n142;
   wire n143;
   wire n144;
   wire n145;
   wire n146;
   wire n147;
   wire n148;
   wire n149;
   wire n150;
   wire n151;
   wire n152;
   wire n153;
   wire n154;
   wire n155;
   wire n156;
   wire n157;
   wire n158;
   wire n159;
   wire n160;
   wire n161;
   wire n162;
   wire n163;
   wire n164;
   wire n165;
   wire n166;
   wire n167;
   wire n168;
   wire n169;
   wire n170;
   wire n171;
   wire n172;
   wire n173;
   wire n174;
   wire n175;
   wire n176;
   wire n177;
   wire n178;
   wire n179;
   wire n180;
   wire n181;
   wire n182;
   wire n183;
   wire n184;
   wire n185;
   wire n186;
   wire n187;
   wire n188;
   wire n189;
   wire n190;
   wire n191;
   wire [15:0] ALU_OUT_FF;

   SDFFRQX2M \Alu_Out_reg[7]  (.SI(Alu_Out[6]), 
	.SE(test_se), 
	.RN(Alu_Rst), 
	.Q(Alu_Out[7]), 
	.D(ALU_OUT_FF[7]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[6]  (.SI(Alu_Out[5]), 
	.SE(test_se), 
	.RN(Alu_Rst), 
	.Q(Alu_Out[6]), 
	.D(ALU_OUT_FF[6]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[5]  (.SI(Alu_Out[4]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[5]), 
	.D(ALU_OUT_FF[5]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[4]  (.SI(Alu_Out[3]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[4]), 
	.D(ALU_OUT_FF[4]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[3]  (.SI(Alu_Out[2]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[3]), 
	.D(ALU_OUT_FF[3]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[2]  (.SI(Alu_Out[1]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[2]), 
	.D(ALU_OUT_FF[2]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[15]  (.SI(Alu_Out[14]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[15]), 
	.D(ALU_OUT_FF[15]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[14]  (.SI(Alu_Out[13]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[14]), 
	.D(ALU_OUT_FF[14]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[13]  (.SI(Alu_Out[12]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[13]), 
	.D(ALU_OUT_FF[13]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[12]  (.SI(Alu_Out[11]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[12]), 
	.D(ALU_OUT_FF[12]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[11]  (.SI(Alu_Out[10]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[11]), 
	.D(ALU_OUT_FF[11]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[10]  (.SI(Alu_Out[9]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[10]), 
	.D(ALU_OUT_FF[10]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[9]  (.SI(Alu_Out[8]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[9]), 
	.D(ALU_OUT_FF[9]), 
	.CK(clk));
   SDFFRQX2M \Alu_Out_reg[8]  (.SI(Alu_Out[7]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[8]), 
	.D(ALU_OUT_FF[8]), 
	.CK(clk));
   SDFFRQX2M Out_VLD_reg (.SI(Alu_Out[15]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Out_VLD), 
	.D(Out_VLD_Comb), 
	.CK(clk));
   SDFFRQX1M \Alu_Out_reg[1]  (.SI(Alu_Out[0]), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[1]), 
	.D(ALU_OUT_FF[1]), 
	.CK(clk));
   SDFFRHQX1M \Alu_Out_reg[0]  (.SI(test_si), 
	.SE(test_se), 
	.RN(FE_OFN4_REF_SYNC_RST_M), 
	.Q(Alu_Out[0]), 
	.D(ALU_OUT_FF[0]), 
	.CK(clk));
   AND2X2M U7 (.Y(n104), 
	.B(n57), 
	.A(n100));
   MX2X2M U23 (.Y(n98), 
	.S0(A[0]), 
	.B(n140), 
	.A(n142));
   OR2X2M U26 (.Y(n3), 
	.B(n178), 
	.A(N159));
   NOR2X4M U29 (.Y(n135), 
	.B(n99), 
	.A(N125));
   AOI21X1M U30 (.Y(n37), 
	.B0(n36), 
	.A1(n6), 
	.A0(N110));
   AOI21XLM U31 (.Y(n149), 
	.B0(B[1]), 
	.A1(n146), 
	.A0(n148));
   INVX2M U32 (.Y(n140), 
	.A(n57));
   INVX2M U33 (.Y(n142), 
	.A(n59));
   INVX2M U34 (.Y(n190), 
	.A(n63));
   INVX2M U35 (.Y(n87), 
	.A(n124));
   INVX2M U36 (.Y(n191), 
	.A(n71));
   OAI2BB1X2M U37 (.Y(ALU_OUT_FF[14]), 
	.B0(n66), 
	.A1N(n65), 
	.A0N(N123));
   OAI2BB1X2M U38 (.Y(ALU_OUT_FF[15]), 
	.B0(n66), 
	.A1N(n65), 
	.A0N(N124));
   OAI2BB1X2M U39 (.Y(ALU_OUT_FF[11]), 
	.B0(n66), 
	.A1N(n65), 
	.A0N(N120));
   OAI2BB1X2M U40 (.Y(ALU_OUT_FF[12]), 
	.B0(n66), 
	.A1N(n65), 
	.A0N(N121));
   OAI2BB1X2M U41 (.Y(ALU_OUT_FF[13]), 
	.B0(n66), 
	.A1N(n65), 
	.A0N(N122));
   OAI2BB1X2M U42 (.Y(ALU_OUT_FF[9]), 
	.B0(n66), 
	.A1N(n65), 
	.A0N(N118));
   OAI2BB1X2M U43 (.Y(ALU_OUT_FF[10]), 
	.B0(n66), 
	.A1N(n65), 
	.A0N(N119));
   NAND2BX2M U44 (.Y(n59), 
	.B(n116), 
	.AN(n136));
   NAND2X2M U45 (.Y(n63), 
	.B(n131), 
	.A(n115));
   OR2X2M U46 (.Y(n62), 
	.B(n106), 
	.A(n94));
   NAND2X2M U47 (.Y(n78), 
	.B(n130), 
	.A(n58));
   OR2X2M U48 (.Y(n57), 
	.B(n94), 
	.A(n137));
   NAND2X2M U49 (.Y(n58), 
	.B(n143), 
	.A(n141));
   INVX2M U50 (.Y(n143), 
	.A(n136));
   OAI2BB1X2M U52 (.Y(n61), 
	.B0(n130), 
	.A1N(n116), 
	.A0N(n144));
   INVX2M U53 (.Y(n144), 
	.A(n137));
   INVX2M U54 (.Y(n106), 
	.A(n115));
   INVX2M U55 (.Y(n141), 
	.A(n94));
   NAND2X2M U56 (.Y(n71), 
	.B(n116), 
	.A(n115));
   NAND3X2M U57 (.Y(n60), 
	.C(n64), 
	.B(n63), 
	.A(n62));
   OR2X2M U58 (.Y(n124), 
	.B(n138), 
	.A(n137));
   NOR2X2M U59 (.Y(n4), 
	.B(n137), 
	.A(n35));
   INVX2M U60 (.Y(n145), 
	.A(n138));
   AOI21X2M U61 (.Y(Out_VLD_Comb), 
	.B0(n189), 
	.A1(n52), 
	.A0(n51));
   NOR4X1M U62 (.Y(n52), 
	.D(n145), 
	.C(n5), 
	.B(n4), 
	.A(n53));
   NOR3X2M U63 (.Y(n51), 
	.C(n61), 
	.B(n191), 
	.A(n60));
   NAND3X2M U64 (.Y(n53), 
	.C(n59), 
	.B(n58), 
	.A(n57));
   NOR2X2M U65 (.Y(n5), 
	.B(n35), 
	.A(n136));
   NOR2X2M U66 (.Y(n6), 
	.B(n138), 
	.A(n136));
   INVX2M U67 (.Y(n35), 
	.A(n131));
   NOR3X2M U68 (.Y(n133), 
	.C(n127), 
	.B(n129), 
	.A(n132));
   NOR2X2M U69 (.Y(n134), 
	.B(n111), 
	.A(n120));
   AOI31X2M U70 (.Y(ALU_OUT_FF[6]), 
	.B0(n189), 
	.A2(n81), 
	.A1(n82), 
	.A0(n86));
   OA22X2M U71 (.Y(n82), 
	.B1(n185), 
	.B0(n57), 
	.A1(n184), 
	.A0(n64));
   AOI211X2M U72 (.Y(n81), 
	.C0(n83), 
	.B0(n80), 
	.A1(n5), 
	.A0(N97));
   AOI22XLM U73 (.Y(n86), 
	.B1(n6), 
	.B0(N115), 
	.A1(n87), 
	.A0(N131));
   NAND4BX1M U74 (.Y(n119), 
	.D(Alu_Fun[0]), 
	.C(Alu_Fun[3]), 
	.B(n145), 
	.AN(n173));
   INVX2M U75 (.Y(n178), 
	.A(n173));
   NAND3BX2M U76 (.Y(n64), 
	.C(n141), 
	.B(Alu_Fun[3]), 
	.AN(n40));
   NOR2BX2M U77 (.Y(n115), 
	.B(Alu_Fun[0]), 
	.AN(Alu_Fun[3]));
   NOR2X2M U78 (.Y(n131), 
	.B(Alu_Fun[1]), 
	.A(Alu_Fun[2]));
   NAND2BX2M U79 (.Y(n125), 
	.B(N159), 
	.AN(n62));
   OR2X2M U80 (.Y(n137), 
	.B(n40), 
	.A(Alu_Fun[3]));
   NAND3X2M U81 (.Y(n130), 
	.C(Alu_Fun[3]), 
	.B(n131), 
	.A(Alu_Fun[0]));
   OR2X2M U82 (.Y(n136), 
	.B(Alu_Fun[3]), 
	.A(Alu_Fun[0]));
   NAND2BX2M U83 (.Y(n66), 
	.B(ALU_EN), 
	.AN(n67));
   NAND3X2M U84 (.Y(n132), 
	.C(n121), 
	.B(n7), 
	.A(n122));
   AND2X2M U85 (.Y(n116), 
	.B(Alu_Fun[1]), 
	.A(Alu_Fun[2]));
   NAND3X2M U86 (.Y(n99), 
	.C(n121), 
	.B(n7), 
	.A(n123));
   INVX2M U87 (.Y(n40), 
	.A(Alu_Fun[0]));
   AO22X1M U88 (.Y(n80), 
	.B1(n142), 
	.B0(n185), 
	.A1(n4), 
	.A0(N106));
   NAND2BX2M U89 (.Y(n94), 
	.B(Alu_Fun[2]), 
	.AN(Alu_Fun[1]));
   NAND2X2M U90 (.Y(n129), 
	.B(n123), 
	.A(n124));
   INVX2M U91 (.Y(n120), 
	.A(n122));
   AND2X2M U92 (.Y(n65), 
	.B(ALU_EN), 
	.A(n6));
   NAND2BX2M U93 (.Y(n138), 
	.B(Alu_Fun[1]), 
	.AN(Alu_Fun[2]));
   INVX2M U94 (.Y(n189), 
	.A(ALU_EN));
   AOI31X2M U95 (.Y(ALU_OUT_FF[1]), 
	.B0(n189), 
	.A2(n37), 
	.A1(n38), 
	.A0(n39));
   AOI22X1M U96 (.Y(n39), 
	.B1(n5), 
	.B0(N92), 
	.A1(n4), 
	.A0(N101));
   MX2X2M U97 (.Y(n38), 
	.S0(A[1]), 
	.B(n57), 
	.A(n59));
   OAI2BB1XLM U98 (.Y(n36), 
	.B0(n112), 
	.A1N(n87), 
	.A0N(N126));
   AOI211X2M U99 (.Y(n112), 
	.C0(n114), 
	.B0(n113), 
	.A1(n139), 
	.A0(N159));
   INVX2M U100 (.Y(n139), 
	.A(n62));
   OAI22X1M U101 (.Y(n114), 
	.B1(n188), 
	.B0(n71), 
	.A1(n187), 
	.A0(n64));
   AOI31X2M U102 (.Y(ALU_OUT_FF[2]), 
	.B0(n189), 
	.A2(n42), 
	.A1(n43), 
	.A0(n44));
   OA22X2M U103 (.Y(n43), 
	.B1(n187), 
	.B0(n57), 
	.A1(n45), 
	.A0(n64));
   AOI211X2M U104 (.Y(n42), 
	.C0(n107), 
	.B0(n41), 
	.A1(n5), 
	.A0(N93));
   AOI22XLM U105 (.Y(n44), 
	.B1(n6), 
	.B0(N111), 
	.A1(n87), 
	.A0(N127));
   AOI31X2M U106 (.Y(ALU_OUT_FF[3]), 
	.B0(n189), 
	.A2(n47), 
	.A1(n48), 
	.A0(n49));
   OA22X2M U107 (.Y(n48), 
	.B1(n45), 
	.B0(n57), 
	.A1(n186), 
	.A0(n64));
   AOI211X2M U108 (.Y(n47), 
	.C0(n101), 
	.B0(n46), 
	.A1(n5), 
	.A0(N94));
   AOI31X2M U109 (.Y(ALU_OUT_FF[7]), 
	.B0(n189), 
	.A2(n88), 
	.A1(n92), 
	.A0(n93));
   OA22X2M U110 (.Y(n92), 
	.B1(A[7]), 
	.B0(n59), 
	.A1(n184), 
	.A0(n57));
   AOI221XLM U111 (.Y(n88), 
	.C0(n75), 
	.B1(n5), 
	.B0(N98), 
	.A1(n4), 
	.A0(N107));
   AOI31X2M U112 (.Y(ALU_OUT_FF[4]), 
	.B0(n189), 
	.A2(n54), 
	.A1(n55), 
	.A0(n56));
   OA22X2M U113 (.Y(n55), 
	.B1(n186), 
	.B0(n57), 
	.A1(n70), 
	.A0(n64));
   AOI211X2M U114 (.Y(n54), 
	.C0(n95), 
	.B0(n50), 
	.A1(n5), 
	.A0(N95));
   AOI22XLM U115 (.Y(n56), 
	.B1(n6), 
	.B0(N113), 
	.A1(n87), 
	.A0(N129));
   NAND2X2M U116 (.Y(n111), 
	.B(n126), 
	.A(n125));
   NAND2X2M U117 (.Y(n127), 
	.B(n125), 
	.A(n126));
   INVX2M U118 (.Y(n146), 
	.A(A[1]));
   AOI31X2M U119 (.Y(ALU_OUT_FF[8]), 
	.B0(n189), 
	.A2(n69), 
	.A1(n68), 
	.A0(n67));
   NAND2X2M U120 (.Y(n68), 
	.B(n5), 
	.A(N99));
   AOI221XLM U121 (.Y(n128), 
	.C0(n142), 
	.B1(A[0]), 
	.B0(n190), 
	.A1(n61), 
	.A0(n188));
   AOI221XLM U122 (.Y(n84), 
	.C0(n140), 
	.B1(n78), 
	.B0(A[6]), 
	.A1(n185), 
	.A0(n190));
   AOI221XLM U123 (.Y(n85), 
	.C0(n142), 
	.B1(n185), 
	.B0(n61), 
	.A1(n190), 
	.A0(A[6]));
   AOI31X2M U124 (.Y(ALU_OUT_FF[5]), 
	.B0(n189), 
	.A2(n73), 
	.A1(n74), 
	.A0(n79));
   OA22X2M U125 (.Y(n74), 
	.B1(n70), 
	.B0(n57), 
	.A1(n185), 
	.A0(n64));
   AOI211X2M U126 (.Y(n73), 
	.C0(n89), 
	.B0(n72), 
	.A1(n5), 
	.A0(N96));
   AOI22XLM U127 (.Y(n79), 
	.B1(n6), 
	.B0(N114), 
	.A1(n87), 
	.A0(N130));
   AOI211X2M U128 (.Y(n67), 
	.C0(n61), 
	.B0(n142), 
	.A1(n4), 
	.A0(N108));
   AOI2B1X1M U129 (.Y(n7), 
	.B0(n98), 
	.A1N(n64), 
	.A0(A[1]));
   MXI2X1M U130 (.Y(n100), 
	.S0(A[0]), 
	.B(n78), 
	.A(n190));
   NAND2X2M U131 (.Y(n122), 
	.B(n6), 
	.A(N109));
   NAND2X2M U132 (.Y(n123), 
	.B(n5), 
	.A(N91));
   NAND2X2M U133 (.Y(n121), 
	.B(n4), 
	.A(N100));
   AO22X1M U134 (.Y(n41), 
	.B1(n142), 
	.B0(n187), 
	.A1(n4), 
	.A0(N102));
   AO22X1M U135 (.Y(n46), 
	.B1(n142), 
	.B0(n45), 
	.A1(n4), 
	.A0(N103));
   AO22X1M U136 (.Y(n50), 
	.B1(n142), 
	.B0(n186), 
	.A1(n4), 
	.A0(N104));
   AO22X1M U137 (.Y(n72), 
	.B1(n142), 
	.B0(n70), 
	.A1(n4), 
	.A0(N105));
   INVX2M U138 (.Y(n188), 
	.A(A[0]));
   INVX2M U139 (.Y(n185), 
	.A(A[6]));
   INVX2M U140 (.Y(n187), 
	.A(A[2]));
   INVX2M U141 (.Y(n186), 
	.A(A[4]));
   INVX2M U142 (.Y(n70), 
	.A(A[5]));
   INVX2M U143 (.Y(n45), 
	.A(A[3]));
   INVX2M U149 (.Y(n176), 
	.A(n159));
   OAI221XLM U150 (.Y(n113), 
	.C0(n119), 
	.B1(n183), 
	.B0(n118), 
	.A1(n117), 
	.A0(B[1]));
   INVXLM U151 (.Y(n183), 
	.A(B[1]));
   AOI221XLM U152 (.Y(n118), 
	.C0(n140), 
	.B1(n78), 
	.B0(A[1]), 
	.A1(n146), 
	.A0(n190));
   AOI221XLM U153 (.Y(n117), 
	.C0(n142), 
	.B1(n146), 
	.B0(n61), 
	.A1(n190), 
	.A0(A[1]));
   INVX2M U154 (.Y(n126), 
	.A(n110));
   OAI31X1M U155 (.Y(n110), 
	.B0(n105), 
	.A2(n3), 
	.A1(n106), 
	.A0(n138));
   INVXLM U156 (.Y(n175), 
	.A(B[2]));
   OAI222XLM U157 (.Y(n101), 
	.C1(n187), 
	.C0(n71), 
	.B1(n103), 
	.B0(B[3]), 
	.A1(n177), 
	.A0(n102));
   AOI221XLM U158 (.Y(n102), 
	.C0(n140), 
	.B1(n78), 
	.B0(A[3]), 
	.A1(n45), 
	.A0(n190));
   AOI221XLM U159 (.Y(n103), 
	.C0(n142), 
	.B1(n45), 
	.B0(n61), 
	.A1(n190), 
	.A0(A[3]));
   OAI222XLM U160 (.Y(n107), 
	.C1(n146), 
	.C0(n71), 
	.B1(n109), 
	.B0(B[2]), 
	.A1(n175), 
	.A0(n108));
   AOI221XLM U161 (.Y(n108), 
	.C0(n140), 
	.B1(n78), 
	.B0(A[2]), 
	.A1(n187), 
	.A0(n190));
   AOI221XLM U162 (.Y(n109), 
	.C0(n142), 
	.B1(n187), 
	.B0(n61), 
	.A1(n190), 
	.A0(A[2]));
   OAI222XLM U163 (.Y(n95), 
	.C1(n45), 
	.C0(n71), 
	.B1(n97), 
	.B0(B[4]), 
	.A1(n182), 
	.A0(n96));
   INVXLM U164 (.Y(n182), 
	.A(B[4]));
   AOI221XLM U165 (.Y(n96), 
	.C0(n140), 
	.B1(n78), 
	.B0(A[4]), 
	.A1(n186), 
	.A0(n190));
   AOI221XLM U166 (.Y(n97), 
	.C0(n142), 
	.B1(n186), 
	.B0(n61), 
	.A1(n190), 
	.A0(A[4]));
   OAI222XLM U167 (.Y(n89), 
	.C1(n186), 
	.C0(n71), 
	.B1(n91), 
	.B0(B[5]), 
	.A1(n181), 
	.A0(n90));
   INVXLM U168 (.Y(n181), 
	.A(B[5]));
   AOI221XLM U169 (.Y(n90), 
	.C0(n140), 
	.B1(n78), 
	.B0(A[5]), 
	.A1(n70), 
	.A0(n190));
   AOI221XLM U170 (.Y(n91), 
	.C0(n142), 
	.B1(n70), 
	.B0(n61), 
	.A1(n190), 
	.A0(A[5]));
   INVX2M U171 (.Y(n174), 
	.A(n148));
   INVXLM U172 (.Y(n177), 
	.A(B[3]));
   MX2XLM U173 (.Y(n105), 
	.S0(B[0]), 
	.B(n104), 
	.A(n128));
   INVXLM U174 (.Y(n180), 
	.A(B[6]));
   AOI211X2M U175 (.Y(ALU_OUT_FF[0]), 
	.C0(n189), 
	.B0(n133), 
	.A1(n134), 
	.A0(n135));
   AOI22XLM U176 (.Y(n49), 
	.B1(n6), 
	.B0(N112), 
	.A1(n87), 
	.A0(N128));
   INVXLM U177 (.Y(n179), 
	.A(B[7]));
   AOI22XLM U178 (.Y(n93), 
	.B1(n6), 
	.B0(N116), 
	.A1(n87), 
	.A0(N132));
   OAI222XLM U179 (.Y(n83), 
	.C1(n70), 
	.C0(n71), 
	.B1(n85), 
	.B0(B[6]), 
	.A1(n180), 
	.A0(n84));
   AOI32XLM U180 (.Y(n155), 
	.B1(n185), 
	.B0(B[6]), 
	.A2(n167), 
	.A1(n164), 
	.A0(n154));
   XNOR2XLM U181 (.Y(n167), 
	.B(B[6]), 
	.A(A[6]));
   INVXLM U182 (.Y(n184), 
	.A(A[7]));
   INVXLM U183 (.Y(n147), 
	.A(B[0]));
   NAND2XLM U184 (.Y(n171), 
	.B(n184), 
	.A(B[7]));
   AOI22XLM U185 (.Y(n69), 
	.B1(n6), 
	.B0(N117), 
	.A1(n191), 
	.A0(A[7]));
   AOI221XLM U186 (.Y(n76), 
	.C0(n140), 
	.B1(n78), 
	.B0(A[7]), 
	.A1(n184), 
	.A0(n190));
   AOI221XLM U187 (.Y(n77), 
	.C0(n142), 
	.B1(n184), 
	.B0(n61), 
	.A1(A[7]), 
	.A0(n190));
   OAI222XLM U188 (.Y(n75), 
	.C1(n185), 
	.C0(n71), 
	.B1(n77), 
	.B0(B[7]), 
	.A1(n179), 
	.A0(n76));
   NOR2XLM U189 (.Y(n170), 
	.B(B[7]), 
	.A(n184));
   NAND2BX1M U190 (.Y(n163), 
	.B(A[4]), 
	.AN(B[4]));
   NAND2BX1M U191 (.Y(n152), 
	.B(B[4]), 
	.AN(A[4]));
   CLKNAND2X2M U192 (.Y(n165), 
	.B(n152), 
	.A(n163));
   NOR2X1M U193 (.Y(n160), 
	.B(A[3]), 
	.A(n177));
   NOR2X1M U194 (.Y(n151), 
	.B(A[2]), 
	.A(n175));
   NOR2X1M U195 (.Y(n148), 
	.B(A[0]), 
	.A(n147));
   CLKNAND2X2M U196 (.Y(n162), 
	.B(n175), 
	.A(A[2]));
   NAND2BX1M U197 (.Y(n157), 
	.B(n162), 
	.AN(n151));
   AOI211X1M U198 (.Y(n150), 
	.C0(n149), 
	.B0(n157), 
	.A1(n174), 
	.A0(A[1]));
   CLKNAND2X2M U199 (.Y(n161), 
	.B(n177), 
	.A(A[3]));
   OAI31X1M U200 (.Y(n153), 
	.B0(n161), 
	.A2(n150), 
	.A1(n151), 
	.A0(n160));
   NAND2BX1M U201 (.Y(n168), 
	.B(B[5]), 
	.AN(A[5]));
   OAI211X1M U202 (.Y(n154), 
	.C0(n168), 
	.B0(n152), 
	.A1(n153), 
	.A0(n165));
   NAND2BX1M U203 (.Y(n164), 
	.B(A[5]), 
	.AN(B[5]));
   OAI21X1M U204 (.Y(N159), 
	.B0(n171), 
	.A1(n155), 
	.A0(n170));
   CLKNAND2X2M U205 (.Y(n158), 
	.B(n147), 
	.A(A[0]));
   OA21X1M U206 (.Y(n156), 
	.B0(B[1]), 
	.A1(n146), 
	.A0(n158));
   AOI211X1M U207 (.Y(n159), 
	.C0(n156), 
	.B0(n157), 
	.A1(n146), 
	.A0(n158));
   AOI31X1M U208 (.Y(n166), 
	.B0(n160), 
	.A2(n161), 
	.A1(n162), 
	.A0(n176));
   OAI2B11X1M U209 (.Y(n169), 
	.C0(n163), 
	.B0(n164), 
	.A1N(n166), 
	.A0(n165));
   AOI32X1M U210 (.Y(n172), 
	.B1(n180), 
	.B0(A[6]), 
	.A2(n167), 
	.A1(n168), 
	.A0(n169));
   AOI2B1X1M U211 (.Y(n173), 
	.B0(n170), 
	.A1N(n172), 
	.A0(n171));
   Alu_16_DW01_sub_0 sub_46 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.DIFF({ N108,
		N107,
		N106,
		N105,
		N104,
		N103,
		N102,
		N101,
		N100 }), 
	.n175(n175), 
	.n183(n183), 
	.n179(n179), 
	.n182(n182), 
	.n181(n181), 
	.n180(n180), 
	.n147(n147), 
	.n177(n177), 
	.n188(n188));
   Alu_16_DW01_add_0 add_45 (.A({ 1'b0,
		A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ 1'b0,
		B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.CI(1'b0), 
	.SUM({ N99,
		N98,
		N97,
		N96,
		N95,
		N94,
		N93,
		N92,
		N91 }));
   Alu_16_DW02_mult_0 mult_47 (.A({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.B({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.TC(1'b0), 
	.PRODUCT({ N124,
		N123,
		N122,
		N121,
		N120,
		N119,
		N118,
		N117,
		N116,
		N115,
		N114,
		N113,
		N112,
		N111,
		N110,
		N109 }), 
	.n185(n185), 
	.n70(n70), 
	.n186(n186), 
	.n45(n45), 
	.n146(n146), 
	.n188(n188), 
	.n187(n187));
   Alu_16_DW_div_uns_1 div_48 (.a({ A[7],
		A[6],
		A[5],
		A[4],
		A[3],
		A[2],
		A[1],
		A[0] }), 
	.b({ B[7],
		B[6],
		B[5],
		B[4],
		B[3],
		B[2],
		B[1],
		B[0] }), 
	.quotient({ N132,
		N131,
		N130,
		N129,
		N128,
		N127,
		N126,
		N125 }), 
	.FE_PT1_n70(n70), 
	.n186(n186), 
	.FE_PT1_n45(n45), 
	.n146(n146), 
	.n188(n188), 
	.n185(n185), 
	.n184(n184));
endmodule

module CLK_GATE (
	CLK_EN, 
	test_en, 
	CLK, 
	GATED_CLK);
   input CLK_EN;
   input test_en;
   input CLK;
   output GATED_CLK;

   // Internal wires
   wire _0_net_;

   TLATNCAX12M U0_TLATNCAX12M (.ECK(GATED_CLK), 
	.E(_0_net_), 
	.CK(CLK));
   OR2X2M U1 (.Y(_0_net_), 
	.B(test_en), 
	.A(CLK_EN));
endmodule

