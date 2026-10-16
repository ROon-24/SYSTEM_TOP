/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Oct  3 22:00:49 2026
/////////////////////////////////////////////////////////////


module sync_rst_0 ( RST, clk, SYNC_rst );
  input RST, clk;
  output SYNC_rst;
  wire   \q_reg[0] ;

  DFFRQX2M \q_reg_reg[1]  ( .D(\q_reg[0] ), .CK(clk), .RN(RST), .Q(SYNC_rst)
         );
  DFFRQX2M \q_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(RST), .Q(\q_reg[0] ) );
endmodule


module sync_rst_1 ( RST, clk, SYNC_rst );
  input RST, clk;
  output SYNC_rst;
  wire   \q_reg[0] ;

  DFFRQX2M \q_reg_reg[1]  ( .D(\q_reg[0] ), .CK(clk), .RN(RST), .Q(SYNC_rst)
         );
  DFFRQX2M \q_reg_reg[0]  ( .D(1'b1), .CK(clk), .RN(RST), .Q(\q_reg[0] ) );
endmodule


module DATA_SYNC ( CLK, RST, unsync_bus, bus_enable, sync_bus, enable_pulse_d
 );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable;
  output enable_pulse_d;
  wire   enable_flop, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [1:0] sync_reg;

  DFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .CK(CLK), .RN(RST), .Q(
        enable_flop) );
  DFFRQX2M \sync_bus_reg[7]  ( .D(n9), .CK(CLK), .RN(RST), .Q(sync_bus[7]) );
  DFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .CK(CLK), .RN(RST), .Q(
        sync_reg[1]) );
  DFFRQX2M \sync_bus_reg[6]  ( .D(n8), .CK(CLK), .RN(RST), .Q(sync_bus[6]) );
  DFFRQX2M \sync_bus_reg[4]  ( .D(n6), .CK(CLK), .RN(RST), .Q(sync_bus[4]) );
  DFFRQX2M \sync_bus_reg[5]  ( .D(n7), .CK(CLK), .RN(RST), .Q(sync_bus[5]) );
  DFFRQX2M \sync_bus_reg[3]  ( .D(n5), .CK(CLK), .RN(RST), .Q(sync_bus[3]) );
  DFFRQX2M \sync_bus_reg[2]  ( .D(n4), .CK(CLK), .RN(RST), .Q(sync_bus[2]) );
  DFFRQX2M enable_pulse_d_reg ( .D(n10), .CK(CLK), .RN(RST), .Q(enable_pulse_d) );
  DFFRQX2M \sync_bus_reg[0]  ( .D(n2), .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  DFFRQX2M \sync_bus_reg[1]  ( .D(n3), .CK(CLK), .RN(RST), .Q(sync_bus[1]) );
  DFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .CK(CLK), .RN(RST), .Q(
        sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n10) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n10), .B0(sync_bus[0]), .B1(n1), .Y(n2)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n10), .B0(sync_bus[1]), .B1(n1), .Y(n3)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n10), .B0(sync_bus[2]), .B1(n1), .Y(n4)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n10), .B0(sync_bus[3]), .B1(n1), .Y(n5)
         );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n10), .B0(sync_bus[4]), .B1(n1), .Y(n6)
         );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n10), .B0(sync_bus[5]), .B1(n1), .Y(n7) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n10), .B0(sync_bus[6]), .B1(n1), .Y(n8) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n10), .B0(sync_bus[7]), .B1(n1), .Y(n9) );
endmodule


module FIFO_Mem ( wr_clk_mem, Wr_rst_mem, wr_full_mem, wr_inc_mem, wr_Data_mem, 
        wr_adr_mem, rd_adr_mem, rd_Data_mem );
  input [7:0] wr_Data_mem;
  input [2:0] wr_adr_mem;
  input [2:0] rd_adr_mem;
  output [7:0] rd_Data_mem;
  input wr_clk_mem, Wr_rst_mem, wr_full_mem, wr_inc_mem;
  wire   N10, N11, N12, \MEM[0][7] , \MEM[0][6] , \MEM[0][5] , \MEM[0][4] ,
         \MEM[0][3] , \MEM[0][2] , \MEM[0][1] , \MEM[0][0] , \MEM[1][7] ,
         \MEM[1][6] , \MEM[1][5] , \MEM[1][4] , \MEM[1][3] , \MEM[1][2] ,
         \MEM[1][1] , \MEM[1][0] , \MEM[2][7] , \MEM[2][6] , \MEM[2][5] ,
         \MEM[2][4] , \MEM[2][3] , \MEM[2][2] , \MEM[2][1] , \MEM[2][0] ,
         \MEM[3][7] , \MEM[3][6] , \MEM[3][5] , \MEM[3][4] , \MEM[3][3] ,
         \MEM[3][2] , \MEM[3][1] , \MEM[3][0] , \MEM[4][7] , \MEM[4][6] ,
         \MEM[4][5] , \MEM[4][4] , \MEM[4][3] , \MEM[4][2] , \MEM[4][1] ,
         \MEM[4][0] , \MEM[5][7] , \MEM[5][6] , \MEM[5][5] , \MEM[5][4] ,
         \MEM[5][3] , \MEM[5][2] , \MEM[5][1] , \MEM[5][0] , \MEM[6][7] ,
         \MEM[6][6] , \MEM[6][5] , \MEM[6][4] , \MEM[6][3] , \MEM[6][2] ,
         \MEM[6][1] , \MEM[6][0] , \MEM[7][7] , \MEM[7][6] , \MEM[7][5] ,
         \MEM[7][4] , \MEM[7][3] , \MEM[7][2] , \MEM[7][1] , \MEM[7][0] , n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81,
         n82, n83, n84, n85, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137;
  assign N10 = rd_adr_mem[0];
  assign N11 = rd_adr_mem[1];
  assign N12 = rd_adr_mem[2];

  DFFRQX2M \MEM_reg[0][7]  ( .D(n85), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][7] ) );
  DFFRQX2M \MEM_reg[0][6]  ( .D(n84), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][6] ) );
  DFFRQX2M \MEM_reg[0][5]  ( .D(n83), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][5] ) );
  DFFRQX2M \MEM_reg[0][4]  ( .D(n82), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][4] ) );
  DFFRQX2M \MEM_reg[0][3]  ( .D(n81), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][3] ) );
  DFFRQX2M \MEM_reg[0][2]  ( .D(n80), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][2] ) );
  DFFRQX2M \MEM_reg[0][1]  ( .D(n79), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][1] ) );
  DFFRQX2M \MEM_reg[0][0]  ( .D(n78), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[0][0] ) );
  DFFRQX2M \MEM_reg[1][7]  ( .D(n77), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[1][7] ) );
  DFFRQX2M \MEM_reg[1][6]  ( .D(n76), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[1][6] ) );
  DFFRQX2M \MEM_reg[1][5]  ( .D(n75), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[1][5] ) );
  DFFRQX2M \MEM_reg[1][4]  ( .D(n74), .CK(wr_clk_mem), .RN(n121), .Q(
        \MEM[1][4] ) );
  DFFRQX2M \MEM_reg[1][3]  ( .D(n73), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[1][3] ) );
  DFFRQX2M \MEM_reg[1][2]  ( .D(n72), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[1][2] ) );
  DFFRQX2M \MEM_reg[1][1]  ( .D(n71), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[1][1] ) );
  DFFRQX2M \MEM_reg[1][0]  ( .D(n70), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[1][0] ) );
  DFFRQX2M \MEM_reg[4][7]  ( .D(n53), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[4][7] ) );
  DFFRQX2M \MEM_reg[4][6]  ( .D(n52), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[4][6] ) );
  DFFRQX2M \MEM_reg[4][5]  ( .D(n51), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[4][5] ) );
  DFFRQX2M \MEM_reg[4][4]  ( .D(n50), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[4][4] ) );
  DFFRQX2M \MEM_reg[4][3]  ( .D(n49), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[4][3] ) );
  DFFRQX2M \MEM_reg[4][2]  ( .D(n48), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[4][2] ) );
  DFFRQX2M \MEM_reg[4][1]  ( .D(n47), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[4][1] ) );
  DFFRQX2M \MEM_reg[4][0]  ( .D(n46), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[4][0] ) );
  DFFRQX2M \MEM_reg[5][7]  ( .D(n45), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][7] ) );
  DFFRQX2M \MEM_reg[5][6]  ( .D(n44), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][6] ) );
  DFFRQX2M \MEM_reg[5][5]  ( .D(n43), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][5] ) );
  DFFRQX2M \MEM_reg[5][4]  ( .D(n42), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][4] ) );
  DFFRQX2M \MEM_reg[5][3]  ( .D(n41), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][3] ) );
  DFFRQX2M \MEM_reg[5][2]  ( .D(n40), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][2] ) );
  DFFRQX2M \MEM_reg[5][1]  ( .D(n39), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][1] ) );
  DFFRQX2M \MEM_reg[5][0]  ( .D(n38), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[5][0] ) );
  DFFRQX2M \MEM_reg[6][7]  ( .D(n37), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[6][7] ) );
  DFFRQX2M \MEM_reg[6][6]  ( .D(n36), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[6][6] ) );
  DFFRQX2M \MEM_reg[6][5]  ( .D(n35), .CK(wr_clk_mem), .RN(n118), .Q(
        \MEM[6][5] ) );
  DFFRQX2M \MEM_reg[6][4]  ( .D(n34), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[6][4] ) );
  DFFRQX2M \MEM_reg[6][3]  ( .D(n33), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[6][3] ) );
  DFFRQX2M \MEM_reg[6][2]  ( .D(n32), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[6][2] ) );
  DFFRQX2M \MEM_reg[6][1]  ( .D(n31), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[6][1] ) );
  DFFRQX2M \MEM_reg[6][0]  ( .D(n30), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[6][0] ) );
  DFFRQX2M \MEM_reg[7][7]  ( .D(n29), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][7] ) );
  DFFRQX2M \MEM_reg[7][6]  ( .D(n28), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][6] ) );
  DFFRQX2M \MEM_reg[7][5]  ( .D(n27), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][5] ) );
  DFFRQX2M \MEM_reg[7][4]  ( .D(n26), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][4] ) );
  DFFRQX2M \MEM_reg[7][3]  ( .D(n25), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][3] ) );
  DFFRQX2M \MEM_reg[7][2]  ( .D(n24), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][2] ) );
  DFFRQX2M \MEM_reg[7][1]  ( .D(n23), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][1] ) );
  DFFRQX2M \MEM_reg[7][0]  ( .D(n22), .CK(wr_clk_mem), .RN(n117), .Q(
        \MEM[7][0] ) );
  DFFRQX2M \MEM_reg[2][7]  ( .D(n69), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][7] ) );
  DFFRQX2M \MEM_reg[2][6]  ( .D(n68), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][6] ) );
  DFFRQX2M \MEM_reg[2][5]  ( .D(n67), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][5] ) );
  DFFRQX2M \MEM_reg[2][4]  ( .D(n66), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][4] ) );
  DFFRQX2M \MEM_reg[2][3]  ( .D(n65), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][3] ) );
  DFFRQX2M \MEM_reg[2][2]  ( .D(n64), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][2] ) );
  DFFRQX2M \MEM_reg[2][1]  ( .D(n63), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][1] ) );
  DFFRQX2M \MEM_reg[2][0]  ( .D(n62), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[2][0] ) );
  DFFRQX2M \MEM_reg[3][7]  ( .D(n61), .CK(wr_clk_mem), .RN(n120), .Q(
        \MEM[3][7] ) );
  DFFRQX2M \MEM_reg[3][6]  ( .D(n60), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[3][6] ) );
  DFFRQX2M \MEM_reg[3][5]  ( .D(n59), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[3][5] ) );
  DFFRQX2M \MEM_reg[3][4]  ( .D(n58), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[3][4] ) );
  DFFRQX2M \MEM_reg[3][3]  ( .D(n57), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[3][3] ) );
  DFFRQX2M \MEM_reg[3][2]  ( .D(n56), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[3][2] ) );
  DFFRQX2M \MEM_reg[3][1]  ( .D(n55), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[3][1] ) );
  DFFRQX2M \MEM_reg[3][0]  ( .D(n54), .CK(wr_clk_mem), .RN(n119), .Q(
        \MEM[3][0] ) );
  BUFX2M U2 ( .A(n11), .Y(n127) );
  BUFX2M U3 ( .A(n20), .Y(n122) );
  BUFX2M U4 ( .A(n14), .Y(n125) );
  BUFX2M U5 ( .A(n13), .Y(n126) );
  BUFX2M U6 ( .A(n115), .Y(n117) );
  BUFX2M U7 ( .A(n115), .Y(n118) );
  BUFX2M U8 ( .A(n115), .Y(n119) );
  BUFX2M U9 ( .A(n116), .Y(n120) );
  BUFX2M U10 ( .A(n116), .Y(n121) );
  NOR2BX2M U11 ( .AN(wr_inc_mem), .B(wr_full_mem), .Y(n16) );
  BUFX2M U12 ( .A(Wr_rst_mem), .Y(n115) );
  BUFX2M U13 ( .A(Wr_rst_mem), .Y(n116) );
  NAND3X2M U14 ( .A(n136), .B(n137), .C(n12), .Y(n15) );
  NAND3X2M U15 ( .A(n136), .B(n137), .C(n18), .Y(n21) );
  NOR2X2M U16 ( .A(n112), .B(n113), .Y(n108) );
  NOR2BX2M U17 ( .AN(n16), .B(wr_adr_mem[2]), .Y(n18) );
  OAI2BB2X1M U18 ( .B0(n128), .B1(n21), .A0N(\MEM[0][0] ), .A1N(n21), .Y(n78)
         );
  OAI2BB2X1M U19 ( .B0(n129), .B1(n21), .A0N(\MEM[0][1] ), .A1N(n21), .Y(n79)
         );
  OAI2BB2X1M U20 ( .B0(n130), .B1(n21), .A0N(\MEM[0][2] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U21 ( .B0(n131), .B1(n21), .A0N(\MEM[0][3] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U22 ( .B0(n132), .B1(n21), .A0N(\MEM[0][4] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U23 ( .B0(n133), .B1(n21), .A0N(\MEM[0][5] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U24 ( .B0(n134), .B1(n21), .A0N(\MEM[0][6] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U25 ( .B0(n135), .B1(n21), .A0N(\MEM[0][7] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U26 ( .B0(n128), .B1(n15), .A0N(\MEM[4][0] ), .A1N(n15), .Y(n46)
         );
  OAI2BB2X1M U27 ( .B0(n129), .B1(n15), .A0N(\MEM[4][1] ), .A1N(n15), .Y(n47)
         );
  OAI2BB2X1M U28 ( .B0(n130), .B1(n15), .A0N(\MEM[4][2] ), .A1N(n15), .Y(n48)
         );
  OAI2BB2X1M U29 ( .B0(n131), .B1(n15), .A0N(\MEM[4][3] ), .A1N(n15), .Y(n49)
         );
  OAI2BB2X1M U30 ( .B0(n132), .B1(n15), .A0N(\MEM[4][4] ), .A1N(n15), .Y(n50)
         );
  OAI2BB2X1M U31 ( .B0(n133), .B1(n15), .A0N(\MEM[4][5] ), .A1N(n15), .Y(n51)
         );
  OAI2BB2X1M U32 ( .B0(n134), .B1(n15), .A0N(\MEM[4][6] ), .A1N(n15), .Y(n52)
         );
  OAI2BB2X1M U33 ( .B0(n135), .B1(n15), .A0N(\MEM[4][7] ), .A1N(n15), .Y(n53)
         );
  BUFX2M U34 ( .A(n17), .Y(n124) );
  NAND3X2M U35 ( .A(wr_adr_mem[1]), .B(wr_adr_mem[0]), .C(n18), .Y(n17) );
  BUFX2M U36 ( .A(n19), .Y(n123) );
  NAND3X2M U37 ( .A(wr_adr_mem[1]), .B(n136), .C(n18), .Y(n19) );
  OAI2BB2X1M U38 ( .B0(n128), .B1(n126), .A0N(\MEM[6][0] ), .A1N(n126), .Y(n30) );
  OAI2BB2X1M U39 ( .B0(n129), .B1(n126), .A0N(\MEM[6][1] ), .A1N(n126), .Y(n31) );
  OAI2BB2X1M U40 ( .B0(n130), .B1(n126), .A0N(\MEM[6][2] ), .A1N(n126), .Y(n32) );
  OAI2BB2X1M U41 ( .B0(n131), .B1(n126), .A0N(\MEM[6][3] ), .A1N(n126), .Y(n33) );
  OAI2BB2X1M U42 ( .B0(n132), .B1(n126), .A0N(\MEM[6][4] ), .A1N(n126), .Y(n34) );
  OAI2BB2X1M U43 ( .B0(n133), .B1(n126), .A0N(\MEM[6][5] ), .A1N(n126), .Y(n35) );
  OAI2BB2X1M U44 ( .B0(n134), .B1(n126), .A0N(\MEM[6][6] ), .A1N(n126), .Y(n36) );
  OAI2BB2X1M U45 ( .B0(n135), .B1(n126), .A0N(\MEM[6][7] ), .A1N(n126), .Y(n37) );
  OAI2BB2X1M U46 ( .B0(n128), .B1(n125), .A0N(\MEM[5][0] ), .A1N(n125), .Y(n38) );
  OAI2BB2X1M U47 ( .B0(n129), .B1(n125), .A0N(\MEM[5][1] ), .A1N(n125), .Y(n39) );
  OAI2BB2X1M U48 ( .B0(n130), .B1(n125), .A0N(\MEM[5][2] ), .A1N(n125), .Y(n40) );
  OAI2BB2X1M U49 ( .B0(n131), .B1(n125), .A0N(\MEM[5][3] ), .A1N(n125), .Y(n41) );
  OAI2BB2X1M U50 ( .B0(n132), .B1(n125), .A0N(\MEM[5][4] ), .A1N(n125), .Y(n42) );
  OAI2BB2X1M U51 ( .B0(n133), .B1(n125), .A0N(\MEM[5][5] ), .A1N(n125), .Y(n43) );
  OAI2BB2X1M U52 ( .B0(n134), .B1(n125), .A0N(\MEM[5][6] ), .A1N(n125), .Y(n44) );
  OAI2BB2X1M U53 ( .B0(n135), .B1(n125), .A0N(\MEM[5][7] ), .A1N(n125), .Y(n45) );
  OAI2BB2X1M U54 ( .B0(n128), .B1(n124), .A0N(\MEM[3][0] ), .A1N(n124), .Y(n54) );
  OAI2BB2X1M U55 ( .B0(n129), .B1(n124), .A0N(\MEM[3][1] ), .A1N(n124), .Y(n55) );
  OAI2BB2X1M U56 ( .B0(n130), .B1(n124), .A0N(\MEM[3][2] ), .A1N(n124), .Y(n56) );
  OAI2BB2X1M U57 ( .B0(n131), .B1(n124), .A0N(\MEM[3][3] ), .A1N(n124), .Y(n57) );
  OAI2BB2X1M U58 ( .B0(n132), .B1(n124), .A0N(\MEM[3][4] ), .A1N(n124), .Y(n58) );
  OAI2BB2X1M U59 ( .B0(n133), .B1(n124), .A0N(\MEM[3][5] ), .A1N(n124), .Y(n59) );
  OAI2BB2X1M U60 ( .B0(n134), .B1(n124), .A0N(\MEM[3][6] ), .A1N(n124), .Y(n60) );
  OAI2BB2X1M U61 ( .B0(n135), .B1(n124), .A0N(\MEM[3][7] ), .A1N(n124), .Y(n61) );
  OAI2BB2X1M U62 ( .B0(n128), .B1(n123), .A0N(\MEM[2][0] ), .A1N(n123), .Y(n62) );
  OAI2BB2X1M U63 ( .B0(n129), .B1(n123), .A0N(\MEM[2][1] ), .A1N(n123), .Y(n63) );
  OAI2BB2X1M U64 ( .B0(n130), .B1(n123), .A0N(\MEM[2][2] ), .A1N(n123), .Y(n64) );
  OAI2BB2X1M U65 ( .B0(n131), .B1(n123), .A0N(\MEM[2][3] ), .A1N(n123), .Y(n65) );
  OAI2BB2X1M U66 ( .B0(n132), .B1(n123), .A0N(\MEM[2][4] ), .A1N(n123), .Y(n66) );
  OAI2BB2X1M U67 ( .B0(n133), .B1(n123), .A0N(\MEM[2][5] ), .A1N(n123), .Y(n67) );
  OAI2BB2X1M U68 ( .B0(n134), .B1(n123), .A0N(\MEM[2][6] ), .A1N(n123), .Y(n68) );
  OAI2BB2X1M U69 ( .B0(n135), .B1(n123), .A0N(\MEM[2][7] ), .A1N(n123), .Y(n69) );
  OAI2BB2X1M U70 ( .B0(n128), .B1(n122), .A0N(\MEM[1][0] ), .A1N(n122), .Y(n70) );
  OAI2BB2X1M U71 ( .B0(n129), .B1(n122), .A0N(\MEM[1][1] ), .A1N(n122), .Y(n71) );
  OAI2BB2X1M U72 ( .B0(n130), .B1(n122), .A0N(\MEM[1][2] ), .A1N(n122), .Y(n72) );
  OAI2BB2X1M U73 ( .B0(n131), .B1(n122), .A0N(\MEM[1][3] ), .A1N(n122), .Y(n73) );
  OAI2BB2X1M U74 ( .B0(n132), .B1(n122), .A0N(\MEM[1][4] ), .A1N(n122), .Y(n74) );
  OAI2BB2X1M U75 ( .B0(n133), .B1(n122), .A0N(\MEM[1][5] ), .A1N(n122), .Y(n75) );
  OAI2BB2X1M U76 ( .B0(n134), .B1(n122), .A0N(\MEM[1][6] ), .A1N(n122), .Y(n76) );
  OAI2BB2X1M U77 ( .B0(n135), .B1(n122), .A0N(\MEM[1][7] ), .A1N(n122), .Y(n77) );
  OAI2BB2X1M U78 ( .B0(n127), .B1(n128), .A0N(\MEM[7][0] ), .A1N(n127), .Y(n22) );
  OAI2BB2X1M U79 ( .B0(n127), .B1(n129), .A0N(\MEM[7][1] ), .A1N(n127), .Y(n23) );
  OAI2BB2X1M U80 ( .B0(n127), .B1(n130), .A0N(\MEM[7][2] ), .A1N(n127), .Y(n24) );
  OAI2BB2X1M U81 ( .B0(n127), .B1(n131), .A0N(\MEM[7][3] ), .A1N(n127), .Y(n25) );
  OAI2BB2X1M U82 ( .B0(n127), .B1(n132), .A0N(\MEM[7][4] ), .A1N(n127), .Y(n26) );
  OAI2BB2X1M U83 ( .B0(n127), .B1(n133), .A0N(\MEM[7][5] ), .A1N(n127), .Y(n27) );
  OAI2BB2X1M U84 ( .B0(n127), .B1(n134), .A0N(\MEM[7][6] ), .A1N(n127), .Y(n28) );
  OAI2BB2X1M U85 ( .B0(n127), .B1(n135), .A0N(\MEM[7][7] ), .A1N(n127), .Y(n29) );
  AND2X2M U86 ( .A(wr_adr_mem[2]), .B(n16), .Y(n12) );
  NAND3X2M U87 ( .A(n12), .B(n136), .C(wr_adr_mem[1]), .Y(n13) );
  NAND3X2M U88 ( .A(n12), .B(n137), .C(wr_adr_mem[0]), .Y(n14) );
  NAND3X2M U89 ( .A(wr_adr_mem[0]), .B(n137), .C(n18), .Y(n20) );
  NAND3X2M U90 ( .A(wr_adr_mem[0]), .B(n12), .C(wr_adr_mem[1]), .Y(n11) );
  INVX2M U91 ( .A(wr_Data_mem[0]), .Y(n128) );
  INVX2M U92 ( .A(wr_Data_mem[1]), .Y(n129) );
  INVX2M U93 ( .A(wr_Data_mem[2]), .Y(n130) );
  INVX2M U94 ( .A(wr_Data_mem[3]), .Y(n131) );
  INVX2M U95 ( .A(wr_Data_mem[4]), .Y(n132) );
  INVX2M U96 ( .A(wr_Data_mem[5]), .Y(n133) );
  INVX2M U97 ( .A(wr_Data_mem[6]), .Y(n134) );
  INVX2M U98 ( .A(wr_Data_mem[7]), .Y(n135) );
  INVX2M U99 ( .A(wr_adr_mem[1]), .Y(n137) );
  INVX2M U100 ( .A(wr_adr_mem[0]), .Y(n136) );
  NOR2X2M U101 ( .A(n112), .B(N11), .Y(n109) );
  NOR2X2M U102 ( .A(n113), .B(N12), .Y(n106) );
  NOR2X2M U103 ( .A(N11), .B(N12), .Y(n105) );
  INVX2M U104 ( .A(N11), .Y(n113) );
  INVX2M U105 ( .A(N12), .Y(n112) );
  INVX2M U106 ( .A(N10), .Y(n114) );
  AO22X1M U107 ( .A0(\MEM[3][0] ), .A1(n106), .B0(\MEM[1][0] ), .B1(n105), .Y(
        n1) );
  AOI221XLM U108 ( .A0(\MEM[5][0] ), .A1(n109), .B0(\MEM[7][0] ), .B1(n108), 
        .C0(n1), .Y(n4) );
  AO22X1M U109 ( .A0(\MEM[2][0] ), .A1(n106), .B0(\MEM[0][0] ), .B1(n105), .Y(
        n2) );
  AOI221XLM U110 ( .A0(\MEM[4][0] ), .A1(n109), .B0(\MEM[6][0] ), .B1(n108), 
        .C0(n2), .Y(n3) );
  OAI22X1M U111 ( .A0(n114), .A1(n4), .B0(N10), .B1(n3), .Y(rd_Data_mem[0]) );
  AO22X1M U112 ( .A0(\MEM[3][1] ), .A1(n106), .B0(\MEM[1][1] ), .B1(n105), .Y(
        n5) );
  AOI221XLM U113 ( .A0(\MEM[5][1] ), .A1(n109), .B0(\MEM[7][1] ), .B1(n108), 
        .C0(n5), .Y(n8) );
  AO22X1M U114 ( .A0(\MEM[2][1] ), .A1(n106), .B0(\MEM[0][1] ), .B1(n105), .Y(
        n6) );
  AOI221XLM U115 ( .A0(\MEM[4][1] ), .A1(n109), .B0(\MEM[6][1] ), .B1(n108), 
        .C0(n6), .Y(n7) );
  OAI22X1M U116 ( .A0(n114), .A1(n8), .B0(N10), .B1(n7), .Y(rd_Data_mem[1]) );
  AO22X1M U117 ( .A0(\MEM[3][2] ), .A1(n106), .B0(\MEM[1][2] ), .B1(n105), .Y(
        n9) );
  AOI221XLM U118 ( .A0(\MEM[5][2] ), .A1(n109), .B0(\MEM[7][2] ), .B1(n108), 
        .C0(n9), .Y(n87) );
  AO22X1M U119 ( .A0(\MEM[2][2] ), .A1(n106), .B0(\MEM[0][2] ), .B1(n105), .Y(
        n10) );
  AOI221XLM U120 ( .A0(\MEM[4][2] ), .A1(n109), .B0(\MEM[6][2] ), .B1(n108), 
        .C0(n10), .Y(n86) );
  OAI22X1M U121 ( .A0(n114), .A1(n87), .B0(N10), .B1(n86), .Y(rd_Data_mem[2])
         );
  AO22X1M U122 ( .A0(\MEM[3][3] ), .A1(n106), .B0(\MEM[1][3] ), .B1(n105), .Y(
        n88) );
  AOI221XLM U123 ( .A0(\MEM[5][3] ), .A1(n109), .B0(\MEM[7][3] ), .B1(n108), 
        .C0(n88), .Y(n91) );
  AO22X1M U124 ( .A0(\MEM[2][3] ), .A1(n106), .B0(\MEM[0][3] ), .B1(n105), .Y(
        n89) );
  AOI221XLM U125 ( .A0(\MEM[4][3] ), .A1(n109), .B0(\MEM[6][3] ), .B1(n108), 
        .C0(n89), .Y(n90) );
  OAI22X1M U126 ( .A0(n114), .A1(n91), .B0(N10), .B1(n90), .Y(rd_Data_mem[3])
         );
  AO22X1M U127 ( .A0(\MEM[3][4] ), .A1(n106), .B0(\MEM[1][4] ), .B1(n105), .Y(
        n92) );
  AOI221XLM U128 ( .A0(\MEM[5][4] ), .A1(n109), .B0(\MEM[7][4] ), .B1(n108), 
        .C0(n92), .Y(n95) );
  AO22X1M U129 ( .A0(\MEM[2][4] ), .A1(n106), .B0(\MEM[0][4] ), .B1(n105), .Y(
        n93) );
  AOI221XLM U130 ( .A0(\MEM[4][4] ), .A1(n109), .B0(\MEM[6][4] ), .B1(n108), 
        .C0(n93), .Y(n94) );
  OAI22X1M U131 ( .A0(n114), .A1(n95), .B0(N10), .B1(n94), .Y(rd_Data_mem[4])
         );
  AO22X1M U132 ( .A0(\MEM[3][5] ), .A1(n106), .B0(\MEM[1][5] ), .B1(n105), .Y(
        n96) );
  AOI221XLM U133 ( .A0(\MEM[5][5] ), .A1(n109), .B0(\MEM[7][5] ), .B1(n108), 
        .C0(n96), .Y(n99) );
  AO22X1M U134 ( .A0(\MEM[2][5] ), .A1(n106), .B0(\MEM[0][5] ), .B1(n105), .Y(
        n97) );
  AOI221XLM U135 ( .A0(\MEM[4][5] ), .A1(n109), .B0(\MEM[6][5] ), .B1(n108), 
        .C0(n97), .Y(n98) );
  OAI22X1M U136 ( .A0(n114), .A1(n99), .B0(N10), .B1(n98), .Y(rd_Data_mem[5])
         );
  AO22X1M U137 ( .A0(\MEM[3][6] ), .A1(n106), .B0(\MEM[1][6] ), .B1(n105), .Y(
        n100) );
  AOI221XLM U138 ( .A0(\MEM[5][6] ), .A1(n109), .B0(\MEM[7][6] ), .B1(n108), 
        .C0(n100), .Y(n103) );
  AO22X1M U139 ( .A0(\MEM[2][6] ), .A1(n106), .B0(\MEM[0][6] ), .B1(n105), .Y(
        n101) );
  AOI221XLM U140 ( .A0(\MEM[4][6] ), .A1(n109), .B0(\MEM[6][6] ), .B1(n108), 
        .C0(n101), .Y(n102) );
  OAI22X1M U141 ( .A0(n114), .A1(n103), .B0(N10), .B1(n102), .Y(rd_Data_mem[6]) );
  AO22X1M U142 ( .A0(\MEM[3][7] ), .A1(n106), .B0(\MEM[1][7] ), .B1(n105), .Y(
        n104) );
  AOI221XLM U143 ( .A0(\MEM[5][7] ), .A1(n109), .B0(\MEM[7][7] ), .B1(n108), 
        .C0(n104), .Y(n111) );
  AO22X1M U144 ( .A0(\MEM[2][7] ), .A1(n106), .B0(\MEM[0][7] ), .B1(n105), .Y(
        n107) );
  AOI221XLM U145 ( .A0(\MEM[4][7] ), .A1(n109), .B0(\MEM[6][7] ), .B1(n108), 
        .C0(n107), .Y(n110) );
  OAI22X1M U146 ( .A0(n111), .A1(n114), .B0(N10), .B1(n110), .Y(rd_Data_mem[7]) );
endmodule


module wptr_Full_blk ( wr_clk_blk, wr_rst_blk, wr_inc_blk, wq2_rptr_blk, 
        wr_full_blk, wr_adr_blk, wr_ptr_blk );
  input [3:0] wq2_rptr_blk;
  output [2:0] wr_adr_blk;
  output [3:0] wr_ptr_blk;
  input wr_clk_blk, wr_rst_blk, wr_inc_blk;
  output wr_full_blk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [3:0] gray_bin_ptr;
  wire   [3:0] ptr_bin_next;

  DFFRQX2M \bin_ptr_reg[3]  ( .D(ptr_bin_next[3]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(gray_bin_ptr[3]) );
  DFFRQX2M \bin_ptr_reg[2]  ( .D(ptr_bin_next[2]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(wr_adr_blk[2]) );
  DFFRQX2M \wr_ptr_blk_reg[2]  ( .D(gray_bin_ptr[2]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(wr_ptr_blk[2]) );
  DFFRQX2M \wr_ptr_blk_reg[1]  ( .D(gray_bin_ptr[1]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(wr_ptr_blk[1]) );
  DFFRQX2M \wr_ptr_blk_reg[0]  ( .D(gray_bin_ptr[0]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(wr_ptr_blk[0]) );
  DFFRX1M \bin_ptr_reg[0]  ( .D(ptr_bin_next[0]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(wr_adr_blk[0]), .QN(n1) );
  DFFRQX2M \bin_ptr_reg[1]  ( .D(ptr_bin_next[1]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(wr_adr_blk[1]) );
  DFFRQX2M \wr_ptr_blk_reg[3]  ( .D(gray_bin_ptr[3]), .CK(wr_clk_blk), .RN(
        wr_rst_blk), .Q(wr_ptr_blk[3]) );
  INVX2M U3 ( .A(n2), .Y(wr_full_blk) );
  NAND2X2M U4 ( .A(wr_inc_blk), .B(n2), .Y(n6) );
  XNOR2X2M U5 ( .A(gray_bin_ptr[1]), .B(wq2_rptr_blk[1]), .Y(n7) );
  XNOR2X2M U6 ( .A(n1), .B(wr_adr_blk[1]), .Y(gray_bin_ptr[0]) );
  NAND4X2M U7 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  CLKXOR2X2M U8 ( .A(wq2_rptr_blk[3]), .B(gray_bin_ptr[3]), .Y(n10) );
  XNOR2X2M U9 ( .A(gray_bin_ptr[0]), .B(wq2_rptr_blk[0]), .Y(n8) );
  CLKXOR2X2M U10 ( .A(wq2_rptr_blk[2]), .B(gray_bin_ptr[2]), .Y(n9) );
  CLKXOR2X2M U11 ( .A(gray_bin_ptr[3]), .B(wr_adr_blk[2]), .Y(gray_bin_ptr[2])
         );
  CLKXOR2X2M U12 ( .A(wr_adr_blk[1]), .B(wr_adr_blk[2]), .Y(gray_bin_ptr[1])
         );
  NOR2X2M U13 ( .A(n6), .B(n1), .Y(n4) );
  XNOR2X2M U14 ( .A(gray_bin_ptr[3]), .B(n3), .Y(ptr_bin_next[3]) );
  NAND3X2M U15 ( .A(wr_adr_blk[1]), .B(wr_adr_blk[2]), .C(n4), .Y(n3) );
  XNOR2X2M U16 ( .A(wr_adr_blk[2]), .B(n5), .Y(ptr_bin_next[2]) );
  NAND2X2M U17 ( .A(n4), .B(wr_adr_blk[1]), .Y(n5) );
  CLKXOR2X2M U18 ( .A(wr_adr_blk[1]), .B(n4), .Y(ptr_bin_next[1]) );
  CLKXOR2X2M U19 ( .A(n1), .B(n6), .Y(ptr_bin_next[0]) );
endmodule


module rptr_empty_blk ( rd_clk_blk, rd_rst_blk, rd_inc_blk, rq2_wptr_blk, 
        rd_empty_blk, rd_adr_blk, rd_ptr_blk );
  input [3:0] rq2_wptr_blk;
  output [2:0] rd_adr_blk;
  output [3:0] rd_ptr_blk;
  input rd_clk_blk, rd_rst_blk, rd_inc_blk;
  output rd_empty_blk;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;
  wire   [3:0] gray_bin_ptr;
  wire   [3:0] ptr_bin_next;

  DFFRQX2M \bin_ptr_reg[3]  ( .D(ptr_bin_next[3]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(gray_bin_ptr[3]) );
  DFFRX1M \bin_ptr_reg[0]  ( .D(ptr_bin_next[0]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(rd_adr_blk[0]), .QN(n1) );
  DFFRQX2M \bin_ptr_reg[2]  ( .D(ptr_bin_next[2]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(rd_adr_blk[2]) );
  DFFRQX2M \bin_ptr_reg[1]  ( .D(ptr_bin_next[1]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(rd_adr_blk[1]) );
  DFFRQX2M \rd_ptr_blk_reg[3]  ( .D(gray_bin_ptr[3]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(rd_ptr_blk[3]) );
  DFFRQX2M \rd_ptr_blk_reg[2]  ( .D(gray_bin_ptr[2]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(rd_ptr_blk[2]) );
  DFFRQX2M \rd_ptr_blk_reg[1]  ( .D(gray_bin_ptr[1]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(rd_ptr_blk[1]) );
  DFFRQX2M \rd_ptr_blk_reg[0]  ( .D(gray_bin_ptr[0]), .CK(rd_clk_blk), .RN(
        rd_rst_blk), .Q(rd_ptr_blk[0]) );
  INVX2M U3 ( .A(n2), .Y(rd_empty_blk) );
  XNOR2X2M U4 ( .A(gray_bin_ptr[2]), .B(rq2_wptr_blk[2]), .Y(n10) );
  XNOR2X2M U5 ( .A(n1), .B(rd_adr_blk[1]), .Y(gray_bin_ptr[0]) );
  NAND4X2M U6 ( .A(n7), .B(n8), .C(n9), .D(n10), .Y(n2) );
  XNOR2X2M U7 ( .A(gray_bin_ptr[3]), .B(rq2_wptr_blk[3]), .Y(n9) );
  XNOR2X2M U8 ( .A(gray_bin_ptr[0]), .B(rq2_wptr_blk[0]), .Y(n8) );
  XNOR2X2M U9 ( .A(gray_bin_ptr[1]), .B(rq2_wptr_blk[1]), .Y(n7) );
  CLKXOR2X2M U10 ( .A(rd_adr_blk[1]), .B(rd_adr_blk[2]), .Y(gray_bin_ptr[1])
         );
  CLKXOR2X2M U11 ( .A(gray_bin_ptr[3]), .B(rd_adr_blk[2]), .Y(gray_bin_ptr[2])
         );
  NOR2X2M U12 ( .A(n6), .B(n1), .Y(n4) );
  XNOR2X2M U13 ( .A(gray_bin_ptr[3]), .B(n3), .Y(ptr_bin_next[3]) );
  NAND3X2M U14 ( .A(rd_adr_blk[1]), .B(rd_adr_blk[2]), .C(n4), .Y(n3) );
  XNOR2X2M U15 ( .A(rd_adr_blk[2]), .B(n5), .Y(ptr_bin_next[2]) );
  NAND2X2M U16 ( .A(n4), .B(rd_adr_blk[1]), .Y(n5) );
  NAND2X2M U17 ( .A(rd_inc_blk), .B(n2), .Y(n6) );
  CLKXOR2X2M U18 ( .A(rd_adr_blk[1]), .B(n4), .Y(ptr_bin_next[1]) );
  CLKXOR2X2M U19 ( .A(n1), .B(n6), .Y(ptr_bin_next[0]) );
endmodule


module sync_2FF_0 ( clk_sync, rst_sync, ptr_sync, Sync_out );
  input [3:0] ptr_sync;
  output [3:0] Sync_out;
  input clk_sync, rst_sync;

  wire   [3:0] wq1_reg;

  DFFRQX2M \Sync_out_reg[1]  ( .D(wq1_reg[1]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[1]) );
  DFFRQX2M \Sync_out_reg[0]  ( .D(wq1_reg[0]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[0]) );
  DFFRQX2M \Sync_out_reg[3]  ( .D(wq1_reg[3]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[3]) );
  DFFRQX2M \Sync_out_reg[2]  ( .D(wq1_reg[2]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[2]) );
  DFFRQX2M \wq1_reg_reg[3]  ( .D(ptr_sync[3]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[3]) );
  DFFRQX2M \wq1_reg_reg[2]  ( .D(ptr_sync[2]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[2]) );
  DFFRQX2M \wq1_reg_reg[1]  ( .D(ptr_sync[1]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[1]) );
  DFFRQX2M \wq1_reg_reg[0]  ( .D(ptr_sync[0]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[0]) );
endmodule


module sync_2FF_1 ( clk_sync, rst_sync, ptr_sync, Sync_out );
  input [3:0] ptr_sync;
  output [3:0] Sync_out;
  input clk_sync, rst_sync;

  wire   [3:0] wq1_reg;

  DFFRQX2M \Sync_out_reg[3]  ( .D(wq1_reg[3]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[3]) );
  DFFRQX2M \Sync_out_reg[2]  ( .D(wq1_reg[2]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[2]) );
  DFFRQX2M \Sync_out_reg[1]  ( .D(wq1_reg[1]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[1]) );
  DFFRQX2M \Sync_out_reg[0]  ( .D(wq1_reg[0]), .CK(clk_sync), .RN(rst_sync), 
        .Q(Sync_out[0]) );
  DFFRQX2M \wq1_reg_reg[3]  ( .D(ptr_sync[3]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[3]) );
  DFFRQX2M \wq1_reg_reg[2]  ( .D(ptr_sync[2]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[2]) );
  DFFRQX2M \wq1_reg_reg[1]  ( .D(ptr_sync[1]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[1]) );
  DFFRQX2M \wq1_reg_reg[0]  ( .D(ptr_sync[0]), .CK(clk_sync), .RN(rst_sync), 
        .Q(wq1_reg[0]) );
endmodule


module Async_FIFO ( WR_clk, WR_rst, WR_inc, WR_Data, RD_clk, RD_rst, RD_inc, 
        FULL, EMPTY, RD_Data );
  input [7:0] WR_Data;
  output [7:0] RD_Data;
  input WR_clk, WR_rst, WR_inc, RD_clk, RD_rst, RD_inc;
  output FULL, EMPTY;
  wire   n1, n2;
  wire   [2:0] Waddr;
  wire   [2:0] Raddr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] Wptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] Rptr;

  FIFO_Mem U0_FIFO_MEM ( .wr_clk_mem(WR_clk), .Wr_rst_mem(n1), .wr_full_mem(
        FULL), .wr_inc_mem(WR_inc), .wr_Data_mem(WR_Data), .wr_adr_mem(Waddr), 
        .rd_adr_mem(Raddr), .rd_Data_mem(RD_Data) );
  wptr_Full_blk U0_full_blk ( .wr_clk_blk(WR_clk), .wr_rst_blk(n1), 
        .wr_inc_blk(WR_inc), .wq2_rptr_blk(wq2_rptr), .wr_full_blk(FULL), 
        .wr_adr_blk(Waddr), .wr_ptr_blk(Wptr) );
  rptr_empty_blk u0_empty_blk ( .rd_clk_blk(RD_clk), .rd_rst_blk(RD_rst), 
        .rd_inc_blk(RD_inc), .rq2_wptr_blk(rq2_wptr), .rd_empty_blk(EMPTY), 
        .rd_adr_blk(Raddr), .rd_ptr_blk(Rptr) );
  sync_2FF_0 u0_sync_r2w ( .clk_sync(WR_clk), .rst_sync(n1), .ptr_sync(Rptr), 
        .Sync_out(wq2_rptr) );
  sync_2FF_1 u0_sync_w2r ( .clk_sync(RD_clk), .rst_sync(RD_rst), .ptr_sync(
        Wptr), .Sync_out(rq2_wptr) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(WR_rst), .Y(n2) );
endmodule


module pulse_Gen ( CLK, RST, in_signal, pulsed_signal );
  input CLK, RST, in_signal;
  output pulsed_signal;
  wire   out_Flop, in_Flop;

  DFFRQX2M out_Flop_reg ( .D(in_Flop), .CK(CLK), .RN(RST), .Q(out_Flop) );
  DFFRQX2M in_Flop_reg ( .D(in_signal), .CK(CLK), .RN(RST), .Q(in_Flop) );
  AND2X2M U3 ( .A(out_Flop), .B(in_Flop), .Y(pulsed_signal) );
endmodule


module CLK_div_0_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_div_0 ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk_reg, toggle_flag, N9, N10, N11, N12, N13, N14, N15, N16,
         N25, N26, N27, N28, N29, N30, N31, N32, N61, N62, N63, N64, N65, N66,
         N67, N68, n25, n26, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41;
  wire   [7:0] counter;

  CLK_div_0_DW01_inc_0 r73 ( .A(counter), .SUM({N32, N31, N30, N29, N28, N27, 
        N26, N25}) );
  DFFRQX2M div_clk_reg_reg ( .D(n25), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        div_clk_reg) );
  DFFRQX2M \counter_reg[7]  ( .D(N68), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M toggle_flag_reg ( .D(n26), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        toggle_flag) );
  DFFRQX2M \counter_reg[0]  ( .D(N61), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(N62), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(N63), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[3]  ( .D(N64), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[4]  ( .D(N65), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(N66), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[6]  ( .D(N67), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  MX2X2M U3 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N2), .Y(o_div_clk) );
  OR2X2M U4 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  NAND2X2M U5 ( .A(n13), .B(n10), .Y(n12) );
  CLKINVX1M U6 ( .A(i_div_ratio[1]), .Y(N9) );
  OAI2BB1X1M U7 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N10)
         );
  OR2X1M U8 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U9 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N11) );
  OR2X1M U10 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U11 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N12) );
  OR2X1M U12 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U13 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N13) );
  XNOR2X1M U14 ( .A(i_div_ratio[6]), .B(n4), .Y(N14) );
  NOR3X1M U15 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N16) );
  OAI21X1M U16 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U17 ( .AN(N16), .B(n5), .Y(N15) );
  MXI2X1M U18 ( .A(n6), .B(n7), .S0(toggle_flag), .Y(n26) );
  CLKNAND2X2M U19 ( .A(N2), .B(n7), .Y(n6) );
  OAI21X1M U20 ( .A0(n8), .A1(n9), .B0(n10), .Y(n7) );
  MXI2X1M U21 ( .A(n11), .B(n12), .S0(div_clk_reg), .Y(n25) );
  CLKNAND2X2M U22 ( .A(N2), .B(n12), .Y(n11) );
  NOR2BX1M U23 ( .AN(N32), .B(n12), .Y(N68) );
  NOR2BX1M U24 ( .AN(N31), .B(n12), .Y(N67) );
  NOR2BX1M U25 ( .AN(N30), .B(n12), .Y(N66) );
  NOR2BX1M U26 ( .AN(N29), .B(n12), .Y(N65) );
  NOR2BX1M U27 ( .AN(N28), .B(n12), .Y(N64) );
  NOR2BX1M U28 ( .AN(N27), .B(n12), .Y(N63) );
  NOR2BX1M U29 ( .AN(N26), .B(n12), .Y(N62) );
  NOR2BX1M U30 ( .AN(N25), .B(n12), .Y(N61) );
  CLKINVX1M U31 ( .A(n14), .Y(n10) );
  OAI31X1M U32 ( .A0(n15), .A1(n16), .A2(n17), .B0(N2), .Y(n14) );
  CLKNAND2X2M U33 ( .A(n18), .B(n19), .Y(n17) );
  XNOR2X1M U34 ( .A(counter[5]), .B(N14), .Y(n19) );
  XNOR2X1M U35 ( .A(counter[6]), .B(N15), .Y(n18) );
  NAND3X1M U36 ( .A(n20), .B(n21), .C(n22), .Y(n16) );
  XNOR2X1M U37 ( .A(counter[3]), .B(N12), .Y(n22) );
  XNOR2X1M U38 ( .A(counter[4]), .B(N13), .Y(n21) );
  XNOR2X1M U39 ( .A(counter[0]), .B(N9), .Y(n20) );
  NAND4X1M U40 ( .A(n23), .B(n24), .C(n27), .D(n28), .Y(n15) );
  XNOR2X1M U41 ( .A(counter[1]), .B(N10), .Y(n28) );
  NOR2X1M U42 ( .A(toggle_flag), .B(n8), .Y(n27) );
  XNOR2X1M U43 ( .A(counter[2]), .B(N11), .Y(n24) );
  CLKXOR2X2M U44 ( .A(n29), .B(N16), .Y(n23) );
  AOI31X1M U45 ( .A0(n30), .A1(n8), .A2(n31), .B0(n32), .Y(n13) );
  CLKINVX1M U46 ( .A(n9), .Y(n32) );
  NAND3X1M U47 ( .A(n31), .B(n30), .C(toggle_flag), .Y(n9) );
  AND4X1M U48 ( .A(n29), .B(n33), .C(n34), .D(n35), .Y(n31) );
  XNOR2X1M U49 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n35) );
  XNOR2X1M U50 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n34) );
  XNOR2X1M U51 ( .A(counter[2]), .B(i_div_ratio[3]), .Y(n33) );
  CLKINVX1M U52 ( .A(counter[7]), .Y(n29) );
  CLKINVX1M U53 ( .A(i_div_ratio[0]), .Y(n8) );
  AND4X1M U54 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n30) );
  XNOR2X1M U55 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n39) );
  XNOR2X1M U56 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n38) );
  XNOR2X1M U57 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n37) );
  XNOR2X1M U58 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n36) );
  OA21X1M U59 ( .A0(n40), .A1(n41), .B0(i_clk_en), .Y(N2) );
  OR3X1M U60 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n41) );
  OR4X1M U61 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n40) );
endmodule


module clk_div_mux ( in, div_ratio );
  input [5:0] in;
  output [7:0] div_ratio;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  INVX2M U3 ( .A(1'b1), .Y(div_ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(div_ratio[6]) );
  INVX2M U7 ( .A(1'b1), .Y(div_ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(div_ratio[4]) );
  NAND4BX1M U11 ( .AN(in[4]), .B(in[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(in[3]), .B(in[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U13 ( .A(n7), .B(in[1]), .C(in[0]), .Y(div_ratio[1]) );
  NOR4X1M U14 ( .A(n5), .B(in[3]), .C(in[5]), .D(in[4]), .Y(div_ratio[3]) );
  NAND3X2M U15 ( .A(n17), .B(n16), .C(in[2]), .Y(n5) );
  NOR3X2M U16 ( .A(n6), .B(in[1]), .C(in[0]), .Y(div_ratio[2]) );
  OAI211X2M U17 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(div_ratio[0]) );
  NAND2X2M U18 ( .A(n7), .B(n6), .Y(n9) );
  NOR4X1M U19 ( .A(in[5]), .B(in[4]), .C(in[3]), .D(n15), .Y(n8) );
  INVX2M U20 ( .A(in[2]), .Y(n15) );
  INVX2M U21 ( .A(in[1]), .Y(n16) );
  INVX2M U22 ( .A(in[0]), .Y(n17) );
  INVX2M U23 ( .A(in[5]), .Y(n14) );
endmodule


module CLK_div_1_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  ADDHX1M U1_1_6 ( .A(A[6]), .B(carry[6]), .CO(carry[7]), .S(SUM[6]) );
  ADDHX1M U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHX1M U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHX1M U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHX1M U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHX1M U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  CLKXOR2X2M U1 ( .A(carry[7]), .B(A[7]), .Y(SUM[7]) );
  CLKINVX1M U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module CLK_div_1 ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk );
  input [7:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en;
  output o_div_clk;
  wire   N2, div_clk_reg, toggle_flag, N9, N10, N11, N12, N13, N14, N15, N16,
         N25, N26, N27, N28, N29, N30, N31, N32, N61, N62, N63, N64, N65, N66,
         N67, N68, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43;
  wire   [7:0] counter;

  CLK_div_1_DW01_inc_0 r73 ( .A(counter), .SUM({N32, N31, N30, N29, N28, N27, 
        N26, N25}) );
  DFFRQX2M div_clk_reg_reg ( .D(n43), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        div_clk_reg) );
  DFFRQX2M \counter_reg[7]  ( .D(N68), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[7]) );
  DFFRQX2M toggle_flag_reg ( .D(n42), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        toggle_flag) );
  DFFRQX2M \counter_reg[0]  ( .D(N61), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(N62), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[1]) );
  DFFRQX2M \counter_reg[2]  ( .D(N63), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[3]  ( .D(N64), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[4]  ( .D(N65), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[4]) );
  DFFRQX2M \counter_reg[5]  ( .D(N66), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[5]) );
  DFFRQX2M \counter_reg[6]  ( .D(N67), .CK(i_ref_clk), .RN(i_rst_n), .Q(
        counter[6]) );
  OR2X2M U3 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U4 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N2), .Y(o_div_clk) );
  NAND2X2M U5 ( .A(n13), .B(n10), .Y(n12) );
  CLKINVX1M U6 ( .A(i_div_ratio[1]), .Y(N9) );
  OAI2BB1X1M U7 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N10)
         );
  OR2X1M U8 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U9 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N11) );
  OR2X1M U10 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U11 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N12) );
  OR2X1M U12 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U13 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N13) );
  XNOR2X1M U14 ( .A(i_div_ratio[6]), .B(n4), .Y(N14) );
  NOR3X1M U15 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N16) );
  OAI21X1M U16 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U17 ( .AN(N16), .B(n5), .Y(N15) );
  MXI2X1M U18 ( .A(n6), .B(n7), .S0(toggle_flag), .Y(n42) );
  CLKNAND2X2M U19 ( .A(N2), .B(n7), .Y(n6) );
  OAI21X1M U20 ( .A0(n8), .A1(n9), .B0(n10), .Y(n7) );
  MXI2X1M U21 ( .A(n11), .B(n12), .S0(div_clk_reg), .Y(n43) );
  CLKNAND2X2M U22 ( .A(N2), .B(n12), .Y(n11) );
  NOR2BX1M U23 ( .AN(N32), .B(n12), .Y(N68) );
  NOR2BX1M U24 ( .AN(N31), .B(n12), .Y(N67) );
  NOR2BX1M U25 ( .AN(N30), .B(n12), .Y(N66) );
  NOR2BX1M U26 ( .AN(N29), .B(n12), .Y(N65) );
  NOR2BX1M U27 ( .AN(N28), .B(n12), .Y(N64) );
  NOR2BX1M U28 ( .AN(N27), .B(n12), .Y(N63) );
  NOR2BX1M U29 ( .AN(N26), .B(n12), .Y(N62) );
  NOR2BX1M U30 ( .AN(N25), .B(n12), .Y(N61) );
  CLKINVX1M U31 ( .A(n14), .Y(n10) );
  OAI31X1M U32 ( .A0(n15), .A1(n16), .A2(n17), .B0(N2), .Y(n14) );
  CLKNAND2X2M U33 ( .A(n18), .B(n19), .Y(n17) );
  XNOR2X1M U34 ( .A(counter[5]), .B(N14), .Y(n19) );
  XNOR2X1M U35 ( .A(counter[6]), .B(N15), .Y(n18) );
  NAND3X1M U36 ( .A(n20), .B(n21), .C(n22), .Y(n16) );
  XNOR2X1M U37 ( .A(counter[3]), .B(N12), .Y(n22) );
  XNOR2X1M U38 ( .A(counter[4]), .B(N13), .Y(n21) );
  XNOR2X1M U39 ( .A(counter[0]), .B(N9), .Y(n20) );
  NAND4X1M U40 ( .A(n23), .B(n24), .C(n27), .D(n28), .Y(n15) );
  XNOR2X1M U41 ( .A(counter[1]), .B(N10), .Y(n28) );
  NOR2X1M U42 ( .A(toggle_flag), .B(n8), .Y(n27) );
  XNOR2X1M U43 ( .A(counter[2]), .B(N11), .Y(n24) );
  CLKXOR2X2M U44 ( .A(n29), .B(N16), .Y(n23) );
  AOI31X1M U45 ( .A0(n30), .A1(n8), .A2(n31), .B0(n32), .Y(n13) );
  CLKINVX1M U46 ( .A(n9), .Y(n32) );
  NAND3X1M U47 ( .A(n31), .B(n30), .C(toggle_flag), .Y(n9) );
  AND4X1M U48 ( .A(n29), .B(n33), .C(n34), .D(n35), .Y(n31) );
  XNOR2X1M U49 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n35) );
  XNOR2X1M U50 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n34) );
  XNOR2X1M U51 ( .A(counter[2]), .B(i_div_ratio[3]), .Y(n33) );
  CLKINVX1M U52 ( .A(counter[7]), .Y(n29) );
  CLKINVX1M U53 ( .A(i_div_ratio[0]), .Y(n8) );
  AND4X1M U54 ( .A(n36), .B(n37), .C(n38), .D(n39), .Y(n30) );
  XNOR2X1M U55 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n39) );
  XNOR2X1M U56 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n38) );
  XNOR2X1M U57 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n37) );
  XNOR2X1M U58 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n36) );
  OA21X1M U59 ( .A0(n40), .A1(n41), .B0(i_clk_en), .Y(N2) );
  OR3X1M U60 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n41) );
  OR4X1M U61 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n40) );
endmodule


module Serializer_tx ( P_Data_ser, ser_en_ser, rst_ser, clk_ser, 
        Data_valid_ser, out_Data_ser, ser_done_ser );
  input [7:0] P_Data_ser;
  input ser_en_ser, rst_ser, clk_ser, Data_valid_ser;
  output out_Data_ser, ser_done_ser;
  wire   n1, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n2, n3,
         n4, n5, n6, n33;
  wire   [3:0] counter;
  wire   [7:0] P_Data_register;

  DFFRQX2M \P_Data_register_reg[7]  ( .D(n21), .CK(clk_ser), .RN(rst_ser), .Q(
        P_Data_register[7]) );
  DFFRQX2M \P_Data_register_reg[6]  ( .D(n22), .CK(clk_ser), .RN(rst_ser), .Q(
        P_Data_register[6]) );
  DFFRQX2M \P_Data_register_reg[5]  ( .D(n23), .CK(clk_ser), .RN(rst_ser), .Q(
        P_Data_register[5]) );
  DFFRQX2M \P_Data_register_reg[4]  ( .D(n24), .CK(clk_ser), .RN(rst_ser), .Q(
        P_Data_register[4]) );
  DFFRQX2M \P_Data_register_reg[3]  ( .D(n25), .CK(clk_ser), .RN(rst_ser), .Q(
        P_Data_register[3]) );
  DFFRQX2M \P_Data_register_reg[2]  ( .D(n26), .CK(clk_ser), .RN(rst_ser), .Q(
        P_Data_register[2]) );
  DFFRQX2M \P_Data_register_reg[1]  ( .D(n27), .CK(clk_ser), .RN(rst_ser), .Q(
        P_Data_register[1]) );
  DFFRX1M \P_Data_register_reg[0]  ( .D(n28), .CK(clk_ser), .RN(rst_ser), .QN(
        n1) );
  DFFRQX2M \counter_reg[3]  ( .D(n31), .CK(clk_ser), .RN(rst_ser), .Q(
        counter[3]) );
  DFFRQX2M \counter_reg[2]  ( .D(n30), .CK(clk_ser), .RN(rst_ser), .Q(
        counter[2]) );
  DFFRQX2M \counter_reg[0]  ( .D(n32), .CK(clk_ser), .RN(rst_ser), .Q(
        counter[0]) );
  DFFRQX2M \counter_reg[1]  ( .D(n29), .CK(clk_ser), .RN(rst_ser), .Q(
        counter[1]) );
  DFFRQX2M out_Data_ser_reg ( .D(n20), .CK(clk_ser), .RN(rst_ser), .Q(
        out_Data_ser) );
  OR2X2M U3 ( .A(Data_valid_ser), .B(n2), .Y(n7) );
  INVX2M U4 ( .A(n2), .Y(n3) );
  BUFX2M U5 ( .A(n9), .Y(n2) );
  NOR3BX2M U6 ( .AN(ser_en_ser), .B(ser_done_ser), .C(Data_valid_ser), .Y(n9)
         );
  AOI21BX2M U7 ( .A0(n4), .A1(n2), .B0N(n7), .Y(n16) );
  OAI32X1M U8 ( .A0(n6), .A1(counter[3]), .A2(n17), .B0(n19), .B1(n33), .Y(n31) );
  AOI21X2M U9 ( .A0(n2), .A1(n6), .B0(n18), .Y(n19) );
  INVX2M U10 ( .A(counter[2]), .Y(n6) );
  OAI32X1M U11 ( .A0(n4), .A1(counter[1]), .A2(n3), .B0(n16), .B1(n5), .Y(n29)
         );
  INVX2M U12 ( .A(counter[1]), .Y(n5) );
  OAI22X1M U13 ( .A0(n7), .A1(n4), .B0(counter[0]), .B1(n3), .Y(n32) );
  OAI21X2M U14 ( .A0(counter[1]), .A1(n3), .B0(n16), .Y(n18) );
  OAI2BB2X1M U15 ( .B0(n3), .B1(n1), .A0N(out_Data_ser), .A1N(n3), .Y(n20) );
  OAI2BB2X1M U16 ( .B0(counter[2]), .B1(n17), .A0N(n18), .A1N(counter[2]), .Y(
        n30) );
  OAI2B1X2M U17 ( .A1N(P_Data_register[1]), .A0(n7), .B0(n14), .Y(n27) );
  AOI22X1M U18 ( .A0(P_Data_ser[1]), .A1(Data_valid_ser), .B0(
        P_Data_register[2]), .B1(n2), .Y(n14) );
  OAI2B1X2M U19 ( .A1N(P_Data_register[2]), .A0(n7), .B0(n13), .Y(n26) );
  AOI22X1M U20 ( .A0(P_Data_ser[2]), .A1(Data_valid_ser), .B0(
        P_Data_register[3]), .B1(n2), .Y(n13) );
  OAI2B1X2M U21 ( .A1N(P_Data_register[3]), .A0(n7), .B0(n12), .Y(n25) );
  AOI22X1M U22 ( .A0(P_Data_ser[3]), .A1(Data_valid_ser), .B0(
        P_Data_register[4]), .B1(n2), .Y(n12) );
  OAI2B1X2M U23 ( .A1N(P_Data_register[4]), .A0(n7), .B0(n11), .Y(n24) );
  AOI22X1M U24 ( .A0(P_Data_ser[4]), .A1(Data_valid_ser), .B0(
        P_Data_register[5]), .B1(n2), .Y(n11) );
  OAI2B1X2M U25 ( .A1N(P_Data_register[5]), .A0(n7), .B0(n10), .Y(n23) );
  AOI22X1M U26 ( .A0(P_Data_ser[5]), .A1(Data_valid_ser), .B0(
        P_Data_register[6]), .B1(n2), .Y(n10) );
  OAI2B1X2M U27 ( .A1N(P_Data_register[6]), .A0(n7), .B0(n8), .Y(n22) );
  AOI22X1M U28 ( .A0(P_Data_ser[6]), .A1(Data_valid_ser), .B0(
        P_Data_register[7]), .B1(n2), .Y(n8) );
  OAI21X2M U29 ( .A0(n1), .A1(n7), .B0(n15), .Y(n28) );
  AOI22X1M U30 ( .A0(P_Data_ser[0]), .A1(Data_valid_ser), .B0(
        P_Data_register[1]), .B1(n2), .Y(n15) );
  NAND3X2M U31 ( .A(counter[0]), .B(n2), .C(counter[1]), .Y(n17) );
  AO2B2X2M U32 ( .B0(P_Data_ser[7]), .B1(Data_valid_ser), .A0(
        P_Data_register[7]), .A1N(n7), .Y(n21) );
  NOR4X1M U33 ( .A(n33), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(
        ser_done_ser) );
  INVX2M U34 ( .A(counter[3]), .Y(n33) );
  INVX2M U35 ( .A(counter[0]), .Y(n4) );
endmodule


module FSM_tx ( clk_fsm, rst_fsm, Data_v_fsm, Par_en_fsm, ser_done_fsm, 
        ser_en_fsm, mux_sel_fsm, busy_fsm );
  output [1:0] mux_sel_fsm;
  input clk_fsm, rst_fsm, Data_v_fsm, Par_en_fsm, ser_done_fsm;
  output ser_en_fsm, busy_fsm;
  wire   busy_c, n4, n5, n6, n7, n8, n9, n10, n1, n2, n3;
  wire   [2:0] C_S;
  wire   [2:0] N_S;

  DFFRQX2M \C_S_reg[0]  ( .D(N_S[0]), .CK(clk_fsm), .RN(rst_fsm), .Q(C_S[0])
         );
  DFFRQX2M \C_S_reg[1]  ( .D(N_S[1]), .CK(clk_fsm), .RN(rst_fsm), .Q(C_S[1])
         );
  DFFRQX2M \C_S_reg[2]  ( .D(N_S[2]), .CK(clk_fsm), .RN(rst_fsm), .Q(C_S[2])
         );
  DFFRQX2M busy_fsm_reg ( .D(busy_c), .CK(clk_fsm), .RN(rst_fsm), .Q(busy_fsm)
         );
  INVX2M U3 ( .A(mux_sel_fsm[1]), .Y(ser_en_fsm) );
  NAND2X2M U4 ( .A(n5), .B(n3), .Y(mux_sel_fsm[1]) );
  NOR2X2M U5 ( .A(n1), .B(n2), .Y(n6) );
  NOR3X2M U6 ( .A(n10), .B(C_S[2]), .C(C_S[0]), .Y(N_S[0]) );
  AOI32X1M U7 ( .A0(ser_done_fsm), .A1(C_S[1]), .A2(Par_en_fsm), .B0(
        Data_v_fsm), .B1(n2), .Y(n10) );
  XNOR2X2M U8 ( .A(n1), .B(C_S[1]), .Y(n5) );
  NAND2X2M U9 ( .A(C_S[0]), .B(n3), .Y(mux_sel_fsm[0]) );
  INVX2M U10 ( .A(C_S[2]), .Y(n3) );
  INVX2M U11 ( .A(C_S[0]), .Y(n1) );
  NOR2BX2M U12 ( .AN(ser_done_fsm), .B(Par_en_fsm), .Y(n8) );
  OAI21X2M U13 ( .A0(C_S[1]), .A1(mux_sel_fsm[0]), .B0(n9), .Y(N_S[1]) );
  NAND4BX1M U14 ( .AN(n8), .B(C_S[1]), .C(n1), .D(n3), .Y(n9) );
  OAI21X2M U15 ( .A0(n4), .A1(n5), .B0(mux_sel_fsm[1]), .Y(busy_c) );
  XNOR2X2M U16 ( .A(n6), .B(C_S[2]), .Y(n4) );
  NOR2X2M U17 ( .A(C_S[2]), .B(n7), .Y(N_S[2]) );
  AOI21X2M U18 ( .A0(n8), .A1(C_S[1]), .B0(n6), .Y(n7) );
  INVX2M U19 ( .A(C_S[1]), .Y(n2) );
endmodule


module parity_calc ( P_Data_par, Data_valid_par, Par_TYP_par, rst_par, clk_par, 
        Par_bit_par );
  input [7:0] P_Data_par;
  input Data_valid_par, Par_TYP_par, rst_par, clk_par;
  output Par_bit_par;
  wire   n1, n3, n4, n5, n6, n7, n2;

  DFFRQX2M Par_bit_par_reg ( .D(n7), .CK(clk_par), .RN(rst_par), .Q(
        Par_bit_par) );
  XNOR2X2M U2 ( .A(P_Data_par[3]), .B(P_Data_par[2]), .Y(n5) );
  XOR3XLM U3 ( .A(P_Data_par[5]), .B(P_Data_par[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U4 ( .A(P_Data_par[7]), .B(P_Data_par[6]), .Y(n6) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(Par_bit_par), .A1N(n2), .Y(n7) );
  INVX2M U6 ( .A(Data_valid_par), .Y(n2) );
  XOR3XLM U7 ( .A(n3), .B(Par_TYP_par), .C(n4), .Y(n1) );
  XOR3XLM U8 ( .A(P_Data_par[1]), .B(P_Data_par[0]), .C(n5), .Y(n4) );
endmodule


module mux_tx ( mux_sel, ser_data_mux, Par_bit_mux, TX_out_max );
  input [1:0] mux_sel;
  input ser_data_mux, Par_bit_mux;
  output TX_out_max;
  wire   n1;

  OAI2BB1X2M U3 ( .A0N(ser_data_mux), .A1N(mux_sel[0]), .B0(n1), .Y(TX_out_max) );
  OAI21X2M U4 ( .A0(Par_bit_mux), .A1(mux_sel[0]), .B0(mux_sel[1]), .Y(n1) );
endmodule


module Top_Tx ( P_DATA, PAR_EN, Data_Valid, PAR_TYP, CLK, RST, TX_OUT, Busy );
  input [7:0] P_DATA;
  input PAR_EN, Data_Valid, PAR_TYP, CLK, RST;
  output TX_OUT, Busy;
  wire   ser_en, ser_done, ser_data, Par_bit, n1, n2;
  wire   [1:0] MUX_SEL;

  Serializer_tx ser_U0 ( .P_Data_ser(P_DATA), .ser_en_ser(ser_en), .rst_ser(n1), .clk_ser(CLK), .Data_valid_ser(Data_Valid), .out_Data_ser(ser_data), 
        .ser_done_ser(ser_done) );
  FSM_tx fsm_U0 ( .clk_fsm(CLK), .rst_fsm(n1), .Data_v_fsm(Data_Valid), 
        .Par_en_fsm(PAR_EN), .ser_done_fsm(ser_done), .ser_en_fsm(ser_en), 
        .mux_sel_fsm(MUX_SEL), .busy_fsm(Busy) );
  parity_calc parity_U0 ( .P_Data_par(P_DATA), .Data_valid_par(Data_Valid), 
        .Par_TYP_par(PAR_TYP), .rst_par(n1), .clk_par(CLK), .Par_bit_par(
        Par_bit) );
  mux_tx mux_U0 ( .mux_sel(MUX_SEL), .ser_data_mux(ser_data), .Par_bit_mux(
        Par_bit), .TX_out_max(TX_OUT) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module FSM_RX ( RX_in_fsm, clk, rst, Par_en_fsm, prescale_fsm, edge_cnt_fsm, 
        bit_cnt_fsm, strt_glitch_fsm, par_err_fsm, stp_err_fsm, par_chk_en, 
        strt_chk_en, stp_chk_en, deser_en_fsm, enable, data_samp_en, 
        data_valid_fsm );
  input [5:0] prescale_fsm;
  input [5:0] edge_cnt_fsm;
  input [3:0] bit_cnt_fsm;
  input RX_in_fsm, clk, rst, Par_en_fsm, strt_glitch_fsm, par_err_fsm,
         stp_err_fsm;
  output par_chk_en, strt_chk_en, stp_chk_en, deser_en_fsm, enable,
         data_samp_en, data_valid_fsm;
  wire   N47, N48, N49, N50, N51, N52, N53, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n14, n15, n29, n30, n31, n32, n33, n34;
  wire   [2:0] current_state;
  wire   [2:0] next_state;

  DFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .CK(clk), .RN(rst), .Q(
        current_state[0]) );
  DFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .CK(clk), .RN(rst), .Q(
        current_state[2]) );
  DFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .CK(clk), .RN(rst), .Q(
        current_state[1]) );
  NAND2X2M U3 ( .A(N53), .B(n26), .Y(n16) );
  NOR2X2M U4 ( .A(n16), .B(n34), .Y(deser_en_fsm) );
  INVX2M U5 ( .A(N53), .Y(n29) );
  INVX2M U6 ( .A(n26), .Y(n31) );
  OAI32X1M U7 ( .A0(n34), .A1(n22), .A2(n31), .B0(current_state[1]), .B1(n25), 
        .Y(next_state[0]) );
  AOI2BB2XLM U8 ( .B0(n26), .B1(n27), .A0N(RX_in_fsm), .A1N(current_state[0]), 
        .Y(n25) );
  NAND4X2M U9 ( .A(strt_glitch_fsm), .B(bit_cnt_fsm[0]), .C(n21), .D(n30), .Y(
        n27) );
  AOI2B1X1M U10 ( .A1N(n18), .A0(n19), .B0(n34), .Y(next_state[2]) );
  NOR3BX2M U11 ( .AN(n22), .B(Par_en_fsm), .C(n31), .Y(n18) );
  OAI21X2M U12 ( .A0(n20), .A1(current_state[2]), .B0(n33), .Y(n19) );
  AND4XLM U13 ( .A(N53), .B(n21), .C(bit_cnt_fsm[3]), .D(bit_cnt_fsm[0]), .Y(
        n20) );
  OAI21X2M U14 ( .A0(current_state[2]), .A1(n34), .B0(n23), .Y(next_state[1])
         );
  AOI32X1M U15 ( .A0(bit_cnt_fsm[0]), .A1(n21), .A2(n24), .B0(n32), .B1(n29), 
        .Y(n23) );
  INVX2M U16 ( .A(n17), .Y(n32) );
  NOR3X2M U17 ( .A(n31), .B(strt_glitch_fsm), .C(bit_cnt_fsm[3]), .Y(n24) );
  NOR3BX2M U18 ( .AN(current_state[2]), .B(n29), .C(n17), .Y(stp_chk_en) );
  NOR3X2M U19 ( .A(n17), .B(current_state[2]), .C(n29), .Y(par_chk_en) );
  NOR2X2M U20 ( .A(current_state[1]), .B(n16), .Y(strt_chk_en) );
  NOR2X2M U21 ( .A(n33), .B(current_state[2]), .Y(n26) );
  NOR2X2M U22 ( .A(bit_cnt_fsm[2]), .B(bit_cnt_fsm[1]), .Y(n21) );
  NAND2X2M U23 ( .A(current_state[1]), .B(n33), .Y(n17) );
  AOI2B1X1M U24 ( .A1N(bit_cnt_fsm[0]), .A0(n21), .B0(n30), .Y(n22) );
  INVX2M U25 ( .A(current_state[1]), .Y(n34) );
  INVX2M U26 ( .A(current_state[0]), .Y(n33) );
  INVX2M U27 ( .A(bit_cnt_fsm[3]), .Y(n30) );
  NOR4X1M U28 ( .A(n28), .B(current_state[1]), .C(stp_err_fsm), .D(par_err_fsm), .Y(data_valid_fsm) );
  NAND2X2M U29 ( .A(current_state[2]), .B(n33), .Y(n28) );
  OR2X2M U30 ( .A(prescale_fsm[1]), .B(prescale_fsm[0]), .Y(n2) );
  INVX2M U31 ( .A(prescale_fsm[3]), .Y(n6) );
  BUFX2M U32 ( .A(enable), .Y(data_samp_en) );
  OAI211X2M U33 ( .A0(current_state[2]), .A1(RX_in_fsm), .B0(n17), .C0(n31), 
        .Y(enable) );
  CLKINVX1M U34 ( .A(prescale_fsm[0]), .Y(N47) );
  OAI2BB1X1M U35 ( .A0N(prescale_fsm[0]), .A1N(prescale_fsm[1]), .B0(n2), .Y(
        N48) );
  NOR2X1M U36 ( .A(n2), .B(prescale_fsm[2]), .Y(n3) );
  AO21XLM U37 ( .A0(n2), .A1(prescale_fsm[2]), .B0(n3), .Y(N49) );
  CLKNAND2X2M U38 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U39 ( .A0(n3), .A1(n6), .B0(n4), .Y(N50) );
  XNOR2X1M U40 ( .A(prescale_fsm[4]), .B(n4), .Y(N51) );
  NOR2X1M U41 ( .A(prescale_fsm[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U42 ( .A(prescale_fsm[5]), .B(n5), .Y(N52) );
  NOR2BX1M U43 ( .AN(edge_cnt_fsm[0]), .B(N47), .Y(n7) );
  OAI2B2X1M U44 ( .A1N(N48), .A0(n7), .B0(edge_cnt_fsm[1]), .B1(n7), .Y(n11)
         );
  NOR2BX1M U45 ( .AN(N47), .B(edge_cnt_fsm[0]), .Y(n8) );
  OAI2B2X1M U46 ( .A1N(edge_cnt_fsm[1]), .A0(n8), .B0(N48), .B1(n8), .Y(n10)
         );
  XNOR2X1M U47 ( .A(N52), .B(edge_cnt_fsm[5]), .Y(n9) );
  NAND3X1M U48 ( .A(n11), .B(n10), .C(n9), .Y(n15) );
  CLKXOR2X2M U49 ( .A(N51), .B(edge_cnt_fsm[4]), .Y(n14) );
  CLKXOR2X2M U50 ( .A(N49), .B(edge_cnt_fsm[2]), .Y(n13) );
  CLKXOR2X2M U51 ( .A(N50), .B(edge_cnt_fsm[3]), .Y(n12) );
  NOR4X1M U52 ( .A(n15), .B(n14), .C(n13), .D(n12), .Y(N53) );
endmodule


module data_sampling_RX ( clk, rst, RX_in_sampling, data_samp_en, 
        prescale_sampling, edge_cnt_sampling, sampled_out );
  input [5:0] prescale_sampling;
  input [5:0] edge_cnt_sampling;
  input clk, rst, RX_in_sampling, data_samp_en;
  output sampled_out;
  wire   N9, N10, N11, N12, N13, N16, N17, N18, N19, N20, N21, N24, N26, N27,
         N28, N29, n33, n34, n35, n36, \add_37/carry[4] , \add_37/carry[3] ,
         \add_31/carry[4] , \add_31/carry[3] , \add_31/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18,
         n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57;
  wire   [2:0] sampled_reg;
  assign N24 = prescale_sampling[1];

  DFFRQX2M sampled_out_reg ( .D(n33), .CK(clk), .RN(rst), .Q(sampled_out) );
  DFFRQX2M \sampled_reg_reg[2]  ( .D(n34), .CK(clk), .RN(rst), .Q(
        sampled_reg[2]) );
  DFFRQX2M \sampled_reg_reg[0]  ( .D(n36), .CK(clk), .RN(rst), .Q(
        sampled_reg[0]) );
  DFFRQX2M \sampled_reg_reg[1]  ( .D(n35), .CK(clk), .RN(rst), .Q(
        sampled_reg[1]) );
  CLKXOR2X2M U3 ( .A(edge_cnt_sampling[1]), .B(prescale_sampling[2]), .Y(n43)
         );
  OR2X2M U4 ( .A(prescale_sampling[2]), .B(N24), .Y(n1) );
  ADDHX1M U5 ( .A(prescale_sampling[3]), .B(\add_31/carry[2] ), .CO(
        \add_31/carry[3] ), .S(N18) );
  ADDHX1M U6 ( .A(prescale_sampling[4]), .B(\add_31/carry[3] ), .CO(
        \add_31/carry[4] ), .S(N19) );
  ADDHX1M U7 ( .A(prescale_sampling[2]), .B(N24), .CO(\add_31/carry[2] ), .S(
        N17) );
  ADDHX1M U8 ( .A(prescale_sampling[5]), .B(\add_31/carry[4] ), .CO(N21), .S(
        N20) );
  AND2X1M U9 ( .A(\add_37/carry[4] ), .B(prescale_sampling[5]), .Y(N29) );
  CLKXOR2X2M U10 ( .A(prescale_sampling[5]), .B(\add_37/carry[4] ), .Y(N28) );
  AND2X1M U11 ( .A(\add_37/carry[3] ), .B(prescale_sampling[4]), .Y(
        \add_37/carry[4] ) );
  CLKXOR2X2M U12 ( .A(prescale_sampling[4]), .B(\add_37/carry[3] ), .Y(N27) );
  AND2X1M U13 ( .A(prescale_sampling[2]), .B(prescale_sampling[3]), .Y(
        \add_37/carry[3] ) );
  CLKXOR2X2M U14 ( .A(prescale_sampling[3]), .B(prescale_sampling[2]), .Y(N26)
         );
  OAI2BB1X1M U15 ( .A0N(N24), .A1N(prescale_sampling[2]), .B0(n1), .Y(N9) );
  OR2X1M U16 ( .A(n1), .B(prescale_sampling[3]), .Y(n2) );
  OAI2BB1X1M U17 ( .A0N(n1), .A1N(prescale_sampling[3]), .B0(n2), .Y(N10) );
  XNOR2X1M U18 ( .A(prescale_sampling[4]), .B(n2), .Y(N11) );
  NOR3X1M U19 ( .A(prescale_sampling[4]), .B(prescale_sampling[5]), .C(n2), 
        .Y(N13) );
  OAI21X1M U20 ( .A0(prescale_sampling[4]), .A1(n2), .B0(prescale_sampling[5]), 
        .Y(n3) );
  NAND2BX1M U21 ( .AN(N13), .B(n3), .Y(N12) );
  CLKINVX1M U22 ( .A(N24), .Y(N16) );
  OAI2B2X1M U23 ( .A1N(RX_in_sampling), .A0(n4), .B0(n5), .B1(n6), .Y(n36) );
  OAI22X1M U24 ( .A0(n5), .A1(n7), .B0(n4), .B1(n6), .Y(n35) );
  OAI22X1M U25 ( .A0(n5), .A1(n8), .B0(n4), .B1(n7), .Y(n34) );
  CLKNAND2X2M U26 ( .A(data_samp_en), .B(n5), .Y(n4) );
  OAI2B1X1M U27 ( .A1N(n9), .A0(n10), .B0(data_samp_en), .Y(n5) );
  NOR2BX1M U28 ( .AN(data_samp_en), .B(n11), .Y(n33) );
  AOI21X1M U29 ( .A0(n12), .A1(RX_in_sampling), .B0(n13), .Y(n11) );
  MXI2X1M U30 ( .A(n14), .B(n15), .S0(n16), .Y(n13) );
  NOR4X1M U31 ( .A(n17), .B(n18), .C(n10), .D(n9), .Y(n16) );
  OAI211X1M U32 ( .A0(n19), .A1(n20), .B0(n21), .C0(n22), .Y(n9) );
  NAND4X1M U33 ( .A(n23), .B(n24), .C(n25), .D(n26), .Y(n22) );
  NOR3X1M U34 ( .A(n27), .B(n28), .C(n29), .Y(n26) );
  XNOR2X1M U35 ( .A(n30), .B(N16), .Y(n29) );
  XNOR2X1M U36 ( .A(n31), .B(N18), .Y(n28) );
  CLKINVX1M U37 ( .A(edge_cnt_sampling[2]), .Y(n31) );
  XNOR2X1M U38 ( .A(n32), .B(N17), .Y(n27) );
  CLKINVX1M U39 ( .A(edge_cnt_sampling[1]), .Y(n32) );
  XNOR2X1M U40 ( .A(edge_cnt_sampling[4]), .B(N20), .Y(n25) );
  XNOR2X1M U41 ( .A(edge_cnt_sampling[5]), .B(N21), .Y(n24) );
  XNOR2X1M U42 ( .A(edge_cnt_sampling[3]), .B(N19), .Y(n23) );
  NAND3X1M U43 ( .A(n37), .B(n38), .C(n39), .Y(n20) );
  XNOR2X1M U44 ( .A(edge_cnt_sampling[2]), .B(N10), .Y(n39) );
  XNOR2X1M U45 ( .A(edge_cnt_sampling[3]), .B(N11), .Y(n38) );
  XNOR2X1M U46 ( .A(edge_cnt_sampling[1]), .B(N9), .Y(n37) );
  NAND3X1M U47 ( .A(n40), .B(n41), .C(n42), .Y(n19) );
  XNOR2X1M U48 ( .A(edge_cnt_sampling[5]), .B(N13), .Y(n42) );
  XNOR2X1M U49 ( .A(edge_cnt_sampling[0]), .B(N16), .Y(n41) );
  XNOR2X1M U50 ( .A(edge_cnt_sampling[4]), .B(N12), .Y(n40) );
  CLKNAND2X2M U51 ( .A(n43), .B(n44), .Y(n18) );
  XNOR2X1M U52 ( .A(edge_cnt_sampling[0]), .B(N24), .Y(n44) );
  NAND4X1M U53 ( .A(n45), .B(n46), .C(n47), .D(n48), .Y(n17) );
  XNOR2X1M U54 ( .A(edge_cnt_sampling[2]), .B(N26), .Y(n48) );
  XNOR2X1M U55 ( .A(edge_cnt_sampling[3]), .B(N27), .Y(n47) );
  XNOR2X1M U56 ( .A(edge_cnt_sampling[4]), .B(N28), .Y(n46) );
  XNOR2X1M U57 ( .A(edge_cnt_sampling[5]), .B(N29), .Y(n45) );
  AOI21X1M U58 ( .A0(sampled_reg[1]), .A1(sampled_reg[0]), .B0(n49), .Y(n15)
         );
  AOI21X1M U59 ( .A0(n7), .A1(n6), .B0(n8), .Y(n49) );
  CLKINVX1M U60 ( .A(sampled_reg[2]), .Y(n8) );
  CLKINVX1M U61 ( .A(sampled_reg[0]), .Y(n6) );
  CLKINVX1M U62 ( .A(sampled_reg[1]), .Y(n7) );
  NAND2BX1M U63 ( .AN(n12), .B(sampled_out), .Y(n14) );
  NOR2BX1M U64 ( .AN(n10), .B(n21), .Y(n12) );
  NAND4X1M U65 ( .A(n50), .B(n51), .C(n52), .D(n53), .Y(n21) );
  NOR3X1M U66 ( .A(n54), .B(edge_cnt_sampling[5]), .C(n55), .Y(n53) );
  XNOR2X1M U67 ( .A(N24), .B(n30), .Y(n55) );
  CLKINVX1M U68 ( .A(edge_cnt_sampling[0]), .Y(n30) );
  XNOR2X1M U69 ( .A(prescale_sampling[5]), .B(n56), .Y(n54) );
  CLKINVX1M U70 ( .A(edge_cnt_sampling[4]), .Y(n56) );
  XNOR2X1M U71 ( .A(prescale_sampling[3]), .B(edge_cnt_sampling[2]), .Y(n52)
         );
  XNOR2X1M U72 ( .A(prescale_sampling[4]), .B(edge_cnt_sampling[3]), .Y(n51)
         );
  XNOR2X1M U73 ( .A(prescale_sampling[2]), .B(edge_cnt_sampling[1]), .Y(n50)
         );
  NOR4BX1M U74 ( .AN(n57), .B(prescale_sampling[3]), .C(prescale_sampling[4]), 
        .D(prescale_sampling[5]), .Y(n10) );
  OAI21X1M U75 ( .A0(N24), .A1(prescale_sampling[0]), .B0(prescale_sampling[2]), .Y(n57) );
endmodule


module deserializer ( clk, rst, sampled_data_bit, deser_en, deser_out );
  output [7:0] deser_out;
  input clk, rst, sampled_data_bit, deser_en;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n1, n2, n3, n4, n5, n6, n7, n8,
         n17;

  DFFRQX2M \deser_out_reg[0]  ( .D(n9), .CK(clk), .RN(rst), .Q(deser_out[0])
         );
  DFFRQX2M \deser_out_reg[5]  ( .D(n14), .CK(clk), .RN(rst), .Q(deser_out[5])
         );
  DFFRQX2M \deser_out_reg[1]  ( .D(n10), .CK(clk), .RN(rst), .Q(deser_out[1])
         );
  DFFRQX2M \deser_out_reg[4]  ( .D(n13), .CK(clk), .RN(rst), .Q(deser_out[4])
         );
  DFFRQX2M \deser_out_reg[7]  ( .D(n16), .CK(clk), .RN(rst), .Q(deser_out[7])
         );
  DFFRQX2M \deser_out_reg[3]  ( .D(n12), .CK(clk), .RN(rst), .Q(deser_out[3])
         );
  DFFRQX2M \deser_out_reg[6]  ( .D(n15), .CK(clk), .RN(rst), .Q(deser_out[6])
         );
  DFFRQX2M \deser_out_reg[2]  ( .D(n11), .CK(clk), .RN(rst), .Q(deser_out[2])
         );
  INVX2M U2 ( .A(n1), .Y(n2) );
  OAI22X1M U3 ( .A0(n2), .A1(n8), .B0(n1), .B1(n17), .Y(n10) );
  OAI22X1M U4 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n11) );
  OAI22X1M U5 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n12) );
  OAI22X1M U6 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n13) );
  OAI22X1M U7 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n14) );
  OAI22X1M U8 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n15) );
  BUFX2M U9 ( .A(deser_en), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n2), .B1(n17), .A0N(deser_out[0]), .A1N(n2), .Y(n9) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n3), .A0N(sampled_data_bit), .A1N(n1), .Y(n16)
         );
  INVX2M U12 ( .A(deser_out[2]), .Y(n8) );
  INVX2M U13 ( .A(deser_out[6]), .Y(n4) );
  INVX2M U14 ( .A(deser_out[7]), .Y(n3) );
  INVX2M U15 ( .A(deser_out[3]), .Y(n7) );
  INVX2M U16 ( .A(deser_out[1]), .Y(n17) );
  INVX2M U17 ( .A(deser_out[4]), .Y(n6) );
  INVX2M U18 ( .A(deser_out[5]), .Y(n5) );
endmodule


module parity_chk_RX ( clk, rst, par_chk_en, par_typ, sampled_data, 
        sampled_par_bit, par_err );
  input [7:0] sampled_data;
  input clk, rst, par_chk_en, par_typ, sampled_par_bit;
  output par_err;
  wire   par_calc, N8, N11, n1, n2, n3, n4, n5;

  DFFRQX2M par_calc_reg ( .D(N8), .CK(clk), .RN(rst), .Q(par_calc) );
  DFFRQX2M par_err_reg ( .D(N11), .CK(clk), .RN(rst), .Q(par_err) );
  NOR2BX2M U3 ( .AN(par_chk_en), .B(n5), .Y(N11) );
  XNOR2X2M U4 ( .A(sampled_par_bit), .B(par_calc), .Y(n5) );
  XNOR2X2M U5 ( .A(sampled_data[7]), .B(sampled_data[6]), .Y(n4) );
  XOR3XLM U6 ( .A(par_typ), .B(n1), .C(n2), .Y(N8) );
  XOR3XLM U7 ( .A(sampled_data[1]), .B(sampled_data[0]), .C(n3), .Y(n2) );
  XOR3XLM U8 ( .A(sampled_data[5]), .B(sampled_data[4]), .C(n4), .Y(n1) );
  XNOR2X2M U9 ( .A(sampled_data[3]), .B(sampled_data[2]), .Y(n3) );
endmodule


module start_chk_RX ( strt_chk_en, sampled_strt_bit, rst, clk, strt_glitch );
  input strt_chk_en, sampled_strt_bit, rst, clk;
  output strt_glitch;
  wire   N4;

  DFFRQX2M strt_glitch_reg ( .D(N4), .CK(clk), .RN(rst), .Q(strt_glitch) );
  AND2X2M U3 ( .A(strt_chk_en), .B(sampled_strt_bit), .Y(N4) );
endmodule


module stop_chk_RX ( clk, rst, stp_chk_en, sampled_stp_bit, stp_err );
  input clk, rst, stp_chk_en, sampled_stp_bit;
  output stp_err;
  wire   N4;

  DFFRQX2M stp_err_reg ( .D(N4), .CK(clk), .RN(rst), .Q(stp_err) );
  NOR2BX2M U3 ( .AN(stp_chk_en), .B(sampled_stp_bit), .Y(N4) );
endmodule


module edge_bit_counter ( clk, rst, enable_edge, prescale_edge, edge_cnt_edge, 
        bit_cnt_edge );
  input [5:0] prescale_edge;
  output [5:0] edge_cnt_edge;
  output [3:0] bit_cnt_edge;
  input clk, rst, enable_edge;
  wire   N7, N8, N9, N10, N11, N12, N17, N18, N19, N20, N21, N22, n9, n10, n11,
         n12, n13, n14, n16, n17, n18, n19, n20, \add_21/carry[5] ,
         \add_21/carry[4] , \add_21/carry[3] , \add_21/carry[2] , n1, n2, n3,
         n4, n5, n6, n7, n8, n15, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n30, n31, n32, n33, n34, n35, n36;

  DFFRQX2M \bit_cnt_edge_reg[1]  ( .D(n18), .CK(clk), .RN(rst), .Q(
        bit_cnt_edge[1]) );
  DFFRQX2M \bit_cnt_edge_reg[2]  ( .D(n17), .CK(clk), .RN(rst), .Q(
        bit_cnt_edge[2]) );
  DFFRQX2M \bit_cnt_edge_reg[3]  ( .D(n20), .CK(clk), .RN(rst), .Q(
        bit_cnt_edge[3]) );
  DFFRQX2M \bit_cnt_edge_reg[0]  ( .D(n19), .CK(clk), .RN(rst), .Q(
        bit_cnt_edge[0]) );
  DFFRQX2M \edge_cnt_edge_reg[5]  ( .D(n6), .CK(clk), .RN(rst), .Q(
        edge_cnt_edge[5]) );
  DFFRQX2M \edge_cnt_edge_reg[4]  ( .D(n5), .CK(clk), .RN(rst), .Q(
        edge_cnt_edge[4]) );
  DFFRQX2M \edge_cnt_edge_reg[1]  ( .D(n2), .CK(clk), .RN(rst), .Q(
        edge_cnt_edge[1]) );
  DFFRQX2M \edge_cnt_edge_reg[0]  ( .D(n7), .CK(clk), .RN(rst), .Q(
        edge_cnt_edge[0]) );
  DFFRQX2M \edge_cnt_edge_reg[2]  ( .D(n3), .CK(clk), .RN(rst), .Q(
        edge_cnt_edge[2]) );
  DFFRQX2M \edge_cnt_edge_reg[3]  ( .D(n4), .CK(clk), .RN(rst), .Q(
        edge_cnt_edge[3]) );
  AND4X2M U3 ( .A(n32), .B(n31), .C(n30), .D(n29), .Y(n1) );
  INVX2M U4 ( .A(n12), .Y(n33) );
  NOR2X2M U5 ( .A(n1), .B(n36), .Y(n16) );
  NOR2X2M U6 ( .A(n1), .B(n36), .Y(n12) );
  INVX2M U7 ( .A(enable_edge), .Y(n36) );
  AND2X2M U8 ( .A(N18), .B(n16), .Y(n2) );
  AND2X2M U9 ( .A(N19), .B(n16), .Y(n3) );
  AND2X2M U10 ( .A(N20), .B(n16), .Y(n4) );
  AND2X2M U11 ( .A(N21), .B(n16), .Y(n5) );
  NOR3BX2M U12 ( .AN(n1), .B(n34), .C(n35), .Y(n10) );
  OAI32X1M U13 ( .A0(n36), .A1(bit_cnt_edge[0]), .A2(n12), .B0(n34), .B1(n33), 
        .Y(n19) );
  OAI22X1M U14 ( .A0(n35), .A1(n33), .B0(n11), .B1(n36), .Y(n18) );
  AOI32X1M U15 ( .A0(n33), .A1(n35), .A2(bit_cnt_edge[0]), .B0(bit_cnt_edge[1]), .B1(n34), .Y(n11) );
  AND2X2M U16 ( .A(N22), .B(n16), .Y(n6) );
  AND2X2M U17 ( .A(N17), .B(n16), .Y(n7) );
  NOR2X2M U18 ( .A(n13), .B(n36), .Y(n20) );
  CLKXOR2X2M U19 ( .A(n14), .B(bit_cnt_edge[3]), .Y(n13) );
  NAND2X2M U20 ( .A(n10), .B(bit_cnt_edge[2]), .Y(n14) );
  NOR2X2M U21 ( .A(n9), .B(n36), .Y(n17) );
  XNOR2X2M U22 ( .A(n10), .B(bit_cnt_edge[2]), .Y(n9) );
  INVX2M U23 ( .A(bit_cnt_edge[0]), .Y(n34) );
  INVX2M U24 ( .A(bit_cnt_edge[1]), .Y(n35) );
  ADDHX1M U25 ( .A(edge_cnt_edge[1]), .B(edge_cnt_edge[0]), .CO(
        \add_21/carry[2] ), .S(N18) );
  ADDHX1M U26 ( .A(edge_cnt_edge[3]), .B(\add_21/carry[3] ), .CO(
        \add_21/carry[4] ), .S(N20) );
  ADDHX1M U27 ( .A(edge_cnt_edge[2]), .B(\add_21/carry[2] ), .CO(
        \add_21/carry[3] ), .S(N19) );
  ADDHX1M U28 ( .A(edge_cnt_edge[4]), .B(\add_21/carry[4] ), .CO(
        \add_21/carry[5] ), .S(N21) );
  OR2X2M U29 ( .A(prescale_edge[1]), .B(prescale_edge[0]), .Y(n8) );
  INVX2M U30 ( .A(prescale_edge[3]), .Y(n23) );
  CLKINVX1M U31 ( .A(prescale_edge[0]), .Y(N7) );
  OAI2BB1X1M U32 ( .A0N(prescale_edge[0]), .A1N(prescale_edge[1]), .B0(n8), 
        .Y(N8) );
  NOR2X1M U33 ( .A(n8), .B(prescale_edge[2]), .Y(n15) );
  AO21XLM U34 ( .A0(n8), .A1(prescale_edge[2]), .B0(n15), .Y(N9) );
  CLKNAND2X2M U35 ( .A(n15), .B(n23), .Y(n21) );
  OAI21X1M U36 ( .A0(n15), .A1(n23), .B0(n21), .Y(N10) );
  XNOR2X1M U37 ( .A(prescale_edge[4]), .B(n21), .Y(N11) );
  NOR2X1M U38 ( .A(prescale_edge[4]), .B(n21), .Y(n22) );
  CLKXOR2X2M U39 ( .A(prescale_edge[5]), .B(n22), .Y(N12) );
  CLKINVX1M U40 ( .A(edge_cnt_edge[0]), .Y(N17) );
  CLKXOR2X2M U41 ( .A(\add_21/carry[5] ), .B(edge_cnt_edge[5]), .Y(N22) );
  NOR2BX1M U42 ( .AN(edge_cnt_edge[0]), .B(N7), .Y(n24) );
  OAI2B2X1M U43 ( .A1N(N8), .A0(n24), .B0(edge_cnt_edge[1]), .B1(n24), .Y(n32)
         );
  NOR2BX1M U44 ( .AN(N7), .B(edge_cnt_edge[0]), .Y(n25) );
  OAI2B2X1M U45 ( .A1N(edge_cnt_edge[1]), .A0(n25), .B0(N8), .B1(n25), .Y(n31)
         );
  XNOR2X1M U46 ( .A(N12), .B(edge_cnt_edge[5]), .Y(n30) );
  CLKXOR2X2M U47 ( .A(N11), .B(edge_cnt_edge[4]), .Y(n28) );
  CLKXOR2X2M U48 ( .A(N9), .B(edge_cnt_edge[2]), .Y(n27) );
  CLKXOR2X2M U49 ( .A(N10), .B(edge_cnt_edge[3]), .Y(n26) );
  NOR3X1M U50 ( .A(n28), .B(n27), .C(n26), .Y(n29) );
endmodule


module TOP_RX ( RX_IN, PRESCALE, CLK, RST, PAR_EN, PAR_TYP, P_DATA, PARITY_ERR, 
        STOP_ERR, DATA_VALID );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input RX_IN, CLK, RST, PAR_EN, PAR_TYP;
  output PARITY_ERR, STOP_ERR, DATA_VALID;
  wire   Strt_Glitch, Par_Chk_En, Strt_Chk_En, Stp_Chk_En, Deser_En, Enable,
         Dat_Samp_En, Sampled_Bit, n1, n2;
  wire   [3:0] Bit_Cnt;
  wire   [5:0] Edge_Cnt;

  FSM_RX U0_FSM ( .RX_in_fsm(RX_IN), .clk(CLK), .rst(n1), .Par_en_fsm(PAR_EN), 
        .prescale_fsm(PRESCALE), .edge_cnt_fsm(Edge_Cnt), .bit_cnt_fsm(Bit_Cnt), .strt_glitch_fsm(Strt_Glitch), .par_err_fsm(PARITY_ERR), .stp_err_fsm(
        STOP_ERR), .par_chk_en(Par_Chk_En), .strt_chk_en(Strt_Chk_En), 
        .stp_chk_en(Stp_Chk_En), .deser_en_fsm(Deser_En), .enable(Enable), 
        .data_samp_en(Dat_Samp_En), .data_valid_fsm(DATA_VALID) );
  data_sampling_RX U0_DATA_SAMPLing ( .clk(CLK), .rst(n1), .RX_in_sampling(
        RX_IN), .data_samp_en(Dat_Samp_En), .prescale_sampling(PRESCALE), 
        .edge_cnt_sampling(Edge_Cnt), .sampled_out(Sampled_Bit) );
  deserializer U0_Deserializer ( .clk(CLK), .rst(n1), .sampled_data_bit(
        Sampled_Bit), .deser_en(Deser_En), .deser_out(P_DATA) );
  parity_chk_RX U0_Parity_Chk ( .clk(CLK), .rst(n1), .par_chk_en(Par_Chk_En), 
        .par_typ(PAR_TYP), .sampled_data(P_DATA), .sampled_par_bit(Sampled_Bit), .par_err(PARITY_ERR) );
  start_chk_RX U0_Start_Chk ( .strt_chk_en(Strt_Chk_En), .sampled_strt_bit(
        Sampled_Bit), .rst(n1), .clk(CLK), .strt_glitch(Strt_Glitch) );
  stop_chk_RX U0_Stop_Chk ( .clk(CLK), .rst(n1), .stp_chk_en(Stp_Chk_En), 
        .sampled_stp_bit(Sampled_Bit), .stp_err(STOP_ERR) );
  edge_bit_counter U0_Edge_Bit_Counter ( .clk(CLK), .rst(n1), .enable_edge(
        Enable), .prescale_edge(PRESCALE), .edge_cnt_edge(Edge_Cnt), 
        .bit_cnt_edge(Bit_Cnt) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module UART ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error;
  wire   n1, n2;

  Top_Tx U0_UART_TX ( .P_DATA(TX_IN_P), .PAR_EN(parity_enable), .Data_Valid(
        TX_IN_V), .PAR_TYP(parity_type), .CLK(TX_CLK), .RST(n1), .TX_OUT(
        TX_OUT_S), .Busy(TX_OUT_V) );
  TOP_RX U0_UART_RX ( .RX_IN(RX_IN_S), .PRESCALE(Prescale), .CLK(RX_CLK), 
        .RST(n1), .PAR_EN(parity_enable), .PAR_TYP(parity_type), .P_DATA(
        RX_OUT_P), .PARITY_ERR(parity_error), .STOP_ERR(framing_error), 
        .DATA_VALID(RX_OUT_V) );
  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
endmodule


module Sys_Ctrl ( Sys_clk, Sys_rst, RX_P_Data, RX_D_VLd, Rd_Data, Rd_Data_VLd, 
        ALU_out, ALU_out_VLd, FIFO_full, Address, Wr_En, Rd_En, Wr_Data, 
        ALU_fun, ALU_EN, CLK_ALU_EN, WR_Data_FIFO, WR_INC );
  input [7:0] RX_P_Data;
  input [7:0] Rd_Data;
  input [15:0] ALU_out;
  output [3:0] Address;
  output [7:0] Wr_Data;
  output [3:0] ALU_fun;
  output [7:0] WR_Data_FIFO;
  input Sys_clk, Sys_rst, RX_D_VLd, Rd_Data_VLd, ALU_out_VLd, FIFO_full;
  output Wr_En, Rd_En, ALU_EN, CLK_ALU_EN, WR_INC;
  wire   rd_got, n1, n13, n30, n31, n33, n34, n39, n40, n41, n42, n43, n44,
         n46, n47, n48, n49, n50, n51, n52, n53, n55, n57, n61, n62, n63, n64,
         n66, n68, n69, n70, n72, n73, n74, n76, n77, n78, n79, n81, n82, n83,
         n84, n85, n86, n88, n89, n90, n91, n92, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n32, n35, n36, n37, n38, n45, n54, n56, n58, n59, n60, n65, n67, n71,
         n75, n80, n87, n93, n94, n95, n96;
  wire   [3:0] C_S;
  wire   [3:0] addr_reg;
  wire   [15:0] ALU_out_reg;
  wire   [3:0] N_S;

  DFFRQX2M \ALU_out_reg_reg[8]  ( .D(n114), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[8]) );
  DFFRQX2M \ALU_out_reg_reg[9]  ( .D(n113), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[9]) );
  DFFRQX2M \ALU_out_reg_reg[10]  ( .D(n112), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[10]) );
  DFFRQX2M \ALU_out_reg_reg[11]  ( .D(n111), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[11]) );
  DFFRQX2M \ALU_out_reg_reg[12]  ( .D(n110), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[12]) );
  DFFRQX2M \ALU_out_reg_reg[13]  ( .D(n109), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[13]) );
  DFFRQX2M \ALU_out_reg_reg[14]  ( .D(n108), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[14]) );
  DFFRQX2M \ALU_out_reg_reg[15]  ( .D(n107), .CK(Sys_clk), .RN(n2), .Q(
        ALU_out_reg[15]) );
  DFFRQX2M \ALU_out_reg_reg[1]  ( .D(n121), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[1]) );
  DFFRQX2M \ALU_out_reg_reg[2]  ( .D(n120), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[2]) );
  DFFRQX2M \ALU_out_reg_reg[3]  ( .D(n119), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[3]) );
  DFFRQX2M \ALU_out_reg_reg[4]  ( .D(n118), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[4]) );
  DFFRQX2M \ALU_out_reg_reg[5]  ( .D(n117), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[5]) );
  DFFRQX2M \ALU_out_reg_reg[6]  ( .D(n116), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[6]) );
  DFFRQX2M \ALU_out_reg_reg[7]  ( .D(n115), .CK(Sys_clk), .RN(n3), .Q(
        ALU_out_reg[7]) );
  DFFRQX2M \ALU_out_reg_reg[0]  ( .D(n106), .CK(Sys_clk), .RN(n2), .Q(
        ALU_out_reg[0]) );
  DFFRX1M \rd_data_reg_reg[7]  ( .D(n122), .CK(Sys_clk), .RN(n2), .QN(n23) );
  DFFRX1M \rd_data_reg_reg[6]  ( .D(n123), .CK(Sys_clk), .RN(n2), .QN(n24) );
  DFFRX1M \rd_data_reg_reg[5]  ( .D(n124), .CK(Sys_clk), .RN(n2), .QN(n25) );
  DFFRX1M \rd_data_reg_reg[4]  ( .D(n125), .CK(Sys_clk), .RN(n2), .QN(n26) );
  DFFRX1M \rd_data_reg_reg[3]  ( .D(n126), .CK(Sys_clk), .RN(n2), .QN(n27) );
  DFFRX1M \rd_data_reg_reg[2]  ( .D(n127), .CK(Sys_clk), .RN(n2), .QN(n28) );
  DFFRX1M \rd_data_reg_reg[1]  ( .D(n128), .CK(Sys_clk), .RN(n2), .QN(n29) );
  DFFRX1M \rd_data_reg_reg[0]  ( .D(n129), .CK(Sys_clk), .RN(n2), .QN(n32) );
  DFFRQX2M \addr_reg_reg[3]  ( .D(n104), .CK(Sys_clk), .RN(n2), .Q(addr_reg[3]) );
  DFFRQX2M \addr_reg_reg[2]  ( .D(n103), .CK(Sys_clk), .RN(n2), .Q(addr_reg[2]) );
  DFFRQX2M \addr_reg_reg[1]  ( .D(n102), .CK(Sys_clk), .RN(n2), .Q(addr_reg[1]) );
  DFFRQX2M rd_got_reg ( .D(n130), .CK(Sys_clk), .RN(n3), .Q(rd_got) );
  DFFRQX2M \addr_reg_reg[0]  ( .D(n105), .CK(Sys_clk), .RN(n2), .Q(addr_reg[0]) );
  DFFRQX2M \C_S_reg[2]  ( .D(N_S[2]), .CK(Sys_clk), .RN(n3), .Q(C_S[2]) );
  DFFRQX2M \C_S_reg[3]  ( .D(N_S[3]), .CK(Sys_clk), .RN(n3), .Q(C_S[3]) );
  DFFRQX2M \C_S_reg[0]  ( .D(N_S[0]), .CK(Sys_clk), .RN(Sys_rst), .Q(C_S[0])
         );
  DFFRQX2M \C_S_reg[1]  ( .D(N_S[1]), .CK(Sys_clk), .RN(n3), .Q(C_S[1]) );
  OAI222X1M U3 ( .A0(n96), .A1(n19), .B0(n60), .B1(n73), .C0(n95), .C1(n11), 
        .Y(Address[0]) );
  OAI22X1M U4 ( .A0(n87), .A1(n11), .B0(n65), .B1(n73), .Y(Address[3]) );
  OAI22X1M U5 ( .A0(n93), .A1(n11), .B0(n67), .B1(n73), .Y(Address[2]) );
  OAI22X1M U6 ( .A0(n94), .A1(n11), .B0(n71), .B1(n73), .Y(Address[1]) );
  NOR2X2M U7 ( .A(n95), .B(n20), .Y(ALU_fun[0]) );
  NOR3X2M U8 ( .A(n74), .B(C_S[1]), .C(n96), .Y(n1) );
  INVX2M U9 ( .A(Rd_En), .Y(n11) );
  INVX2M U10 ( .A(ALU_EN), .Y(n20) );
  NAND2X2M U11 ( .A(n10), .B(n5), .Y(n43) );
  INVX2M U12 ( .A(FIFO_full), .Y(n5) );
  NOR2X2M U13 ( .A(n78), .B(n96), .Y(Rd_En) );
  INVX2M U14 ( .A(n39), .Y(n19) );
  NOR3X2M U15 ( .A(n53), .B(FIFO_full), .C(n21), .Y(n40) );
  NAND4BX1M U16 ( .AN(n40), .B(n41), .C(n42), .D(n43), .Y(WR_INC) );
  NOR2X2M U17 ( .A(n81), .B(n96), .Y(ALU_EN) );
  NOR2X2M U18 ( .A(n87), .B(n20), .Y(ALU_fun[3]) );
  NOR2X2M U19 ( .A(n94), .B(n20), .Y(ALU_fun[1]) );
  NOR2X2M U20 ( .A(n93), .B(n20), .Y(ALU_fun[2]) );
  NOR2BX2M U21 ( .AN(n33), .B(FIFO_full), .Y(n31) );
  INVX2M U22 ( .A(n73), .Y(n14) );
  INVX2M U23 ( .A(n4), .Y(Wr_En) );
  NOR2X2M U24 ( .A(n4), .B(n75), .Y(Wr_Data[6]) );
  NOR2X2M U25 ( .A(n93), .B(n4), .Y(Wr_Data[2]) );
  NOR2X2M U26 ( .A(n94), .B(n4), .Y(Wr_Data[1]) );
  NOR2X2M U27 ( .A(n4), .B(n80), .Y(Wr_Data[4]) );
  NOR2X2M U28 ( .A(n95), .B(n4), .Y(Wr_Data[0]) );
  NOR2X2M U29 ( .A(n87), .B(n4), .Y(Wr_Data[3]) );
  INVX2M U30 ( .A(n30), .Y(n6) );
  INVX2M U31 ( .A(n41), .Y(n7) );
  INVX2M U32 ( .A(n55), .Y(n10) );
  INVX2M U33 ( .A(n61), .Y(n9) );
  NAND3X2M U34 ( .A(n55), .B(n20), .C(n57), .Y(N_S[3]) );
  OAI21X2M U35 ( .A0(FIFO_full), .A1(n21), .B0(n15), .Y(n57) );
  OAI22X1M U36 ( .A0(n1), .A1(n65), .B0(n12), .B1(n87), .Y(n104) );
  OAI22X1M U37 ( .A0(n1), .A1(n71), .B0(n12), .B1(n94), .Y(n102) );
  OAI22X1M U38 ( .A0(n1), .A1(n60), .B0(n12), .B1(n95), .Y(n105) );
  OAI22X1M U39 ( .A0(n1), .A1(n67), .B0(n12), .B1(n93), .Y(n103) );
  INVX2M U40 ( .A(n1), .Y(n12) );
  INVX2M U41 ( .A(n13), .Y(n8) );
  OAI21X2M U42 ( .A0(n31), .A1(n35), .B0(n30), .Y(n130) );
  NAND3X2M U43 ( .A(n53), .B(n20), .C(n55), .Y(CLK_ALU_EN) );
  INVX2M U44 ( .A(n53), .Y(n15) );
  INVX2M U45 ( .A(n86), .Y(n17) );
  BUFX2M U46 ( .A(Sys_rst), .Y(n3) );
  BUFX2M U47 ( .A(Sys_rst), .Y(n2) );
  NOR3BX2M U48 ( .AN(n68), .B(C_S[0]), .C(n21), .Y(n39) );
  NAND3BX2M U49 ( .AN(C_S[3]), .B(n22), .C(C_S[0]), .Y(n74) );
  NOR2X2M U50 ( .A(n22), .B(C_S[3]), .Y(n68) );
  INVX2M U51 ( .A(C_S[1]), .Y(n21) );
  NAND2BX2M U52 ( .AN(n74), .B(C_S[1]), .Y(n78) );
  INVX2M U53 ( .A(C_S[2]), .Y(n22) );
  NOR3BX2M U54 ( .AN(n68), .B(C_S[0]), .C(C_S[1]), .Y(n33) );
  NAND3BX2M U55 ( .AN(C_S[3]), .B(n91), .C(C_S[1]), .Y(n73) );
  NAND3BX2M U56 ( .AN(Rd_Data_VLd), .B(rd_got), .C(n31), .Y(n42) );
  NOR2X2M U57 ( .A(C_S[0]), .B(C_S[2]), .Y(n91) );
  INVX2M U58 ( .A(RX_P_Data[2]), .Y(n93) );
  INVX2M U59 ( .A(RX_P_Data[0]), .Y(n95) );
  INVX2M U60 ( .A(RX_D_VLd), .Y(n96) );
  INVX2M U61 ( .A(RX_P_Data[1]), .Y(n94) );
  BUFX2M U62 ( .A(n34), .Y(n4) );
  OAI31X1M U63 ( .A0(n9), .A1(n14), .A2(n39), .B0(RX_D_VLd), .Y(n34) );
  NAND3X2M U64 ( .A(n68), .B(C_S[0]), .C(C_S[1]), .Y(n81) );
  NAND2X2M U65 ( .A(n31), .B(Rd_Data_VLd), .Y(n41) );
  INVX2M U66 ( .A(RX_P_Data[3]), .Y(n87) );
  INVX2M U67 ( .A(addr_reg[0]), .Y(n60) );
  OAI21X2M U68 ( .A0(RX_D_VLd), .A1(n81), .B0(n82), .Y(n64) );
  NAND4X2M U69 ( .A(RX_P_Data[4]), .B(RX_P_Data[6]), .C(n83), .D(n84), .Y(n82)
         );
  NOR4X1M U70 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n93), .D(n95), .Y(n84)
         );
  NAND4X2M U71 ( .A(Rd_Data_VLd), .B(FIFO_full), .C(n33), .D(n35), .Y(n30) );
  NAND4X2M U72 ( .A(C_S[3]), .B(C_S[0]), .C(n21), .D(n22), .Y(n55) );
  NOR2BX2M U73 ( .AN(RX_P_Data[5]), .B(n4), .Y(Wr_Data[5]) );
  OAI221X1M U74 ( .A0(n32), .A1(n42), .B0(n59), .B1(n43), .C0(n52), .Y(
        WR_Data_FIFO[0]) );
  AOI22X1M U75 ( .A0(n40), .A1(ALU_out_reg[8]), .B0(n7), .B1(Rd_Data[0]), .Y(
        n52) );
  OAI221X1M U76 ( .A0(n29), .A1(n42), .B0(n36), .B1(n43), .C0(n51), .Y(
        WR_Data_FIFO[1]) );
  AOI22X1M U77 ( .A0(n40), .A1(ALU_out_reg[9]), .B0(n7), .B1(Rd_Data[1]), .Y(
        n51) );
  OAI221X1M U78 ( .A0(n28), .A1(n42), .B0(n37), .B1(n43), .C0(n50), .Y(
        WR_Data_FIFO[2]) );
  AOI22X1M U79 ( .A0(n40), .A1(ALU_out_reg[10]), .B0(n7), .B1(Rd_Data[2]), .Y(
        n50) );
  OAI221X1M U80 ( .A0(n27), .A1(n42), .B0(n38), .B1(n43), .C0(n49), .Y(
        WR_Data_FIFO[3]) );
  AOI22X1M U81 ( .A0(n40), .A1(ALU_out_reg[11]), .B0(n7), .B1(Rd_Data[3]), .Y(
        n49) );
  OAI221X1M U82 ( .A0(n26), .A1(n42), .B0(n45), .B1(n43), .C0(n48), .Y(
        WR_Data_FIFO[4]) );
  AOI22X1M U83 ( .A0(n40), .A1(ALU_out_reg[12]), .B0(n7), .B1(Rd_Data[4]), .Y(
        n48) );
  OAI221X1M U84 ( .A0(n25), .A1(n42), .B0(n54), .B1(n43), .C0(n47), .Y(
        WR_Data_FIFO[5]) );
  AOI22X1M U85 ( .A0(n40), .A1(ALU_out_reg[13]), .B0(n7), .B1(Rd_Data[5]), .Y(
        n47) );
  OAI221X1M U86 ( .A0(n24), .A1(n42), .B0(n56), .B1(n43), .C0(n46), .Y(
        WR_Data_FIFO[6]) );
  AOI22X1M U87 ( .A0(n40), .A1(ALU_out_reg[14]), .B0(n7), .B1(Rd_Data[6]), .Y(
        n46) );
  OAI221X1M U88 ( .A0(n23), .A1(n42), .B0(n58), .B1(n43), .C0(n44), .Y(
        WR_Data_FIFO[7]) );
  AOI22X1M U89 ( .A0(n40), .A1(ALU_out_reg[15]), .B0(n7), .B1(Rd_Data[7]), .Y(
        n44) );
  NOR2BX2M U90 ( .AN(RX_P_Data[7]), .B(n4), .Y(Wr_Data[7]) );
  AND4X2M U91 ( .A(n91), .B(RX_P_Data[3]), .C(RX_P_Data[7]), .D(n92), .Y(n83)
         );
  NOR3X2M U92 ( .A(n96), .B(C_S[3]), .C(C_S[1]), .Y(n92) );
  NAND2X2M U93 ( .A(C_S[3]), .B(n91), .Y(n53) );
  NAND3X2M U94 ( .A(C_S[0]), .B(n21), .C(n68), .Y(n61) );
  NAND3X2M U95 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n83), .Y(n86) );
  OAI211X2M U96 ( .A0(RX_D_VLd), .A1(n78), .B0(n79), .C0(n18), .Y(n72) );
  INVX2M U97 ( .A(n64), .Y(n18) );
  NAND4X2M U98 ( .A(n93), .B(n75), .C(RX_P_Data[0]), .D(n85), .Y(n79) );
  NOR2X2M U99 ( .A(n80), .B(n86), .Y(n85) );
  OAI2BB2X1M U100 ( .B0(n6), .B1(n32), .A0N(n6), .A1N(Rd_Data[0]), .Y(n129) );
  OAI2BB2X1M U101 ( .B0(n6), .B1(n29), .A0N(n6), .A1N(Rd_Data[1]), .Y(n128) );
  OAI2BB2X1M U102 ( .B0(n6), .B1(n28), .A0N(n6), .A1N(Rd_Data[2]), .Y(n127) );
  OAI2BB2X1M U103 ( .B0(n6), .B1(n27), .A0N(n6), .A1N(Rd_Data[3]), .Y(n126) );
  OAI2BB2X1M U104 ( .B0(n6), .B1(n26), .A0N(n6), .A1N(Rd_Data[4]), .Y(n125) );
  OAI2BB2X1M U105 ( .B0(n6), .B1(n25), .A0N(n6), .A1N(Rd_Data[5]), .Y(n124) );
  OAI2BB2X1M U106 ( .B0(n6), .B1(n24), .A0N(n6), .A1N(Rd_Data[6]), .Y(n123) );
  OAI2BB2X1M U107 ( .B0(n6), .B1(n23), .A0N(n6), .A1N(Rd_Data[7]), .Y(n122) );
  NAND4BX1M U108 ( .AN(n69), .B(n19), .C(n12), .D(n70), .Y(N_S[1]) );
  AOI221XLM U109 ( .A0(n9), .A1(RX_D_VLd), .B0(n14), .B1(n96), .C0(n72), .Y(
        n70) );
  OAI31X1M U110 ( .A0(n5), .A1(n53), .A2(n21), .B0(n43), .Y(n69) );
  NAND4X2M U111 ( .A(n66), .B(n13), .C(n76), .D(n77), .Y(N_S[0]) );
  AOI31X2M U112 ( .A0(n17), .A1(n95), .A2(n88), .B0(n89), .Y(n76) );
  AOI221XLM U113 ( .A0(n10), .A1(FIFO_full), .B0(n39), .B1(RX_D_VLd), .C0(n72), 
        .Y(n77) );
  NOR3X2M U114 ( .A(RX_P_Data[2]), .B(RX_P_Data[6]), .C(RX_P_Data[4]), .Y(n88)
         );
  NAND4X2M U115 ( .A(n19), .B(n11), .C(n61), .D(n62), .Y(N_S[2]) );
  AOI211X2M U116 ( .A0(n33), .A1(n63), .B0(n64), .C0(n16), .Y(n62) );
  INVX2M U117 ( .A(n66), .Y(n16) );
  OAI21X2M U118 ( .A0(rd_got), .A1(Rd_Data_VLd), .B0(n5), .Y(n63) );
  INVX2M U119 ( .A(addr_reg[1]), .Y(n71) );
  INVX2M U120 ( .A(addr_reg[2]), .Y(n67) );
  INVX2M U121 ( .A(addr_reg[3]), .Y(n65) );
  NAND3X2M U122 ( .A(n15), .B(n21), .C(ALU_out_VLd), .Y(n13) );
  NAND4X2M U123 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n83), .D(n90), .Y(n66) );
  NOR4X1M U124 ( .A(RX_P_Data[5]), .B(RX_P_Data[4]), .C(RX_P_Data[1]), .D(
        RX_P_Data[0]), .Y(n90) );
  AOI21X2M U125 ( .A0(n61), .A1(n74), .B0(RX_D_VLd), .Y(n89) );
  OAI2BB2X1M U126 ( .B0(n8), .B1(n59), .A0N(ALU_out[0]), .A1N(n8), .Y(n106) );
  OAI2BB2X1M U127 ( .B0(n8), .B1(n58), .A0N(ALU_out[7]), .A1N(n8), .Y(n115) );
  OAI2BB2X1M U128 ( .B0(n8), .B1(n56), .A0N(ALU_out[6]), .A1N(n8), .Y(n116) );
  OAI2BB2X1M U129 ( .B0(n8), .B1(n54), .A0N(ALU_out[5]), .A1N(n8), .Y(n117) );
  OAI2BB2X1M U130 ( .B0(n8), .B1(n45), .A0N(ALU_out[4]), .A1N(n8), .Y(n118) );
  OAI2BB2X1M U131 ( .B0(n8), .B1(n38), .A0N(ALU_out[3]), .A1N(n8), .Y(n119) );
  OAI2BB2X1M U132 ( .B0(n8), .B1(n37), .A0N(ALU_out[2]), .A1N(n8), .Y(n120) );
  OAI2BB2X1M U133 ( .B0(n8), .B1(n36), .A0N(ALU_out[1]), .A1N(n8), .Y(n121) );
  INVX2M U134 ( .A(RX_P_Data[4]), .Y(n80) );
  INVX2M U135 ( .A(RX_P_Data[6]), .Y(n75) );
  INVX2M U136 ( .A(rd_got), .Y(n35) );
  AO22X1M U137 ( .A0(n13), .A1(ALU_out_reg[15]), .B0(ALU_out[15]), .B1(n8), 
        .Y(n107) );
  AO22X1M U138 ( .A0(n13), .A1(ALU_out_reg[14]), .B0(ALU_out[14]), .B1(n8), 
        .Y(n108) );
  AO22X1M U139 ( .A0(n13), .A1(ALU_out_reg[13]), .B0(ALU_out[13]), .B1(n8), 
        .Y(n109) );
  AO22X1M U140 ( .A0(n13), .A1(ALU_out_reg[12]), .B0(ALU_out[12]), .B1(n8), 
        .Y(n110) );
  AO22X1M U141 ( .A0(n13), .A1(ALU_out_reg[11]), .B0(ALU_out[11]), .B1(n8), 
        .Y(n111) );
  AO22X1M U142 ( .A0(n13), .A1(ALU_out_reg[10]), .B0(ALU_out[10]), .B1(n8), 
        .Y(n112) );
  AO22X1M U143 ( .A0(n13), .A1(ALU_out_reg[9]), .B0(ALU_out[9]), .B1(n8), .Y(
        n113) );
  AO22X1M U144 ( .A0(n13), .A1(ALU_out_reg[8]), .B0(ALU_out[8]), .B1(n8), .Y(
        n114) );
  INVX2M U145 ( .A(ALU_out_reg[0]), .Y(n59) );
  INVX2M U146 ( .A(ALU_out_reg[1]), .Y(n36) );
  INVX2M U147 ( .A(ALU_out_reg[2]), .Y(n37) );
  INVX2M U148 ( .A(ALU_out_reg[3]), .Y(n38) );
  INVX2M U149 ( .A(ALU_out_reg[4]), .Y(n45) );
  INVX2M U150 ( .A(ALU_out_reg[5]), .Y(n54) );
  INVX2M U151 ( .A(ALU_out_reg[6]), .Y(n56) );
  INVX2M U152 ( .A(ALU_out_reg[7]), .Y(n58) );
endmodule


module Register_file ( Wr_Data, address, Wr_En, Rd_En, clk, rst, Rd_Data_VLD, 
        Rd_Data, Reg0, Reg1, Reg2, Reg3 );
  input [7:0] Wr_Data;
  input [3:0] address;
  output [7:0] Rd_Data;
  output [7:0] Reg0;
  output [7:0] Reg1;
  output [7:0] Reg2;
  output [7:0] Reg3;
  input Wr_En, Rd_En, clk, rst;
  output Rd_Data_VLD;
  wire   N11, N12, N13, N14, \mem[15][7] , \mem[15][6] , \mem[15][5] ,
         \mem[15][4] , \mem[15][3] , \mem[15][2] , \mem[15][1] , \mem[15][0] ,
         \mem[14][7] , \mem[14][6] , \mem[14][5] , \mem[14][4] , \mem[14][3] ,
         \mem[14][2] , \mem[14][1] , \mem[14][0] , \mem[13][7] , \mem[13][6] ,
         \mem[13][5] , \mem[13][4] , \mem[13][3] , \mem[13][2] , \mem[13][1] ,
         \mem[13][0] , \mem[12][7] , \mem[12][6] , \mem[12][5] , \mem[12][4] ,
         \mem[12][3] , \mem[12][2] , \mem[12][1] , \mem[12][0] , \mem[11][7] ,
         \mem[11][6] , \mem[11][5] , \mem[11][4] , \mem[11][3] , \mem[11][2] ,
         \mem[11][1] , \mem[11][0] , \mem[10][7] , \mem[10][6] , \mem[10][5] ,
         \mem[10][4] , \mem[10][3] , \mem[10][2] , \mem[10][1] , \mem[10][0] ,
         \mem[9][7] , \mem[9][6] , \mem[9][5] , \mem[9][4] , \mem[9][3] ,
         \mem[9][2] , \mem[9][1] , \mem[9][0] , \mem[8][7] , \mem[8][6] ,
         \mem[8][5] , \mem[8][4] , \mem[8][3] , \mem[8][2] , \mem[8][1] ,
         \mem[8][0] , \mem[7][7] , \mem[7][6] , \mem[7][5] , \mem[7][4] ,
         \mem[7][3] , \mem[7][2] , \mem[7][1] , \mem[7][0] , \mem[6][7] ,
         \mem[6][6] , \mem[6][5] , \mem[6][4] , \mem[6][3] , \mem[6][2] ,
         \mem[6][1] , \mem[6][0] , \mem[5][7] , \mem[5][6] , \mem[5][5] ,
         \mem[5][4] , \mem[5][3] , \mem[5][2] , \mem[5][1] , \mem[5][0] ,
         \mem[4][7] , \mem[4][6] , \mem[4][5] , \mem[4][4] , \mem[4][3] ,
         \mem[4][2] , \mem[4][1] , \mem[4][0] , N36, N37, N38, N39, N40, N41,
         N42, N43, n12, n13, n14, n15, n17, n18, n19, n20, n21, n22, n23, n24,
         n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66,
         n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80,
         n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94,
         n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105, n106,
         n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n16, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n267, n268, n269, n270, n271, n272, n273, n274, n275,
         n276, n277, n278, n279, n280, n281, n282, n283, n284, n285, n286,
         n287, n288, n289, n290, n291, n292, n293, n294, n295, n296, n297,
         n298, n299, n300, n301, n302, n303, n304, n305;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];

  DFFSQX2M \mem_reg[3][5]  ( .D(n77), .CK(clk), .SN(n278), .Q(Reg3[5]) );
  DFFRQX2M \mem_reg[15][7]  ( .D(n175), .CK(clk), .RN(n278), .Q(\mem[15][7] )
         );
  DFFRQX2M \mem_reg[15][6]  ( .D(n174), .CK(clk), .RN(n282), .Q(\mem[15][6] )
         );
  DFFRQX2M \mem_reg[15][5]  ( .D(n173), .CK(clk), .RN(n279), .Q(\mem[15][5] )
         );
  DFFRQX2M \mem_reg[15][4]  ( .D(n172), .CK(clk), .RN(n279), .Q(\mem[15][4] )
         );
  DFFRQX2M \mem_reg[15][3]  ( .D(n171), .CK(clk), .RN(n279), .Q(\mem[15][3] )
         );
  DFFRQX2M \mem_reg[15][2]  ( .D(n170), .CK(clk), .RN(n279), .Q(\mem[15][2] )
         );
  DFFRQX2M \mem_reg[15][1]  ( .D(n169), .CK(clk), .RN(n279), .Q(\mem[15][1] )
         );
  DFFRQX2M \mem_reg[15][0]  ( .D(n168), .CK(clk), .RN(n279), .Q(\mem[15][0] )
         );
  DFFRQX2M \mem_reg[13][7]  ( .D(n159), .CK(clk), .RN(n278), .Q(\mem[13][7] )
         );
  DFFRQX2M \mem_reg[13][6]  ( .D(n158), .CK(clk), .RN(n280), .Q(\mem[13][6] )
         );
  DFFRQX2M \mem_reg[13][5]  ( .D(n157), .CK(clk), .RN(n280), .Q(\mem[13][5] )
         );
  DFFRQX2M \mem_reg[13][4]  ( .D(n156), .CK(clk), .RN(n280), .Q(\mem[13][4] )
         );
  DFFRQX2M \mem_reg[13][3]  ( .D(n155), .CK(clk), .RN(n280), .Q(\mem[13][3] )
         );
  DFFRQX2M \mem_reg[13][2]  ( .D(n154), .CK(clk), .RN(n280), .Q(\mem[13][2] )
         );
  DFFRQX2M \mem_reg[13][1]  ( .D(n153), .CK(clk), .RN(n280), .Q(\mem[13][1] )
         );
  DFFRQX2M \mem_reg[13][0]  ( .D(n152), .CK(clk), .RN(n280), .Q(\mem[13][0] )
         );
  DFFRQX2M \mem_reg[11][7]  ( .D(n143), .CK(clk), .RN(n281), .Q(\mem[11][7] )
         );
  DFFRQX2M \mem_reg[11][6]  ( .D(n142), .CK(clk), .RN(n281), .Q(\mem[11][6] )
         );
  DFFRQX2M \mem_reg[11][5]  ( .D(n141), .CK(clk), .RN(n281), .Q(\mem[11][5] )
         );
  DFFRQX2M \mem_reg[11][4]  ( .D(n140), .CK(clk), .RN(n281), .Q(\mem[11][4] )
         );
  DFFRQX2M \mem_reg[11][3]  ( .D(n139), .CK(clk), .RN(n281), .Q(\mem[11][3] )
         );
  DFFRQX2M \mem_reg[11][2]  ( .D(n138), .CK(clk), .RN(n281), .Q(\mem[11][2] )
         );
  DFFRQX2M \mem_reg[11][1]  ( .D(n137), .CK(clk), .RN(n281), .Q(\mem[11][1] )
         );
  DFFRQX2M \mem_reg[11][0]  ( .D(n136), .CK(clk), .RN(n280), .Q(\mem[11][0] )
         );
  DFFRQX2M \mem_reg[9][7]  ( .D(n127), .CK(clk), .RN(n282), .Q(\mem[9][7] ) );
  DFFRQX2M \mem_reg[9][6]  ( .D(n126), .CK(clk), .RN(n282), .Q(\mem[9][6] ) );
  DFFRQX2M \mem_reg[9][5]  ( .D(n125), .CK(clk), .RN(n282), .Q(\mem[9][5] ) );
  DFFRQX2M \mem_reg[9][4]  ( .D(n124), .CK(clk), .RN(n282), .Q(\mem[9][4] ) );
  DFFRQX2M \mem_reg[9][3]  ( .D(n123), .CK(clk), .RN(n282), .Q(\mem[9][3] ) );
  DFFRQX2M \mem_reg[9][2]  ( .D(n122), .CK(clk), .RN(n282), .Q(\mem[9][2] ) );
  DFFRQX2M \mem_reg[9][1]  ( .D(n121), .CK(clk), .RN(n281), .Q(\mem[9][1] ) );
  DFFRQX2M \mem_reg[9][0]  ( .D(n120), .CK(clk), .RN(n281), .Q(\mem[9][0] ) );
  DFFRQX2M \mem_reg[7][7]  ( .D(n111), .CK(clk), .RN(n283), .Q(\mem[7][7] ) );
  DFFRQX2M \mem_reg[7][6]  ( .D(n110), .CK(clk), .RN(n283), .Q(\mem[7][6] ) );
  DFFRQX2M \mem_reg[7][5]  ( .D(n109), .CK(clk), .RN(n283), .Q(\mem[7][5] ) );
  DFFRQX2M \mem_reg[7][4]  ( .D(n108), .CK(clk), .RN(n283), .Q(\mem[7][4] ) );
  DFFRQX2M \mem_reg[7][3]  ( .D(n107), .CK(clk), .RN(n283), .Q(\mem[7][3] ) );
  DFFRQX2M \mem_reg[7][2]  ( .D(n106), .CK(clk), .RN(n282), .Q(\mem[7][2] ) );
  DFFRQX2M \mem_reg[7][1]  ( .D(n105), .CK(clk), .RN(n282), .Q(\mem[7][1] ) );
  DFFRQX2M \mem_reg[7][0]  ( .D(n104), .CK(clk), .RN(n282), .Q(\mem[7][0] ) );
  DFFRQX2M \mem_reg[5][7]  ( .D(n95), .CK(clk), .RN(n284), .Q(\mem[5][7] ) );
  DFFRQX2M \mem_reg[5][6]  ( .D(n94), .CK(clk), .RN(n284), .Q(\mem[5][6] ) );
  DFFRQX2M \mem_reg[5][5]  ( .D(n93), .CK(clk), .RN(n284), .Q(\mem[5][5] ) );
  DFFRQX2M \mem_reg[5][4]  ( .D(n92), .CK(clk), .RN(n284), .Q(\mem[5][4] ) );
  DFFRQX2M \mem_reg[5][3]  ( .D(n91), .CK(clk), .RN(n283), .Q(\mem[5][3] ) );
  DFFRQX2M \mem_reg[5][2]  ( .D(n90), .CK(clk), .RN(n283), .Q(\mem[5][2] ) );
  DFFRQX2M \mem_reg[5][1]  ( .D(n89), .CK(clk), .RN(n283), .Q(\mem[5][1] ) );
  DFFRQX2M \mem_reg[5][0]  ( .D(n88), .CK(clk), .RN(n283), .Q(\mem[5][0] ) );
  DFFRQX2M \mem_reg[14][7]  ( .D(n167), .CK(clk), .RN(n278), .Q(\mem[14][7] )
         );
  DFFRQX2M \mem_reg[14][6]  ( .D(n166), .CK(clk), .RN(n278), .Q(\mem[14][6] )
         );
  DFFRQX2M \mem_reg[14][5]  ( .D(n165), .CK(clk), .RN(n278), .Q(\mem[14][5] )
         );
  DFFRQX2M \mem_reg[14][4]  ( .D(n164), .CK(clk), .RN(n278), .Q(\mem[14][4] )
         );
  DFFRQX2M \mem_reg[14][3]  ( .D(n163), .CK(clk), .RN(n278), .Q(\mem[14][3] )
         );
  DFFRQX2M \mem_reg[14][2]  ( .D(n162), .CK(clk), .RN(n278), .Q(\mem[14][2] )
         );
  DFFRQX2M \mem_reg[14][1]  ( .D(n161), .CK(clk), .RN(n278), .Q(\mem[14][1] )
         );
  DFFRQX2M \mem_reg[14][0]  ( .D(n160), .CK(clk), .RN(n278), .Q(\mem[14][0] )
         );
  DFFRQX2M \mem_reg[12][7]  ( .D(n151), .CK(clk), .RN(n279), .Q(\mem[12][7] )
         );
  DFFRQX2M \mem_reg[12][6]  ( .D(n150), .CK(clk), .RN(n279), .Q(\mem[12][6] )
         );
  DFFRQX2M \mem_reg[12][5]  ( .D(n149), .CK(clk), .RN(n279), .Q(\mem[12][5] )
         );
  DFFRQX2M \mem_reg[12][4]  ( .D(n148), .CK(clk), .RN(n279), .Q(\mem[12][4] )
         );
  DFFRQX2M \mem_reg[12][3]  ( .D(n147), .CK(clk), .RN(n279), .Q(\mem[12][3] )
         );
  DFFRQX2M \mem_reg[12][2]  ( .D(n146), .CK(clk), .RN(n279), .Q(\mem[12][2] )
         );
  DFFRQX2M \mem_reg[12][1]  ( .D(n145), .CK(clk), .RN(n279), .Q(\mem[12][1] )
         );
  DFFRQX2M \mem_reg[12][0]  ( .D(n144), .CK(clk), .RN(n279), .Q(\mem[12][0] )
         );
  DFFRQX2M \mem_reg[10][7]  ( .D(n135), .CK(clk), .RN(n280), .Q(\mem[10][7] )
         );
  DFFRQX2M \mem_reg[10][6]  ( .D(n134), .CK(clk), .RN(n280), .Q(\mem[10][6] )
         );
  DFFRQX2M \mem_reg[10][5]  ( .D(n133), .CK(clk), .RN(n280), .Q(\mem[10][5] )
         );
  DFFRQX2M \mem_reg[10][4]  ( .D(n132), .CK(clk), .RN(n280), .Q(\mem[10][4] )
         );
  DFFRQX2M \mem_reg[10][3]  ( .D(n131), .CK(clk), .RN(n280), .Q(\mem[10][3] )
         );
  DFFRQX2M \mem_reg[10][2]  ( .D(n130), .CK(clk), .RN(n280), .Q(\mem[10][2] )
         );
  DFFRQX2M \mem_reg[10][1]  ( .D(n129), .CK(clk), .RN(n280), .Q(\mem[10][1] )
         );
  DFFRQX2M \mem_reg[10][0]  ( .D(n128), .CK(clk), .RN(n282), .Q(\mem[10][0] )
         );
  DFFRQX2M \mem_reg[8][7]  ( .D(n119), .CK(clk), .RN(n281), .Q(\mem[8][7] ) );
  DFFRQX2M \mem_reg[8][6]  ( .D(n118), .CK(clk), .RN(n281), .Q(\mem[8][6] ) );
  DFFRQX2M \mem_reg[8][5]  ( .D(n117), .CK(clk), .RN(n281), .Q(\mem[8][5] ) );
  DFFRQX2M \mem_reg[8][4]  ( .D(n116), .CK(clk), .RN(n281), .Q(\mem[8][4] ) );
  DFFRQX2M \mem_reg[8][3]  ( .D(n115), .CK(clk), .RN(n281), .Q(\mem[8][3] ) );
  DFFRQX2M \mem_reg[8][2]  ( .D(n114), .CK(clk), .RN(n281), .Q(\mem[8][2] ) );
  DFFRQX2M \mem_reg[8][1]  ( .D(n113), .CK(clk), .RN(n283), .Q(\mem[8][1] ) );
  DFFRQX2M \mem_reg[8][0]  ( .D(n112), .CK(clk), .RN(n283), .Q(\mem[8][0] ) );
  DFFRQX2M \mem_reg[6][7]  ( .D(n103), .CK(clk), .RN(n282), .Q(\mem[6][7] ) );
  DFFRQX2M \mem_reg[6][6]  ( .D(n102), .CK(clk), .RN(n282), .Q(\mem[6][6] ) );
  DFFRQX2M \mem_reg[6][5]  ( .D(n101), .CK(clk), .RN(n282), .Q(\mem[6][5] ) );
  DFFRQX2M \mem_reg[6][4]  ( .D(n100), .CK(clk), .RN(n282), .Q(\mem[6][4] ) );
  DFFRQX2M \mem_reg[6][3]  ( .D(n99), .CK(clk), .RN(n284), .Q(\mem[6][3] ) );
  DFFRQX2M \mem_reg[6][2]  ( .D(n98), .CK(clk), .RN(n284), .Q(\mem[6][2] ) );
  DFFRQX2M \mem_reg[6][1]  ( .D(n97), .CK(clk), .RN(n284), .Q(\mem[6][1] ) );
  DFFRQX2M \mem_reg[6][0]  ( .D(n96), .CK(clk), .RN(n284), .Q(\mem[6][0] ) );
  DFFRQX2M \mem_reg[4][7]  ( .D(n87), .CK(clk), .RN(n283), .Q(\mem[4][7] ) );
  DFFRQX2M \mem_reg[4][6]  ( .D(n86), .CK(clk), .RN(n283), .Q(\mem[4][6] ) );
  DFFRQX2M \mem_reg[4][5]  ( .D(n85), .CK(clk), .RN(n283), .Q(\mem[4][5] ) );
  DFFRQX2M \mem_reg[4][4]  ( .D(n84), .CK(clk), .RN(n285), .Q(\mem[4][4] ) );
  DFFRQX2M \mem_reg[4][3]  ( .D(n83), .CK(clk), .RN(n285), .Q(\mem[4][3] ) );
  DFFRQX2M \mem_reg[4][2]  ( .D(n82), .CK(clk), .RN(n285), .Q(\mem[4][2] ) );
  DFFRQX2M \mem_reg[4][1]  ( .D(n81), .CK(clk), .RN(n285), .Q(\mem[4][1] ) );
  DFFRQX2M \mem_reg[4][0]  ( .D(n80), .CK(clk), .RN(n285), .Q(\mem[4][0] ) );
  DFFRQX2M \mem_reg[3][0]  ( .D(n72), .CK(clk), .RN(n284), .Q(Reg3[0]) );
  DFFRQX2M \mem_reg[3][2]  ( .D(n74), .CK(clk), .RN(n284), .Q(Reg3[2]) );
  DFFRQX2M \mem_reg[3][3]  ( .D(n75), .CK(clk), .RN(n285), .Q(Reg3[3]) );
  DFFRQX2M \mem_reg[3][4]  ( .D(n76), .CK(clk), .RN(n284), .Q(Reg3[4]) );
  DFFRQX2M \mem_reg[2][1]  ( .D(n65), .CK(clk), .RN(n286), .Q(Reg2[1]) );
  DFFRQX2M \mem_reg[3][7]  ( .D(n79), .CK(clk), .RN(n285), .Q(Reg3[7]) );
  DFFRQX2M \mem_reg[3][6]  ( .D(n78), .CK(clk), .RN(n285), .Q(Reg3[6]) );
  DFFRQX2M \Rd_Data_reg[7]  ( .D(n47), .CK(clk), .RN(n286), .Q(Rd_Data[7]) );
  DFFRQX2M \Rd_Data_reg[6]  ( .D(n46), .CK(clk), .RN(n287), .Q(Rd_Data[6]) );
  DFFRQX2M \Rd_Data_reg[5]  ( .D(n45), .CK(clk), .RN(n286), .Q(Rd_Data[5]) );
  DFFRQX2M \Rd_Data_reg[4]  ( .D(n44), .CK(clk), .RN(n286), .Q(Rd_Data[4]) );
  DFFRQX2M \Rd_Data_reg[3]  ( .D(n43), .CK(clk), .RN(n286), .Q(Rd_Data[3]) );
  DFFRQX2M \Rd_Data_reg[2]  ( .D(n42), .CK(clk), .RN(n286), .Q(Rd_Data[2]) );
  DFFRQX2M \Rd_Data_reg[1]  ( .D(n41), .CK(clk), .RN(n286), .Q(Rd_Data[1]) );
  DFFRQX2M \Rd_Data_reg[0]  ( .D(n40), .CK(clk), .RN(n283), .Q(Rd_Data[0]) );
  DFFSQX2M \mem_reg[2][0]  ( .D(n64), .CK(clk), .SN(n278), .Q(Reg2[0]) );
  DFFRQX2M \mem_reg[3][1]  ( .D(n73), .CK(clk), .RN(n284), .Q(Reg3[1]) );
  DFFRQX2M \mem_reg[2][2]  ( .D(n66), .CK(clk), .RN(n286), .Q(Reg2[2]) );
  DFFRQX2M \mem_reg[2][3]  ( .D(n67), .CK(clk), .RN(n284), .Q(Reg2[3]) );
  DFFRQX2M \mem_reg[2][4]  ( .D(n68), .CK(clk), .RN(n286), .Q(Reg2[4]) );
  DFFSQX2M \mem_reg[2][7]  ( .D(n71), .CK(clk), .SN(n278), .Q(Reg2[7]) );
  DFFRQX2M \mem_reg[2][6]  ( .D(n70), .CK(clk), .RN(n284), .Q(Reg2[6]) );
  DFFRQX2M Rd_Data_VLD_reg ( .D(n176), .CK(clk), .RN(n286), .Q(Rd_Data_VLD) );
  DFFRQX2M \mem_reg[0][2]  ( .D(n50), .CK(clk), .RN(n285), .Q(Reg0[2]) );
  DFFRQX2M \mem_reg[0][0]  ( .D(n48), .CK(clk), .RN(n285), .Q(Reg0[0]) );
  DFFRQX2M \mem_reg[0][1]  ( .D(n49), .CK(clk), .RN(n286), .Q(Reg0[1]) );
  DFFRQX2M \mem_reg[0][3]  ( .D(n51), .CK(clk), .RN(n285), .Q(Reg0[3]) );
  DFFRQX2M \mem_reg[0][4]  ( .D(n52), .CK(clk), .RN(n285), .Q(Reg0[4]) );
  DFFRQX2M \mem_reg[2][5]  ( .D(n69), .CK(clk), .RN(n284), .Q(Reg2[5]) );
  DFFRHQX1M \mem_reg[0][6]  ( .D(n54), .CK(clk), .RN(n285), .Q(Reg0[6]) );
  DFFRHQX1M \mem_reg[0][7]  ( .D(n55), .CK(clk), .RN(n278), .Q(Reg0[7]) );
  DFFRHQX4M \mem_reg[1][7]  ( .D(n63), .CK(clk), .RN(n287), .Q(Reg1[7]) );
  DFFRHQX2M \mem_reg[1][0]  ( .D(n56), .CK(clk), .RN(n279), .Q(Reg1[0]) );
  DFFRHQX2M \mem_reg[1][2]  ( .D(n58), .CK(clk), .RN(n285), .Q(Reg1[2]) );
  DFFRHQX2M \mem_reg[1][3]  ( .D(n59), .CK(clk), .RN(n286), .Q(Reg1[3]) );
  DFFRHQX2M \mem_reg[1][5]  ( .D(n61), .CK(clk), .RN(n286), .Q(Reg1[5]) );
  DFFRHQX2M \mem_reg[1][1]  ( .D(n57), .CK(clk), .RN(n286), .Q(Reg1[1]) );
  DFFRHQX2M \mem_reg[1][6]  ( .D(n62), .CK(clk), .RN(n278), .Q(Reg1[6]) );
  DFFRHQX2M \mem_reg[1][4]  ( .D(n60), .CK(clk), .RN(n286), .Q(Reg1[4]) );
  DFFRQX2M \mem_reg[0][5]  ( .D(n53), .CK(clk), .RN(n285), .Q(Reg0[5]) );
  MX2XLM U3 ( .A(Reg1[7]), .B(Wr_Data[7]), .S0(n1), .Y(n63) );
  NOR2X2M U4 ( .A(n295), .B(n294), .Y(n1) );
  NOR2BX2M U5 ( .AN(n26), .B(N11), .Y(n15) );
  NOR2BX2M U6 ( .AN(n38), .B(N11), .Y(n30) );
  NOR2BX2M U7 ( .AN(N13), .B(N12), .Y(n22) );
  NOR2BX2M U8 ( .AN(N13), .B(n305), .Y(n25) );
  NOR2X2M U9 ( .A(n305), .B(N13), .Y(n19) );
  MX2XLM U10 ( .A(Reg0[5]), .B(Wr_Data[5]), .S0(n293), .Y(n53) );
  MX2XLM U11 ( .A(Reg0[6]), .B(Wr_Data[6]), .S0(n293), .Y(n54) );
  INVX2M U12 ( .A(n275), .Y(n276) );
  INVX2M U13 ( .A(n2), .Y(n273) );
  INVX2M U14 ( .A(n17), .Y(n294) );
  INVX2M U15 ( .A(n13), .Y(n293) );
  OR2X2M U16 ( .A(n305), .B(n270), .Y(n2) );
  BUFX2M U17 ( .A(n3), .Y(n275) );
  INVX2M U18 ( .A(n4), .Y(n277) );
  INVX2M U19 ( .A(n5), .Y(n274) );
  NOR2BX2M U20 ( .AN(n38), .B(n270), .Y(n32) );
  NOR2BX2M U21 ( .AN(n26), .B(n270), .Y(n17) );
  NAND2X2M U22 ( .A(n19), .B(n15), .Y(n18) );
  NAND2X2M U23 ( .A(n22), .B(n15), .Y(n21) );
  NAND2X2M U24 ( .A(n25), .B(n15), .Y(n24) );
  NAND2X2M U25 ( .A(n30), .B(n14), .Y(n29) );
  NAND2X2M U26 ( .A(n32), .B(n14), .Y(n31) );
  NAND2X2M U27 ( .A(n30), .B(n19), .Y(n33) );
  NAND2X2M U28 ( .A(n32), .B(n19), .Y(n34) );
  NAND2X2M U29 ( .A(n30), .B(n22), .Y(n35) );
  NAND2X2M U30 ( .A(n32), .B(n22), .Y(n36) );
  NAND2X2M U31 ( .A(n30), .B(n25), .Y(n37) );
  NAND2X2M U32 ( .A(n32), .B(n25), .Y(n39) );
  NAND2X2M U33 ( .A(n19), .B(n17), .Y(n20) );
  NAND2X2M U34 ( .A(n22), .B(n17), .Y(n23) );
  NAND2X2M U35 ( .A(n25), .B(n17), .Y(n27) );
  NAND2BX2M U36 ( .AN(n295), .B(n15), .Y(n13) );
  INVX2M U37 ( .A(n12), .Y(n304) );
  INVX2M U38 ( .A(n14), .Y(n295) );
  OR2X2M U39 ( .A(n270), .B(N12), .Y(n3) );
  OR2X2M U40 ( .A(N11), .B(N12), .Y(n4) );
  OR2X2M U41 ( .A(n305), .B(N11), .Y(n5) );
  INVX2M U42 ( .A(N11), .Y(n270) );
  NOR2BX2M U43 ( .AN(Wr_En), .B(Rd_En), .Y(n28) );
  NOR2BX2M U44 ( .AN(n28), .B(N14), .Y(n26) );
  INVX2M U45 ( .A(N13), .Y(n271) );
  INVX2M U46 ( .A(Wr_Data[2]), .Y(n298) );
  INVX2M U47 ( .A(Wr_Data[0]), .Y(n296) );
  INVX2M U48 ( .A(Wr_Data[1]), .Y(n297) );
  INVX2M U49 ( .A(Wr_Data[3]), .Y(n299) );
  INVX2M U50 ( .A(Wr_Data[4]), .Y(n300) );
  INVX2M U51 ( .A(Wr_Data[6]), .Y(n302) );
  NOR2X2M U52 ( .A(N12), .B(N13), .Y(n14) );
  NAND2BX2M U53 ( .AN(Wr_En), .B(Rd_En), .Y(n12) );
  INVX2M U54 ( .A(N12), .Y(n305) );
  INVX2M U55 ( .A(N14), .Y(n272) );
  AND2X2M U56 ( .A(N14), .B(n28), .Y(n38) );
  BUFX2M U57 ( .A(n292), .Y(n278) );
  BUFX2M U58 ( .A(n288), .Y(n286) );
  BUFX2M U59 ( .A(n289), .Y(n285) );
  BUFX2M U60 ( .A(n289), .Y(n284) );
  BUFX2M U61 ( .A(n290), .Y(n283) );
  BUFX2M U62 ( .A(n291), .Y(n281) );
  BUFX2M U63 ( .A(n291), .Y(n280) );
  BUFX2M U64 ( .A(n292), .Y(n279) );
  BUFX2M U65 ( .A(n290), .Y(n282) );
  BUFX2M U66 ( .A(n288), .Y(n287) );
  INVX2M U67 ( .A(Wr_Data[7]), .Y(n303) );
  INVX2M U68 ( .A(Wr_Data[5]), .Y(n301) );
  BUFX2M U69 ( .A(rst), .Y(n289) );
  BUFX2M U70 ( .A(rst), .Y(n291) );
  BUFX2M U71 ( .A(rst), .Y(n290) );
  BUFX2M U72 ( .A(rst), .Y(n292) );
  BUFX2M U73 ( .A(rst), .Y(n288) );
  AO22X1M U74 ( .A0(N43), .A1(n304), .B0(Rd_Data[0]), .B1(n12), .Y(n40) );
  AO22X1M U75 ( .A0(N42), .A1(n304), .B0(Rd_Data[1]), .B1(n12), .Y(n41) );
  AO22X1M U76 ( .A0(N41), .A1(n304), .B0(Rd_Data[2]), .B1(n12), .Y(n42) );
  AO22X1M U77 ( .A0(N40), .A1(n304), .B0(Rd_Data[3]), .B1(n12), .Y(n43) );
  AO22X1M U78 ( .A0(N39), .A1(n304), .B0(Rd_Data[4]), .B1(n12), .Y(n44) );
  AO22X1M U79 ( .A0(N38), .A1(n304), .B0(Rd_Data[5]), .B1(n12), .Y(n45) );
  AO22X1M U80 ( .A0(N37), .A1(n304), .B0(Rd_Data[6]), .B1(n12), .Y(n46) );
  AO22X1M U81 ( .A0(N36), .A1(n304), .B0(Rd_Data[7]), .B1(n12), .Y(n47) );
  OAI2BB2X1M U82 ( .B0(n296), .B1(n29), .A0N(\mem[8][0] ), .A1N(n29), .Y(n112)
         );
  OAI2BB2X1M U83 ( .B0(n297), .B1(n29), .A0N(\mem[8][1] ), .A1N(n29), .Y(n113)
         );
  OAI2BB2X1M U84 ( .B0(n298), .B1(n29), .A0N(\mem[8][2] ), .A1N(n29), .Y(n114)
         );
  OAI2BB2X1M U85 ( .B0(n299), .B1(n29), .A0N(\mem[8][3] ), .A1N(n29), .Y(n115)
         );
  OAI2BB2X1M U86 ( .B0(n300), .B1(n29), .A0N(\mem[8][4] ), .A1N(n29), .Y(n116)
         );
  OAI2BB2X1M U87 ( .B0(n301), .B1(n29), .A0N(\mem[8][5] ), .A1N(n29), .Y(n117)
         );
  OAI2BB2X1M U88 ( .B0(n302), .B1(n29), .A0N(\mem[8][6] ), .A1N(n29), .Y(n118)
         );
  OAI2BB2X1M U89 ( .B0(n303), .B1(n29), .A0N(\mem[8][7] ), .A1N(n29), .Y(n119)
         );
  OAI2BB2X1M U90 ( .B0(n296), .B1(n33), .A0N(\mem[10][0] ), .A1N(n33), .Y(n128) );
  OAI2BB2X1M U91 ( .B0(n297), .B1(n33), .A0N(\mem[10][1] ), .A1N(n33), .Y(n129) );
  OAI2BB2X1M U92 ( .B0(n298), .B1(n33), .A0N(\mem[10][2] ), .A1N(n33), .Y(n130) );
  OAI2BB2X1M U93 ( .B0(n299), .B1(n33), .A0N(\mem[10][3] ), .A1N(n33), .Y(n131) );
  OAI2BB2X1M U94 ( .B0(n300), .B1(n33), .A0N(\mem[10][4] ), .A1N(n33), .Y(n132) );
  OAI2BB2X1M U95 ( .B0(n301), .B1(n33), .A0N(\mem[10][5] ), .A1N(n33), .Y(n133) );
  OAI2BB2X1M U96 ( .B0(n302), .B1(n33), .A0N(\mem[10][6] ), .A1N(n33), .Y(n134) );
  OAI2BB2X1M U97 ( .B0(n303), .B1(n33), .A0N(\mem[10][7] ), .A1N(n33), .Y(n135) );
  OAI2BB2X1M U98 ( .B0(n296), .B1(n35), .A0N(\mem[12][0] ), .A1N(n35), .Y(n144) );
  OAI2BB2X1M U99 ( .B0(n297), .B1(n35), .A0N(\mem[12][1] ), .A1N(n35), .Y(n145) );
  OAI2BB2X1M U100 ( .B0(n298), .B1(n35), .A0N(\mem[12][2] ), .A1N(n35), .Y(
        n146) );
  OAI2BB2X1M U101 ( .B0(n299), .B1(n35), .A0N(\mem[12][3] ), .A1N(n35), .Y(
        n147) );
  OAI2BB2X1M U102 ( .B0(n300), .B1(n35), .A0N(\mem[12][4] ), .A1N(n35), .Y(
        n148) );
  OAI2BB2X1M U103 ( .B0(n301), .B1(n35), .A0N(\mem[12][5] ), .A1N(n35), .Y(
        n149) );
  OAI2BB2X1M U104 ( .B0(n302), .B1(n35), .A0N(\mem[12][6] ), .A1N(n35), .Y(
        n150) );
  OAI2BB2X1M U105 ( .B0(n303), .B1(n35), .A0N(\mem[12][7] ), .A1N(n35), .Y(
        n151) );
  OAI2BB2X1M U106 ( .B0(n296), .B1(n37), .A0N(\mem[14][0] ), .A1N(n37), .Y(
        n160) );
  OAI2BB2X1M U107 ( .B0(n297), .B1(n37), .A0N(\mem[14][1] ), .A1N(n37), .Y(
        n161) );
  OAI2BB2X1M U108 ( .B0(n298), .B1(n37), .A0N(\mem[14][2] ), .A1N(n37), .Y(
        n162) );
  OAI2BB2X1M U109 ( .B0(n299), .B1(n37), .A0N(\mem[14][3] ), .A1N(n37), .Y(
        n163) );
  OAI2BB2X1M U110 ( .B0(n300), .B1(n37), .A0N(\mem[14][4] ), .A1N(n37), .Y(
        n164) );
  OAI2BB2X1M U111 ( .B0(n301), .B1(n37), .A0N(\mem[14][5] ), .A1N(n37), .Y(
        n165) );
  OAI2BB2X1M U112 ( .B0(n302), .B1(n37), .A0N(\mem[14][6] ), .A1N(n37), .Y(
        n166) );
  OAI2BB2X1M U113 ( .B0(n303), .B1(n37), .A0N(\mem[14][7] ), .A1N(n37), .Y(
        n167) );
  OAI2BB2X1M U114 ( .B0(n296), .B1(n21), .A0N(\mem[4][0] ), .A1N(n21), .Y(n80)
         );
  OAI2BB2X1M U115 ( .B0(n297), .B1(n21), .A0N(\mem[4][1] ), .A1N(n21), .Y(n81)
         );
  OAI2BB2X1M U116 ( .B0(n298), .B1(n21), .A0N(\mem[4][2] ), .A1N(n21), .Y(n82)
         );
  OAI2BB2X1M U117 ( .B0(n299), .B1(n21), .A0N(\mem[4][3] ), .A1N(n21), .Y(n83)
         );
  OAI2BB2X1M U118 ( .B0(n300), .B1(n21), .A0N(\mem[4][4] ), .A1N(n21), .Y(n84)
         );
  OAI2BB2X1M U119 ( .B0(n301), .B1(n21), .A0N(\mem[4][5] ), .A1N(n21), .Y(n85)
         );
  OAI2BB2X1M U120 ( .B0(n302), .B1(n21), .A0N(\mem[4][6] ), .A1N(n21), .Y(n86)
         );
  OAI2BB2X1M U121 ( .B0(n303), .B1(n21), .A0N(\mem[4][7] ), .A1N(n21), .Y(n87)
         );
  OAI2BB2X1M U122 ( .B0(n296), .B1(n23), .A0N(\mem[5][0] ), .A1N(n23), .Y(n88)
         );
  OAI2BB2X1M U123 ( .B0(n297), .B1(n23), .A0N(\mem[5][1] ), .A1N(n23), .Y(n89)
         );
  OAI2BB2X1M U124 ( .B0(n298), .B1(n23), .A0N(\mem[5][2] ), .A1N(n23), .Y(n90)
         );
  OAI2BB2X1M U125 ( .B0(n299), .B1(n23), .A0N(\mem[5][3] ), .A1N(n23), .Y(n91)
         );
  OAI2BB2X1M U126 ( .B0(n300), .B1(n23), .A0N(\mem[5][4] ), .A1N(n23), .Y(n92)
         );
  OAI2BB2X1M U127 ( .B0(n301), .B1(n23), .A0N(\mem[5][5] ), .A1N(n23), .Y(n93)
         );
  OAI2BB2X1M U128 ( .B0(n302), .B1(n23), .A0N(\mem[5][6] ), .A1N(n23), .Y(n94)
         );
  OAI2BB2X1M U129 ( .B0(n303), .B1(n23), .A0N(\mem[5][7] ), .A1N(n23), .Y(n95)
         );
  OAI2BB2X1M U130 ( .B0(n296), .B1(n24), .A0N(\mem[6][0] ), .A1N(n24), .Y(n96)
         );
  OAI2BB2X1M U131 ( .B0(n297), .B1(n24), .A0N(\mem[6][1] ), .A1N(n24), .Y(n97)
         );
  OAI2BB2X1M U132 ( .B0(n298), .B1(n24), .A0N(\mem[6][2] ), .A1N(n24), .Y(n98)
         );
  OAI2BB2X1M U133 ( .B0(n299), .B1(n24), .A0N(\mem[6][3] ), .A1N(n24), .Y(n99)
         );
  OAI2BB2X1M U134 ( .B0(n300), .B1(n24), .A0N(\mem[6][4] ), .A1N(n24), .Y(n100) );
  OAI2BB2X1M U135 ( .B0(n301), .B1(n24), .A0N(\mem[6][5] ), .A1N(n24), .Y(n101) );
  OAI2BB2X1M U136 ( .B0(n302), .B1(n24), .A0N(\mem[6][6] ), .A1N(n24), .Y(n102) );
  OAI2BB2X1M U137 ( .B0(n303), .B1(n24), .A0N(\mem[6][7] ), .A1N(n24), .Y(n103) );
  OAI2BB2X1M U138 ( .B0(n296), .B1(n27), .A0N(\mem[7][0] ), .A1N(n27), .Y(n104) );
  OAI2BB2X1M U139 ( .B0(n297), .B1(n27), .A0N(\mem[7][1] ), .A1N(n27), .Y(n105) );
  OAI2BB2X1M U140 ( .B0(n298), .B1(n27), .A0N(\mem[7][2] ), .A1N(n27), .Y(n106) );
  OAI2BB2X1M U141 ( .B0(n299), .B1(n27), .A0N(\mem[7][3] ), .A1N(n27), .Y(n107) );
  OAI2BB2X1M U142 ( .B0(n300), .B1(n27), .A0N(\mem[7][4] ), .A1N(n27), .Y(n108) );
  OAI2BB2X1M U143 ( .B0(n301), .B1(n27), .A0N(\mem[7][5] ), .A1N(n27), .Y(n109) );
  OAI2BB2X1M U144 ( .B0(n302), .B1(n27), .A0N(\mem[7][6] ), .A1N(n27), .Y(n110) );
  OAI2BB2X1M U145 ( .B0(n303), .B1(n27), .A0N(\mem[7][7] ), .A1N(n27), .Y(n111) );
  OAI2BB2X1M U146 ( .B0(n296), .B1(n31), .A0N(\mem[9][0] ), .A1N(n31), .Y(n120) );
  OAI2BB2X1M U147 ( .B0(n297), .B1(n31), .A0N(\mem[9][1] ), .A1N(n31), .Y(n121) );
  OAI2BB2X1M U148 ( .B0(n298), .B1(n31), .A0N(\mem[9][2] ), .A1N(n31), .Y(n122) );
  OAI2BB2X1M U149 ( .B0(n299), .B1(n31), .A0N(\mem[9][3] ), .A1N(n31), .Y(n123) );
  OAI2BB2X1M U150 ( .B0(n300), .B1(n31), .A0N(\mem[9][4] ), .A1N(n31), .Y(n124) );
  OAI2BB2X1M U151 ( .B0(n301), .B1(n31), .A0N(\mem[9][5] ), .A1N(n31), .Y(n125) );
  OAI2BB2X1M U152 ( .B0(n302), .B1(n31), .A0N(\mem[9][6] ), .A1N(n31), .Y(n126) );
  OAI2BB2X1M U153 ( .B0(n303), .B1(n31), .A0N(\mem[9][7] ), .A1N(n31), .Y(n127) );
  OAI2BB2X1M U154 ( .B0(n296), .B1(n34), .A0N(\mem[11][0] ), .A1N(n34), .Y(
        n136) );
  OAI2BB2X1M U155 ( .B0(n297), .B1(n34), .A0N(\mem[11][1] ), .A1N(n34), .Y(
        n137) );
  OAI2BB2X1M U156 ( .B0(n298), .B1(n34), .A0N(\mem[11][2] ), .A1N(n34), .Y(
        n138) );
  OAI2BB2X1M U157 ( .B0(n299), .B1(n34), .A0N(\mem[11][3] ), .A1N(n34), .Y(
        n139) );
  OAI2BB2X1M U158 ( .B0(n300), .B1(n34), .A0N(\mem[11][4] ), .A1N(n34), .Y(
        n140) );
  OAI2BB2X1M U159 ( .B0(n301), .B1(n34), .A0N(\mem[11][5] ), .A1N(n34), .Y(
        n141) );
  OAI2BB2X1M U160 ( .B0(n302), .B1(n34), .A0N(\mem[11][6] ), .A1N(n34), .Y(
        n142) );
  OAI2BB2X1M U161 ( .B0(n303), .B1(n34), .A0N(\mem[11][7] ), .A1N(n34), .Y(
        n143) );
  OAI2BB2X1M U162 ( .B0(n296), .B1(n36), .A0N(\mem[13][0] ), .A1N(n36), .Y(
        n152) );
  OAI2BB2X1M U163 ( .B0(n297), .B1(n36), .A0N(\mem[13][1] ), .A1N(n36), .Y(
        n153) );
  OAI2BB2X1M U164 ( .B0(n298), .B1(n36), .A0N(\mem[13][2] ), .A1N(n36), .Y(
        n154) );
  OAI2BB2X1M U165 ( .B0(n299), .B1(n36), .A0N(\mem[13][3] ), .A1N(n36), .Y(
        n155) );
  OAI2BB2X1M U166 ( .B0(n300), .B1(n36), .A0N(\mem[13][4] ), .A1N(n36), .Y(
        n156) );
  OAI2BB2X1M U167 ( .B0(n301), .B1(n36), .A0N(\mem[13][5] ), .A1N(n36), .Y(
        n157) );
  OAI2BB2X1M U168 ( .B0(n302), .B1(n36), .A0N(\mem[13][6] ), .A1N(n36), .Y(
        n158) );
  OAI2BB2X1M U169 ( .B0(n303), .B1(n36), .A0N(\mem[13][7] ), .A1N(n36), .Y(
        n159) );
  OAI2BB2X1M U170 ( .B0(n296), .B1(n39), .A0N(\mem[15][0] ), .A1N(n39), .Y(
        n168) );
  OAI2BB2X1M U171 ( .B0(n297), .B1(n39), .A0N(\mem[15][1] ), .A1N(n39), .Y(
        n169) );
  OAI2BB2X1M U172 ( .B0(n298), .B1(n39), .A0N(\mem[15][2] ), .A1N(n39), .Y(
        n170) );
  OAI2BB2X1M U173 ( .B0(n299), .B1(n39), .A0N(\mem[15][3] ), .A1N(n39), .Y(
        n171) );
  OAI2BB2X1M U174 ( .B0(n300), .B1(n39), .A0N(\mem[15][4] ), .A1N(n39), .Y(
        n172) );
  OAI2BB2X1M U175 ( .B0(n301), .B1(n39), .A0N(\mem[15][5] ), .A1N(n39), .Y(
        n173) );
  OAI2BB2X1M U176 ( .B0(n302), .B1(n39), .A0N(\mem[15][6] ), .A1N(n39), .Y(
        n174) );
  OAI2BB2X1M U177 ( .B0(n303), .B1(n39), .A0N(\mem[15][7] ), .A1N(n39), .Y(
        n175) );
  OAI2BB2X1M U178 ( .B0(n297), .B1(n18), .A0N(Reg2[1]), .A1N(n18), .Y(n65) );
  OAI2BB2X1M U179 ( .B0(n298), .B1(n18), .A0N(Reg2[2]), .A1N(n18), .Y(n66) );
  OAI2BB2X1M U180 ( .B0(n299), .B1(n18), .A0N(Reg2[3]), .A1N(n18), .Y(n67) );
  OAI2BB2X1M U181 ( .B0(n300), .B1(n18), .A0N(Reg2[4]), .A1N(n18), .Y(n68) );
  OAI2BB2X1M U182 ( .B0(n301), .B1(n18), .A0N(Reg2[5]), .A1N(n18), .Y(n69) );
  OAI2BB2X1M U183 ( .B0(n302), .B1(n18), .A0N(Reg2[6]), .A1N(n18), .Y(n70) );
  OAI2BB2X1M U184 ( .B0(n296), .B1(n20), .A0N(Reg3[0]), .A1N(n20), .Y(n72) );
  OAI2BB2X1M U185 ( .B0(n297), .B1(n20), .A0N(Reg3[1]), .A1N(n20), .Y(n73) );
  OAI2BB2X1M U186 ( .B0(n298), .B1(n20), .A0N(Reg3[2]), .A1N(n20), .Y(n74) );
  OAI2BB2X1M U187 ( .B0(n299), .B1(n20), .A0N(Reg3[3]), .A1N(n20), .Y(n75) );
  OAI2BB2X1M U188 ( .B0(n300), .B1(n20), .A0N(Reg3[4]), .A1N(n20), .Y(n76) );
  OAI2BB2X1M U189 ( .B0(n302), .B1(n20), .A0N(Reg3[6]), .A1N(n20), .Y(n78) );
  OAI2BB2X1M U190 ( .B0(n303), .B1(n20), .A0N(Reg3[7]), .A1N(n20), .Y(n79) );
  OAI2BB2X1M U191 ( .B0(n296), .B1(n18), .A0N(Reg2[0]), .A1N(n18), .Y(n64) );
  OAI2BB2X1M U192 ( .B0(n303), .B1(n18), .A0N(Reg2[7]), .A1N(n18), .Y(n71) );
  OAI2BB2X1M U193 ( .B0(n301), .B1(n20), .A0N(Reg3[5]), .A1N(n20), .Y(n77) );
  OAI2BB2X1M U194 ( .B0(n13), .B1(n296), .A0N(Reg0[0]), .A1N(n13), .Y(n48) );
  OAI2BB2X1M U195 ( .B0(n13), .B1(n297), .A0N(Reg0[1]), .A1N(n13), .Y(n49) );
  OAI2BB2X1M U196 ( .B0(n13), .B1(n298), .A0N(Reg0[2]), .A1N(n13), .Y(n50) );
  OAI2BB2X1M U197 ( .B0(n13), .B1(n299), .A0N(Reg0[3]), .A1N(n13), .Y(n51) );
  OAI2BB2X1M U198 ( .B0(n13), .B1(n300), .A0N(Reg0[4]), .A1N(n13), .Y(n52) );
  MX2XLM U199 ( .A(Reg1[5]), .B(Wr_Data[5]), .S0(n1), .Y(n61) );
  MX2XLM U200 ( .A(Reg1[2]), .B(Wr_Data[2]), .S0(n1), .Y(n58) );
  MX2XLM U201 ( .A(Reg1[1]), .B(Wr_Data[1]), .S0(n1), .Y(n57) );
  MX2XLM U202 ( .A(Reg1[4]), .B(Wr_Data[4]), .S0(n1), .Y(n60) );
  OAI2BB1X2M U203 ( .A0N(Rd_Data_VLD), .A1N(n28), .B0(n12), .Y(n176) );
  AOI22X1M U204 ( .A0(\mem[10][0] ), .A1(n274), .B0(\mem[11][0] ), .B1(n273), 
        .Y(n7) );
  AOI22X1M U205 ( .A0(\mem[8][0] ), .A1(n277), .B0(\mem[9][0] ), .B1(n276), 
        .Y(n6) );
  CLKNAND2X2M U206 ( .A(N14), .B(n271), .Y(n254) );
  AOI21X1M U207 ( .A0(n7), .A1(n6), .B0(n254), .Y(n181) );
  AOI22X1M U208 ( .A0(\mem[14][0] ), .A1(n274), .B0(\mem[15][0] ), .B1(n273), 
        .Y(n9) );
  AOI22X1M U209 ( .A0(\mem[12][0] ), .A1(n277), .B0(\mem[13][0] ), .B1(n276), 
        .Y(n8) );
  CLKNAND2X2M U210 ( .A(N14), .B(N13), .Y(n257) );
  AOI21X1M U211 ( .A0(n9), .A1(n8), .B0(n257), .Y(n180) );
  AOI22X1M U212 ( .A0(Reg2[0]), .A1(n274), .B0(Reg3[0]), .B1(n273), .Y(n11) );
  CLKNAND2X2M U213 ( .A(n271), .B(n272), .Y(n260) );
  AOI21X1M U214 ( .A0(n11), .A1(n10), .B0(n260), .Y(n179) );
  AOI22X1M U215 ( .A0(\mem[6][0] ), .A1(n274), .B0(\mem[7][0] ), .B1(n273), 
        .Y(n177) );
  AOI22X1M U216 ( .A0(\mem[4][0] ), .A1(n277), .B0(\mem[5][0] ), .B1(n276), 
        .Y(n16) );
  CLKNAND2X2M U217 ( .A(N13), .B(n272), .Y(n263) );
  AOI21X1M U218 ( .A0(n177), .A1(n16), .B0(n263), .Y(n178) );
  OR4X1M U219 ( .A(n181), .B(n180), .C(n179), .D(n178), .Y(N43) );
  AOI22X1M U220 ( .A0(\mem[10][1] ), .A1(n274), .B0(\mem[11][1] ), .B1(n273), 
        .Y(n183) );
  AOI22X1M U221 ( .A0(\mem[8][1] ), .A1(n277), .B0(\mem[9][1] ), .B1(n276), 
        .Y(n182) );
  AOI21X1M U222 ( .A0(n183), .A1(n182), .B0(n254), .Y(n193) );
  AOI22X1M U223 ( .A0(\mem[14][1] ), .A1(n274), .B0(\mem[15][1] ), .B1(n273), 
        .Y(n185) );
  AOI22X1M U224 ( .A0(\mem[12][1] ), .A1(n277), .B0(\mem[13][1] ), .B1(n276), 
        .Y(n184) );
  AOI21X1M U225 ( .A0(n185), .A1(n184), .B0(n257), .Y(n192) );
  AOI22X1M U226 ( .A0(Reg2[1]), .A1(n274), .B0(Reg3[1]), .B1(n273), .Y(n187)
         );
  AOI22X1M U227 ( .A0(Reg0[1]), .A1(n277), .B0(Reg1[1]), .B1(n276), .Y(n186)
         );
  AOI21X1M U228 ( .A0(n187), .A1(n186), .B0(n260), .Y(n191) );
  AOI22X1M U229 ( .A0(\mem[6][1] ), .A1(n274), .B0(\mem[7][1] ), .B1(n273), 
        .Y(n189) );
  AOI22X1M U230 ( .A0(\mem[4][1] ), .A1(n277), .B0(\mem[5][1] ), .B1(n276), 
        .Y(n188) );
  AOI21X1M U231 ( .A0(n189), .A1(n188), .B0(n263), .Y(n190) );
  OR4X1M U232 ( .A(n193), .B(n192), .C(n191), .D(n190), .Y(N42) );
  AOI22X1M U233 ( .A0(\mem[10][2] ), .A1(n274), .B0(\mem[11][2] ), .B1(n273), 
        .Y(n195) );
  AOI22X1M U234 ( .A0(\mem[8][2] ), .A1(n277), .B0(\mem[9][2] ), .B1(n276), 
        .Y(n194) );
  AOI21X1M U235 ( .A0(n195), .A1(n194), .B0(n254), .Y(n205) );
  AOI22X1M U236 ( .A0(\mem[14][2] ), .A1(n274), .B0(\mem[15][2] ), .B1(n273), 
        .Y(n197) );
  AOI22X1M U237 ( .A0(\mem[12][2] ), .A1(n277), .B0(\mem[13][2] ), .B1(n276), 
        .Y(n196) );
  AOI21X1M U238 ( .A0(n197), .A1(n196), .B0(n257), .Y(n204) );
  AOI22X1M U239 ( .A0(Reg2[2]), .A1(n274), .B0(Reg3[2]), .B1(n273), .Y(n199)
         );
  AOI22X1M U240 ( .A0(Reg0[2]), .A1(n277), .B0(Reg1[2]), .B1(n276), .Y(n198)
         );
  AOI21X1M U241 ( .A0(n199), .A1(n198), .B0(n260), .Y(n203) );
  AOI22X1M U242 ( .A0(\mem[6][2] ), .A1(n274), .B0(\mem[7][2] ), .B1(n273), 
        .Y(n201) );
  AOI22X1M U243 ( .A0(\mem[4][2] ), .A1(n277), .B0(\mem[5][2] ), .B1(n276), 
        .Y(n200) );
  AOI21X1M U244 ( .A0(n201), .A1(n200), .B0(n263), .Y(n202) );
  OR4X1M U245 ( .A(n205), .B(n204), .C(n203), .D(n202), .Y(N41) );
  AOI22X1M U246 ( .A0(\mem[10][3] ), .A1(n274), .B0(\mem[11][3] ), .B1(n273), 
        .Y(n207) );
  AOI22X1M U247 ( .A0(\mem[8][3] ), .A1(n277), .B0(\mem[9][3] ), .B1(n276), 
        .Y(n206) );
  AOI21X1M U248 ( .A0(n207), .A1(n206), .B0(n254), .Y(n217) );
  AOI22X1M U249 ( .A0(\mem[14][3] ), .A1(n274), .B0(\mem[15][3] ), .B1(n273), 
        .Y(n209) );
  AOI22X1M U250 ( .A0(\mem[12][3] ), .A1(n277), .B0(\mem[13][3] ), .B1(n276), 
        .Y(n208) );
  AOI21X1M U251 ( .A0(n209), .A1(n208), .B0(n257), .Y(n216) );
  AOI22X1M U252 ( .A0(Reg2[3]), .A1(n274), .B0(Reg3[3]), .B1(n273), .Y(n211)
         );
  AOI21X1M U253 ( .A0(n211), .A1(n210), .B0(n260), .Y(n215) );
  AOI22X1M U254 ( .A0(\mem[6][3] ), .A1(n274), .B0(\mem[7][3] ), .B1(n273), 
        .Y(n213) );
  AOI22X1M U255 ( .A0(\mem[4][3] ), .A1(n277), .B0(\mem[5][3] ), .B1(n276), 
        .Y(n212) );
  AOI21X1M U256 ( .A0(n213), .A1(n212), .B0(n263), .Y(n214) );
  OR4X1M U257 ( .A(n217), .B(n216), .C(n215), .D(n214), .Y(N40) );
  AOI22X1M U258 ( .A0(\mem[10][4] ), .A1(n274), .B0(\mem[11][4] ), .B1(n273), 
        .Y(n219) );
  AOI22X1M U259 ( .A0(\mem[8][4] ), .A1(n277), .B0(\mem[9][4] ), .B1(n276), 
        .Y(n218) );
  AOI21X1M U260 ( .A0(n219), .A1(n218), .B0(n254), .Y(n229) );
  AOI22X1M U261 ( .A0(\mem[14][4] ), .A1(n274), .B0(\mem[15][4] ), .B1(n273), 
        .Y(n221) );
  AOI22X1M U262 ( .A0(\mem[12][4] ), .A1(n277), .B0(\mem[13][4] ), .B1(n276), 
        .Y(n220) );
  AOI21X1M U263 ( .A0(n221), .A1(n220), .B0(n257), .Y(n228) );
  AOI22X1M U264 ( .A0(Reg2[4]), .A1(n274), .B0(Reg3[4]), .B1(n273), .Y(n223)
         );
  AOI22X1M U265 ( .A0(Reg0[4]), .A1(n277), .B0(Reg1[4]), .B1(n276), .Y(n222)
         );
  AOI21X1M U266 ( .A0(n223), .A1(n222), .B0(n260), .Y(n227) );
  AOI22X1M U267 ( .A0(\mem[6][4] ), .A1(n274), .B0(\mem[7][4] ), .B1(n273), 
        .Y(n225) );
  AOI22X1M U268 ( .A0(\mem[4][4] ), .A1(n277), .B0(\mem[5][4] ), .B1(n276), 
        .Y(n224) );
  AOI21X1M U269 ( .A0(n225), .A1(n224), .B0(n263), .Y(n226) );
  OR4X1M U270 ( .A(n229), .B(n228), .C(n227), .D(n226), .Y(N39) );
  AOI22X1M U271 ( .A0(\mem[10][5] ), .A1(n274), .B0(\mem[11][5] ), .B1(n273), 
        .Y(n231) );
  AOI22X1M U272 ( .A0(\mem[8][5] ), .A1(n277), .B0(\mem[9][5] ), .B1(n276), 
        .Y(n230) );
  AOI21X1M U273 ( .A0(n231), .A1(n230), .B0(n254), .Y(n241) );
  AOI22X1M U274 ( .A0(\mem[14][5] ), .A1(n274), .B0(\mem[15][5] ), .B1(n273), 
        .Y(n233) );
  AOI22X1M U275 ( .A0(\mem[12][5] ), .A1(n277), .B0(\mem[13][5] ), .B1(n276), 
        .Y(n232) );
  AOI21X1M U276 ( .A0(n233), .A1(n232), .B0(n257), .Y(n240) );
  AOI22X1M U277 ( .A0(Reg2[5]), .A1(n274), .B0(Reg3[5]), .B1(n273), .Y(n235)
         );
  AOI22X1M U278 ( .A0(Reg0[5]), .A1(n277), .B0(Reg1[5]), .B1(n276), .Y(n234)
         );
  AOI21X1M U279 ( .A0(n235), .A1(n234), .B0(n260), .Y(n239) );
  AOI22X1M U280 ( .A0(\mem[6][5] ), .A1(n274), .B0(\mem[7][5] ), .B1(n273), 
        .Y(n237) );
  AOI22X1M U281 ( .A0(\mem[4][5] ), .A1(n277), .B0(\mem[5][5] ), .B1(n276), 
        .Y(n236) );
  AOI21X1M U282 ( .A0(n237), .A1(n236), .B0(n263), .Y(n238) );
  OR4X1M U283 ( .A(n241), .B(n240), .C(n239), .D(n238), .Y(N38) );
  AOI22X1M U284 ( .A0(\mem[10][6] ), .A1(n274), .B0(\mem[11][6] ), .B1(n273), 
        .Y(n243) );
  AOI22X1M U285 ( .A0(\mem[8][6] ), .A1(n277), .B0(\mem[9][6] ), .B1(n276), 
        .Y(n242) );
  AOI21X1M U286 ( .A0(n243), .A1(n242), .B0(n254), .Y(n253) );
  AOI22X1M U287 ( .A0(\mem[14][6] ), .A1(n274), .B0(\mem[15][6] ), .B1(n273), 
        .Y(n245) );
  AOI22X1M U288 ( .A0(\mem[12][6] ), .A1(n277), .B0(\mem[13][6] ), .B1(n276), 
        .Y(n244) );
  AOI21X1M U289 ( .A0(n245), .A1(n244), .B0(n257), .Y(n252) );
  AOI22X1M U290 ( .A0(Reg2[6]), .A1(n274), .B0(Reg3[6]), .B1(n273), .Y(n247)
         );
  AOI21X1M U291 ( .A0(n247), .A1(n246), .B0(n260), .Y(n251) );
  AOI22X1M U292 ( .A0(\mem[6][6] ), .A1(n274), .B0(\mem[7][6] ), .B1(n273), 
        .Y(n249) );
  AOI22X1M U293 ( .A0(\mem[4][6] ), .A1(n277), .B0(\mem[5][6] ), .B1(n276), 
        .Y(n248) );
  AOI21X1M U294 ( .A0(n249), .A1(n248), .B0(n263), .Y(n250) );
  OR4X1M U295 ( .A(n253), .B(n252), .C(n251), .D(n250), .Y(N37) );
  AOI22X1M U296 ( .A0(\mem[10][7] ), .A1(n274), .B0(\mem[11][7] ), .B1(n273), 
        .Y(n256) );
  AOI22X1M U297 ( .A0(\mem[8][7] ), .A1(n277), .B0(\mem[9][7] ), .B1(n276), 
        .Y(n255) );
  AOI21X1M U298 ( .A0(n256), .A1(n255), .B0(n254), .Y(n269) );
  AOI22X1M U299 ( .A0(\mem[14][7] ), .A1(n274), .B0(\mem[15][7] ), .B1(n273), 
        .Y(n259) );
  AOI22X1M U300 ( .A0(\mem[12][7] ), .A1(n277), .B0(\mem[13][7] ), .B1(n276), 
        .Y(n258) );
  AOI21X1M U301 ( .A0(n259), .A1(n258), .B0(n257), .Y(n268) );
  AOI22X1M U302 ( .A0(Reg2[7]), .A1(n274), .B0(Reg3[7]), .B1(n273), .Y(n262)
         );
  AOI21X1M U303 ( .A0(n262), .A1(n261), .B0(n260), .Y(n267) );
  AOI22X1M U304 ( .A0(\mem[6][7] ), .A1(n274), .B0(\mem[7][7] ), .B1(n273), 
        .Y(n265) );
  AOI22X1M U305 ( .A0(\mem[4][7] ), .A1(n277), .B0(\mem[5][7] ), .B1(n276), 
        .Y(n264) );
  AOI21X1M U306 ( .A0(n265), .A1(n264), .B0(n263), .Y(n266) );
  OR4X1M U307 ( .A(n269), .B(n268), .C(n267), .D(n266), .Y(N36) );
  AOI22XLM U308 ( .A0(Reg0[7]), .A1(n277), .B0(Reg1[7]), .B1(n276), .Y(n261)
         );
  AOI22XLM U309 ( .A0(Reg0[6]), .A1(n277), .B0(Reg1[6]), .B1(n276), .Y(n246)
         );
  AOI22XLM U310 ( .A0(Reg0[0]), .A1(n277), .B0(Reg1[0]), .B1(n276), .Y(n10) );
  AOI22XLM U311 ( .A0(Reg0[3]), .A1(n277), .B0(Reg1[3]), .B1(n276), .Y(n210)
         );
  MX2XLM U312 ( .A(Reg1[3]), .B(Wr_Data[3]), .S0(n1), .Y(n59) );
  MX2XLM U313 ( .A(Reg1[0]), .B(Wr_Data[0]), .S0(n1), .Y(n56) );
  MX2XLM U314 ( .A(Reg1[6]), .B(Wr_Data[6]), .S0(n1), .Y(n62) );
  MX2XLM U315 ( .A(Reg0[7]), .B(Wr_Data[7]), .S0(n293), .Y(n55) );
endmodule


module Alu_16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  ADDFX2M U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5])
         );
  ADDFX2M U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4])
         );
  ADDFX2M U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  ADDFX2M U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVXLM U2 ( .A(B[2]), .Y(n7) );
  INVXLM U3 ( .A(B[5]), .Y(n4) );
  INVXLM U4 ( .A(B[1]), .Y(n8) );
  NAND2X2M U5 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U6 ( .A(A[0]), .Y(n1) );
  INVX2M U7 ( .A(B[4]), .Y(n5) );
  INVXLM U8 ( .A(B[3]), .Y(n6) );
  INVXLM U9 ( .A(B[0]), .Y(n9) );
  INVXLM U10 ( .A(B[7]), .Y(n2) );
  INVXLM U11 ( .A(B[6]), .Y(n3) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module Alu_16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;

  wire   [8:1] carry;

  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(carry[1]), .CO(carry[2]), .S(SUM[1])
         );
  ADDFX2M U1_0 ( .A(A[0]), .B(B[0]), .CI(1'b0), .CO(carry[1]), .S(SUM[0]) );
endmodule


module Alu_16_DW01_add_1 ( A, B, CI, SUM, CO );
  input [13:0] A;
  input [13:0] B;
  output [13:0] SUM;
  input CI;
  output CO;
  wire   n1, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27;

  AOI21BX2M U2 ( .A0(n18), .A1(A[12]), .B0N(n19), .Y(n1) );
  XNOR2X2M U3 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
  NAND2X2M U4 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U5 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U6 ( .A(B[7]), .Y(n8) );
  INVX2M U7 ( .A(A[6]), .Y(n9) );
  INVX2M U8 ( .A(n9), .Y(SUM[6]) );
  BUFX2M U9 ( .A(A[0]), .Y(SUM[0]) );
  BUFX2M U10 ( .A(A[1]), .Y(SUM[1]) );
  BUFX2M U11 ( .A(A[2]), .Y(SUM[2]) );
  BUFX2M U12 ( .A(A[3]), .Y(SUM[3]) );
  BUFX2M U13 ( .A(A[4]), .Y(SUM[4]) );
  BUFX2M U14 ( .A(A[5]), .Y(SUM[5]) );
  XNOR2X1M U15 ( .A(n10), .B(n11), .Y(SUM[9]) );
  NOR2X1M U16 ( .A(n12), .B(n13), .Y(n11) );
  CLKXOR2X2M U17 ( .A(n14), .B(n15), .Y(SUM[8]) );
  NAND2BX1M U18 ( .AN(n16), .B(n17), .Y(n14) );
  OAI21X1M U19 ( .A0(A[12]), .A1(n18), .B0(B[12]), .Y(n19) );
  XOR3XLM U20 ( .A(B[12]), .B(A[12]), .C(n18), .Y(SUM[12]) );
  OAI21BX1M U21 ( .A0(n20), .A1(n21), .B0N(n22), .Y(n18) );
  XNOR2X1M U22 ( .A(n21), .B(n23), .Y(SUM[11]) );
  NOR2X1M U23 ( .A(n22), .B(n20), .Y(n23) );
  NOR2X1M U24 ( .A(B[11]), .B(A[11]), .Y(n20) );
  AND2X1M U25 ( .A(B[11]), .B(A[11]), .Y(n22) );
  OA21X1M U26 ( .A0(n24), .A1(n25), .B0(n26), .Y(n21) );
  CLKXOR2X2M U27 ( .A(n27), .B(n25), .Y(SUM[10]) );
  AOI2BB1X1M U28 ( .A0N(n10), .A1N(n13), .B0(n12), .Y(n25) );
  AND2X1M U29 ( .A(B[9]), .B(A[9]), .Y(n12) );
  NOR2X1M U30 ( .A(B[9]), .B(A[9]), .Y(n13) );
  OA21X1M U31 ( .A0(n15), .A1(n16), .B0(n17), .Y(n10) );
  CLKNAND2X2M U32 ( .A(B[8]), .B(A[8]), .Y(n17) );
  NOR2X1M U33 ( .A(B[8]), .B(A[8]), .Y(n16) );
  NAND2BX1M U34 ( .AN(n24), .B(n26), .Y(n27) );
  CLKNAND2X2M U35 ( .A(B[10]), .B(A[10]), .Y(n26) );
  NOR2X1M U36 ( .A(B[10]), .B(A[10]), .Y(n24) );
endmodule


module Alu_16_DW02_mult_0 ( A, B, TC, PRODUCT );
  input [7:0] A;
  input [7:0] B;
  output [15:0] PRODUCT;
  input TC;
  wire   \ab[7][7] , \ab[7][6] , \ab[7][5] , \ab[7][4] , \ab[7][3] ,
         \ab[7][2] , \ab[7][1] , \ab[7][0] , \ab[6][7] , \ab[6][6] ,
         \ab[6][5] , \ab[6][4] , \ab[6][3] , \ab[6][2] , \ab[6][1] ,
         \ab[6][0] , \ab[5][7] , \ab[5][6] , \ab[5][5] , \ab[5][4] ,
         \ab[5][3] , \ab[5][2] , \ab[5][1] , \ab[5][0] , \ab[4][7] ,
         \ab[4][6] , \ab[4][5] , \ab[4][4] , \ab[4][3] , \ab[4][2] ,
         \ab[4][1] , \ab[4][0] , \ab[3][7] , \ab[3][6] , \ab[3][5] ,
         \ab[3][4] , \ab[3][3] , \ab[3][2] , \ab[3][1] , \ab[3][0] ,
         \ab[2][7] , \ab[2][6] , \ab[2][5] , \ab[2][4] , \ab[2][3] ,
         \ab[2][2] , \ab[2][1] , \ab[2][0] , \ab[1][7] , \ab[1][6] ,
         \ab[1][5] , \ab[1][4] , \ab[1][3] , \ab[1][2] , \ab[1][1] ,
         \ab[1][0] , \ab[0][7] , \ab[0][6] , \ab[0][5] , \ab[0][4] ,
         \ab[0][3] , \ab[0][2] , \ab[0][1] , \CARRYB[7][6] , \CARRYB[7][5] ,
         \CARRYB[7][4] , \CARRYB[7][3] , \CARRYB[7][2] , \CARRYB[7][1] ,
         \CARRYB[7][0] , \CARRYB[6][6] , \CARRYB[6][5] , \CARRYB[6][4] ,
         \CARRYB[6][3] , \CARRYB[6][2] , \CARRYB[6][1] , \CARRYB[6][0] ,
         \CARRYB[5][6] , \CARRYB[5][5] , \CARRYB[5][4] , \CARRYB[5][3] ,
         \CARRYB[5][2] , \CARRYB[5][1] , \CARRYB[5][0] , \CARRYB[4][6] ,
         \CARRYB[4][5] , \CARRYB[4][4] , \CARRYB[4][3] , \CARRYB[4][2] ,
         \CARRYB[4][1] , \CARRYB[4][0] , \CARRYB[3][6] , \CARRYB[3][5] ,
         \CARRYB[3][4] , \CARRYB[3][3] , \CARRYB[3][2] , \CARRYB[3][1] ,
         \CARRYB[3][0] , \CARRYB[2][6] , \CARRYB[2][5] , \CARRYB[2][4] ,
         \CARRYB[2][3] , \CARRYB[2][2] , \CARRYB[2][1] , \CARRYB[2][0] ,
         \SUMB[7][6] , \SUMB[7][5] , \SUMB[7][4] , \SUMB[7][3] , \SUMB[7][2] ,
         \SUMB[7][1] , \SUMB[7][0] , \SUMB[6][6] , \SUMB[6][5] , \SUMB[6][4] ,
         \SUMB[6][3] , \SUMB[6][2] , \SUMB[6][1] , \SUMB[5][6] , \SUMB[5][5] ,
         \SUMB[5][4] , \SUMB[5][3] , \SUMB[5][2] , \SUMB[5][1] , \SUMB[4][6] ,
         \SUMB[4][5] , \SUMB[4][4] , \SUMB[4][3] , \SUMB[4][2] , \SUMB[4][1] ,
         \SUMB[3][6] , \SUMB[3][5] , \SUMB[3][4] , \SUMB[3][3] , \SUMB[3][2] ,
         \SUMB[3][1] , \SUMB[2][6] , \SUMB[2][5] , \SUMB[2][4] , \SUMB[2][3] ,
         \SUMB[2][2] , \SUMB[2][1] , \SUMB[1][6] , \SUMB[1][5] , \SUMB[1][4] ,
         \SUMB[1][3] , \SUMB[1][2] , \SUMB[1][1] , \A1[12] , \A1[11] ,
         \A1[10] , \A1[9] , \A1[8] , \A1[7] , \A1[6] , \A1[4] , \A1[3] ,
         \A1[2] , \A1[1] , \A1[0] , n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39;

  Alu_16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n16, n14, n15, n13, n11, n12, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n4), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n3), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n7), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n6), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  INVX2M U12 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U13 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U14 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U15 ( .A(\ab[0][5] ), .Y(n21) );
  AND2X2M U16 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n11) );
  AND2X2M U17 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n12) );
  CLKXOR2X2M U18 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U19 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U20 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U21 ( .A(\ab[0][2] ), .Y(n18) );
  AND2X2M U22 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n13) );
  AND2X2M U23 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n14) );
  CLKXOR2X2M U24 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  AND2X2M U25 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n15) );
  CLKXOR2X2M U26 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  AND2X2M U27 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n16) );
  XNOR2X2M U28 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U29 ( .A(\SUMB[7][1] ), .Y(n17) );
  CLKXOR2X2M U30 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  INVX2M U36 ( .A(A[1]), .Y(n38) );
  INVX2M U37 ( .A(A[0]), .Y(n39) );
  XNOR2X2M U38 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U39 ( .A(A[4]), .Y(n35) );
  INVX2M U40 ( .A(A[2]), .Y(n37) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[5]), .Y(n34) );
  INVX2M U43 ( .A(A[6]), .Y(n33) );
  INVXLM U44 ( .A(B[5]), .Y(n26) );
  INVXLM U45 ( .A(B[2]), .Y(n29) );
  INVXLM U46 ( .A(B[1]), .Y(n30) );
  INVX2M U47 ( .A(B[4]), .Y(n27) );
  INVXLM U48 ( .A(A[7]), .Y(n32) );
  INVXLM U49 ( .A(B[3]), .Y(n28) );
  INVXLM U50 ( .A(B[6]), .Y(n25) );
  INVXLM U51 ( .A(B[0]), .Y(n31) );
  INVXLM U52 ( .A(B[7]), .Y(n24) );
  NOR2X1M U54 ( .A(n32), .B(n24), .Y(\ab[7][7] ) );
  NOR2X1M U55 ( .A(n32), .B(n25), .Y(\ab[7][6] ) );
  NOR2X1M U56 ( .A(n32), .B(n26), .Y(\ab[7][5] ) );
  NOR2X1M U57 ( .A(n32), .B(n27), .Y(\ab[7][4] ) );
  NOR2X1M U58 ( .A(n32), .B(n28), .Y(\ab[7][3] ) );
  NOR2X1M U59 ( .A(n32), .B(n29), .Y(\ab[7][2] ) );
  NOR2X1M U60 ( .A(n32), .B(n30), .Y(\ab[7][1] ) );
  NOR2X1M U61 ( .A(n32), .B(n31), .Y(\ab[7][0] ) );
  NOR2X1M U62 ( .A(n24), .B(n33), .Y(\ab[6][7] ) );
  NOR2X1M U63 ( .A(n25), .B(n33), .Y(\ab[6][6] ) );
  NOR2X1M U64 ( .A(n26), .B(n33), .Y(\ab[6][5] ) );
  NOR2X1M U65 ( .A(n27), .B(n33), .Y(\ab[6][4] ) );
  NOR2X1M U66 ( .A(n28), .B(n33), .Y(\ab[6][3] ) );
  NOR2X1M U67 ( .A(n29), .B(n33), .Y(\ab[6][2] ) );
  NOR2X1M U68 ( .A(n30), .B(n33), .Y(\ab[6][1] ) );
  NOR2X1M U69 ( .A(n31), .B(n33), .Y(\ab[6][0] ) );
  NOR2X1M U70 ( .A(n24), .B(n34), .Y(\ab[5][7] ) );
  NOR2X1M U71 ( .A(n25), .B(n34), .Y(\ab[5][6] ) );
  NOR2X1M U72 ( .A(n26), .B(n34), .Y(\ab[5][5] ) );
  NOR2X1M U73 ( .A(n27), .B(n34), .Y(\ab[5][4] ) );
  NOR2X1M U74 ( .A(n28), .B(n34), .Y(\ab[5][3] ) );
  NOR2X1M U75 ( .A(n29), .B(n34), .Y(\ab[5][2] ) );
  NOR2X1M U76 ( .A(n30), .B(n34), .Y(\ab[5][1] ) );
  NOR2X1M U77 ( .A(n31), .B(n34), .Y(\ab[5][0] ) );
  NOR2X1M U78 ( .A(n24), .B(n35), .Y(\ab[4][7] ) );
  NOR2X1M U79 ( .A(n25), .B(n35), .Y(\ab[4][6] ) );
  NOR2X1M U80 ( .A(n26), .B(n35), .Y(\ab[4][5] ) );
  NOR2X1M U81 ( .A(n27), .B(n35), .Y(\ab[4][4] ) );
  NOR2X1M U82 ( .A(n28), .B(n35), .Y(\ab[4][3] ) );
  NOR2X1M U83 ( .A(n29), .B(n35), .Y(\ab[4][2] ) );
  NOR2X1M U84 ( .A(n30), .B(n35), .Y(\ab[4][1] ) );
  NOR2X1M U85 ( .A(n31), .B(n35), .Y(\ab[4][0] ) );
  NOR2X1M U86 ( .A(n24), .B(n36), .Y(\ab[3][7] ) );
  NOR2X1M U87 ( .A(n25), .B(n36), .Y(\ab[3][6] ) );
  NOR2X1M U88 ( .A(n26), .B(n36), .Y(\ab[3][5] ) );
  NOR2X1M U89 ( .A(n27), .B(n36), .Y(\ab[3][4] ) );
  NOR2X1M U90 ( .A(n28), .B(n36), .Y(\ab[3][3] ) );
  NOR2X1M U91 ( .A(n29), .B(n36), .Y(\ab[3][2] ) );
  NOR2X1M U92 ( .A(n30), .B(n36), .Y(\ab[3][1] ) );
  NOR2X1M U93 ( .A(n31), .B(n36), .Y(\ab[3][0] ) );
  NOR2X1M U94 ( .A(n24), .B(n37), .Y(\ab[2][7] ) );
  NOR2X1M U95 ( .A(n25), .B(n37), .Y(\ab[2][6] ) );
  NOR2X1M U96 ( .A(n26), .B(n37), .Y(\ab[2][5] ) );
  NOR2X1M U97 ( .A(n27), .B(n37), .Y(\ab[2][4] ) );
  NOR2X1M U98 ( .A(n28), .B(n37), .Y(\ab[2][3] ) );
  NOR2X1M U99 ( .A(n29), .B(n37), .Y(\ab[2][2] ) );
  NOR2X1M U100 ( .A(n30), .B(n37), .Y(\ab[2][1] ) );
  NOR2X1M U101 ( .A(n31), .B(n37), .Y(\ab[2][0] ) );
  NOR2X1M U102 ( .A(n24), .B(n38), .Y(\ab[1][7] ) );
  NOR2X1M U103 ( .A(n25), .B(n38), .Y(\ab[1][6] ) );
  NOR2X1M U104 ( .A(n26), .B(n38), .Y(\ab[1][5] ) );
  NOR2X1M U105 ( .A(n27), .B(n38), .Y(\ab[1][4] ) );
  NOR2X1M U106 ( .A(n28), .B(n38), .Y(\ab[1][3] ) );
  NOR2X1M U107 ( .A(n29), .B(n38), .Y(\ab[1][2] ) );
  NOR2X1M U108 ( .A(n30), .B(n38), .Y(\ab[1][1] ) );
  NOR2X1M U109 ( .A(n31), .B(n38), .Y(\ab[1][0] ) );
  NOR2X1M U110 ( .A(n24), .B(n39), .Y(\ab[0][7] ) );
  NOR2X1M U111 ( .A(n25), .B(n39), .Y(\ab[0][6] ) );
  NOR2X1M U112 ( .A(n26), .B(n39), .Y(\ab[0][5] ) );
  NOR2X1M U113 ( .A(n27), .B(n39), .Y(\ab[0][4] ) );
  NOR2X1M U114 ( .A(n28), .B(n39), .Y(\ab[0][3] ) );
  NOR2X1M U115 ( .A(n29), .B(n39), .Y(\ab[0][2] ) );
  NOR2X1M U116 ( .A(n30), .B(n39), .Y(\ab[0][1] ) );
  NOR2X1M U117 ( .A(n31), .B(n39), .Y(PRODUCT[0]) );
endmodule


module Alu_16_DW_div_uns_1 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][1] , \u_div/SumTmp[2][2] ,
         \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] , \u_div/SumTmp[2][5] ,
         \u_div/SumTmp[3][1] , \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] ,
         \u_div/SumTmp[3][4] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][1] , \u_div/SumTmp[5][2] ,
         \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] , \u_div/CryTmp[0][1] ,
         \u_div/CryTmp[0][2] , \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] ,
         \u_div/CryTmp[0][5] , \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] ,
         \u_div/CryTmp[1][1] , \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] ,
         \u_div/CryTmp[1][4] , \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] ,
         \u_div/CryTmp[1][7] , \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] ,
         \u_div/CryTmp[2][3] , \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] ,
         \u_div/CryTmp[2][6] , \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] ,
         \u_div/CryTmp[3][3] , \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] ,
         \u_div/CryTmp[4][1] , \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] ,
         \u_div/CryTmp[4][4] , \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] ,
         \u_div/CryTmp[5][3] , \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] ,
         \u_div/CryTmp[7][1] , \u_div/PartRem[1][1] , \u_div/PartRem[1][2] ,
         \u_div/PartRem[1][3] , \u_div/PartRem[1][4] , \u_div/PartRem[1][5] ,
         \u_div/PartRem[1][6] , \u_div/PartRem[1][7] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[4][1] , \u_div/PartRem[5][1] ,
         \u_div/PartRem[6][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n23, n25, n26, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86;
  wire   [7:0] \u_div/BInv ;

  ADDFHX8M \u_div/u_fa_PartRem_0_3_2  ( .A(n12), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(
        \u_div/BInv [7]), .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_4  ( .A(n31), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_3  ( .A(n26), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), 
        .S(\u_div/SumTmp[1][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(
        \u_div/BInv [5]), .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), 
        .S(\u_div/SumTmp[1][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_5  ( .A(n32), .B(\u_div/BInv [5]), .CI(
        \u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_2  ( .A(n29), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_2  ( .A(n25), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_1  ( .A(n36), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_4  ( .A(n1), .B(\u_div/BInv [4]), .CI(
        \u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(
        \u_div/BInv [4]), .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_2  ( .A(n30), .B(\u_div/BInv [2]), .CI(
        \u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_2_1  ( .A(n39), .B(\u_div/BInv [1]), .CI(
        \u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(
        \u_div/BInv [6]), .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), 
        .S(\u_div/SumTmp[1][6] ) );
  ADDFHX2M \u_div/u_fa_PartRem_0_4_3  ( .A(n27), .B(\u_div/BInv [3]), .CI(
        \u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] )
         );
  ADDFHX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(
        \u_div/BInv [2]), .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(
        \u_div/BInv [3]), .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] )
         );
  ADDFHX4M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/BInv [3]), .B(n34), .CI(
        \u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), 
        .S(\u_div/SumTmp[4][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/BInv [1]), .B(n43), .CI(
        \u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFHX4M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(
        \u_div/BInv [1]), .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), 
        .S(\u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_0  ( .A(a[6]), .B(\u_div/BInv [0]), .CI(1'b1), .CO(\u_div/CryTmp[6][1] ), .S(\u_div/SumTmp[6][0] ) );
  AND3X6M U1 ( .A(\u_div/CryTmp[7][1] ), .B(\u_div/BInv [2]), .C(
        \u_div/BInv [1]), .Y(n79) );
  INVX6M U2 ( .A(n67), .Y(n80) );
  NAND2X4M U3 ( .A(n52), .B(\u_div/BInv [3]), .Y(n67) );
  MXI2X8M U4 ( .A(n44), .B(n50), .S0(n78), .Y(n43) );
  NAND2X12M U5 ( .A(n79), .B(n80), .Y(n78) );
  MXI2X8M U6 ( .A(n51), .B(n13), .S0(quotient[4]), .Y(n12) );
  INVX2M U7 ( .A(a[4]), .Y(n14) );
  INVX2M U8 ( .A(a[6]), .Y(n60) );
  INVX2M U9 ( .A(\u_div/SumTmp[4][1] ), .Y(n13) );
  BUFX2M U10 ( .A(n33), .Y(n1) );
  INVX8M U11 ( .A(b[1]), .Y(\u_div/BInv [1]) );
  INVX6M U12 ( .A(b[2]), .Y(\u_div/BInv [2]) );
  INVX6M U13 ( .A(n74), .Y(n84) );
  INVX2M U14 ( .A(\u_div/CryTmp[2][6] ), .Y(n75) );
  NAND3X4M U15 ( .A(n21), .B(n20), .C(n19), .Y(\u_div/CryTmp[3][2] ) );
  INVX4M U16 ( .A(b[3]), .Y(\u_div/BInv [3]) );
  NAND2BX8M U17 ( .AN(b[6]), .B(\u_div/BInv [7]), .Y(n74) );
  NAND2X8M U18 ( .A(n83), .B(n84), .Y(n69) );
  NOR2X4M U19 ( .A(b[5]), .B(b[4]), .Y(n83) );
  AND2X2M U20 ( .A(\u_div/CryTmp[3][5] ), .B(n85), .Y(quotient[3]) );
  NOR2BX4M U21 ( .AN(\u_div/CryTmp[6][2] ), .B(n64), .Y(quotient[6]) );
  INVX2M U22 ( .A(n78), .Y(quotient[7]) );
  INVX4M U23 ( .A(n57), .Y(\u_div/PartRem[2][2] ) );
  NAND2X3M U24 ( .A(\u_div/CryTmp[1][4] ), .B(\u_div/BInv [4]), .Y(n10) );
  NAND2X4M U25 ( .A(\u_div/CryTmp[1][3] ), .B(\u_div/BInv [3]), .Y(n7) );
  XNOR3XLM U26 ( .A(\u_div/CryTmp[1][4] ), .B(\u_div/PartRem[2][4] ), .C(
        \u_div/BInv [4]), .Y(n3) );
  CLKINVX12M U27 ( .A(b[7]), .Y(\u_div/BInv [7]) );
  NAND2X4M U28 ( .A(\u_div/CryTmp[6][2] ), .B(n63), .Y(n62) );
  NOR2BX2M U29 ( .AN(\u_div/CryTmp[1][7] ), .B(b[7]), .Y(n77) );
  CLKMX2X2M U30 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(n25) );
  CLKNAND2X4M U31 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/BInv [1]), .Y(n20) );
  MX2XLM U32 ( .A(n12), .B(\u_div/SumTmp[3][2] ), .S0(quotient[3]), .Y(n26) );
  INVX2M U33 ( .A(b[0]), .Y(\u_div/BInv [0]) );
  INVX2M U34 ( .A(a[7]), .Y(n50) );
  XNOR3X2M U35 ( .A(\u_div/CryTmp[1][3] ), .B(\u_div/PartRem[2][3] ), .C(
        \u_div/BInv [3]), .Y(n2) );
  CLKXOR2X2M U36 ( .A(\u_div/BInv [0]), .B(a[5]), .Y(n4) );
  CLKINVX8M U37 ( .A(n69), .Y(n52) );
  CLKXOR2X2M U38 ( .A(\u_div/BInv [0]), .B(a[4]), .Y(n5) );
  NAND2X4M U39 ( .A(\u_div/CryTmp[1][3] ), .B(\u_div/PartRem[2][3] ), .Y(n6)
         );
  CLKNAND2X2M U40 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/BInv [3]), .Y(n8) );
  NAND3X4M U41 ( .A(n8), .B(n7), .C(n6), .Y(\u_div/CryTmp[1][4] ) );
  NAND2X3M U42 ( .A(\u_div/CryTmp[1][4] ), .B(\u_div/PartRem[2][4] ), .Y(n9)
         );
  NAND2X2M U43 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/BInv [4]), .Y(n11) );
  NAND3X4M U44 ( .A(n11), .B(n10), .C(n9), .Y(\u_div/CryTmp[1][5] ) );
  NAND2X2M U45 ( .A(n16), .B(n17), .Y(n34) );
  CLKNAND2X4M U46 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/CryTmp[3][1] ), .Y(
        n19) );
  MXI2X4M U47 ( .A(n65), .B(n4), .S0(n66), .Y(\u_div/PartRem[5][1] ) );
  MXI2X6M U48 ( .A(n5), .B(n14), .S0(n35), .Y(\u_div/PartRem[4][1] ) );
  MXI2X6M U49 ( .A(n41), .B(n40), .S0(n42), .Y(n39) );
  OR2X8M U50 ( .A(n73), .B(n72), .Y(n42) );
  INVX2M U51 ( .A(\u_div/CryTmp[3][5] ), .Y(n73) );
  MXI2XLM U52 ( .A(n56), .B(n2), .S0(quotient[1]), .Y(\u_div/PartRem[1][4] )
         );
  MXI2XLM U53 ( .A(n55), .B(n3), .S0(quotient[1]), .Y(\u_div/PartRem[1][5] )
         );
  MXI2XLM U54 ( .A(n54), .B(n59), .S0(quotient[1]), .Y(\u_div/PartRem[1][6] )
         );
  CLKAND2X12M U55 ( .A(\u_div/BInv [7]), .B(\u_div/CryTmp[1][7] ), .Y(
        quotient[1]) );
  MXI2X4M U56 ( .A(n76), .B(n45), .S0(n77), .Y(\u_div/PartRem[1][1] ) );
  INVX4M U57 ( .A(\u_div/CryTmp[5][3] ), .Y(n68) );
  MXI2X1M U58 ( .A(n39), .B(\u_div/SumTmp[2][1] ), .S0(quotient[2]), .Y(n57)
         );
  MX2X4M U59 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(n30) );
  MXI2X6M U60 ( .A(n61), .B(n60), .S0(n62), .Y(\u_div/PartRem[6][1] ) );
  MX2XLM U61 ( .A(n34), .B(\u_div/SumTmp[3][3] ), .S0(quotient[3]), .Y(n31) );
  NOR2X4M U62 ( .A(n68), .B(n67), .Y(n66) );
  MXI2X2M U63 ( .A(n43), .B(\u_div/SumTmp[6][1] ), .S0(quotient[6]), .Y(n23)
         );
  NAND2XLM U64 ( .A(n30), .B(n15), .Y(n16) );
  NAND2XLM U65 ( .A(\u_div/SumTmp[4][2] ), .B(quotient[4]), .Y(n17) );
  INVXLM U66 ( .A(quotient[4]), .Y(n15) );
  INVX6M U67 ( .A(n82), .Y(quotient[4]) );
  INVX2M U68 ( .A(n23), .Y(n29) );
  XOR2XLM U69 ( .A(\u_div/BInv [1]), .B(\u_div/CryTmp[3][1] ), .Y(n18) );
  XOR2XLM U70 ( .A(n18), .B(\u_div/PartRem[4][1] ), .Y(\u_div/SumTmp[3][1] )
         );
  NAND2X1M U71 ( .A(\u_div/CryTmp[3][1] ), .B(\u_div/BInv [1]), .Y(n21) );
  OR2X1M U72 ( .A(\u_div/BInv [0]), .B(a[3]), .Y(\u_div/CryTmp[3][1] ) );
  OR2X6M U73 ( .A(n70), .B(n69), .Y(n35) );
  CLKINVX4M U74 ( .A(\u_div/CryTmp[4][4] ), .Y(n70) );
  CLKINVX2M U75 ( .A(\u_div/SumTmp[6][0] ), .Y(n61) );
  XOR2X1M U76 ( .A(\u_div/BInv [0]), .B(a[7]), .Y(n44) );
  OR2X4M U77 ( .A(n75), .B(n74), .Y(n38) );
  MXI2XLM U78 ( .A(n23), .B(n28), .S0(quotient[5]), .Y(n27) );
  CLKINVX2M U79 ( .A(n64), .Y(n63) );
  INVX2M U80 ( .A(n86), .Y(quotient[2]) );
  NAND2XLM U81 ( .A(\u_div/CryTmp[2][6] ), .B(n84), .Y(n86) );
  INVX2M U82 ( .A(\u_div/SumTmp[5][2] ), .Y(n28) );
  INVX2M U83 ( .A(n72), .Y(n85) );
  INVX2M U84 ( .A(a[3]), .Y(n40) );
  INVX2M U85 ( .A(n56), .Y(\u_div/PartRem[2][3] ) );
  MX2XLM U86 ( .A(n36), .B(\u_div/SumTmp[1][1] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][2] ) );
  NAND2X2M U87 ( .A(b[0]), .B(n50), .Y(\u_div/CryTmp[7][1] ) );
  INVX2M U88 ( .A(n81), .Y(quotient[5]) );
  NAND2BX2M U89 ( .AN(n68), .B(n80), .Y(n81) );
  MXI2XLM U90 ( .A(n31), .B(\u_div/SumTmp[2][4] ), .S0(quotient[2]), .Y(n54)
         );
  MXI2XLM U91 ( .A(n25), .B(\u_div/SumTmp[2][2] ), .S0(quotient[2]), .Y(n56)
         );
  MXI2XLM U92 ( .A(n26), .B(\u_div/SumTmp[2][3] ), .S0(quotient[2]), .Y(n55)
         );
  INVX2M U93 ( .A(n53), .Y(\u_div/PartRem[2][6] ) );
  MX2XLM U94 ( .A(n1), .B(\u_div/SumTmp[3][4] ), .S0(quotient[3]), .Y(n32) );
  MX2XLM U95 ( .A(n27), .B(\u_div/SumTmp[4][3] ), .S0(quotient[4]), .Y(n33) );
  INVX2M U96 ( .A(a[5]), .Y(n65) );
  INVX2M U97 ( .A(\u_div/SumTmp[1][5] ), .Y(n59) );
  NAND2XLM U98 ( .A(n80), .B(\u_div/BInv [2]), .Y(n64) );
  MXI2X4M U99 ( .A(n37), .B(n49), .S0(n38), .Y(n36) );
  XOR2XLM U100 ( .A(\u_div/BInv [0]), .B(a[2]), .Y(n37) );
  INVX2M U101 ( .A(n55), .Y(\u_div/PartRem[2][4] ) );
  INVX2M U102 ( .A(n54), .Y(\u_div/PartRem[2][5] ) );
  MXI2XLM U103 ( .A(n57), .B(n71), .S0(quotient[1]), .Y(\u_div/PartRem[1][3] )
         );
  INVX2M U104 ( .A(\u_div/SumTmp[1][2] ), .Y(n71) );
  OR2X1M U105 ( .A(\u_div/BInv [0]), .B(a[1]), .Y(\u_div/CryTmp[1][1] ) );
  NAND2X2M U106 ( .A(n47), .B(n49), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U107 ( .A(a[2]), .Y(n49) );
  NAND2X2M U108 ( .A(n47), .B(n48), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U109 ( .A(a[0]), .Y(n48) );
  OR2X1M U110 ( .A(\u_div/BInv [0]), .B(a[5]), .Y(\u_div/CryTmp[5][1] ) );
  OR2X1M U111 ( .A(\u_div/BInv [0]), .B(a[4]), .Y(\u_div/CryTmp[4][1] ) );
  XOR2XLM U112 ( .A(\u_div/BInv [0]), .B(a[3]), .Y(n41) );
  MXI2XLM U113 ( .A(n53), .B(n58), .S0(quotient[1]), .Y(\u_div/PartRem[1][7] )
         );
  INVX2M U114 ( .A(\u_div/SumTmp[1][6] ), .Y(n58) );
  NAND2XLM U115 ( .A(n84), .B(\u_div/BInv [5]), .Y(n72) );
  XOR2XLM U116 ( .A(\u_div/BInv [0]), .B(a[1]), .Y(n45) );
  INVXLM U117 ( .A(\u_div/BInv [0]), .Y(n47) );
  INVX2M U118 ( .A(a[1]), .Y(n76) );
  CLKINVX1M U119 ( .A(b[5]), .Y(\u_div/BInv [5]) );
  INVX2M U120 ( .A(b[4]), .Y(\u_div/BInv [4]) );
  INVXLM U121 ( .A(b[6]), .Y(\u_div/BInv [6]) );
  INVXLM U122 ( .A(\u_div/PartRem[5][1] ), .Y(n51) );
  MXI2X1M U123 ( .A(n32), .B(\u_div/SumTmp[2][5] ), .S0(quotient[2]), .Y(n53)
         );
  NAND2BX4M U124 ( .AN(n70), .B(n52), .Y(n82) );
endmodule


module Alu_16 ( A, B, Alu_Fun, ALU_EN, clk, Alu_Rst, Out_VLD, Alu_Out );
  input [7:0] A;
  input [7:0] B;
  input [3:0] Alu_Fun;
  output [15:0] Alu_Out;
  input ALU_EN, clk, Alu_Rst;
  output Out_VLD;
  wire   Out_VLD_Comb, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N159, n34, n35,
         n36, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52,
         n54, n58, n59, n60, n61, n66, n67, n68, n72, n73, n74, n78, n79, n80,
         n84, n85, n86, n90, n91, n92, n95, n96, n97, n98, n99, n100, n101,
         n102, n111, n113, n114, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n37, n38, n39, n53, n55, n56, n57,
         n62, n63, n64, n65, n69, n70, n71, n75, n76, n77, n81, n82, n83, n87,
         n88, n89, n93, n94, n103, n104, n105, n106, n107, n108, n109, n110,
         n112, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152, n153, n154, n155, n156, n157,
         n158, n159, n160, n161, n162, n163, n164, n165, n166, n167, n168,
         n169, n170, n171, n172, n173, n174;
  wire   [15:0] ALU_OUT_FF;

  Alu_16_DW01_sub_0 sub_46 ( .A({1'b0, n16, n15, n14, n13, n12, n11, n10, n9}), 
        .B({1'b0, B[7], n8, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  Alu_16_DW01_add_0 add_45 ( .A({1'b0, n16, n15, n14, n13, n12, n11, n10, n9}), 
        .B({1'b0, B[7], n8, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  Alu_16_DW02_mult_0 mult_47 ( .A({n16, n15, n14, n13, n12, n11, n10, n9}), 
        .B({B[7], n8, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
  Alu_16_DW_div_uns_1 div_48 ( .a({n16, n15, n14, n13, n12, n11, n10, n9}), 
        .b(B), .quotient({N132, N131, N130, N129, N128, N127, N126, N125}) );
  DFFRQX1M \Alu_Out_reg[0]  ( .D(ALU_OUT_FF[0]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[0]) );
  DFFRQX2M \Alu_Out_reg[7]  ( .D(ALU_OUT_FF[7]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[7]) );
  DFFRQX2M \Alu_Out_reg[6]  ( .D(ALU_OUT_FF[6]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[6]) );
  DFFRQX2M \Alu_Out_reg[5]  ( .D(ALU_OUT_FF[5]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[5]) );
  DFFRQX2M \Alu_Out_reg[4]  ( .D(ALU_OUT_FF[4]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[4]) );
  DFFRQX2M \Alu_Out_reg[3]  ( .D(ALU_OUT_FF[3]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[3]) );
  DFFRQX2M \Alu_Out_reg[2]  ( .D(ALU_OUT_FF[2]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[2]) );
  DFFRQX2M \Alu_Out_reg[1]  ( .D(ALU_OUT_FF[1]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[1]) );
  DFFRQX2M \Alu_Out_reg[15]  ( .D(ALU_OUT_FF[15]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[15]) );
  DFFRQX2M \Alu_Out_reg[14]  ( .D(ALU_OUT_FF[14]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[14]) );
  DFFRQX2M \Alu_Out_reg[13]  ( .D(ALU_OUT_FF[13]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[13]) );
  DFFRQX2M \Alu_Out_reg[12]  ( .D(ALU_OUT_FF[12]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[12]) );
  DFFRQX2M \Alu_Out_reg[11]  ( .D(ALU_OUT_FF[11]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[11]) );
  DFFRQX2M \Alu_Out_reg[10]  ( .D(ALU_OUT_FF[10]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[10]) );
  DFFRQX2M \Alu_Out_reg[9]  ( .D(ALU_OUT_FF[9]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[9]) );
  DFFRQX2M \Alu_Out_reg[8]  ( .D(ALU_OUT_FF[8]), .CK(clk), .RN(Alu_Rst), .Q(
        Alu_Out[8]) );
  DFFRQX2M Out_VLD_reg ( .D(Out_VLD_Comb), .CK(clk), .RN(Alu_Rst), .Q(Out_VLD)
         );
  AND2X2M U3 ( .A(n82), .B(n40), .Y(n83) );
  BUFX2M U4 ( .A(A[6]), .Y(n15) );
  MX2X2M U7 ( .A(n124), .B(n122), .S0(n9), .Y(n77) );
  OR2X2M U8 ( .A(N159), .B(n161), .Y(n3) );
  BUFX2M U9 ( .A(B[6]), .Y(n8) );
  BUFX4M U10 ( .A(A[7]), .Y(n16) );
  BUFX2M U11 ( .A(A[5]), .Y(n14) );
  NOR2X4M U12 ( .A(N125), .B(n81), .Y(n117) );
  AOI21XLM U13 ( .A0(n130), .A1(n128), .B0(B[1]), .Y(n131) );
  INVX2M U14 ( .A(n40), .Y(n122) );
  INVX2M U15 ( .A(n42), .Y(n124) );
  INVX2M U16 ( .A(n46), .Y(n173) );
  INVX2M U17 ( .A(n106), .Y(n69) );
  INVX2M U18 ( .A(n54), .Y(n174) );
  OAI2BB1X2M U19 ( .A0N(N124), .A1N(n48), .B0(n49), .Y(ALU_OUT_FF[15]) );
  OAI2BB1X2M U20 ( .A0N(N123), .A1N(n48), .B0(n49), .Y(ALU_OUT_FF[14]) );
  OAI2BB1X2M U21 ( .A0N(N120), .A1N(n48), .B0(n49), .Y(ALU_OUT_FF[11]) );
  OAI2BB1X2M U22 ( .A0N(N121), .A1N(n48), .B0(n49), .Y(ALU_OUT_FF[12]) );
  OAI2BB1X2M U23 ( .A0N(N122), .A1N(n48), .B0(n49), .Y(ALU_OUT_FF[13]) );
  OAI2BB1X2M U24 ( .A0N(N118), .A1N(n48), .B0(n49), .Y(ALU_OUT_FF[9]) );
  OAI2BB1X2M U25 ( .A0N(N119), .A1N(n48), .B0(n49), .Y(ALU_OUT_FF[10]) );
  NAND2X2M U26 ( .A(n98), .B(n114), .Y(n46) );
  OR2X2M U27 ( .A(n76), .B(n88), .Y(n45) );
  NAND2X2M U28 ( .A(n41), .B(n113), .Y(n61) );
  OR2X2M U29 ( .A(n119), .B(n76), .Y(n40) );
  BUFX2M U30 ( .A(n44), .Y(n17) );
  OAI2BB1X2M U31 ( .A0N(n126), .A1N(n99), .B0(n113), .Y(n44) );
  INVX2M U32 ( .A(n119), .Y(n126) );
  NAND2X2M U33 ( .A(n123), .B(n125), .Y(n41) );
  INVX2M U34 ( .A(n118), .Y(n125) );
  INVX2M U35 ( .A(n98), .Y(n88) );
  INVX2M U36 ( .A(n76), .Y(n123) );
  NAND2BX2M U37 ( .AN(n118), .B(n99), .Y(n42) );
  NAND2X2M U38 ( .A(n98), .B(n99), .Y(n54) );
  NAND3X2M U39 ( .A(n45), .B(n46), .C(n47), .Y(n43) );
  OR2X2M U40 ( .A(n119), .B(n120), .Y(n106) );
  NOR2X2M U41 ( .A(n18), .B(n119), .Y(n4) );
  INVX2M U42 ( .A(n120), .Y(n127) );
  AOI21X2M U43 ( .A0(n34), .A1(n35), .B0(n172), .Y(Out_VLD_Comb) );
  NOR4X1M U44 ( .A(n36), .B(n4), .C(n5), .D(n127), .Y(n35) );
  NOR3X2M U45 ( .A(n43), .B(n174), .C(n17), .Y(n34) );
  NAND3X2M U46 ( .A(n40), .B(n41), .C(n42), .Y(n36) );
  NOR2X2M U47 ( .A(n118), .B(n18), .Y(n5) );
  NOR2X2M U48 ( .A(n118), .B(n120), .Y(n6) );
  INVX2M U49 ( .A(n114), .Y(n18) );
  NOR3X2M U50 ( .A(n112), .B(n110), .C(n109), .Y(n115) );
  NOR2X2M U51 ( .A(n94), .B(n93), .Y(n116) );
  INVX2M U52 ( .A(n155), .Y(n161) );
  AOI31X2M U53 ( .A0(n65), .A1(n64), .A2(n63), .B0(n172), .Y(ALU_OUT_FF[6]) );
  OA22X2M U54 ( .A0(n47), .A1(n166), .B0(n40), .B1(n167), .Y(n64) );
  AOI211X2M U55 ( .A0(N97), .A1(n5), .B0(n62), .C0(n66), .Y(n63) );
  AOI22XLM U56 ( .A0(N131), .A1(n69), .B0(N115), .B1(n6), .Y(n65) );
  NAND3BX2M U57 ( .AN(n23), .B(Alu_Fun[3]), .C(n123), .Y(n47) );
  NOR2BX2M U58 ( .AN(Alu_Fun[3]), .B(Alu_Fun[0]), .Y(n98) );
  NOR2X2M U59 ( .A(Alu_Fun[2]), .B(Alu_Fun[1]), .Y(n114) );
  NAND2BX2M U60 ( .AN(n45), .B(N159), .Y(n107) );
  OR2X2M U61 ( .A(Alu_Fun[3]), .B(n23), .Y(n119) );
  NAND3X2M U62 ( .A(Alu_Fun[0]), .B(n114), .C(Alu_Fun[3]), .Y(n113) );
  OR2X2M U63 ( .A(Alu_Fun[0]), .B(Alu_Fun[3]), .Y(n118) );
  NAND4BX1M U64 ( .AN(n155), .B(n127), .C(Alu_Fun[3]), .D(Alu_Fun[0]), .Y(n102) );
  NAND2BX2M U65 ( .AN(Alu_Fun[1]), .B(Alu_Fun[2]), .Y(n76) );
  NAND2BX2M U66 ( .AN(n50), .B(ALU_EN), .Y(n49) );
  NAND3X2M U67 ( .A(n104), .B(n7), .C(n103), .Y(n112) );
  AND2X2M U68 ( .A(Alu_Fun[2]), .B(Alu_Fun[1]), .Y(n99) );
  NAND3X2M U69 ( .A(n105), .B(n7), .C(n103), .Y(n81) );
  INVX2M U70 ( .A(Alu_Fun[0]), .Y(n23) );
  AO22X1M U71 ( .A0(N106), .A1(n4), .B0(n167), .B1(n124), .Y(n62) );
  NAND2BX2M U72 ( .AN(Alu_Fun[2]), .B(Alu_Fun[1]), .Y(n120) );
  NAND2X2M U73 ( .A(n106), .B(n105), .Y(n110) );
  INVX2M U74 ( .A(n104), .Y(n94) );
  AND2X2M U75 ( .A(n6), .B(ALU_EN), .Y(n48) );
  INVX2M U76 ( .A(ALU_EN), .Y(n172) );
  AOI31X2M U77 ( .A0(n22), .A1(n21), .A2(n20), .B0(n172), .Y(ALU_OUT_FF[1]) );
  AOI22X1M U78 ( .A0(N101), .A1(n4), .B0(N92), .B1(n5), .Y(n22) );
  MX2X2M U79 ( .A(n42), .B(n40), .S0(n10), .Y(n21) );
  AOI21X2M U80 ( .A0(N110), .A1(n6), .B0(n19), .Y(n20) );
  OAI2BB1X2M U81 ( .A0N(N126), .A1N(n69), .B0(n95), .Y(n19) );
  AOI211X2M U82 ( .A0(N159), .A1(n121), .B0(n96), .C0(n97), .Y(n95) );
  INVX2M U83 ( .A(n45), .Y(n121) );
  OAI22X1M U84 ( .A0(n47), .A1(n170), .B0(n54), .B1(n171), .Y(n97) );
  AOI31X2M U85 ( .A0(n27), .A1(n26), .A2(n25), .B0(n172), .Y(ALU_OUT_FF[2]) );
  OA22X2M U86 ( .A0(n47), .A1(n28), .B0(n40), .B1(n170), .Y(n26) );
  AOI211X2M U87 ( .A0(N93), .A1(n5), .B0(n24), .C0(n90), .Y(n25) );
  AOI31X2M U88 ( .A0(n32), .A1(n31), .A2(n30), .B0(n172), .Y(ALU_OUT_FF[3]) );
  OA22X2M U89 ( .A0(n47), .A1(n169), .B0(n40), .B1(n28), .Y(n31) );
  AOI211X2M U90 ( .A0(N94), .A1(n5), .B0(n29), .C0(n84), .Y(n30) );
  AOI31X2M U91 ( .A0(n50), .A1(n51), .A2(n52), .B0(n172), .Y(ALU_OUT_FF[8]) );
  NAND2X2M U92 ( .A(N99), .B(n5), .Y(n51) );
  AOI31X2M U93 ( .A0(n75), .A1(n71), .A2(n70), .B0(n172), .Y(ALU_OUT_FF[7]) );
  OA22X2M U94 ( .A0(n40), .A1(n166), .B0(n42), .B1(n16), .Y(n71) );
  AOI221XLM U95 ( .A0(N107), .A1(n4), .B0(N98), .B1(n5), .C0(n58), .Y(n70) );
  AOI31X2M U96 ( .A0(n39), .A1(n38), .A2(n37), .B0(n172), .Y(ALU_OUT_FF[4]) );
  OA22X2M U97 ( .A0(n47), .A1(n168), .B0(n40), .B1(n169), .Y(n38) );
  AOI211X2M U98 ( .A0(N95), .A1(n5), .B0(n33), .C0(n78), .Y(n37) );
  AOI22XLM U99 ( .A0(N129), .A1(n69), .B0(N113), .B1(n6), .Y(n39) );
  NAND2X2M U100 ( .A(n107), .B(n108), .Y(n93) );
  NAND2X2M U101 ( .A(n108), .B(n107), .Y(n109) );
  AOI221XLM U102 ( .A0(n173), .A1(n167), .B0(n15), .B1(n61), .C0(n122), .Y(n67) );
  AOI221XLM U103 ( .A0(n15), .A1(n173), .B0(n17), .B1(n167), .C0(n124), .Y(n68) );
  AOI221XLM U104 ( .A0(n171), .A1(n17), .B0(n173), .B1(n9), .C0(n124), .Y(n111) );
  AOI31X2M U105 ( .A0(n57), .A1(n56), .A2(n55), .B0(n172), .Y(ALU_OUT_FF[5])
         );
  OA22X2M U106 ( .A0(n47), .A1(n167), .B0(n40), .B1(n168), .Y(n56) );
  AOI211X2M U107 ( .A0(N96), .A1(n5), .B0(n53), .C0(n72), .Y(n55) );
  AOI22XLM U108 ( .A0(N130), .A1(n69), .B0(N114), .B1(n6), .Y(n57) );
  AOI211X2M U109 ( .A0(N108), .A1(n4), .B0(n124), .C0(n17), .Y(n50) );
  AOI2B1X1M U110 ( .A1N(n47), .A0(n10), .B0(n77), .Y(n7) );
  INVX2M U111 ( .A(n10), .Y(n128) );
  MXI2X1M U112 ( .A(n173), .B(n61), .S0(n9), .Y(n82) );
  NAND2X2M U113 ( .A(N109), .B(n6), .Y(n104) );
  NAND2X2M U114 ( .A(N91), .B(n5), .Y(n105) );
  NAND2X2M U115 ( .A(N100), .B(n4), .Y(n103) );
  AO22X1M U116 ( .A0(N102), .A1(n4), .B0(n170), .B1(n124), .Y(n24) );
  AO22X1M U117 ( .A0(N103), .A1(n4), .B0(n28), .B1(n124), .Y(n29) );
  AO22X1M U118 ( .A0(N104), .A1(n4), .B0(n169), .B1(n124), .Y(n33) );
  AO22X1M U119 ( .A0(N105), .A1(n4), .B0(n168), .B1(n124), .Y(n53) );
  INVX2M U120 ( .A(n9), .Y(n171) );
  INVX2M U121 ( .A(n15), .Y(n167) );
  INVX2M U122 ( .A(n11), .Y(n170) );
  INVX2M U123 ( .A(n13), .Y(n169) );
  INVX2M U124 ( .A(n14), .Y(n168) );
  INVX2M U125 ( .A(n12), .Y(n28) );
  BUFX2M U126 ( .A(A[4]), .Y(n13) );
  BUFX2M U127 ( .A(A[3]), .Y(n12) );
  BUFX2M U128 ( .A(A[1]), .Y(n10) );
  BUFX2M U129 ( .A(A[0]), .Y(n9) );
  BUFX2M U130 ( .A(A[2]), .Y(n11) );
  INVX2M U131 ( .A(n141), .Y(n158) );
  INVX2M U132 ( .A(n89), .Y(n108) );
  OAI31X1M U133 ( .A0(n120), .A1(n88), .A2(n3), .B0(n87), .Y(n89) );
  INVXLM U134 ( .A(B[2]), .Y(n157) );
  AOI221XLM U135 ( .A0(n173), .A1(n28), .B0(n12), .B1(n61), .C0(n122), .Y(n85)
         );
  AOI221XLM U136 ( .A0(n12), .A1(n173), .B0(n17), .B1(n28), .C0(n124), .Y(n86)
         );
  OAI222XLM U137 ( .A0(n91), .A1(n157), .B0(B[2]), .B1(n92), .C0(n54), .C1(
        n128), .Y(n90) );
  AOI221XLM U138 ( .A0(n173), .A1(n170), .B0(n11), .B1(n61), .C0(n122), .Y(n91) );
  AOI221XLM U139 ( .A0(n11), .A1(n173), .B0(n17), .B1(n170), .C0(n124), .Y(n92) );
  OAI222XLM U140 ( .A0(n79), .A1(n164), .B0(B[4]), .B1(n80), .C0(n54), .C1(n28), .Y(n78) );
  INVXLM U141 ( .A(B[4]), .Y(n164) );
  AOI221XLM U142 ( .A0(n173), .A1(n169), .B0(n13), .B1(n61), .C0(n122), .Y(n79) );
  AOI221XLM U143 ( .A0(n13), .A1(n173), .B0(n17), .B1(n169), .C0(n124), .Y(n80) );
  OAI222XLM U144 ( .A0(n73), .A1(n163), .B0(B[5]), .B1(n74), .C0(n54), .C1(
        n169), .Y(n72) );
  INVXLM U145 ( .A(B[5]), .Y(n163) );
  AOI221XLM U146 ( .A0(n173), .A1(n168), .B0(n14), .B1(n61), .C0(n122), .Y(n73) );
  AOI221XLM U147 ( .A0(n14), .A1(n173), .B0(n17), .B1(n168), .C0(n124), .Y(n74) );
  OAI221XLM U148 ( .A0(B[1]), .A1(n100), .B0(n101), .B1(n165), .C0(n102), .Y(
        n96) );
  INVXLM U149 ( .A(B[1]), .Y(n165) );
  AOI221XLM U150 ( .A0(n173), .A1(n128), .B0(n10), .B1(n61), .C0(n122), .Y(
        n101) );
  AOI221XLM U151 ( .A0(n10), .A1(n173), .B0(n17), .B1(n128), .C0(n124), .Y(
        n100) );
  INVX2M U152 ( .A(n130), .Y(n156) );
  OAI222XLM U153 ( .A0(n85), .A1(n159), .B0(B[3]), .B1(n86), .C0(n54), .C1(
        n170), .Y(n84) );
  INVXLM U154 ( .A(B[3]), .Y(n159) );
  AOI22XLM U155 ( .A0(N132), .A1(n69), .B0(N116), .B1(n6), .Y(n75) );
  MX2XLM U156 ( .A(n111), .B(n83), .S0(B[0]), .Y(n87) );
  INVXLM U157 ( .A(B[0]), .Y(n129) );
  INVXLM U158 ( .A(B[7]), .Y(n162) );
  OAI222XLM U159 ( .A0(n67), .A1(n160), .B0(n8), .B1(n68), .C0(n54), .C1(n168), 
        .Y(n66) );
  INVXLM U160 ( .A(n8), .Y(n160) );
  AOI211X2M U161 ( .A0(n117), .A1(n116), .B0(n115), .C0(n172), .Y(
        ALU_OUT_FF[0]) );
  AOI22XLM U162 ( .A0(N127), .A1(n69), .B0(N111), .B1(n6), .Y(n27) );
  NAND2XLM U163 ( .A(B[7]), .B(n166), .Y(n153) );
  AOI32XLM U164 ( .A0(n136), .A1(n146), .A2(n149), .B0(n8), .B1(n167), .Y(n137) );
  XNOR2XLM U165 ( .A(n15), .B(n8), .Y(n149) );
  INVXLM U166 ( .A(n16), .Y(n166) );
  AOI22XLM U167 ( .A0(N128), .A1(n69), .B0(N112), .B1(n6), .Y(n32) );
  AOI22XLM U168 ( .A0(n16), .A1(n174), .B0(N117), .B1(n6), .Y(n52) );
  AOI221XLM U169 ( .A0(n173), .A1(n166), .B0(n16), .B1(n61), .C0(n122), .Y(n59) );
  AOI221XLM U170 ( .A0(n173), .A1(n16), .B0(n17), .B1(n166), .C0(n124), .Y(n60) );
  OAI222XLM U171 ( .A0(n59), .A1(n162), .B0(B[7]), .B1(n60), .C0(n54), .C1(
        n167), .Y(n58) );
  NOR2XLM U172 ( .A(n166), .B(B[7]), .Y(n152) );
  NAND2BX1M U173 ( .AN(B[4]), .B(n13), .Y(n145) );
  NAND2BX1M U174 ( .AN(n13), .B(B[4]), .Y(n134) );
  CLKNAND2X2M U175 ( .A(n145), .B(n134), .Y(n147) );
  NOR2X1M U176 ( .A(n159), .B(n12), .Y(n142) );
  NOR2X1M U177 ( .A(n157), .B(n11), .Y(n133) );
  NOR2X1M U178 ( .A(n129), .B(n9), .Y(n130) );
  CLKNAND2X2M U179 ( .A(n11), .B(n157), .Y(n144) );
  NAND2BX1M U180 ( .AN(n133), .B(n144), .Y(n139) );
  AOI211X1M U181 ( .A0(n10), .A1(n156), .B0(n139), .C0(n131), .Y(n132) );
  CLKNAND2X2M U182 ( .A(n12), .B(n159), .Y(n143) );
  OAI31X1M U183 ( .A0(n142), .A1(n133), .A2(n132), .B0(n143), .Y(n135) );
  NAND2BX1M U184 ( .AN(n14), .B(B[5]), .Y(n150) );
  OAI211X1M U185 ( .A0(n147), .A1(n135), .B0(n134), .C0(n150), .Y(n136) );
  NAND2BX1M U186 ( .AN(B[5]), .B(n14), .Y(n146) );
  OAI21X1M U187 ( .A0(n152), .A1(n137), .B0(n153), .Y(N159) );
  CLKNAND2X2M U188 ( .A(n9), .B(n129), .Y(n140) );
  OA21X1M U189 ( .A0(n140), .A1(n128), .B0(B[1]), .Y(n138) );
  AOI211X1M U190 ( .A0(n140), .A1(n128), .B0(n139), .C0(n138), .Y(n141) );
  AOI31X1M U191 ( .A0(n158), .A1(n144), .A2(n143), .B0(n142), .Y(n148) );
  OAI2B11X1M U192 ( .A1N(n148), .A0(n147), .B0(n146), .C0(n145), .Y(n151) );
  AOI32X1M U193 ( .A0(n151), .A1(n150), .A2(n149), .B0(n15), .B1(n160), .Y(
        n154) );
  AOI2B1X1M U194 ( .A1N(n154), .A0(n153), .B0(n152), .Y(n155) );
endmodule


module CLK_GATE ( CLK_EN, CLK, GATED_CLK );
  input CLK_EN, CLK;
  output GATED_CLK;


  TLATNCAX12M U0_TLATNCAX12M ( .E(CLK_EN), .CK(CLK), .ECK(GATED_CLK) );
endmodule


module System_TOP ( RST_TOP, REF_CLK, UART_CLK, RX_IN_TOP, TX_OUT_TOP, 
        PARITY_ERROR, FRAMING_ERROR );
  input RST_TOP, REF_CLK, UART_CLK, RX_IN_TOP;
  output TX_OUT_TOP, PARITY_ERROR, FRAMING_ERROR;
  wire   REF_SYNC_RST, UART_SYNC_RST, UART_RX_VLD, SYNC_VLD, WR_INC, RD_INC,
         F_FULL, F_EMPITY, UART_TX_CLK, UART_TX_BUSY, UART_RX_CLK, Rd_D_VLD,
         ALU_OUT_VLD, WrEn, RdEn, ALU_EN, GATE_EN, ALU_CLK, n1, n2, n3, n4, n5
;
  wire   [7:0] UART_RX_DATA;
  wire   [7:0] SYNC_RX_DATA;
  wire   [7:0] WR_DATA_FIFO;
  wire   [7:0] RD_DATA_FIFO;
  wire   [7:0] DIV_RATiO;
  wire   [7:0] UART_CONF;
  wire   [7:0] RX_div_Ratio;
  wire   [7:0] Rd_DATA_RF;
  wire   [15:0] ALU_OUT_DATA;
  wire   [3:0] Address;
  wire   [7:0] WR_D_RF;
  wire   [3:0] ALU_FUN;
  wire   [7:0] Op_A;
  wire   [7:0] Op_B;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3;

  sync_rst_0 U0_RST_SYNC ( .RST(RST_TOP), .clk(REF_CLK), .SYNC_rst(
        REF_SYNC_RST) );
  sync_rst_1 U1_RST_SYNC ( .RST(RST_TOP), .clk(UART_CLK), .SYNC_rst(
        UART_SYNC_RST) );
  DATA_SYNC U0_DATA_SYNC ( .CLK(REF_CLK), .RST(n4), .unsync_bus(UART_RX_DATA), 
        .bus_enable(UART_RX_VLD), .sync_bus(SYNC_RX_DATA), .enable_pulse_d(
        SYNC_VLD) );
  Async_FIFO U0_ASYNC_FIFO ( .WR_clk(REF_CLK), .WR_rst(n4), .WR_inc(WR_INC), 
        .WR_Data(WR_DATA_FIFO), .RD_clk(UART_CLK), .RD_rst(n2), .RD_inc(RD_INC), .FULL(F_FULL), .EMPTY(F_EMPITY), .RD_Data(RD_DATA_FIFO) );
  pulse_Gen U0_PULSE_GEN ( .CLK(UART_TX_CLK), .RST(n2), .in_signal(
        UART_TX_BUSY), .pulsed_signal(RD_INC) );
  CLK_div_0 U0_CLK_DIV ( .i_rst_n(n2), .i_ref_clk(UART_CLK), .i_clk_en(1'b1), 
        .i_div_ratio(DIV_RATiO), .o_div_clk(UART_TX_CLK) );
  clk_div_mux U0_MUXED_CLK_DIV ( .in(UART_CONF[7:2]), .div_ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, RX_div_Ratio[3:0]})
         );
  CLK_div_1 U1_CLK_DIV ( .i_rst_n(n2), .i_ref_clk(UART_CLK), .i_clk_en(1'b1), 
        .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, RX_div_Ratio[3:0]}), .o_div_clk(
        UART_RX_CLK) );
  UART U0_UART ( .RST(n2), .TX_CLK(UART_TX_CLK), .RX_CLK(UART_RX_CLK), 
        .RX_IN_S(RX_IN_TOP), .RX_OUT_P(UART_RX_DATA), .RX_OUT_V(UART_RX_VLD), 
        .TX_IN_P(RD_DATA_FIFO), .TX_IN_V(n1), .TX_OUT_S(TX_OUT_TOP), 
        .TX_OUT_V(UART_TX_BUSY), .Prescale(UART_CONF[7:2]), .parity_enable(
        UART_CONF[0]), .parity_type(UART_CONF[1]), .parity_error(PARITY_ERROR), 
        .framing_error(FRAMING_ERROR) );
  Sys_Ctrl U0_SYS_CTRL ( .Sys_clk(REF_CLK), .Sys_rst(n4), .RX_P_Data(
        SYNC_RX_DATA), .RX_D_VLd(SYNC_VLD), .Rd_Data(Rd_DATA_RF), 
        .Rd_Data_VLd(Rd_D_VLD), .ALU_out(ALU_OUT_DATA), .ALU_out_VLd(
        ALU_OUT_VLD), .FIFO_full(F_FULL), .Address(Address), .Wr_En(WrEn), 
        .Rd_En(RdEn), .Wr_Data(WR_D_RF), .ALU_fun(ALU_FUN), .ALU_EN(ALU_EN), 
        .CLK_ALU_EN(GATE_EN), .WR_Data_FIFO(WR_DATA_FIFO), .WR_INC(WR_INC) );
  Register_file U0_Reg_file ( .Wr_Data(WR_D_RF), .address(Address), .Wr_En(
        WrEn), .Rd_En(RdEn), .clk(REF_CLK), .rst(n4), .Rd_Data_VLD(Rd_D_VLD), 
        .Rd_Data(Rd_DATA_RF), .Reg0(Op_A), .Reg1(Op_B), .Reg2(UART_CONF), 
        .Reg3(DIV_RATiO) );
  Alu_16 U0_ALU ( .A(Op_A), .B(Op_B), .Alu_Fun(ALU_FUN), .ALU_EN(ALU_EN), 
        .clk(ALU_CLK), .Alu_Rst(n4), .Out_VLD(ALU_OUT_VLD), .Alu_Out(
        ALU_OUT_DATA) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(GATE_EN), .CLK(REF_CLK), .GATED_CLK(ALU_CLK)
         );
  INVX2M U3 ( .A(F_EMPITY), .Y(n1) );
  INVX4M U4 ( .A(n5), .Y(n4) );
  INVX2M U5 ( .A(REF_SYNC_RST), .Y(n5) );
  INVX4M U6 ( .A(n3), .Y(n2) );
  INVX2M U7 ( .A(UART_SYNC_RST), .Y(n3) );
endmodule

