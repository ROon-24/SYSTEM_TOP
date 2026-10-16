/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : O-2018.06-SP1
// Date      : Sat Oct  3 22:08:54 2026
/////////////////////////////////////////////////////////////


module mux2X1_1 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X6M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_4 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_3 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_2 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_0 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_6 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module mux2X1_5 ( IN_0, IN_1, SEL, OUT );
  input IN_0, IN_1, SEL;
  output OUT;
  wire   N0;
  assign N0 = SEL;

  MX2X2M U1 ( .A(IN_0), .B(IN_1), .S0(N0), .Y(OUT) );
endmodule


module sync_rst_test_0 ( RST, clk, SYNC_rst, test_si, test_se );
  input RST, clk, test_si, test_se;
  output SYNC_rst;
  wire   \q_reg[0] ;

  SDFFRQX2M \q_reg_reg[1]  ( .D(\q_reg[0] ), .SI(\q_reg[0] ), .SE(test_se), 
        .CK(clk), .RN(RST), .Q(SYNC_rst) );
  SDFFRQX2M \q_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(\q_reg[0] ) );
endmodule


module sync_rst_test_1 ( RST, clk, SYNC_rst, test_si, test_se );
  input RST, clk, test_si, test_se;
  output SYNC_rst;
  wire   \q_reg[0] ;

  SDFFRQX2M \q_reg_reg[1]  ( .D(\q_reg[0] ), .SI(\q_reg[0] ), .SE(test_se), 
        .CK(clk), .RN(RST), .Q(SYNC_rst) );
  SDFFRQX2M \q_reg_reg[0]  ( .D(1'b1), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(RST), .Q(\q_reg[0] ) );
endmodule


module DATA_SYNC_test_1 ( CLK, RST, unsync_bus, bus_enable, sync_bus, 
        enable_pulse_d, test_si, test_so, test_se );
  input [7:0] unsync_bus;
  output [7:0] sync_bus;
  input CLK, RST, bus_enable, test_si, test_se;
  output enable_pulse_d, test_so;
  wire   enable_flop, n1, n4, n6, n8, n10, n12, n14, n16, n18, n22;
  wire   [1:0] sync_reg;
  assign test_so = sync_reg[1];

  SDFFRQX2M enable_flop_reg ( .D(sync_reg[1]), .SI(test_si), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(enable_flop) );
  SDFFRQX2M \sync_bus_reg[7]  ( .D(n18), .SI(sync_bus[6]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[7]) );
  SDFFRQX2M \sync_reg_reg[1]  ( .D(sync_reg[0]), .SI(sync_reg[0]), .SE(test_se), .CK(CLK), .RN(RST), .Q(sync_reg[1]) );
  SDFFRQX2M \sync_bus_reg[6]  ( .D(n16), .SI(sync_bus[5]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[6]) );
  SDFFRQX2M \sync_bus_reg[4]  ( .D(n12), .SI(sync_bus[3]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[4]) );
  SDFFRQX2M \sync_bus_reg[5]  ( .D(n14), .SI(sync_bus[4]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[5]) );
  SDFFRQX2M \sync_bus_reg[3]  ( .D(n10), .SI(sync_bus[2]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[3]) );
  SDFFRQX2M \sync_bus_reg[2]  ( .D(n8), .SI(sync_bus[1]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[2]) );
  SDFFRQX2M enable_pulse_d_reg ( .D(n22), .SI(enable_flop), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(enable_pulse_d) );
  SDFFRQX2M \sync_bus_reg[0]  ( .D(n4), .SI(enable_pulse_d), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_bus[0]) );
  SDFFRQX2M \sync_bus_reg[1]  ( .D(n6), .SI(sync_bus[0]), .SE(test_se), .CK(
        CLK), .RN(RST), .Q(sync_bus[1]) );
  SDFFRQX2M \sync_reg_reg[0]  ( .D(bus_enable), .SI(sync_bus[7]), .SE(test_se), 
        .CK(CLK), .RN(RST), .Q(sync_reg[0]) );
  INVX2M U3 ( .A(n1), .Y(n22) );
  NAND2BX2M U4 ( .AN(enable_flop), .B(sync_reg[1]), .Y(n1) );
  AO22X1M U5 ( .A0(unsync_bus[0]), .A1(n22), .B0(sync_bus[0]), .B1(n1), .Y(n4)
         );
  AO22X1M U6 ( .A0(unsync_bus[1]), .A1(n22), .B0(sync_bus[1]), .B1(n1), .Y(n6)
         );
  AO22X1M U7 ( .A0(unsync_bus[2]), .A1(n22), .B0(sync_bus[2]), .B1(n1), .Y(n8)
         );
  AO22X1M U8 ( .A0(unsync_bus[3]), .A1(n22), .B0(sync_bus[3]), .B1(n1), .Y(n10) );
  AO22X1M U9 ( .A0(unsync_bus[4]), .A1(n22), .B0(sync_bus[4]), .B1(n1), .Y(n12) );
  AO22X1M U10 ( .A0(unsync_bus[5]), .A1(n22), .B0(sync_bus[5]), .B1(n1), .Y(
        n14) );
  AO22X1M U11 ( .A0(unsync_bus[6]), .A1(n22), .B0(sync_bus[6]), .B1(n1), .Y(
        n16) );
  AO22X1M U12 ( .A0(unsync_bus[7]), .A1(n22), .B0(sync_bus[7]), .B1(n1), .Y(
        n18) );
endmodule


module FIFO_Mem_test_1 ( wr_clk_mem, Wr_rst_mem, wr_full_mem, wr_inc_mem, 
        wr_Data_mem, wr_adr_mem, rd_adr_mem, rd_Data_mem, test_si, test_so, 
        test_se );
  input [7:0] wr_Data_mem;
  input [2:0] wr_adr_mem;
  input [2:0] rd_adr_mem;
  output [7:0] rd_Data_mem;
  input wr_clk_mem, Wr_rst_mem, wr_full_mem, wr_inc_mem, test_si, test_se;
  output test_so;
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
         \MEM[7][4] , \MEM[7][3] , \MEM[7][2] , \MEM[7][1] , \MEM[7][0] , n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171,
         n172, n173, n174, n175, n176, n177, n178, n179, n180, n181, n182,
         n183, n184, n185, n186, n187, n188, n189, n190, n191, n192, n193,
         n194, n195, n196, n197, n198, n199, n200, n201, n202, n205, n206,
         n207, n208, n209;
  assign N10 = rd_adr_mem[0];
  assign N11 = rd_adr_mem[1];
  assign N12 = rd_adr_mem[2];
  assign test_so = \MEM[7][7] ;

  SDFFRQX2M \MEM_reg[0][7]  ( .D(n149), .SI(\MEM[0][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n186), .Q(\MEM[0][7] ) );
  SDFFRQX2M \MEM_reg[0][6]  ( .D(n148), .SI(\MEM[0][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n186), .Q(\MEM[0][6] ) );
  SDFFRQX2M \MEM_reg[0][5]  ( .D(n147), .SI(\MEM[0][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n186), .Q(\MEM[0][5] ) );
  SDFFRQX2M \MEM_reg[0][4]  ( .D(n146), .SI(\MEM[0][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n186), .Q(\MEM[0][4] ) );
  SDFFRQX2M \MEM_reg[0][3]  ( .D(n145), .SI(\MEM[0][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[0][3] ) );
  SDFFRQX2M \MEM_reg[0][2]  ( .D(n144), .SI(\MEM[0][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[0][2] ) );
  SDFFRQX2M \MEM_reg[0][1]  ( .D(n143), .SI(\MEM[0][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[0][1] ) );
  SDFFRQX2M \MEM_reg[0][0]  ( .D(n142), .SI(test_si), .SE(n206), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[0][0] ) );
  SDFFRQX2M \MEM_reg[1][7]  ( .D(n141), .SI(\MEM[1][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][7] ) );
  SDFFRQX2M \MEM_reg[1][6]  ( .D(n140), .SI(\MEM[1][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][6] ) );
  SDFFRQX2M \MEM_reg[1][5]  ( .D(n139), .SI(\MEM[1][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][5] ) );
  SDFFRQX2M \MEM_reg[1][4]  ( .D(n138), .SI(\MEM[1][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][4] ) );
  SDFFRQX2M \MEM_reg[1][3]  ( .D(n137), .SI(\MEM[1][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][3] ) );
  SDFFRQX2M \MEM_reg[1][2]  ( .D(n136), .SI(\MEM[1][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][2] ) );
  SDFFRQX2M \MEM_reg[1][1]  ( .D(n135), .SI(\MEM[1][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][1] ) );
  SDFFRQX2M \MEM_reg[1][0]  ( .D(n134), .SI(\MEM[0][7] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n185), .Q(\MEM[1][0] ) );
  SDFFRQX2M \MEM_reg[4][7]  ( .D(n117), .SI(\MEM[4][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][7] ) );
  SDFFRQX2M \MEM_reg[4][6]  ( .D(n116), .SI(\MEM[4][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][6] ) );
  SDFFRQX2M \MEM_reg[4][5]  ( .D(n115), .SI(\MEM[4][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][5] ) );
  SDFFRQX2M \MEM_reg[4][4]  ( .D(n114), .SI(\MEM[4][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][4] ) );
  SDFFRQX2M \MEM_reg[4][3]  ( .D(n113), .SI(\MEM[4][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][3] ) );
  SDFFRQX2M \MEM_reg[4][2]  ( .D(n112), .SI(\MEM[4][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][2] ) );
  SDFFRQX2M \MEM_reg[4][1]  ( .D(n111), .SI(\MEM[4][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][1] ) );
  SDFFRQX2M \MEM_reg[4][0]  ( .D(n110), .SI(\MEM[3][7] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[4][0] ) );
  SDFFRQX2M \MEM_reg[5][7]  ( .D(n109), .SI(\MEM[5][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][7] ) );
  SDFFRQX2M \MEM_reg[5][6]  ( .D(n108), .SI(\MEM[5][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][6] ) );
  SDFFRQX2M \MEM_reg[5][5]  ( .D(n107), .SI(\MEM[5][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][5] ) );
  SDFFRQX2M \MEM_reg[5][4]  ( .D(n106), .SI(\MEM[5][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][4] ) );
  SDFFRQX2M \MEM_reg[5][3]  ( .D(n105), .SI(\MEM[5][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][3] ) );
  SDFFRQX2M \MEM_reg[5][2]  ( .D(n104), .SI(\MEM[5][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][2] ) );
  SDFFRQX2M \MEM_reg[5][1]  ( .D(n103), .SI(\MEM[5][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][1] ) );
  SDFFRQX2M \MEM_reg[5][0]  ( .D(n102), .SI(\MEM[4][7] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[5][0] ) );
  SDFFRQX2M \MEM_reg[6][7]  ( .D(n101), .SI(\MEM[6][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[6][7] ) );
  SDFFRQX2M \MEM_reg[6][6]  ( .D(n100), .SI(\MEM[6][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[6][6] ) );
  SDFFRQX2M \MEM_reg[6][5]  ( .D(n99), .SI(\MEM[6][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[6][5] ) );
  SDFFRQX2M \MEM_reg[6][4]  ( .D(n98), .SI(\MEM[6][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n182), .Q(\MEM[6][4] ) );
  SDFFRQX2M \MEM_reg[6][3]  ( .D(n97), .SI(\MEM[6][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[6][3] ) );
  SDFFRQX2M \MEM_reg[6][2]  ( .D(n96), .SI(\MEM[6][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[6][2] ) );
  SDFFRQX2M \MEM_reg[6][1]  ( .D(n95), .SI(\MEM[6][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[6][1] ) );
  SDFFRQX2M \MEM_reg[6][0]  ( .D(n94), .SI(\MEM[5][7] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[6][0] ) );
  SDFFRQX2M \MEM_reg[7][7]  ( .D(n93), .SI(\MEM[7][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][7] ) );
  SDFFRQX2M \MEM_reg[7][6]  ( .D(n92), .SI(\MEM[7][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][6] ) );
  SDFFRQX2M \MEM_reg[7][5]  ( .D(n91), .SI(\MEM[7][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][5] ) );
  SDFFRQX2M \MEM_reg[7][4]  ( .D(n90), .SI(\MEM[7][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][4] ) );
  SDFFRQX2M \MEM_reg[7][3]  ( .D(n89), .SI(\MEM[7][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][3] ) );
  SDFFRQX2M \MEM_reg[7][2]  ( .D(n88), .SI(\MEM[7][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][2] ) );
  SDFFRQX2M \MEM_reg[7][1]  ( .D(n87), .SI(\MEM[7][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][1] ) );
  SDFFRQX2M \MEM_reg[7][0]  ( .D(n86), .SI(\MEM[6][7] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n181), .Q(\MEM[7][0] ) );
  SDFFRQX2M \MEM_reg[2][7]  ( .D(n133), .SI(\MEM[2][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][7] ) );
  SDFFRQX2M \MEM_reg[2][6]  ( .D(n132), .SI(\MEM[2][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][6] ) );
  SDFFRQX2M \MEM_reg[2][5]  ( .D(n131), .SI(\MEM[2][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][5] ) );
  SDFFRQX2M \MEM_reg[2][4]  ( .D(n130), .SI(\MEM[2][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][4] ) );
  SDFFRQX2M \MEM_reg[2][3]  ( .D(n129), .SI(\MEM[2][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][3] ) );
  SDFFRQX2M \MEM_reg[2][2]  ( .D(n128), .SI(\MEM[2][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][2] ) );
  SDFFRQX2M \MEM_reg[2][1]  ( .D(n127), .SI(\MEM[2][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][1] ) );
  SDFFRQX2M \MEM_reg[2][0]  ( .D(n126), .SI(\MEM[1][7] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[2][0] ) );
  SDFFRQX2M \MEM_reg[3][7]  ( .D(n125), .SI(\MEM[3][6] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[3][7] ) );
  SDFFRQX2M \MEM_reg[3][6]  ( .D(n124), .SI(\MEM[3][5] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[3][6] ) );
  SDFFRQX2M \MEM_reg[3][5]  ( .D(n123), .SI(\MEM[3][4] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[3][5] ) );
  SDFFRQX2M \MEM_reg[3][4]  ( .D(n122), .SI(\MEM[3][3] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n184), .Q(\MEM[3][4] ) );
  SDFFRQX2M \MEM_reg[3][3]  ( .D(n121), .SI(\MEM[3][2] ), .SE(n209), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[3][3] ) );
  SDFFRQX2M \MEM_reg[3][2]  ( .D(n120), .SI(\MEM[3][1] ), .SE(n208), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[3][2] ) );
  SDFFRQX2M \MEM_reg[3][1]  ( .D(n119), .SI(\MEM[3][0] ), .SE(n207), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[3][1] ) );
  SDFFRQX2M \MEM_reg[3][0]  ( .D(n118), .SI(\MEM[2][7] ), .SE(n206), .CK(
        wr_clk_mem), .RN(n183), .Q(\MEM[3][0] ) );
  BUFX2M U66 ( .A(n83), .Y(n188) );
  BUFX2M U67 ( .A(n84), .Y(n187) );
  BUFX2M U68 ( .A(n81), .Y(n189) );
  BUFX2M U69 ( .A(n78), .Y(n190) );
  BUFX2M U70 ( .A(n77), .Y(n191) );
  BUFX2M U71 ( .A(n179), .Y(n181) );
  BUFX2M U72 ( .A(n179), .Y(n182) );
  BUFX2M U73 ( .A(n179), .Y(n183) );
  BUFX2M U74 ( .A(n180), .Y(n184) );
  BUFX2M U75 ( .A(n180), .Y(n185) );
  BUFX2M U76 ( .A(n180), .Y(n186) );
  NOR2BX2M U77 ( .AN(wr_inc_mem), .B(wr_full_mem), .Y(n80) );
  BUFX2M U78 ( .A(Wr_rst_mem), .Y(n179) );
  BUFX2M U79 ( .A(Wr_rst_mem), .Y(n180) );
  NAND3X2M U80 ( .A(n201), .B(n202), .C(n76), .Y(n79) );
  NAND3X2M U81 ( .A(n201), .B(n202), .C(n82), .Y(n85) );
  NOR2X2M U82 ( .A(n176), .B(n177), .Y(n172) );
  NOR2BX2M U83 ( .AN(n80), .B(wr_adr_mem[2]), .Y(n82) );
  NOR2X2M U84 ( .A(n176), .B(N11), .Y(n173) );
  NOR2X2M U85 ( .A(n177), .B(N12), .Y(n170) );
  OAI2BB2X1M U86 ( .B0(n193), .B1(n85), .A0N(\MEM[0][0] ), .A1N(n85), .Y(n142)
         );
  OAI2BB2X1M U87 ( .B0(n194), .B1(n85), .A0N(\MEM[0][1] ), .A1N(n85), .Y(n143)
         );
  OAI2BB2X1M U88 ( .B0(n195), .B1(n85), .A0N(\MEM[0][2] ), .A1N(n85), .Y(n144)
         );
  OAI2BB2X1M U89 ( .B0(n196), .B1(n85), .A0N(\MEM[0][3] ), .A1N(n85), .Y(n145)
         );
  OAI2BB2X1M U90 ( .B0(n197), .B1(n85), .A0N(\MEM[0][4] ), .A1N(n85), .Y(n146)
         );
  OAI2BB2X1M U91 ( .B0(n198), .B1(n85), .A0N(\MEM[0][5] ), .A1N(n85), .Y(n147)
         );
  OAI2BB2X1M U92 ( .B0(n199), .B1(n85), .A0N(\MEM[0][6] ), .A1N(n85), .Y(n148)
         );
  OAI2BB2X1M U93 ( .B0(n200), .B1(n85), .A0N(\MEM[0][7] ), .A1N(n85), .Y(n149)
         );
  OAI2BB2X1M U94 ( .B0(n193), .B1(n79), .A0N(\MEM[4][0] ), .A1N(n79), .Y(n110)
         );
  OAI2BB2X1M U95 ( .B0(n194), .B1(n79), .A0N(\MEM[4][1] ), .A1N(n79), .Y(n111)
         );
  OAI2BB2X1M U96 ( .B0(n195), .B1(n79), .A0N(\MEM[4][2] ), .A1N(n79), .Y(n112)
         );
  OAI2BB2X1M U97 ( .B0(n196), .B1(n79), .A0N(\MEM[4][3] ), .A1N(n79), .Y(n113)
         );
  OAI2BB2X1M U98 ( .B0(n197), .B1(n79), .A0N(\MEM[4][4] ), .A1N(n79), .Y(n114)
         );
  OAI2BB2X1M U99 ( .B0(n198), .B1(n79), .A0N(\MEM[4][5] ), .A1N(n79), .Y(n115)
         );
  OAI2BB2X1M U100 ( .B0(n199), .B1(n79), .A0N(\MEM[4][6] ), .A1N(n79), .Y(n116) );
  OAI2BB2X1M U101 ( .B0(n200), .B1(n79), .A0N(\MEM[4][7] ), .A1N(n79), .Y(n117) );
  NOR2X2M U102 ( .A(N11), .B(N12), .Y(n169) );
  BUFX2M U103 ( .A(n75), .Y(n192) );
  NAND3X2M U104 ( .A(wr_adr_mem[0]), .B(n76), .C(wr_adr_mem[1]), .Y(n75) );
  OAI2BB2X1M U105 ( .B0(n193), .B1(n191), .A0N(\MEM[6][0] ), .A1N(n191), .Y(
        n94) );
  OAI2BB2X1M U106 ( .B0(n194), .B1(n191), .A0N(\MEM[6][1] ), .A1N(n191), .Y(
        n95) );
  OAI2BB2X1M U107 ( .B0(n195), .B1(n191), .A0N(\MEM[6][2] ), .A1N(n191), .Y(
        n96) );
  OAI2BB2X1M U108 ( .B0(n196), .B1(n191), .A0N(\MEM[6][3] ), .A1N(n191), .Y(
        n97) );
  OAI2BB2X1M U109 ( .B0(n197), .B1(n191), .A0N(\MEM[6][4] ), .A1N(n191), .Y(
        n98) );
  OAI2BB2X1M U110 ( .B0(n198), .B1(n191), .A0N(\MEM[6][5] ), .A1N(n191), .Y(
        n99) );
  OAI2BB2X1M U111 ( .B0(n199), .B1(n191), .A0N(\MEM[6][6] ), .A1N(n191), .Y(
        n100) );
  OAI2BB2X1M U112 ( .B0(n200), .B1(n191), .A0N(\MEM[6][7] ), .A1N(n191), .Y(
        n101) );
  OAI2BB2X1M U113 ( .B0(n193), .B1(n190), .A0N(\MEM[5][0] ), .A1N(n190), .Y(
        n102) );
  OAI2BB2X1M U114 ( .B0(n194), .B1(n190), .A0N(\MEM[5][1] ), .A1N(n190), .Y(
        n103) );
  OAI2BB2X1M U115 ( .B0(n195), .B1(n190), .A0N(\MEM[5][2] ), .A1N(n190), .Y(
        n104) );
  OAI2BB2X1M U116 ( .B0(n196), .B1(n190), .A0N(\MEM[5][3] ), .A1N(n190), .Y(
        n105) );
  OAI2BB2X1M U117 ( .B0(n197), .B1(n190), .A0N(\MEM[5][4] ), .A1N(n190), .Y(
        n106) );
  OAI2BB2X1M U118 ( .B0(n198), .B1(n190), .A0N(\MEM[5][5] ), .A1N(n190), .Y(
        n107) );
  OAI2BB2X1M U119 ( .B0(n199), .B1(n190), .A0N(\MEM[5][6] ), .A1N(n190), .Y(
        n108) );
  OAI2BB2X1M U120 ( .B0(n200), .B1(n190), .A0N(\MEM[5][7] ), .A1N(n190), .Y(
        n109) );
  OAI2BB2X1M U121 ( .B0(n193), .B1(n189), .A0N(\MEM[3][0] ), .A1N(n189), .Y(
        n118) );
  OAI2BB2X1M U122 ( .B0(n194), .B1(n189), .A0N(\MEM[3][1] ), .A1N(n189), .Y(
        n119) );
  OAI2BB2X1M U123 ( .B0(n195), .B1(n189), .A0N(\MEM[3][2] ), .A1N(n189), .Y(
        n120) );
  OAI2BB2X1M U124 ( .B0(n196), .B1(n189), .A0N(\MEM[3][3] ), .A1N(n189), .Y(
        n121) );
  OAI2BB2X1M U125 ( .B0(n197), .B1(n189), .A0N(\MEM[3][4] ), .A1N(n189), .Y(
        n122) );
  OAI2BB2X1M U126 ( .B0(n198), .B1(n189), .A0N(\MEM[3][5] ), .A1N(n189), .Y(
        n123) );
  OAI2BB2X1M U127 ( .B0(n199), .B1(n189), .A0N(\MEM[3][6] ), .A1N(n189), .Y(
        n124) );
  OAI2BB2X1M U128 ( .B0(n200), .B1(n189), .A0N(\MEM[3][7] ), .A1N(n189), .Y(
        n125) );
  OAI2BB2X1M U129 ( .B0(n193), .B1(n188), .A0N(\MEM[2][0] ), .A1N(n188), .Y(
        n126) );
  OAI2BB2X1M U130 ( .B0(n194), .B1(n188), .A0N(\MEM[2][1] ), .A1N(n188), .Y(
        n127) );
  OAI2BB2X1M U131 ( .B0(n195), .B1(n188), .A0N(\MEM[2][2] ), .A1N(n188), .Y(
        n128) );
  OAI2BB2X1M U132 ( .B0(n196), .B1(n188), .A0N(\MEM[2][3] ), .A1N(n188), .Y(
        n129) );
  OAI2BB2X1M U133 ( .B0(n197), .B1(n188), .A0N(\MEM[2][4] ), .A1N(n188), .Y(
        n130) );
  OAI2BB2X1M U134 ( .B0(n198), .B1(n188), .A0N(\MEM[2][5] ), .A1N(n188), .Y(
        n131) );
  OAI2BB2X1M U135 ( .B0(n199), .B1(n188), .A0N(\MEM[2][6] ), .A1N(n188), .Y(
        n132) );
  OAI2BB2X1M U136 ( .B0(n200), .B1(n188), .A0N(\MEM[2][7] ), .A1N(n188), .Y(
        n133) );
  OAI2BB2X1M U137 ( .B0(n193), .B1(n187), .A0N(\MEM[1][0] ), .A1N(n187), .Y(
        n134) );
  OAI2BB2X1M U138 ( .B0(n194), .B1(n187), .A0N(\MEM[1][1] ), .A1N(n187), .Y(
        n135) );
  OAI2BB2X1M U139 ( .B0(n195), .B1(n187), .A0N(\MEM[1][2] ), .A1N(n187), .Y(
        n136) );
  OAI2BB2X1M U140 ( .B0(n196), .B1(n187), .A0N(\MEM[1][3] ), .A1N(n187), .Y(
        n137) );
  OAI2BB2X1M U141 ( .B0(n197), .B1(n187), .A0N(\MEM[1][4] ), .A1N(n187), .Y(
        n138) );
  OAI2BB2X1M U142 ( .B0(n198), .B1(n187), .A0N(\MEM[1][5] ), .A1N(n187), .Y(
        n139) );
  OAI2BB2X1M U143 ( .B0(n199), .B1(n187), .A0N(\MEM[1][6] ), .A1N(n187), .Y(
        n140) );
  OAI2BB2X1M U144 ( .B0(n200), .B1(n187), .A0N(\MEM[1][7] ), .A1N(n187), .Y(
        n141) );
  OAI2BB2X1M U145 ( .B0(n192), .B1(n193), .A0N(\MEM[7][0] ), .A1N(n192), .Y(
        n86) );
  OAI2BB2X1M U146 ( .B0(n192), .B1(n194), .A0N(\MEM[7][1] ), .A1N(n192), .Y(
        n87) );
  OAI2BB2X1M U147 ( .B0(n192), .B1(n195), .A0N(\MEM[7][2] ), .A1N(n192), .Y(
        n88) );
  OAI2BB2X1M U148 ( .B0(n192), .B1(n196), .A0N(\MEM[7][3] ), .A1N(n192), .Y(
        n89) );
  OAI2BB2X1M U149 ( .B0(n192), .B1(n197), .A0N(\MEM[7][4] ), .A1N(n192), .Y(
        n90) );
  OAI2BB2X1M U150 ( .B0(n192), .B1(n198), .A0N(\MEM[7][5] ), .A1N(n192), .Y(
        n91) );
  OAI2BB2X1M U151 ( .B0(n192), .B1(n199), .A0N(\MEM[7][6] ), .A1N(n192), .Y(
        n92) );
  OAI2BB2X1M U152 ( .B0(n192), .B1(n200), .A0N(\MEM[7][7] ), .A1N(n192), .Y(
        n93) );
  AND2X2M U153 ( .A(wr_adr_mem[2]), .B(n80), .Y(n76) );
  NAND3X2M U154 ( .A(n76), .B(n201), .C(wr_adr_mem[1]), .Y(n77) );
  NAND3X2M U155 ( .A(n76), .B(n202), .C(wr_adr_mem[0]), .Y(n78) );
  NAND3X2M U156 ( .A(wr_adr_mem[1]), .B(wr_adr_mem[0]), .C(n82), .Y(n81) );
  NAND3X2M U157 ( .A(wr_adr_mem[1]), .B(n201), .C(n82), .Y(n83) );
  NAND3X2M U158 ( .A(wr_adr_mem[0]), .B(n202), .C(n82), .Y(n84) );
  INVX2M U159 ( .A(N11), .Y(n177) );
  INVX2M U160 ( .A(N12), .Y(n176) );
  INVX2M U161 ( .A(wr_Data_mem[0]), .Y(n193) );
  INVX2M U162 ( .A(wr_Data_mem[1]), .Y(n194) );
  INVX2M U163 ( .A(wr_Data_mem[2]), .Y(n195) );
  INVX2M U164 ( .A(wr_Data_mem[3]), .Y(n196) );
  INVX2M U165 ( .A(wr_Data_mem[4]), .Y(n197) );
  INVX2M U166 ( .A(wr_Data_mem[5]), .Y(n198) );
  INVX2M U167 ( .A(wr_Data_mem[6]), .Y(n199) );
  INVX2M U168 ( .A(wr_Data_mem[7]), .Y(n200) );
  INVX2M U169 ( .A(N10), .Y(n178) );
  INVX2M U170 ( .A(wr_adr_mem[1]), .Y(n202) );
  INVX2M U171 ( .A(wr_adr_mem[0]), .Y(n201) );
  AO22X1M U172 ( .A0(\MEM[3][0] ), .A1(n170), .B0(\MEM[1][0] ), .B1(n169), .Y(
        n65) );
  AOI221XLM U173 ( .A0(\MEM[5][0] ), .A1(n173), .B0(\MEM[7][0] ), .B1(n172), 
        .C0(n65), .Y(n68) );
  AO22X1M U174 ( .A0(\MEM[2][0] ), .A1(n170), .B0(\MEM[0][0] ), .B1(n169), .Y(
        n66) );
  AOI221XLM U175 ( .A0(\MEM[4][0] ), .A1(n173), .B0(\MEM[6][0] ), .B1(n172), 
        .C0(n66), .Y(n67) );
  OAI22X1M U176 ( .A0(n178), .A1(n68), .B0(N10), .B1(n67), .Y(rd_Data_mem[0])
         );
  AO22X1M U177 ( .A0(\MEM[3][1] ), .A1(n170), .B0(\MEM[1][1] ), .B1(n169), .Y(
        n69) );
  AOI221XLM U178 ( .A0(\MEM[5][1] ), .A1(n173), .B0(\MEM[7][1] ), .B1(n172), 
        .C0(n69), .Y(n72) );
  AO22X1M U179 ( .A0(\MEM[2][1] ), .A1(n170), .B0(\MEM[0][1] ), .B1(n169), .Y(
        n70) );
  AOI221XLM U180 ( .A0(\MEM[4][1] ), .A1(n173), .B0(\MEM[6][1] ), .B1(n172), 
        .C0(n70), .Y(n71) );
  OAI22X1M U181 ( .A0(n178), .A1(n72), .B0(N10), .B1(n71), .Y(rd_Data_mem[1])
         );
  AO22X1M U182 ( .A0(\MEM[3][2] ), .A1(n170), .B0(\MEM[1][2] ), .B1(n169), .Y(
        n73) );
  AOI221XLM U183 ( .A0(\MEM[5][2] ), .A1(n173), .B0(\MEM[7][2] ), .B1(n172), 
        .C0(n73), .Y(n151) );
  AO22X1M U184 ( .A0(\MEM[2][2] ), .A1(n170), .B0(\MEM[0][2] ), .B1(n169), .Y(
        n74) );
  AOI221XLM U185 ( .A0(\MEM[4][2] ), .A1(n173), .B0(\MEM[6][2] ), .B1(n172), 
        .C0(n74), .Y(n150) );
  OAI22X1M U186 ( .A0(n178), .A1(n151), .B0(N10), .B1(n150), .Y(rd_Data_mem[2]) );
  AO22X1M U187 ( .A0(\MEM[3][3] ), .A1(n170), .B0(\MEM[1][3] ), .B1(n169), .Y(
        n152) );
  AOI221XLM U188 ( .A0(\MEM[5][3] ), .A1(n173), .B0(\MEM[7][3] ), .B1(n172), 
        .C0(n152), .Y(n155) );
  AO22X1M U189 ( .A0(\MEM[2][3] ), .A1(n170), .B0(\MEM[0][3] ), .B1(n169), .Y(
        n153) );
  AOI221XLM U190 ( .A0(\MEM[4][3] ), .A1(n173), .B0(\MEM[6][3] ), .B1(n172), 
        .C0(n153), .Y(n154) );
  OAI22X1M U191 ( .A0(n178), .A1(n155), .B0(N10), .B1(n154), .Y(rd_Data_mem[3]) );
  AO22X1M U192 ( .A0(\MEM[3][4] ), .A1(n170), .B0(\MEM[1][4] ), .B1(n169), .Y(
        n156) );
  AOI221XLM U193 ( .A0(\MEM[5][4] ), .A1(n173), .B0(\MEM[7][4] ), .B1(n172), 
        .C0(n156), .Y(n159) );
  AO22X1M U194 ( .A0(\MEM[2][4] ), .A1(n170), .B0(\MEM[0][4] ), .B1(n169), .Y(
        n157) );
  AOI221XLM U195 ( .A0(\MEM[4][4] ), .A1(n173), .B0(\MEM[6][4] ), .B1(n172), 
        .C0(n157), .Y(n158) );
  OAI22X1M U196 ( .A0(n178), .A1(n159), .B0(N10), .B1(n158), .Y(rd_Data_mem[4]) );
  AO22X1M U197 ( .A0(\MEM[3][5] ), .A1(n170), .B0(\MEM[1][5] ), .B1(n169), .Y(
        n160) );
  AOI221XLM U198 ( .A0(\MEM[5][5] ), .A1(n173), .B0(\MEM[7][5] ), .B1(n172), 
        .C0(n160), .Y(n163) );
  AO22X1M U199 ( .A0(\MEM[2][5] ), .A1(n170), .B0(\MEM[0][5] ), .B1(n169), .Y(
        n161) );
  AOI221XLM U200 ( .A0(\MEM[4][5] ), .A1(n173), .B0(\MEM[6][5] ), .B1(n172), 
        .C0(n161), .Y(n162) );
  OAI22X1M U201 ( .A0(n178), .A1(n163), .B0(N10), .B1(n162), .Y(rd_Data_mem[5]) );
  AO22X1M U202 ( .A0(\MEM[3][6] ), .A1(n170), .B0(\MEM[1][6] ), .B1(n169), .Y(
        n164) );
  AOI221XLM U203 ( .A0(\MEM[5][6] ), .A1(n173), .B0(\MEM[7][6] ), .B1(n172), 
        .C0(n164), .Y(n167) );
  AO22X1M U204 ( .A0(\MEM[2][6] ), .A1(n170), .B0(\MEM[0][6] ), .B1(n169), .Y(
        n165) );
  AOI221XLM U205 ( .A0(\MEM[4][6] ), .A1(n173), .B0(\MEM[6][6] ), .B1(n172), 
        .C0(n165), .Y(n166) );
  OAI22X1M U206 ( .A0(n178), .A1(n167), .B0(N10), .B1(n166), .Y(rd_Data_mem[6]) );
  AO22X1M U207 ( .A0(\MEM[3][7] ), .A1(n170), .B0(\MEM[1][7] ), .B1(n169), .Y(
        n168) );
  AOI221XLM U208 ( .A0(\MEM[5][7] ), .A1(n173), .B0(\MEM[7][7] ), .B1(n172), 
        .C0(n168), .Y(n175) );
  AO22X1M U209 ( .A0(\MEM[2][7] ), .A1(n170), .B0(\MEM[0][7] ), .B1(n169), .Y(
        n171) );
  AOI221XLM U210 ( .A0(\MEM[4][7] ), .A1(n173), .B0(\MEM[6][7] ), .B1(n172), 
        .C0(n171), .Y(n174) );
  OAI22X1M U211 ( .A0(n175), .A1(n178), .B0(N10), .B1(n174), .Y(rd_Data_mem[7]) );
  INVXLM U212 ( .A(test_se), .Y(n205) );
  INVXLM U213 ( .A(n205), .Y(n206) );
  INVXLM U214 ( .A(n205), .Y(n207) );
  INVXLM U215 ( .A(n205), .Y(n208) );
  INVXLM U216 ( .A(n205), .Y(n209) );
endmodule


module wptr_Full_blk_test_1 ( wr_clk_blk, wr_rst_blk, wr_inc_blk, wq2_rptr_blk, 
        wr_full_blk, wr_adr_blk, wr_ptr_blk, test_si, test_se );
  input [3:0] wq2_rptr_blk;
  output [2:0] wr_adr_blk;
  output [3:0] wr_ptr_blk;
  input wr_clk_blk, wr_rst_blk, wr_inc_blk, test_si, test_se;
  output wr_full_blk;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [3:0] gray_bin_ptr;
  wire   [3:0] ptr_bin_next;

  SDFFRQX2M \bin_ptr_reg[3]  ( .D(ptr_bin_next[3]), .SI(wr_adr_blk[2]), .SE(
        test_se), .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(gray_bin_ptr[3]) );
  SDFFRQX2M \bin_ptr_reg[2]  ( .D(ptr_bin_next[2]), .SI(wr_adr_blk[1]), .SE(
        test_se), .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(wr_adr_blk[2]) );
  SDFFRQX2M \wr_ptr_blk_reg[3]  ( .D(gray_bin_ptr[3]), .SI(wr_ptr_blk[2]), 
        .SE(test_se), .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(wr_ptr_blk[3]) );
  SDFFRQX2M \wr_ptr_blk_reg[2]  ( .D(gray_bin_ptr[2]), .SI(wr_ptr_blk[1]), 
        .SE(test_se), .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(wr_ptr_blk[2]) );
  SDFFRQX2M \wr_ptr_blk_reg[1]  ( .D(gray_bin_ptr[1]), .SI(wr_ptr_blk[0]), 
        .SE(test_se), .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(wr_ptr_blk[1]) );
  SDFFRQX2M \wr_ptr_blk_reg[0]  ( .D(gray_bin_ptr[0]), .SI(gray_bin_ptr[3]), 
        .SE(test_se), .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(wr_ptr_blk[0]) );
  SDFFRX1M \bin_ptr_reg[0]  ( .D(ptr_bin_next[0]), .SI(test_si), .SE(test_se), 
        .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(wr_adr_blk[0]), .QN(n9) );
  SDFFRQX2M \bin_ptr_reg[1]  ( .D(ptr_bin_next[1]), .SI(wr_adr_blk[0]), .SE(
        test_se), .CK(wr_clk_blk), .RN(wr_rst_blk), .Q(wr_adr_blk[1]) );
  INVX2M U11 ( .A(n10), .Y(wr_full_blk) );
  NAND2X2M U12 ( .A(wr_inc_blk), .B(n10), .Y(n14) );
  NOR2X2M U13 ( .A(n14), .B(n9), .Y(n12) );
  XNOR2X2M U14 ( .A(gray_bin_ptr[1]), .B(wq2_rptr_blk[1]), .Y(n15) );
  XNOR2X2M U15 ( .A(n9), .B(wr_adr_blk[1]), .Y(gray_bin_ptr[0]) );
  XNOR2X2M U16 ( .A(gray_bin_ptr[3]), .B(n11), .Y(ptr_bin_next[3]) );
  NAND3X2M U17 ( .A(wr_adr_blk[1]), .B(wr_adr_blk[2]), .C(n12), .Y(n11) );
  XNOR2X2M U18 ( .A(wr_adr_blk[2]), .B(n13), .Y(ptr_bin_next[2]) );
  NAND2X2M U19 ( .A(n12), .B(wr_adr_blk[1]), .Y(n13) );
  NAND4X2M U20 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n10) );
  CLKXOR2X2M U21 ( .A(wq2_rptr_blk[3]), .B(gray_bin_ptr[3]), .Y(n18) );
  XNOR2X2M U22 ( .A(gray_bin_ptr[0]), .B(wq2_rptr_blk[0]), .Y(n16) );
  CLKXOR2X2M U23 ( .A(wq2_rptr_blk[2]), .B(gray_bin_ptr[2]), .Y(n17) );
  CLKXOR2X2M U24 ( .A(gray_bin_ptr[3]), .B(wr_adr_blk[2]), .Y(gray_bin_ptr[2])
         );
  CLKXOR2X2M U25 ( .A(wr_adr_blk[1]), .B(wr_adr_blk[2]), .Y(gray_bin_ptr[1])
         );
  CLKXOR2X2M U26 ( .A(wr_adr_blk[1]), .B(n12), .Y(ptr_bin_next[1]) );
  CLKXOR2X2M U27 ( .A(n9), .B(n14), .Y(ptr_bin_next[0]) );
endmodule


module rptr_empty_blk_test_1 ( rd_clk_blk, rd_rst_blk, rd_inc_blk, 
        rq2_wptr_blk, rd_empty_blk, rd_adr_blk, rd_ptr_blk, test_si2, test_si1, 
        test_se );
  input [3:0] rq2_wptr_blk;
  output [2:0] rd_adr_blk;
  output [3:0] rd_ptr_blk;
  input rd_clk_blk, rd_rst_blk, rd_inc_blk, test_si2, test_si1, test_se;
  output rd_empty_blk;
  wire   n9, n10, n11, n12, n13, n14, n15, n16, n17, n18;
  wire   [3:0] gray_bin_ptr;
  wire   [3:0] ptr_bin_next;

  SDFFRQX2M \bin_ptr_reg[3]  ( .D(ptr_bin_next[3]), .SI(test_si2), .SE(test_se), .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(gray_bin_ptr[3]) );
  SDFFRX1M \bin_ptr_reg[0]  ( .D(ptr_bin_next[0]), .SI(test_si1), .SE(test_se), 
        .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(rd_adr_blk[0]), .QN(n9) );
  SDFFRQX2M \bin_ptr_reg[2]  ( .D(ptr_bin_next[2]), .SI(rd_adr_blk[1]), .SE(
        test_se), .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(rd_adr_blk[2]) );
  SDFFRQX2M \bin_ptr_reg[1]  ( .D(ptr_bin_next[1]), .SI(rd_adr_blk[0]), .SE(
        test_se), .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(rd_adr_blk[1]) );
  SDFFRQX2M \rd_ptr_blk_reg[3]  ( .D(gray_bin_ptr[3]), .SI(rd_ptr_blk[2]), 
        .SE(test_se), .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(rd_ptr_blk[3]) );
  SDFFRQX2M \rd_ptr_blk_reg[2]  ( .D(gray_bin_ptr[2]), .SI(rd_ptr_blk[1]), 
        .SE(test_se), .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(rd_ptr_blk[2]) );
  SDFFRQX2M \rd_ptr_blk_reg[1]  ( .D(gray_bin_ptr[1]), .SI(rd_ptr_blk[0]), 
        .SE(test_se), .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(rd_ptr_blk[1]) );
  SDFFRQX2M \rd_ptr_blk_reg[0]  ( .D(gray_bin_ptr[0]), .SI(gray_bin_ptr[3]), 
        .SE(test_se), .CK(rd_clk_blk), .RN(rd_rst_blk), .Q(rd_ptr_blk[0]) );
  INVX2M U11 ( .A(n10), .Y(rd_empty_blk) );
  NOR2X2M U12 ( .A(n14), .B(n9), .Y(n12) );
  XNOR2X2M U13 ( .A(gray_bin_ptr[2]), .B(rq2_wptr_blk[2]), .Y(n18) );
  XNOR2X2M U14 ( .A(n9), .B(rd_adr_blk[1]), .Y(gray_bin_ptr[0]) );
  XNOR2X2M U15 ( .A(gray_bin_ptr[3]), .B(n11), .Y(ptr_bin_next[3]) );
  NAND3X2M U16 ( .A(rd_adr_blk[1]), .B(rd_adr_blk[2]), .C(n12), .Y(n11) );
  XNOR2X2M U17 ( .A(rd_adr_blk[2]), .B(n13), .Y(ptr_bin_next[2]) );
  NAND2X2M U18 ( .A(n12), .B(rd_adr_blk[1]), .Y(n13) );
  NAND4X2M U19 ( .A(n15), .B(n16), .C(n17), .D(n18), .Y(n10) );
  XNOR2X2M U20 ( .A(gray_bin_ptr[3]), .B(rq2_wptr_blk[3]), .Y(n17) );
  XNOR2X2M U21 ( .A(gray_bin_ptr[0]), .B(rq2_wptr_blk[0]), .Y(n16) );
  XNOR2X2M U22 ( .A(gray_bin_ptr[1]), .B(rq2_wptr_blk[1]), .Y(n15) );
  NAND2X2M U23 ( .A(rd_inc_blk), .B(n10), .Y(n14) );
  CLKXOR2X2M U24 ( .A(rd_adr_blk[1]), .B(rd_adr_blk[2]), .Y(gray_bin_ptr[1])
         );
  CLKXOR2X2M U25 ( .A(gray_bin_ptr[3]), .B(rd_adr_blk[2]), .Y(gray_bin_ptr[2])
         );
  CLKXOR2X2M U26 ( .A(rd_adr_blk[1]), .B(n12), .Y(ptr_bin_next[1]) );
  CLKXOR2X2M U27 ( .A(n9), .B(n14), .Y(ptr_bin_next[0]) );
endmodule


module sync_2FF_test_0 ( clk_sync, rst_sync, ptr_sync, Sync_out, test_so, 
        test_se );
  input [3:0] ptr_sync;
  output [3:0] Sync_out;
  input clk_sync, rst_sync, test_se;
  output test_so;

  wire   [3:0] wq1_reg;
  assign test_so = wq1_reg[3];

  SDFFRQX2M \Sync_out_reg[1]  ( .D(wq1_reg[1]), .SI(Sync_out[0]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[1]) );
  SDFFRQX2M \Sync_out_reg[0]  ( .D(wq1_reg[0]), .SI(ptr_sync[3]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[0]) );
  SDFFRQX2M \Sync_out_reg[3]  ( .D(wq1_reg[3]), .SI(Sync_out[2]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[3]) );
  SDFFRQX2M \Sync_out_reg[2]  ( .D(wq1_reg[2]), .SI(Sync_out[1]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[2]) );
  SDFFRQX2M \wq1_reg_reg[3]  ( .D(ptr_sync[3]), .SI(wq1_reg[2]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[3]) );
  SDFFRQX2M \wq1_reg_reg[2]  ( .D(ptr_sync[2]), .SI(wq1_reg[1]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[2]) );
  SDFFRQX2M \wq1_reg_reg[1]  ( .D(ptr_sync[1]), .SI(wq1_reg[0]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[1]) );
  SDFFRQX2M \wq1_reg_reg[0]  ( .D(ptr_sync[0]), .SI(Sync_out[3]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[0]) );
endmodule


module sync_2FF_test_1 ( clk_sync, rst_sync, ptr_sync, Sync_out, test_si, 
        test_so, test_se );
  input [3:0] ptr_sync;
  output [3:0] Sync_out;
  input clk_sync, rst_sync, test_si, test_se;
  output test_so;

  wire   [3:0] wq1_reg;
  assign test_so = wq1_reg[3];

  SDFFRQX2M \Sync_out_reg[3]  ( .D(wq1_reg[3]), .SI(Sync_out[2]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[3]) );
  SDFFRQX2M \Sync_out_reg[2]  ( .D(wq1_reg[2]), .SI(Sync_out[1]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[2]) );
  SDFFRQX2M \Sync_out_reg[1]  ( .D(wq1_reg[1]), .SI(Sync_out[0]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[1]) );
  SDFFRQX2M \Sync_out_reg[0]  ( .D(wq1_reg[0]), .SI(test_si), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(Sync_out[0]) );
  SDFFRQX2M \wq1_reg_reg[3]  ( .D(ptr_sync[3]), .SI(wq1_reg[2]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[3]) );
  SDFFRQX2M \wq1_reg_reg[2]  ( .D(ptr_sync[2]), .SI(wq1_reg[1]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[2]) );
  SDFFRQX2M \wq1_reg_reg[1]  ( .D(ptr_sync[1]), .SI(wq1_reg[0]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[1]) );
  SDFFRQX2M \wq1_reg_reg[0]  ( .D(ptr_sync[0]), .SI(Sync_out[3]), .SE(test_se), 
        .CK(clk_sync), .RN(rst_sync), .Q(wq1_reg[0]) );
endmodule


module Async_FIFO_test_1 ( WR_clk, WR_rst, WR_inc, WR_Data, RD_clk, RD_rst, 
        RD_inc, FULL, EMPTY, RD_Data, test_si2, test_si1, test_so2, test_so1, 
        test_se );
  input [7:0] WR_Data;
  output [7:0] RD_Data;
  input WR_clk, WR_rst, WR_inc, RD_clk, RD_rst, RD_inc, test_si2, test_si1,
         test_se;
  output FULL, EMPTY, test_so2, test_so1;
  wire   n1, n2, n3, n4, n7, n8;
  wire   [2:0] Waddr;
  wire   [2:0] Raddr;
  wire   [3:0] wq2_rptr;
  wire   [3:0] Wptr;
  wire   [3:0] rq2_wptr;
  wire   [3:0] Rptr;
  assign test_so1 = Raddr[2];

  INVX2M U1 ( .A(n4), .Y(n3) );
  INVX2M U2 ( .A(WR_rst), .Y(n4) );
  INVX2M U3 ( .A(n2), .Y(n1) );
  INVX2M U4 ( .A(RD_rst), .Y(n2) );
  FIFO_Mem_test_1 U0_FIFO_MEM ( .wr_clk_mem(WR_clk), .Wr_rst_mem(n3), 
        .wr_full_mem(FULL), .wr_inc_mem(WR_inc), .wr_Data_mem(WR_Data), 
        .wr_adr_mem(Waddr), .rd_adr_mem(Raddr), .rd_Data_mem(RD_Data), 
        .test_si(test_si1), .test_so(n8), .test_se(test_se) );
  wptr_Full_blk_test_1 U0_full_blk ( .wr_clk_blk(WR_clk), .wr_rst_blk(n3), 
        .wr_inc_blk(WR_inc), .wq2_rptr_blk(wq2_rptr), .wr_full_blk(FULL), 
        .wr_adr_blk(Waddr), .wr_ptr_blk(Wptr), .test_si(n8), .test_se(test_se)
         );
  rptr_empty_blk_test_1 u0_empty_blk ( .rd_clk_blk(RD_clk), .rd_rst_blk(n1), 
        .rd_inc_blk(RD_inc), .rq2_wptr_blk(rq2_wptr), .rd_empty_blk(EMPTY), 
        .rd_adr_blk(Raddr), .rd_ptr_blk(Rptr), .test_si2(test_si2), .test_si1(
        Wptr[3]), .test_se(test_se) );
  sync_2FF_test_0 u0_sync_r2w ( .clk_sync(WR_clk), .rst_sync(n3), .ptr_sync(
        Rptr), .Sync_out(wq2_rptr), .test_so(n7), .test_se(test_se) );
  sync_2FF_test_1 u0_sync_w2r ( .clk_sync(RD_clk), .rst_sync(n1), .ptr_sync(
        Wptr), .Sync_out(rq2_wptr), .test_si(n7), .test_so(test_so2), 
        .test_se(test_se) );
endmodule


module pulse_Gen_test_1 ( CLK, RST, in_signal, pulsed_signal, test_si, test_so, 
        test_se );
  input CLK, RST, in_signal, test_si, test_se;
  output pulsed_signal, test_so;
  wire   out_Flop, in_Flop;
  assign test_so = out_Flop;

  SDFFRQX2M out_Flop_reg ( .D(in_Flop), .SI(in_Flop), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(out_Flop) );
  SDFFRQX2M in_Flop_reg ( .D(in_signal), .SI(test_si), .SE(test_se), .CK(CLK), 
        .RN(RST), .Q(in_Flop) );
  AND2X2M U5 ( .A(out_Flop), .B(in_Flop), .Y(pulsed_signal) );
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


module CLK_div_test_0 ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk_reg, toggle_flag, N9, N10, N11, N12, N13, N14, N15, N16,
         N25, N26, N27, N28, N29, N30, N31, N32, N61, N62, N63, N64, N65, N66,
         N67, N68, n35, n36, n1, n2, n3, n4, n5, n6, n7, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51;
  wire   [7:0] counter;
  assign test_so = toggle_flag;

  SDFFRQX2M div_clk_reg_reg ( .D(n35), .SI(counter[7]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk_reg) );
  SDFFRQX2M \counter_reg[7]  ( .D(N68), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M toggle_flag_reg ( .D(n36), .SI(div_clk_reg), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(toggle_flag) );
  SDFFRQX2M \counter_reg[0]  ( .D(N61), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N62), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N63), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N64), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N65), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N66), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N67), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  OR2X2M U7 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U8 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N2), .Y(o_div_clk) );
  NAND2X2M U9 ( .A(n23), .B(n20), .Y(n22) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(N9) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N10) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N11) );
  OR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U21 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N12) );
  OR2X1M U22 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U23 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N13) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(N14) );
  NOR3X1M U25 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N16) );
  OAI21X1M U26 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U27 ( .AN(N16), .B(n5), .Y(N15) );
  MXI2X1M U28 ( .A(n6), .B(n7), .S0(toggle_flag), .Y(n36) );
  CLKNAND2X2M U29 ( .A(N2), .B(n7), .Y(n6) );
  OAI21X1M U30 ( .A0(n18), .A1(n19), .B0(n20), .Y(n7) );
  MXI2X1M U31 ( .A(n21), .B(n22), .S0(div_clk_reg), .Y(n35) );
  CLKNAND2X2M U32 ( .A(N2), .B(n22), .Y(n21) );
  NOR2BX1M U33 ( .AN(N32), .B(n22), .Y(N68) );
  NOR2BX1M U34 ( .AN(N31), .B(n22), .Y(N67) );
  NOR2BX1M U35 ( .AN(N30), .B(n22), .Y(N66) );
  NOR2BX1M U36 ( .AN(N29), .B(n22), .Y(N65) );
  NOR2BX1M U37 ( .AN(N28), .B(n22), .Y(N64) );
  NOR2BX1M U38 ( .AN(N27), .B(n22), .Y(N63) );
  NOR2BX1M U39 ( .AN(N26), .B(n22), .Y(N62) );
  NOR2BX1M U40 ( .AN(N25), .B(n22), .Y(N61) );
  CLKINVX1M U41 ( .A(n24), .Y(n20) );
  OAI31X1M U42 ( .A0(n25), .A1(n26), .A2(n27), .B0(N2), .Y(n24) );
  CLKNAND2X2M U43 ( .A(n28), .B(n29), .Y(n27) );
  XNOR2X1M U44 ( .A(counter[5]), .B(N14), .Y(n29) );
  XNOR2X1M U45 ( .A(counter[6]), .B(N15), .Y(n28) );
  NAND3X1M U46 ( .A(n30), .B(n31), .C(n32), .Y(n26) );
  XNOR2X1M U47 ( .A(counter[3]), .B(N12), .Y(n32) );
  XNOR2X1M U48 ( .A(counter[4]), .B(N13), .Y(n31) );
  XNOR2X1M U49 ( .A(counter[0]), .B(N9), .Y(n30) );
  NAND4X1M U50 ( .A(n33), .B(n34), .C(n37), .D(n38), .Y(n25) );
  XNOR2X1M U51 ( .A(counter[1]), .B(N10), .Y(n38) );
  NOR2X1M U52 ( .A(toggle_flag), .B(n18), .Y(n37) );
  XNOR2X1M U53 ( .A(counter[2]), .B(N11), .Y(n34) );
  CLKXOR2X2M U54 ( .A(n39), .B(N16), .Y(n33) );
  AOI31X1M U55 ( .A0(n40), .A1(n18), .A2(n41), .B0(n42), .Y(n23) );
  CLKINVX1M U56 ( .A(n19), .Y(n42) );
  NAND3X1M U57 ( .A(n41), .B(n40), .C(toggle_flag), .Y(n19) );
  AND4X1M U58 ( .A(n39), .B(n43), .C(n44), .D(n45), .Y(n41) );
  XNOR2X1M U59 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n45) );
  XNOR2X1M U60 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n44) );
  XNOR2X1M U61 ( .A(counter[2]), .B(i_div_ratio[3]), .Y(n43) );
  CLKINVX1M U62 ( .A(counter[7]), .Y(n39) );
  CLKINVX1M U63 ( .A(i_div_ratio[0]), .Y(n18) );
  AND4X1M U64 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n40) );
  XNOR2X1M U65 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n49) );
  XNOR2X1M U66 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n48) );
  XNOR2X1M U67 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n47) );
  XNOR2X1M U68 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n46) );
  OA21X1M U69 ( .A0(n50), .A1(n51), .B0(i_clk_en), .Y(N2) );
  OR3X1M U70 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n51) );
  OR4X1M U71 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n50) );
  CLK_div_0_DW01_inc_0 r73 ( .A(counter), .SUM({N32, N31, N30, N29, N28, N27, 
        N26, N25}) );
endmodule


module clk_div_mux ( in, div_ratio );
  input [5:0] in;
  output [7:0] div_ratio;
  wire   n5, n6, n7, n8, n9, n14, n15, n16, n17;

  NAND4BX1M U11 ( .AN(in[4]), .B(in[3]), .C(n15), .D(n14), .Y(n6) );
  NAND4BX1M U12 ( .AN(in[3]), .B(in[4]), .C(n15), .D(n14), .Y(n7) );
  NOR3X2M U13 ( .A(n7), .B(in[1]), .C(in[0]), .Y(div_ratio[1]) );
  NOR3X2M U14 ( .A(n6), .B(in[1]), .C(in[0]), .Y(div_ratio[2]) );
  NOR4X1M U15 ( .A(n5), .B(in[3]), .C(in[5]), .D(in[4]), .Y(div_ratio[3]) );
  NAND3X2M U16 ( .A(n17), .B(n16), .C(in[2]), .Y(n5) );
  INVX2M U17 ( .A(in[2]), .Y(n15) );
  INVX2M U18 ( .A(in[1]), .Y(n16) );
  INVX2M U19 ( .A(in[0]), .Y(n17) );
  INVX2M U20 ( .A(in[5]), .Y(n14) );
  OAI211X2M U21 ( .A0(n8), .A1(n9), .B0(n17), .C0(n16), .Y(div_ratio[0]) );
  NOR4X1M U22 ( .A(in[5]), .B(in[4]), .C(in[3]), .D(n15), .Y(n8) );
  NAND2X2M U23 ( .A(n7), .B(n6), .Y(n9) );
  INVX2M U3 ( .A(1'b1), .Y(div_ratio[7]) );
  INVX2M U5 ( .A(1'b1), .Y(div_ratio[6]) );
  INVX2M U7 ( .A(1'b1), .Y(div_ratio[5]) );
  INVX2M U9 ( .A(1'b1), .Y(div_ratio[4]) );
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


module CLK_div_test_1 ( i_rst_n, i_ref_clk, i_clk_en, i_div_ratio, o_div_clk, 
        test_si, test_so, test_se );
  input [7:0] i_div_ratio;
  input i_rst_n, i_ref_clk, i_clk_en, test_si, test_se;
  output o_div_clk, test_so;
  wire   N2, div_clk_reg, toggle_flag, N9, N10, N11, N12, N13, N14, N15, N16,
         N25, N26, N27, N28, N29, N30, N31, N32, N61, N62, N63, N64, N65, N66,
         N67, N68, n1, n2, n3, n4, n5, n6, n7, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53;
  wire   [7:0] counter;
  assign test_so = toggle_flag;

  SDFFRQX2M div_clk_reg_reg ( .D(n53), .SI(counter[7]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(div_clk_reg) );
  SDFFRQX2M \counter_reg[7]  ( .D(N68), .SI(counter[6]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[7]) );
  SDFFRQX2M toggle_flag_reg ( .D(n52), .SI(div_clk_reg), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(toggle_flag) );
  SDFFRQX2M \counter_reg[0]  ( .D(N61), .SI(test_si), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(N62), .SI(counter[0]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[1]) );
  SDFFRQX2M \counter_reg[2]  ( .D(N63), .SI(counter[1]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[3]  ( .D(N64), .SI(counter[2]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[4]  ( .D(N65), .SI(counter[3]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[4]) );
  SDFFRQX2M \counter_reg[5]  ( .D(N66), .SI(counter[4]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[5]) );
  SDFFRQX2M \counter_reg[6]  ( .D(N67), .SI(counter[5]), .SE(test_se), .CK(
        i_ref_clk), .RN(i_rst_n), .Q(counter[6]) );
  OR2X2M U7 ( .A(i_div_ratio[2]), .B(i_div_ratio[1]), .Y(n1) );
  MX2X2M U8 ( .A(i_ref_clk), .B(div_clk_reg), .S0(N2), .Y(o_div_clk) );
  NAND2X2M U9 ( .A(n23), .B(n20), .Y(n22) );
  CLKINVX1M U16 ( .A(i_div_ratio[1]), .Y(N9) );
  OAI2BB1X1M U17 ( .A0N(i_div_ratio[1]), .A1N(i_div_ratio[2]), .B0(n1), .Y(N10) );
  OR2X1M U18 ( .A(n1), .B(i_div_ratio[3]), .Y(n2) );
  OAI2BB1X1M U19 ( .A0N(n1), .A1N(i_div_ratio[3]), .B0(n2), .Y(N11) );
  OR2X1M U20 ( .A(n2), .B(i_div_ratio[4]), .Y(n3) );
  OAI2BB1X1M U21 ( .A0N(n2), .A1N(i_div_ratio[4]), .B0(n3), .Y(N12) );
  OR2X1M U22 ( .A(n3), .B(i_div_ratio[5]), .Y(n4) );
  OAI2BB1X1M U23 ( .A0N(n3), .A1N(i_div_ratio[5]), .B0(n4), .Y(N13) );
  XNOR2X1M U24 ( .A(i_div_ratio[6]), .B(n4), .Y(N14) );
  NOR3X1M U25 ( .A(i_div_ratio[6]), .B(i_div_ratio[7]), .C(n4), .Y(N16) );
  OAI21X1M U26 ( .A0(i_div_ratio[6]), .A1(n4), .B0(i_div_ratio[7]), .Y(n5) );
  NAND2BX1M U27 ( .AN(N16), .B(n5), .Y(N15) );
  MXI2X1M U28 ( .A(n6), .B(n7), .S0(toggle_flag), .Y(n52) );
  CLKNAND2X2M U29 ( .A(N2), .B(n7), .Y(n6) );
  OAI21X1M U30 ( .A0(n18), .A1(n19), .B0(n20), .Y(n7) );
  MXI2X1M U31 ( .A(n21), .B(n22), .S0(div_clk_reg), .Y(n53) );
  CLKNAND2X2M U32 ( .A(N2), .B(n22), .Y(n21) );
  NOR2BX1M U33 ( .AN(N32), .B(n22), .Y(N68) );
  NOR2BX1M U34 ( .AN(N31), .B(n22), .Y(N67) );
  NOR2BX1M U35 ( .AN(N30), .B(n22), .Y(N66) );
  NOR2BX1M U36 ( .AN(N29), .B(n22), .Y(N65) );
  NOR2BX1M U37 ( .AN(N28), .B(n22), .Y(N64) );
  NOR2BX1M U38 ( .AN(N27), .B(n22), .Y(N63) );
  NOR2BX1M U39 ( .AN(N26), .B(n22), .Y(N62) );
  NOR2BX1M U40 ( .AN(N25), .B(n22), .Y(N61) );
  CLKINVX1M U41 ( .A(n24), .Y(n20) );
  OAI31X1M U42 ( .A0(n25), .A1(n26), .A2(n27), .B0(N2), .Y(n24) );
  CLKNAND2X2M U43 ( .A(n28), .B(n29), .Y(n27) );
  XNOR2X1M U44 ( .A(counter[5]), .B(N14), .Y(n29) );
  XNOR2X1M U45 ( .A(counter[6]), .B(N15), .Y(n28) );
  NAND3X1M U46 ( .A(n30), .B(n31), .C(n32), .Y(n26) );
  XNOR2X1M U47 ( .A(counter[3]), .B(N12), .Y(n32) );
  XNOR2X1M U48 ( .A(counter[4]), .B(N13), .Y(n31) );
  XNOR2X1M U49 ( .A(counter[0]), .B(N9), .Y(n30) );
  NAND4X1M U50 ( .A(n33), .B(n34), .C(n37), .D(n38), .Y(n25) );
  XNOR2X1M U51 ( .A(counter[1]), .B(N10), .Y(n38) );
  NOR2X1M U52 ( .A(toggle_flag), .B(n18), .Y(n37) );
  XNOR2X1M U53 ( .A(counter[2]), .B(N11), .Y(n34) );
  CLKXOR2X2M U54 ( .A(n39), .B(N16), .Y(n33) );
  AOI31X1M U55 ( .A0(n40), .A1(n18), .A2(n41), .B0(n42), .Y(n23) );
  CLKINVX1M U56 ( .A(n19), .Y(n42) );
  NAND3X1M U57 ( .A(n41), .B(n40), .C(toggle_flag), .Y(n19) );
  AND4X1M U58 ( .A(n39), .B(n43), .C(n44), .D(n45), .Y(n41) );
  XNOR2X1M U59 ( .A(counter[0]), .B(i_div_ratio[1]), .Y(n45) );
  XNOR2X1M U60 ( .A(counter[1]), .B(i_div_ratio[2]), .Y(n44) );
  XNOR2X1M U61 ( .A(counter[2]), .B(i_div_ratio[3]), .Y(n43) );
  CLKINVX1M U62 ( .A(counter[7]), .Y(n39) );
  CLKINVX1M U63 ( .A(i_div_ratio[0]), .Y(n18) );
  AND4X1M U64 ( .A(n46), .B(n47), .C(n48), .D(n49), .Y(n40) );
  XNOR2X1M U65 ( .A(counter[3]), .B(i_div_ratio[4]), .Y(n49) );
  XNOR2X1M U66 ( .A(counter[4]), .B(i_div_ratio[5]), .Y(n48) );
  XNOR2X1M U67 ( .A(counter[5]), .B(i_div_ratio[6]), .Y(n47) );
  XNOR2X1M U68 ( .A(counter[6]), .B(i_div_ratio[7]), .Y(n46) );
  OA21X1M U69 ( .A0(n50), .A1(n51), .B0(i_clk_en), .Y(N2) );
  OR3X1M U70 ( .A(i_div_ratio[2]), .B(i_div_ratio[3]), .C(i_div_ratio[1]), .Y(
        n51) );
  OR4X1M U71 ( .A(i_div_ratio[4]), .B(i_div_ratio[5]), .C(i_div_ratio[6]), .D(
        i_div_ratio[7]), .Y(n50) );
  CLK_div_1_DW01_inc_0 r73 ( .A(counter), .SUM({N32, N31, N30, N29, N28, N27, 
        N26, N25}) );
endmodule


module Serializer_tx_test_1 ( P_Data_ser, ser_en_ser, rst_ser, clk_ser, 
        Data_valid_ser, out_Data_ser, ser_done_ser, test_si, test_se );
  input [7:0] P_Data_ser;
  input ser_en_ser, rst_ser, clk_ser, Data_valid_ser, test_si, test_se;
  output out_Data_ser, ser_done_ser;
  wire   n14, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n15,
         n16, n17, n18, n19, n46, n48, n50, n51;
  wire   [3:0] counter;
  wire   [7:0] P_Data_register;

  SDFFRQX2M out_Data_ser_reg ( .D(n33), .SI(counter[3]), .SE(n51), .CK(clk_ser), .RN(rst_ser), .Q(out_Data_ser) );
  SDFFRX1M \P_Data_register_reg[0]  ( .D(n41), .SI(test_si), .SE(n51), .CK(
        clk_ser), .RN(rst_ser), .Q(n48), .QN(n14) );
  SDFFRQX2M \P_Data_register_reg[7]  ( .D(n34), .SI(P_Data_register[6]), .SE(
        n51), .CK(clk_ser), .RN(rst_ser), .Q(P_Data_register[7]) );
  SDFFRQX2M \P_Data_register_reg[6]  ( .D(n35), .SI(P_Data_register[5]), .SE(
        n51), .CK(clk_ser), .RN(rst_ser), .Q(P_Data_register[6]) );
  SDFFRQX2M \P_Data_register_reg[5]  ( .D(n36), .SI(P_Data_register[4]), .SE(
        n51), .CK(clk_ser), .RN(rst_ser), .Q(P_Data_register[5]) );
  SDFFRQX2M \P_Data_register_reg[4]  ( .D(n37), .SI(P_Data_register[3]), .SE(
        n51), .CK(clk_ser), .RN(rst_ser), .Q(P_Data_register[4]) );
  SDFFRQX2M \P_Data_register_reg[3]  ( .D(n38), .SI(P_Data_register[2]), .SE(
        n51), .CK(clk_ser), .RN(rst_ser), .Q(P_Data_register[3]) );
  SDFFRQX2M \P_Data_register_reg[2]  ( .D(n39), .SI(P_Data_register[1]), .SE(
        n51), .CK(clk_ser), .RN(rst_ser), .Q(P_Data_register[2]) );
  SDFFRQX2M \P_Data_register_reg[1]  ( .D(n40), .SI(n48), .SE(n51), .CK(
        clk_ser), .RN(rst_ser), .Q(P_Data_register[1]) );
  SDFFRQX2M \counter_reg[3]  ( .D(n44), .SI(counter[2]), .SE(n51), .CK(clk_ser), .RN(rst_ser), .Q(counter[3]) );
  SDFFRQX2M \counter_reg[2]  ( .D(n43), .SI(counter[1]), .SE(n51), .CK(clk_ser), .RN(rst_ser), .Q(counter[2]) );
  SDFFRQX2M \counter_reg[0]  ( .D(n45), .SI(P_Data_register[7]), .SE(n51), 
        .CK(clk_ser), .RN(rst_ser), .Q(counter[0]) );
  SDFFRQX2M \counter_reg[1]  ( .D(n42), .SI(counter[0]), .SE(n51), .CK(clk_ser), .RN(rst_ser), .Q(counter[1]) );
  OR2X2M U16 ( .A(Data_valid_ser), .B(n15), .Y(n20) );
  INVX2M U17 ( .A(n15), .Y(n16) );
  BUFX2M U18 ( .A(n22), .Y(n15) );
  NOR3BX2M U19 ( .AN(ser_en_ser), .B(ser_done_ser), .C(Data_valid_ser), .Y(n22) );
  AOI21BX2M U20 ( .A0(n17), .A1(n15), .B0N(n20), .Y(n29) );
  OAI32X1M U21 ( .A0(n19), .A1(counter[3]), .A2(n30), .B0(n32), .B1(n46), .Y(
        n44) );
  AOI21X2M U22 ( .A0(n15), .A1(n19), .B0(n31), .Y(n32) );
  INVX2M U23 ( .A(counter[2]), .Y(n19) );
  OAI32X1M U24 ( .A0(n17), .A1(counter[1]), .A2(n16), .B0(n29), .B1(n18), .Y(
        n42) );
  INVX2M U25 ( .A(counter[1]), .Y(n18) );
  NOR4X1M U26 ( .A(n46), .B(counter[0]), .C(counter[1]), .D(counter[2]), .Y(
        ser_done_ser) );
  OAI22X1M U27 ( .A0(n20), .A1(n17), .B0(counter[0]), .B1(n16), .Y(n45) );
  OAI21X2M U28 ( .A0(counter[1]), .A1(n16), .B0(n29), .Y(n31) );
  OAI2BB2X1M U29 ( .B0(counter[2]), .B1(n30), .A0N(n31), .A1N(counter[2]), .Y(
        n43) );
  OAI2BB2X1M U30 ( .B0(n16), .B1(n14), .A0N(out_Data_ser), .A1N(n16), .Y(n33)
         );
  OAI2B1X2M U31 ( .A1N(P_Data_register[1]), .A0(n20), .B0(n27), .Y(n40) );
  AOI22X1M U32 ( .A0(P_Data_ser[1]), .A1(Data_valid_ser), .B0(
        P_Data_register[2]), .B1(n15), .Y(n27) );
  OAI2B1X2M U33 ( .A1N(P_Data_register[2]), .A0(n20), .B0(n26), .Y(n39) );
  AOI22X1M U34 ( .A0(P_Data_ser[2]), .A1(Data_valid_ser), .B0(
        P_Data_register[3]), .B1(n15), .Y(n26) );
  OAI2B1X2M U35 ( .A1N(P_Data_register[3]), .A0(n20), .B0(n25), .Y(n38) );
  AOI22X1M U36 ( .A0(P_Data_ser[3]), .A1(Data_valid_ser), .B0(
        P_Data_register[4]), .B1(n15), .Y(n25) );
  OAI2B1X2M U37 ( .A1N(P_Data_register[4]), .A0(n20), .B0(n24), .Y(n37) );
  AOI22X1M U38 ( .A0(P_Data_ser[4]), .A1(Data_valid_ser), .B0(
        P_Data_register[5]), .B1(n15), .Y(n24) );
  OAI2B1X2M U39 ( .A1N(P_Data_register[5]), .A0(n20), .B0(n23), .Y(n36) );
  AOI22X1M U40 ( .A0(P_Data_ser[5]), .A1(Data_valid_ser), .B0(
        P_Data_register[6]), .B1(n15), .Y(n23) );
  OAI2B1X2M U41 ( .A1N(P_Data_register[6]), .A0(n20), .B0(n21), .Y(n35) );
  AOI22X1M U42 ( .A0(P_Data_ser[6]), .A1(Data_valid_ser), .B0(
        P_Data_register[7]), .B1(n15), .Y(n21) );
  OAI21X2M U43 ( .A0(n14), .A1(n20), .B0(n28), .Y(n41) );
  AOI22X1M U44 ( .A0(P_Data_ser[0]), .A1(Data_valid_ser), .B0(
        P_Data_register[1]), .B1(n15), .Y(n28) );
  NAND3X2M U45 ( .A(counter[0]), .B(n15), .C(counter[1]), .Y(n30) );
  AO2B2X2M U46 ( .B0(P_Data_ser[7]), .B1(Data_valid_ser), .A0(
        P_Data_register[7]), .A1N(n20), .Y(n34) );
  INVX2M U47 ( .A(counter[3]), .Y(n46) );
  INVX2M U48 ( .A(counter[0]), .Y(n17) );
  INVXLM U49 ( .A(test_se), .Y(n50) );
  INVXLM U50 ( .A(n50), .Y(n51) );
endmodule


module FSM_tx_test_1 ( clk_fsm, rst_fsm, Data_v_fsm, Par_en_fsm, ser_done_fsm, 
        ser_en_fsm, mux_sel_fsm, busy_fsm, test_si, test_se );
  output [1:0] mux_sel_fsm;
  input clk_fsm, rst_fsm, Data_v_fsm, Par_en_fsm, ser_done_fsm, test_si,
         test_se;
  output ser_en_fsm, busy_fsm;
  wire   busy_c, n8, n9, n10, n11, n12, n13, n14, n5, n6, n7;
  wire   [2:0] C_S;
  wire   [2:0] N_S;

  SDFFRQX2M \C_S_reg[0]  ( .D(N_S[0]), .SI(test_si), .SE(test_se), .CK(clk_fsm), .RN(rst_fsm), .Q(C_S[0]) );
  SDFFRQX2M \C_S_reg[1]  ( .D(N_S[1]), .SI(C_S[0]), .SE(test_se), .CK(clk_fsm), 
        .RN(rst_fsm), .Q(C_S[1]) );
  SDFFRQX2M \C_S_reg[2]  ( .D(N_S[2]), .SI(C_S[1]), .SE(test_se), .CK(clk_fsm), 
        .RN(rst_fsm), .Q(C_S[2]) );
  SDFFRQX2M busy_fsm_reg ( .D(busy_c), .SI(C_S[2]), .SE(test_se), .CK(clk_fsm), 
        .RN(rst_fsm), .Q(busy_fsm) );
  NAND2X2M U7 ( .A(n9), .B(n7), .Y(mux_sel_fsm[1]) );
  INVX2M U8 ( .A(mux_sel_fsm[1]), .Y(ser_en_fsm) );
  NOR2X2M U9 ( .A(n5), .B(n6), .Y(n10) );
  XNOR2X2M U10 ( .A(n5), .B(C_S[1]), .Y(n9) );
  NOR3X2M U11 ( .A(n14), .B(C_S[2]), .C(C_S[0]), .Y(N_S[0]) );
  AOI32X1M U12 ( .A0(ser_done_fsm), .A1(C_S[1]), .A2(Par_en_fsm), .B0(
        Data_v_fsm), .B1(n6), .Y(n14) );
  INVX2M U13 ( .A(C_S[2]), .Y(n7) );
  INVX2M U14 ( .A(C_S[0]), .Y(n5) );
  NOR2BX2M U15 ( .AN(ser_done_fsm), .B(Par_en_fsm), .Y(n12) );
  OAI21X2M U16 ( .A0(C_S[1]), .A1(mux_sel_fsm[0]), .B0(n13), .Y(N_S[1]) );
  NAND4BX1M U17 ( .AN(n12), .B(C_S[1]), .C(n5), .D(n7), .Y(n13) );
  OAI21X2M U18 ( .A0(n8), .A1(n9), .B0(mux_sel_fsm[1]), .Y(busy_c) );
  XNOR2X2M U19 ( .A(n10), .B(C_S[2]), .Y(n8) );
  NAND2X2M U20 ( .A(C_S[0]), .B(n7), .Y(mux_sel_fsm[0]) );
  NOR2X2M U21 ( .A(C_S[2]), .B(n11), .Y(N_S[2]) );
  AOI21X2M U22 ( .A0(n12), .A1(C_S[1]), .B0(n10), .Y(n11) );
  INVX2M U23 ( .A(C_S[1]), .Y(n6) );
endmodule


module parity_calc_test_1 ( P_Data_par, Data_valid_par, Par_TYP_par, rst_par, 
        clk_par, Par_bit_par, test_si, test_se );
  input [7:0] P_Data_par;
  input Data_valid_par, Par_TYP_par, rst_par, clk_par, test_si, test_se;
  output Par_bit_par;
  wire   n1, n3, n4, n5, n6, n8, n2;

  SDFFRQX2M Par_bit_par_reg ( .D(n8), .SI(test_si), .SE(test_se), .CK(clk_par), 
        .RN(rst_par), .Q(Par_bit_par) );
  XOR3XLM U2 ( .A(P_Data_par[5]), .B(P_Data_par[4]), .C(n6), .Y(n3) );
  CLKXOR2X2M U3 ( .A(P_Data_par[7]), .B(P_Data_par[6]), .Y(n6) );
  XNOR2X2M U4 ( .A(P_Data_par[3]), .B(P_Data_par[2]), .Y(n5) );
  OAI2BB2X1M U5 ( .B0(n1), .B1(n2), .A0N(Par_bit_par), .A1N(n2), .Y(n8) );
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


module Top_Tx_test_1 ( P_DATA, PAR_EN, Data_Valid, PAR_TYP, CLK, RST, TX_OUT, 
        Busy, test_si, test_so, test_se );
  input [7:0] P_DATA;
  input PAR_EN, Data_Valid, PAR_TYP, CLK, RST, test_si, test_se;
  output TX_OUT, Busy, test_so;
  wire   ser_en, ser_done, ser_data, Par_bit, n1, n2;
  wire   [1:0] MUX_SEL;
  assign test_so = ser_data;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  Serializer_tx_test_1 ser_U0 ( .P_Data_ser(P_DATA), .ser_en_ser(ser_en), 
        .rst_ser(n1), .clk_ser(CLK), .Data_valid_ser(Data_Valid), 
        .out_Data_ser(ser_data), .ser_done_ser(ser_done), .test_si(Par_bit), 
        .test_se(test_se) );
  FSM_tx_test_1 fsm_U0 ( .clk_fsm(CLK), .rst_fsm(n1), .Data_v_fsm(Data_Valid), 
        .Par_en_fsm(PAR_EN), .ser_done_fsm(ser_done), .ser_en_fsm(ser_en), 
        .mux_sel_fsm(MUX_SEL), .busy_fsm(Busy), .test_si(test_si), .test_se(
        test_se) );
  parity_calc_test_1 parity_U0 ( .P_Data_par(P_DATA), .Data_valid_par(
        Data_Valid), .Par_TYP_par(PAR_TYP), .rst_par(n1), .clk_par(CLK), 
        .Par_bit_par(Par_bit), .test_si(Busy), .test_se(test_se) );
  mux_tx mux_U0 ( .mux_sel(MUX_SEL), .ser_data_mux(ser_data), .Par_bit_mux(
        Par_bit), .TX_out_max(TX_OUT) );
endmodule


module FSM_RX_test_1 ( RX_in_fsm, clk, rst, Par_en_fsm, prescale_fsm, 
        edge_cnt_fsm, bit_cnt_fsm, strt_glitch_fsm, par_err_fsm, stp_err_fsm, 
        par_chk_en, strt_chk_en, stp_chk_en, deser_en_fsm, enable, 
        data_samp_en, data_valid_fsm, test_so, test_se );
  input [5:0] prescale_fsm;
  input [5:0] edge_cnt_fsm;
  input [3:0] bit_cnt_fsm;
  input RX_in_fsm, clk, rst, Par_en_fsm, strt_glitch_fsm, par_err_fsm,
         stp_err_fsm, test_se;
  output par_chk_en, strt_chk_en, stp_chk_en, deser_en_fsm, enable,
         data_samp_en, data_valid_fsm, test_so;
  wire   N47, N48, N49, N50, N51, N52, N53, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n2, n3, n4, n5, n6, n7, n8, n9, n13,
         n14, n15, n16, n17, n18, n32, n33, n34, n35, n36, n37;
  wire   [2:0] current_state;
  wire   [2:0] next_state;
  assign test_so = current_state[2];

  SDFFRQX2M \current_state_reg[0]  ( .D(next_state[0]), .SI(edge_cnt_fsm[5]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[0]) );
  SDFFRQX2M \current_state_reg[2]  ( .D(next_state[2]), .SI(current_state[1]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[2]) );
  SDFFRQX2M \current_state_reg[1]  ( .D(next_state[1]), .SI(current_state[0]), 
        .SE(test_se), .CK(clk), .RN(rst), .Q(current_state[1]) );
  NAND2X2M U6 ( .A(N53), .B(n29), .Y(n19) );
  NOR2X2M U7 ( .A(n19), .B(n37), .Y(deser_en_fsm) );
  INVX2M U8 ( .A(N53), .Y(n32) );
  INVX2M U9 ( .A(n29), .Y(n34) );
  OR2X2M U10 ( .A(prescale_fsm[1]), .B(prescale_fsm[0]), .Y(n2) );
  NOR3BX2M U11 ( .AN(current_state[2]), .B(n32), .C(n20), .Y(stp_chk_en) );
  OAI21X2M U12 ( .A0(current_state[2]), .A1(n37), .B0(n26), .Y(next_state[1])
         );
  AOI32X1M U13 ( .A0(bit_cnt_fsm[0]), .A1(n24), .A2(n27), .B0(n35), .B1(n32), 
        .Y(n26) );
  INVX2M U14 ( .A(n20), .Y(n35) );
  NOR3X2M U15 ( .A(n34), .B(strt_glitch_fsm), .C(bit_cnt_fsm[3]), .Y(n27) );
  AOI2B1X1M U16 ( .A1N(n21), .A0(n22), .B0(n37), .Y(next_state[2]) );
  NOR3BX2M U17 ( .AN(n25), .B(Par_en_fsm), .C(n34), .Y(n21) );
  OAI21X2M U18 ( .A0(n23), .A1(current_state[2]), .B0(n36), .Y(n22) );
  AND4XLM U19 ( .A(N53), .B(n24), .C(bit_cnt_fsm[3]), .D(bit_cnt_fsm[0]), .Y(
        n23) );
  INVX2M U20 ( .A(prescale_fsm[3]), .Y(n6) );
  NOR3X2M U21 ( .A(n20), .B(current_state[2]), .C(n32), .Y(par_chk_en) );
  NOR2X2M U22 ( .A(current_state[1]), .B(n19), .Y(strt_chk_en) );
  NOR2X2M U23 ( .A(n36), .B(current_state[2]), .Y(n29) );
  NAND2X2M U24 ( .A(current_state[1]), .B(n36), .Y(n20) );
  INVX2M U25 ( .A(current_state[0]), .Y(n36) );
  OAI32X1M U26 ( .A0(n37), .A1(n25), .A2(n34), .B0(current_state[1]), .B1(n28), 
        .Y(next_state[0]) );
  AOI2BB2XLM U27 ( .B0(n29), .B1(n30), .A0N(RX_in_fsm), .A1N(current_state[0]), 
        .Y(n28) );
  NAND4X2M U28 ( .A(strt_glitch_fsm), .B(bit_cnt_fsm[0]), .C(n24), .D(n33), 
        .Y(n30) );
  NOR2X2M U29 ( .A(bit_cnt_fsm[2]), .B(bit_cnt_fsm[1]), .Y(n24) );
  NOR4X1M U30 ( .A(n31), .B(current_state[1]), .C(stp_err_fsm), .D(par_err_fsm), .Y(data_valid_fsm) );
  NAND2X2M U31 ( .A(current_state[2]), .B(n36), .Y(n31) );
  AOI2B1X1M U32 ( .A1N(bit_cnt_fsm[0]), .A0(n24), .B0(n33), .Y(n25) );
  INVX2M U33 ( .A(current_state[1]), .Y(n37) );
  INVX2M U34 ( .A(bit_cnt_fsm[3]), .Y(n33) );
  BUFX2M U35 ( .A(enable), .Y(data_samp_en) );
  OAI211X2M U36 ( .A0(current_state[2]), .A1(RX_in_fsm), .B0(n20), .C0(n34), 
        .Y(enable) );
  CLKINVX1M U37 ( .A(prescale_fsm[0]), .Y(N47) );
  OAI2BB1X1M U38 ( .A0N(prescale_fsm[0]), .A1N(prescale_fsm[1]), .B0(n2), .Y(
        N48) );
  NOR2X1M U39 ( .A(n2), .B(prescale_fsm[2]), .Y(n3) );
  AO21XLM U40 ( .A0(n2), .A1(prescale_fsm[2]), .B0(n3), .Y(N49) );
  CLKNAND2X2M U41 ( .A(n3), .B(n6), .Y(n4) );
  OAI21X1M U42 ( .A0(n3), .A1(n6), .B0(n4), .Y(N50) );
  XNOR2X1M U43 ( .A(prescale_fsm[4]), .B(n4), .Y(N51) );
  NOR2X1M U44 ( .A(prescale_fsm[4]), .B(n4), .Y(n5) );
  CLKXOR2X2M U45 ( .A(prescale_fsm[5]), .B(n5), .Y(N52) );
  NOR2BX1M U46 ( .AN(edge_cnt_fsm[0]), .B(N47), .Y(n7) );
  OAI2B2X1M U47 ( .A1N(N48), .A0(n7), .B0(edge_cnt_fsm[1]), .B1(n7), .Y(n14)
         );
  NOR2BX1M U48 ( .AN(N47), .B(edge_cnt_fsm[0]), .Y(n8) );
  OAI2B2X1M U49 ( .A1N(edge_cnt_fsm[1]), .A0(n8), .B0(N48), .B1(n8), .Y(n13)
         );
  XNOR2X1M U50 ( .A(N52), .B(edge_cnt_fsm[5]), .Y(n9) );
  NAND3X1M U51 ( .A(n14), .B(n13), .C(n9), .Y(n18) );
  CLKXOR2X2M U52 ( .A(N51), .B(edge_cnt_fsm[4]), .Y(n17) );
  CLKXOR2X2M U53 ( .A(N49), .B(edge_cnt_fsm[2]), .Y(n16) );
  CLKXOR2X2M U54 ( .A(N50), .B(edge_cnt_fsm[3]), .Y(n15) );
  NOR4X1M U55 ( .A(n18), .B(n17), .C(n16), .D(n15), .Y(N53) );
endmodule


module data_sampling_RX_test_1 ( clk, rst, RX_in_sampling, data_samp_en, 
        prescale_sampling, edge_cnt_sampling, sampled_out, test_si, test_so, 
        test_se );
  input [5:0] prescale_sampling;
  input [5:0] edge_cnt_sampling;
  input clk, rst, RX_in_sampling, data_samp_en, test_si, test_se;
  output sampled_out, test_so;
  wire   N9, N10, N11, N12, N13, N16, N17, N18, N19, N20, N21, N24, N25, N26,
         N27, N28, N29, n37, n38, n39, n40, \add_37/carry[4] ,
         \add_37/carry[3] , \add_31/carry[4] , \add_31/carry[3] ,
         \add_31/carry[2] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61;
  wire   [2:0] sampled_reg;
  assign test_so = sampled_reg[2];
  assign N24 = prescale_sampling[1];

  SDFFRQX2M \sampled_reg_reg[2]  ( .D(n38), .SI(sampled_reg[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(sampled_reg[2]) );
  SDFFRQX2M \sampled_reg_reg[0]  ( .D(n40), .SI(sampled_out), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(sampled_reg[0]) );
  SDFFRQX2M \sampled_reg_reg[1]  ( .D(n39), .SI(sampled_reg[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(sampled_reg[1]) );
  SDFFRQX2M sampled_out_reg ( .D(n37), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(sampled_out) );
  OR2X2M U5 ( .A(prescale_sampling[2]), .B(N24), .Y(n1) );
  ADDHX1M U6 ( .A(prescale_sampling[3]), .B(\add_31/carry[2] ), .CO(
        \add_31/carry[3] ), .S(N18) );
  ADDHX1M U7 ( .A(prescale_sampling[4]), .B(\add_31/carry[3] ), .CO(
        \add_31/carry[4] ), .S(N19) );
  ADDHX1M U8 ( .A(prescale_sampling[2]), .B(N24), .CO(\add_31/carry[2] ), .S(
        N17) );
  ADDHX1M U9 ( .A(prescale_sampling[5]), .B(\add_31/carry[4] ), .CO(N21), .S(
        N20) );
  INVX2M U10 ( .A(prescale_sampling[2]), .Y(N25) );
  AND2X1M U11 ( .A(\add_37/carry[4] ), .B(prescale_sampling[5]), .Y(N29) );
  CLKXOR2X2M U12 ( .A(prescale_sampling[5]), .B(\add_37/carry[4] ), .Y(N28) );
  AND2X1M U13 ( .A(\add_37/carry[3] ), .B(prescale_sampling[4]), .Y(
        \add_37/carry[4] ) );
  CLKXOR2X2M U16 ( .A(prescale_sampling[4]), .B(\add_37/carry[3] ), .Y(N27) );
  AND2X1M U17 ( .A(prescale_sampling[2]), .B(prescale_sampling[3]), .Y(
        \add_37/carry[3] ) );
  CLKXOR2X2M U18 ( .A(prescale_sampling[3]), .B(prescale_sampling[2]), .Y(N26)
         );
  OAI2BB1X1M U19 ( .A0N(N24), .A1N(prescale_sampling[2]), .B0(n1), .Y(N9) );
  OR2X1M U20 ( .A(n1), .B(prescale_sampling[3]), .Y(n2) );
  OAI2BB1X1M U21 ( .A0N(n1), .A1N(prescale_sampling[3]), .B0(n2), .Y(N10) );
  XNOR2X1M U22 ( .A(prescale_sampling[4]), .B(n2), .Y(N11) );
  NOR3X1M U23 ( .A(prescale_sampling[4]), .B(prescale_sampling[5]), .C(n2), 
        .Y(N13) );
  OAI21X1M U24 ( .A0(prescale_sampling[4]), .A1(n2), .B0(prescale_sampling[5]), 
        .Y(n3) );
  NAND2BX1M U25 ( .AN(N13), .B(n3), .Y(N12) );
  CLKINVX1M U26 ( .A(N24), .Y(N16) );
  OAI2B2X1M U27 ( .A1N(RX_in_sampling), .A0(n4), .B0(n5), .B1(n6), .Y(n40) );
  OAI22X1M U28 ( .A0(n5), .A1(n7), .B0(n4), .B1(n6), .Y(n39) );
  OAI22X1M U29 ( .A0(n5), .A1(n8), .B0(n4), .B1(n7), .Y(n38) );
  CLKNAND2X2M U30 ( .A(data_samp_en), .B(n5), .Y(n4) );
  OAI2B1X1M U31 ( .A1N(n9), .A0(n10), .B0(data_samp_en), .Y(n5) );
  NOR2BX1M U32 ( .AN(data_samp_en), .B(n11), .Y(n37) );
  AOI21X1M U33 ( .A0(n12), .A1(RX_in_sampling), .B0(n13), .Y(n11) );
  MXI2X1M U34 ( .A(n14), .B(n15), .S0(n16), .Y(n13) );
  NOR4X1M U35 ( .A(n17), .B(n18), .C(n10), .D(n9), .Y(n16) );
  OAI211X1M U36 ( .A0(n19), .A1(n24), .B0(n25), .C0(n26), .Y(n9) );
  NAND4X1M U37 ( .A(n27), .B(n28), .C(n29), .D(n30), .Y(n26) );
  NOR3X1M U38 ( .A(n31), .B(n32), .C(n33), .Y(n30) );
  XNOR2X1M U39 ( .A(n34), .B(N16), .Y(n33) );
  XNOR2X1M U40 ( .A(n35), .B(N18), .Y(n32) );
  CLKINVX1M U41 ( .A(edge_cnt_sampling[2]), .Y(n35) );
  XNOR2X1M U42 ( .A(n36), .B(N17), .Y(n31) );
  CLKINVX1M U43 ( .A(edge_cnt_sampling[1]), .Y(n36) );
  XNOR2X1M U44 ( .A(edge_cnt_sampling[4]), .B(N20), .Y(n29) );
  XNOR2X1M U45 ( .A(edge_cnt_sampling[5]), .B(N21), .Y(n28) );
  XNOR2X1M U46 ( .A(edge_cnt_sampling[3]), .B(N19), .Y(n27) );
  NAND3X1M U47 ( .A(n41), .B(n42), .C(n43), .Y(n24) );
  XNOR2X1M U48 ( .A(edge_cnt_sampling[2]), .B(N10), .Y(n43) );
  XNOR2X1M U49 ( .A(edge_cnt_sampling[3]), .B(N11), .Y(n42) );
  XNOR2X1M U50 ( .A(edge_cnt_sampling[1]), .B(N9), .Y(n41) );
  NAND3X1M U51 ( .A(n44), .B(n45), .C(n46), .Y(n19) );
  XNOR2X1M U52 ( .A(edge_cnt_sampling[5]), .B(N13), .Y(n46) );
  XNOR2X1M U53 ( .A(edge_cnt_sampling[0]), .B(N16), .Y(n45) );
  XNOR2X1M U54 ( .A(edge_cnt_sampling[4]), .B(N12), .Y(n44) );
  CLKNAND2X2M U55 ( .A(n47), .B(n48), .Y(n18) );
  XNOR2X1M U56 ( .A(edge_cnt_sampling[0]), .B(N24), .Y(n48) );
  XNOR2X1M U57 ( .A(edge_cnt_sampling[1]), .B(N25), .Y(n47) );
  NAND4X1M U58 ( .A(n49), .B(n50), .C(n51), .D(n52), .Y(n17) );
  XNOR2X1M U59 ( .A(edge_cnt_sampling[2]), .B(N26), .Y(n52) );
  XNOR2X1M U60 ( .A(edge_cnt_sampling[3]), .B(N27), .Y(n51) );
  XNOR2X1M U61 ( .A(edge_cnt_sampling[4]), .B(N28), .Y(n50) );
  XNOR2X1M U62 ( .A(edge_cnt_sampling[5]), .B(N29), .Y(n49) );
  AOI21X1M U63 ( .A0(sampled_reg[1]), .A1(sampled_reg[0]), .B0(n53), .Y(n15)
         );
  AOI21X1M U64 ( .A0(n7), .A1(n6), .B0(n8), .Y(n53) );
  CLKINVX1M U65 ( .A(sampled_reg[2]), .Y(n8) );
  CLKINVX1M U66 ( .A(sampled_reg[0]), .Y(n6) );
  CLKINVX1M U67 ( .A(sampled_reg[1]), .Y(n7) );
  NAND2BX1M U68 ( .AN(n12), .B(sampled_out), .Y(n14) );
  NOR2BX1M U69 ( .AN(n10), .B(n25), .Y(n12) );
  NAND4X1M U70 ( .A(n54), .B(n55), .C(n56), .D(n57), .Y(n25) );
  NOR3X1M U71 ( .A(n58), .B(edge_cnt_sampling[5]), .C(n59), .Y(n57) );
  XNOR2X1M U72 ( .A(N24), .B(n34), .Y(n59) );
  CLKINVX1M U73 ( .A(edge_cnt_sampling[0]), .Y(n34) );
  XNOR2X1M U74 ( .A(prescale_sampling[5]), .B(n60), .Y(n58) );
  CLKINVX1M U75 ( .A(edge_cnt_sampling[4]), .Y(n60) );
  XNOR2X1M U76 ( .A(prescale_sampling[3]), .B(edge_cnt_sampling[2]), .Y(n56)
         );
  XNOR2X1M U77 ( .A(prescale_sampling[4]), .B(edge_cnt_sampling[3]), .Y(n55)
         );
  XNOR2X1M U78 ( .A(prescale_sampling[2]), .B(edge_cnt_sampling[1]), .Y(n54)
         );
  NOR4BX1M U79 ( .AN(n61), .B(prescale_sampling[3]), .C(prescale_sampling[4]), 
        .D(prescale_sampling[5]), .Y(n10) );
  OAI21X1M U80 ( .A0(N24), .A1(prescale_sampling[0]), .B0(prescale_sampling[2]), .Y(n61) );
endmodule


module deserializer_test_1 ( clk, rst, sampled_data_bit, deser_en, deser_out, 
        test_si, test_se );
  output [7:0] deser_out;
  input clk, rst, sampled_data_bit, deser_en, test_si, test_se;
  wire   n10, n12, n14, n16, n18, n20, n22, n24, n1, n2, n3, n4, n5, n6, n7,
         n8, n25;

  SDFFRQX2M \deser_out_reg[0]  ( .D(n10), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(deser_out[0]) );
  SDFFRQX2M \deser_out_reg[5]  ( .D(n20), .SI(deser_out[4]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(deser_out[5]) );
  SDFFRQX2M \deser_out_reg[1]  ( .D(n12), .SI(deser_out[0]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(deser_out[1]) );
  SDFFRQX2M \deser_out_reg[4]  ( .D(n18), .SI(deser_out[3]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(deser_out[4]) );
  SDFFRQX2M \deser_out_reg[7]  ( .D(n24), .SI(deser_out[6]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(deser_out[7]) );
  SDFFRQX2M \deser_out_reg[3]  ( .D(n16), .SI(deser_out[2]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(deser_out[3]) );
  SDFFRQX2M \deser_out_reg[6]  ( .D(n22), .SI(deser_out[5]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(deser_out[6]) );
  SDFFRQX2M \deser_out_reg[2]  ( .D(n14), .SI(deser_out[1]), .SE(test_se), 
        .CK(clk), .RN(rst), .Q(deser_out[2]) );
  INVX2M U2 ( .A(n1), .Y(n2) );
  OAI22X1M U3 ( .A0(n2), .A1(n8), .B0(n1), .B1(n25), .Y(n12) );
  OAI22X1M U4 ( .A0(n2), .A1(n7), .B0(n1), .B1(n8), .Y(n14) );
  OAI22X1M U5 ( .A0(n2), .A1(n6), .B0(n1), .B1(n7), .Y(n16) );
  OAI22X1M U6 ( .A0(n2), .A1(n5), .B0(n1), .B1(n6), .Y(n18) );
  OAI22X1M U7 ( .A0(n2), .A1(n4), .B0(n1), .B1(n5), .Y(n20) );
  OAI22X1M U8 ( .A0(n2), .A1(n3), .B0(n1), .B1(n4), .Y(n22) );
  BUFX2M U9 ( .A(deser_en), .Y(n1) );
  OAI2BB2X1M U10 ( .B0(n2), .B1(n25), .A0N(deser_out[0]), .A1N(n2), .Y(n10) );
  OAI2BB2X1M U11 ( .B0(n1), .B1(n3), .A0N(sampled_data_bit), .A1N(n1), .Y(n24)
         );
  INVX2M U12 ( .A(deser_out[2]), .Y(n8) );
  INVX2M U13 ( .A(deser_out[6]), .Y(n4) );
  INVX2M U14 ( .A(deser_out[7]), .Y(n3) );
  INVX2M U15 ( .A(deser_out[3]), .Y(n7) );
  INVX2M U16 ( .A(deser_out[1]), .Y(n25) );
  INVX2M U17 ( .A(deser_out[4]), .Y(n6) );
  INVX2M U26 ( .A(deser_out[5]), .Y(n5) );
endmodule


module parity_chk_RX_test_1 ( clk, rst, par_chk_en, par_typ, sampled_data, 
        sampled_par_bit, par_err, test_si, test_se );
  input [7:0] sampled_data;
  input clk, rst, par_chk_en, par_typ, sampled_par_bit, test_si, test_se;
  output par_err;
  wire   par_calc, N8, N11, n3, n4, n5, n6, n7;

  SDFFRQX2M par_calc_reg ( .D(N8), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_calc) );
  SDFFRQX2M par_err_reg ( .D(N11), .SI(par_calc), .SE(test_se), .CK(clk), .RN(
        rst), .Q(par_err) );
  NOR2BX2M U5 ( .AN(par_chk_en), .B(n7), .Y(N11) );
  XNOR2X2M U6 ( .A(sampled_par_bit), .B(par_calc), .Y(n7) );
  XNOR2X2M U7 ( .A(sampled_data[7]), .B(sampled_data[6]), .Y(n6) );
  XOR3XLM U8 ( .A(par_typ), .B(n3), .C(n4), .Y(N8) );
  XOR3XLM U9 ( .A(sampled_data[1]), .B(sampled_data[0]), .C(n5), .Y(n4) );
  XOR3XLM U10 ( .A(sampled_data[5]), .B(sampled_data[4]), .C(n6), .Y(n3) );
  XNOR2X2M U11 ( .A(sampled_data[3]), .B(sampled_data[2]), .Y(n5) );
endmodule


module start_chk_RX_test_1 ( strt_chk_en, sampled_strt_bit, rst, clk, 
        strt_glitch, test_si, test_se );
  input strt_chk_en, sampled_strt_bit, rst, clk, test_si, test_se;
  output strt_glitch;
  wire   N4;

  SDFFRQX2M strt_glitch_reg ( .D(N4), .SI(test_si), .SE(test_se), .CK(clk), 
        .RN(rst), .Q(strt_glitch) );
  AND2X2M U4 ( .A(strt_chk_en), .B(sampled_strt_bit), .Y(N4) );
endmodule


module stop_chk_RX_test_1 ( clk, rst, stp_chk_en, sampled_stp_bit, stp_err, 
        test_si, test_se );
  input clk, rst, stp_chk_en, sampled_stp_bit, test_si, test_se;
  output stp_err;
  wire   N4;

  SDFFRQX2M stp_err_reg ( .D(N4), .SI(test_si), .SE(test_se), .CK(clk), .RN(
        rst), .Q(stp_err) );
  NOR2BX2M U4 ( .AN(stp_chk_en), .B(sampled_stp_bit), .Y(N4) );
endmodule


module edge_bit_counter_test_1 ( clk, rst, enable_edge, prescale_edge, 
        edge_cnt_edge, bit_cnt_edge, test_si, test_se );
  input [5:0] prescale_edge;
  output [5:0] edge_cnt_edge;
  output [3:0] bit_cnt_edge;
  input clk, rst, enable_edge, test_si, test_se;
  wire   N7, N8, N9, N10, N11, N12, N17, N18, N19, N20, N21, N22, n19, n20,
         n21, n22, n23, n24, n26, n27, n28, n29, n30, \add_21/carry[5] ,
         \add_21/carry[4] , \add_21/carry[3] , \add_21/carry[2] , n1, n2, n3,
         n14, n15, n16, n17, n18, n25, n31, n32, n33, n34, n35, n36, n37, n38,
         n39, n40, n41, n42, n43, n44, n45, n46;

  SDFFRQX2M \bit_cnt_edge_reg[1]  ( .D(n28), .SI(bit_cnt_edge[0]), .SE(test_se), .CK(clk), .RN(rst), .Q(bit_cnt_edge[1]) );
  SDFFRQX2M \bit_cnt_edge_reg[2]  ( .D(n27), .SI(bit_cnt_edge[1]), .SE(test_se), .CK(clk), .RN(rst), .Q(bit_cnt_edge[2]) );
  SDFFRQX2M \bit_cnt_edge_reg[3]  ( .D(n30), .SI(bit_cnt_edge[2]), .SE(test_se), .CK(clk), .RN(rst), .Q(bit_cnt_edge[3]) );
  SDFFRQX2M \bit_cnt_edge_reg[0]  ( .D(n29), .SI(test_si), .SE(test_se), .CK(
        clk), .RN(rst), .Q(bit_cnt_edge[0]) );
  SDFFRQX2M \edge_cnt_edge_reg[5]  ( .D(n17), .SI(edge_cnt_edge[4]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(edge_cnt_edge[5]) );
  SDFFRQX2M \edge_cnt_edge_reg[0]  ( .D(n16), .SI(bit_cnt_edge[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(edge_cnt_edge[0]) );
  SDFFRQX2M \edge_cnt_edge_reg[4]  ( .D(n15), .SI(edge_cnt_edge[3]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(edge_cnt_edge[4]) );
  SDFFRQX2M \edge_cnt_edge_reg[2]  ( .D(n3), .SI(edge_cnt_edge[1]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(edge_cnt_edge[2]) );
  SDFFRQX2M \edge_cnt_edge_reg[3]  ( .D(n14), .SI(edge_cnt_edge[2]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(edge_cnt_edge[3]) );
  SDFFRQX2M \edge_cnt_edge_reg[1]  ( .D(n2), .SI(edge_cnt_edge[0]), .SE(
        test_se), .CK(clk), .RN(rst), .Q(edge_cnt_edge[1]) );
  AND4X2M U6 ( .A(n42), .B(n41), .C(n40), .D(n39), .Y(n1) );
  INVX2M U14 ( .A(n22), .Y(n43) );
  NOR3BX2M U15 ( .AN(n1), .B(n44), .C(n45), .Y(n20) );
  NOR2X2M U16 ( .A(n1), .B(n46), .Y(n26) );
  NOR2X2M U17 ( .A(n1), .B(n46), .Y(n22) );
  AND2X2M U18 ( .A(N18), .B(n26), .Y(n2) );
  AND2X2M U19 ( .A(N19), .B(n26), .Y(n3) );
  AND2X2M U20 ( .A(N20), .B(n26), .Y(n14) );
  AND2X2M U21 ( .A(N21), .B(n26), .Y(n15) );
  INVX2M U22 ( .A(enable_edge), .Y(n46) );
  OAI32X1M U23 ( .A0(n46), .A1(bit_cnt_edge[0]), .A2(n22), .B0(n44), .B1(n43), 
        .Y(n29) );
  OAI22X1M U24 ( .A0(n45), .A1(n43), .B0(n21), .B1(n46), .Y(n28) );
  AOI32X1M U25 ( .A0(n43), .A1(n45), .A2(bit_cnt_edge[0]), .B0(bit_cnt_edge[1]), .B1(n44), .Y(n21) );
  OR2X2M U26 ( .A(prescale_edge[1]), .B(prescale_edge[0]), .Y(n18) );
  AND2X2M U27 ( .A(N17), .B(n26), .Y(n16) );
  NOR2X2M U28 ( .A(n23), .B(n46), .Y(n30) );
  CLKXOR2X2M U29 ( .A(n24), .B(bit_cnt_edge[3]), .Y(n23) );
  NAND2X2M U30 ( .A(n20), .B(bit_cnt_edge[2]), .Y(n24) );
  NOR2X2M U31 ( .A(n19), .B(n46), .Y(n27) );
  XNOR2X2M U32 ( .A(n20), .B(bit_cnt_edge[2]), .Y(n19) );
  INVX2M U33 ( .A(prescale_edge[3]), .Y(n33) );
  AND2X2M U34 ( .A(N22), .B(n26), .Y(n17) );
  INVX2M U35 ( .A(bit_cnt_edge[0]), .Y(n44) );
  INVX2M U36 ( .A(bit_cnt_edge[1]), .Y(n45) );
  ADDHX1M U37 ( .A(edge_cnt_edge[1]), .B(edge_cnt_edge[0]), .CO(
        \add_21/carry[2] ), .S(N18) );
  ADDHX1M U38 ( .A(edge_cnt_edge[3]), .B(\add_21/carry[3] ), .CO(
        \add_21/carry[4] ), .S(N20) );
  ADDHX1M U39 ( .A(edge_cnt_edge[2]), .B(\add_21/carry[2] ), .CO(
        \add_21/carry[3] ), .S(N19) );
  ADDHX1M U40 ( .A(edge_cnt_edge[4]), .B(\add_21/carry[4] ), .CO(
        \add_21/carry[5] ), .S(N21) );
  CLKINVX1M U41 ( .A(prescale_edge[0]), .Y(N7) );
  OAI2BB1X1M U42 ( .A0N(prescale_edge[0]), .A1N(prescale_edge[1]), .B0(n18), 
        .Y(N8) );
  NOR2X1M U43 ( .A(n18), .B(prescale_edge[2]), .Y(n25) );
  AO21XLM U44 ( .A0(n18), .A1(prescale_edge[2]), .B0(n25), .Y(N9) );
  CLKNAND2X2M U45 ( .A(n25), .B(n33), .Y(n31) );
  OAI21X1M U46 ( .A0(n25), .A1(n33), .B0(n31), .Y(N10) );
  XNOR2X1M U47 ( .A(prescale_edge[4]), .B(n31), .Y(N11) );
  NOR2X1M U48 ( .A(prescale_edge[4]), .B(n31), .Y(n32) );
  CLKXOR2X2M U49 ( .A(prescale_edge[5]), .B(n32), .Y(N12) );
  CLKINVX1M U50 ( .A(edge_cnt_edge[0]), .Y(N17) );
  CLKXOR2X2M U51 ( .A(\add_21/carry[5] ), .B(edge_cnt_edge[5]), .Y(N22) );
  NOR2BX1M U52 ( .AN(edge_cnt_edge[0]), .B(N7), .Y(n34) );
  OAI2B2X1M U53 ( .A1N(N8), .A0(n34), .B0(edge_cnt_edge[1]), .B1(n34), .Y(n42)
         );
  NOR2BX1M U54 ( .AN(N7), .B(edge_cnt_edge[0]), .Y(n35) );
  OAI2B2X1M U55 ( .A1N(edge_cnt_edge[1]), .A0(n35), .B0(N8), .B1(n35), .Y(n41)
         );
  XNOR2X1M U56 ( .A(N12), .B(edge_cnt_edge[5]), .Y(n40) );
  CLKXOR2X2M U57 ( .A(N11), .B(edge_cnt_edge[4]), .Y(n38) );
  CLKXOR2X2M U58 ( .A(N9), .B(edge_cnt_edge[2]), .Y(n37) );
  CLKXOR2X2M U59 ( .A(N10), .B(edge_cnt_edge[3]), .Y(n36) );
  NOR3X1M U60 ( .A(n38), .B(n37), .C(n36), .Y(n39) );
endmodule


module TOP_RX_test_1 ( RX_IN, PRESCALE, CLK, RST, PAR_EN, PAR_TYP, P_DATA, 
        PARITY_ERR, STOP_ERR, DATA_VALID, test_si2, test_si1, test_so1, 
        test_se );
  input [5:0] PRESCALE;
  output [7:0] P_DATA;
  input RX_IN, CLK, RST, PAR_EN, PAR_TYP, test_si2, test_si1, test_se;
  output PARITY_ERR, STOP_ERR, DATA_VALID, test_so1;
  wire   Strt_Glitch, Par_Chk_En, Strt_Chk_En, Stp_Chk_En, Deser_En, Enable,
         Dat_Samp_En, Sampled_Bit, n1, n2, n4, n5;
  wire   [3:0] Bit_Cnt;
  wire   [5:0] Edge_Cnt;
  assign test_so1 = Strt_Glitch;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  FSM_RX_test_1 U0_FSM ( .RX_in_fsm(RX_IN), .clk(CLK), .rst(n1), .Par_en_fsm(
        PAR_EN), .prescale_fsm(PRESCALE), .edge_cnt_fsm(Edge_Cnt), 
        .bit_cnt_fsm(Bit_Cnt), .strt_glitch_fsm(Strt_Glitch), .par_err_fsm(
        PARITY_ERR), .stp_err_fsm(STOP_ERR), .par_chk_en(Par_Chk_En), 
        .strt_chk_en(Strt_Chk_En), .stp_chk_en(Stp_Chk_En), .deser_en_fsm(
        Deser_En), .enable(Enable), .data_samp_en(Dat_Samp_En), 
        .data_valid_fsm(DATA_VALID), .test_so(n4), .test_se(test_se) );
  data_sampling_RX_test_1 U0_DATA_SAMPLing ( .clk(CLK), .rst(n1), 
        .RX_in_sampling(RX_IN), .data_samp_en(Dat_Samp_En), 
        .prescale_sampling(PRESCALE), .edge_cnt_sampling(Edge_Cnt), 
        .sampled_out(Sampled_Bit), .test_si(test_si1), .test_so(n5), .test_se(
        test_se) );
  deserializer_test_1 U0_Deserializer ( .clk(CLK), .rst(n1), 
        .sampled_data_bit(Sampled_Bit), .deser_en(Deser_En), .deser_out(P_DATA), .test_si(n5), .test_se(test_se) );
  parity_chk_RX_test_1 U0_Parity_Chk ( .clk(CLK), .rst(n1), .par_chk_en(
        Par_Chk_En), .par_typ(PAR_TYP), .sampled_data(P_DATA), 
        .sampled_par_bit(Sampled_Bit), .par_err(PARITY_ERR), .test_si(n4), 
        .test_se(test_se) );
  start_chk_RX_test_1 U0_Start_Chk ( .strt_chk_en(Strt_Chk_En), 
        .sampled_strt_bit(Sampled_Bit), .rst(n1), .clk(CLK), .strt_glitch(
        Strt_Glitch), .test_si(PARITY_ERR), .test_se(test_se) );
  stop_chk_RX_test_1 U0_Stop_Chk ( .clk(CLK), .rst(n1), .stp_chk_en(Stp_Chk_En), .sampled_stp_bit(Sampled_Bit), .stp_err(STOP_ERR), .test_si(test_si2), 
        .test_se(test_se) );
  edge_bit_counter_test_1 U0_Edge_Bit_Counter ( .clk(CLK), .rst(n1), 
        .enable_edge(Enable), .prescale_edge(PRESCALE), .edge_cnt_edge(
        Edge_Cnt), .bit_cnt_edge(Bit_Cnt), .test_si(P_DATA[7]), .test_se(
        test_se) );
endmodule


module UART_test_1 ( RST, TX_CLK, RX_CLK, RX_IN_S, RX_OUT_P, RX_OUT_V, TX_IN_P, 
        TX_IN_V, TX_OUT_S, TX_OUT_V, Prescale, parity_enable, parity_type, 
        parity_error, framing_error, test_si2, test_si1, test_so1, test_se );
  output [7:0] RX_OUT_P;
  input [7:0] TX_IN_P;
  input [5:0] Prescale;
  input RST, TX_CLK, RX_CLK, RX_IN_S, TX_IN_V, parity_enable, parity_type,
         test_si2, test_si1, test_se;
  output RX_OUT_V, TX_OUT_S, TX_OUT_V, parity_error, framing_error, test_so1;
  wire   n1, n2, n5;

  INVX2M U1 ( .A(n2), .Y(n1) );
  INVX2M U2 ( .A(RST), .Y(n2) );
  Top_Tx_test_1 U0_UART_TX ( .P_DATA(TX_IN_P), .PAR_EN(parity_enable), 
        .Data_Valid(TX_IN_V), .PAR_TYP(parity_type), .CLK(TX_CLK), .RST(n1), 
        .TX_OUT(TX_OUT_S), .Busy(TX_OUT_V), .test_si(n5), .test_so(test_so1), 
        .test_se(test_se) );
  TOP_RX_test_1 U0_UART_RX ( .RX_IN(RX_IN_S), .PRESCALE(Prescale), .CLK(RX_CLK), .RST(n1), .PAR_EN(parity_enable), .PAR_TYP(parity_type), .P_DATA(RX_OUT_P), 
        .PARITY_ERR(parity_error), .STOP_ERR(framing_error), .DATA_VALID(
        RX_OUT_V), .test_si2(test_si2), .test_si1(test_si1), .test_so1(n5), 
        .test_se(test_se) );
endmodule


module Sys_Ctrl_test_1 ( Sys_clk, Sys_rst, RX_P_Data, RX_D_VLd, Rd_Data, 
        Rd_Data_VLd, ALU_out, ALU_out_VLd, FIFO_full, Address, Wr_En, Rd_En, 
        Wr_Data, ALU_fun, ALU_EN, CLK_ALU_EN, WR_Data_FIFO, WR_INC, test_si, 
        test_so, test_se );
  input [7:0] RX_P_Data;
  input [7:0] Rd_Data;
  input [15:0] ALU_out;
  output [3:0] Address;
  output [7:0] Wr_Data;
  output [3:0] ALU_fun;
  output [7:0] WR_Data_FIFO;
  input Sys_clk, Sys_rst, RX_D_VLd, Rd_Data_VLd, ALU_out_VLd, FIFO_full,
         test_si, test_se;
  output Wr_En, Rd_En, ALU_EN, CLK_ALU_EN, WR_INC, test_so;
  wire   rd_got, n1, n13, n30, n31, n33, n34, n39, n40, n41, n42, n43, n44,
         n46, n47, n48, n49, n50, n51, n52, n53, n55, n57, n61, n62, n63, n64,
         n66, n68, n69, n70, n72, n73, n74, n76, n77, n78, n79, n81, n82, n83,
         n84, n85, n86, n88, n89, n90, n91, n92, n103, n105, n107, n109, n111,
         n113, n115, n117, n119, n121, n123, n125, n127, n129, n131, n133,
         n135, n137, n139, n141, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n14, n15,
         n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29,
         n32, n35, n36, n37, n38, n45, n54, n56, n58, n59, n60, n65, n67, n71,
         n75, n80, n87, n93, n94, n95, n96, n98, n99, n100, n101, n102, n104,
         n106, n108;
  wire   [3:0] C_S;
  wire   [3:0] addr_reg;
  wire   [15:0] ALU_out_reg;
  wire   [3:0] N_S;
  assign test_so = rd_got;

  SDFFRQX2M \ALU_out_reg_reg[8]  ( .D(n127), .SI(ALU_out_reg[7]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[8]) );
  SDFFRQX2M \ALU_out_reg_reg[9]  ( .D(n125), .SI(ALU_out_reg[8]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[9]) );
  SDFFRQX2M \ALU_out_reg_reg[10]  ( .D(n123), .SI(ALU_out_reg[9]), .SE(test_se), .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[10]) );
  SDFFRQX2M \ALU_out_reg_reg[11]  ( .D(n121), .SI(ALU_out_reg[10]), .SE(
        test_se), .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[11]) );
  SDFFRQX2M \ALU_out_reg_reg[12]  ( .D(n119), .SI(ALU_out_reg[11]), .SE(
        test_se), .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[12]) );
  SDFFRQX2M \ALU_out_reg_reg[13]  ( .D(n117), .SI(ALU_out_reg[12]), .SE(
        test_se), .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[13]) );
  SDFFRQX2M \ALU_out_reg_reg[14]  ( .D(n115), .SI(ALU_out_reg[13]), .SE(
        test_se), .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[14]) );
  SDFFRQX2M \ALU_out_reg_reg[15]  ( .D(n113), .SI(ALU_out_reg[14]), .SE(
        test_se), .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[15]) );
  SDFFRQX2M \ALU_out_reg_reg[1]  ( .D(n141), .SI(ALU_out_reg[0]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[1]) );
  SDFFRQX2M \ALU_out_reg_reg[2]  ( .D(n139), .SI(ALU_out_reg[1]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[2]) );
  SDFFRQX2M \ALU_out_reg_reg[3]  ( .D(n137), .SI(ALU_out_reg[2]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[3]) );
  SDFFRQX2M \ALU_out_reg_reg[4]  ( .D(n135), .SI(ALU_out_reg[3]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[4]) );
  SDFFRQX2M \ALU_out_reg_reg[5]  ( .D(n133), .SI(ALU_out_reg[4]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[5]) );
  SDFFRQX2M \ALU_out_reg_reg[6]  ( .D(n131), .SI(ALU_out_reg[5]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[6]) );
  SDFFRQX2M \ALU_out_reg_reg[7]  ( .D(n129), .SI(ALU_out_reg[6]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(ALU_out_reg[7]) );
  SDFFRQX2M \ALU_out_reg_reg[0]  ( .D(n111), .SI(test_si), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(ALU_out_reg[0]) );
  SDFFRX1M \rd_data_reg_reg[7]  ( .D(n155), .SI(n99), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(n98), .QN(n23) );
  SDFFRX1M \rd_data_reg_reg[6]  ( .D(n156), .SI(n100), .SE(test_se), .CK(
        Sys_clk), .RN(Sys_rst), .Q(n99), .QN(n24) );
  SDFFRX1M \rd_data_reg_reg[5]  ( .D(n157), .SI(n101), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(n100), .QN(n25) );
  SDFFRX1M \rd_data_reg_reg[4]  ( .D(n158), .SI(n102), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(n101), .QN(n26) );
  SDFFRX1M \rd_data_reg_reg[3]  ( .D(n159), .SI(n104), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(n102), .QN(n27) );
  SDFFRX1M \rd_data_reg_reg[2]  ( .D(n160), .SI(n106), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(n104), .QN(n28) );
  SDFFRX1M \rd_data_reg_reg[1]  ( .D(n161), .SI(n108), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(n106), .QN(n29) );
  SDFFRX1M \rd_data_reg_reg[0]  ( .D(n162), .SI(addr_reg[3]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(n108), .QN(n32) );
  SDFFRQX2M \addr_reg_reg[3]  ( .D(n107), .SI(addr_reg[2]), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(addr_reg[3]) );
  SDFFRQX2M \addr_reg_reg[2]  ( .D(n105), .SI(addr_reg[1]), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(addr_reg[2]) );
  SDFFRQX2M rd_got_reg ( .D(n163), .SI(n98), .SE(test_se), .CK(Sys_clk), .RN(
        n2), .Q(rd_got) );
  SDFFRQX2M \addr_reg_reg[0]  ( .D(n109), .SI(C_S[3]), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(addr_reg[0]) );
  SDFFRQX2M \addr_reg_reg[1]  ( .D(n103), .SI(addr_reg[0]), .SE(test_se), .CK(
        Sys_clk), .RN(n2), .Q(addr_reg[1]) );
  SDFFRQX2M \C_S_reg[2]  ( .D(N_S[2]), .SI(C_S[1]), .SE(test_se), .CK(Sys_clk), 
        .RN(n2), .Q(C_S[2]) );
  SDFFRQX2M \C_S_reg[3]  ( .D(N_S[3]), .SI(C_S[2]), .SE(test_se), .CK(Sys_clk), 
        .RN(n2), .Q(C_S[3]) );
  SDFFRQX2M \C_S_reg[0]  ( .D(N_S[0]), .SI(ALU_out_reg[15]), .SE(test_se), 
        .CK(Sys_clk), .RN(n2), .Q(C_S[0]) );
  SDFFRQX2M \C_S_reg[1]  ( .D(N_S[1]), .SI(C_S[0]), .SE(test_se), .CK(Sys_clk), 
        .RN(n2), .Q(C_S[1]) );
  OAI222X1M U3 ( .A0(n96), .A1(n19), .B0(n60), .B1(n73), .C0(n95), .C1(n11), 
        .Y(Address[0]) );
  OAI22X1M U4 ( .A0(n93), .A1(n11), .B0(n67), .B1(n73), .Y(Address[2]) );
  OAI22X1M U5 ( .A0(n87), .A1(n11), .B0(n65), .B1(n73), .Y(Address[3]) );
  OAI22X1M U6 ( .A0(n94), .A1(n11), .B0(n71), .B1(n73), .Y(Address[1]) );
  NOR2X2M U7 ( .A(n87), .B(n20), .Y(ALU_fun[3]) );
  NOR2X2M U8 ( .A(n95), .B(n20), .Y(ALU_fun[0]) );
  NOR3X2M U9 ( .A(n74), .B(C_S[1]), .C(n96), .Y(n1) );
  INVX2M U10 ( .A(Rd_En), .Y(n11) );
  NAND2X2M U11 ( .A(n10), .B(n5), .Y(n43) );
  INVX2M U12 ( .A(FIFO_full), .Y(n5) );
  INVX2M U13 ( .A(ALU_EN), .Y(n20) );
  INVX2M U14 ( .A(n3), .Y(n2) );
  NOR2X2M U15 ( .A(n78), .B(n96), .Y(Rd_En) );
  INVX2M U16 ( .A(n39), .Y(n19) );
  NOR3X2M U17 ( .A(n53), .B(FIFO_full), .C(n21), .Y(n40) );
  NAND4BX1M U18 ( .AN(n40), .B(n41), .C(n42), .D(n43), .Y(WR_INC) );
  NOR2BX2M U19 ( .AN(n33), .B(FIFO_full), .Y(n31) );
  INVX2M U20 ( .A(n4), .Y(Wr_En) );
  NOR2X2M U21 ( .A(n4), .B(n80), .Y(Wr_Data[4]) );
  NOR2X2M U22 ( .A(n4), .B(n75), .Y(Wr_Data[6]) );
  NOR2X2M U23 ( .A(n95), .B(n4), .Y(Wr_Data[0]) );
  NOR2X2M U24 ( .A(n94), .B(n4), .Y(Wr_Data[1]) );
  NOR2X2M U25 ( .A(n87), .B(n4), .Y(Wr_Data[3]) );
  NOR2X2M U26 ( .A(n93), .B(n4), .Y(Wr_Data[2]) );
  INVX2M U27 ( .A(n30), .Y(n6) );
  INVX2M U28 ( .A(n73), .Y(n14) );
  INVX2M U29 ( .A(n41), .Y(n7) );
  INVX2M U30 ( .A(n55), .Y(n10) );
  INVX2M U31 ( .A(n61), .Y(n9) );
  NOR2X2M U32 ( .A(n81), .B(n96), .Y(ALU_EN) );
  OAI22X1M U33 ( .A0(n1), .A1(n65), .B0(n12), .B1(n87), .Y(n107) );
  OAI22X1M U34 ( .A0(n1), .A1(n71), .B0(n12), .B1(n94), .Y(n103) );
  OAI22X1M U35 ( .A0(n1), .A1(n60), .B0(n12), .B1(n95), .Y(n109) );
  OAI22X1M U36 ( .A0(n1), .A1(n67), .B0(n12), .B1(n93), .Y(n105) );
  INVX2M U37 ( .A(n1), .Y(n12) );
  INVX2M U38 ( .A(n13), .Y(n8) );
  OAI21X2M U39 ( .A0(n31), .A1(n35), .B0(n30), .Y(n163) );
  NAND3X2M U40 ( .A(n55), .B(n20), .C(n57), .Y(N_S[3]) );
  OAI21X2M U41 ( .A0(FIFO_full), .A1(n21), .B0(n15), .Y(n57) );
  INVX2M U42 ( .A(n53), .Y(n15) );
  INVX2M U43 ( .A(n86), .Y(n17) );
  NOR2X2M U44 ( .A(n94), .B(n20), .Y(ALU_fun[1]) );
  NOR2X2M U45 ( .A(n93), .B(n20), .Y(ALU_fun[2]) );
  INVX2M U46 ( .A(Sys_rst), .Y(n3) );
  NAND3X2M U47 ( .A(n53), .B(n20), .C(n55), .Y(CLK_ALU_EN) );
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
  INVX2M U58 ( .A(RX_P_Data[0]), .Y(n95) );
  INVX2M U59 ( .A(RX_D_VLd), .Y(n96) );
  INVX2M U60 ( .A(RX_P_Data[1]), .Y(n94) );
  BUFX2M U61 ( .A(n34), .Y(n4) );
  OAI31X1M U62 ( .A0(n9), .A1(n14), .A2(n39), .B0(RX_D_VLd), .Y(n34) );
  NAND2X2M U63 ( .A(n31), .B(Rd_Data_VLd), .Y(n41) );
  INVX2M U64 ( .A(addr_reg[1]), .Y(n71) );
  INVX2M U65 ( .A(addr_reg[0]), .Y(n60) );
  NAND4X2M U66 ( .A(n19), .B(n11), .C(n61), .D(n62), .Y(N_S[2]) );
  AOI211X2M U67 ( .A0(n33), .A1(n63), .B0(n64), .C0(n16), .Y(n62) );
  INVX2M U68 ( .A(n66), .Y(n16) );
  OAI21X2M U69 ( .A0(rd_got), .A1(Rd_Data_VLd), .B0(n5), .Y(n63) );
  NAND4BX1M U70 ( .AN(n69), .B(n19), .C(n12), .D(n70), .Y(N_S[1]) );
  AOI221XLM U71 ( .A0(n9), .A1(RX_D_VLd), .B0(n14), .B1(n96), .C0(n72), .Y(n70) );
  OAI31X1M U72 ( .A0(n5), .A1(n53), .A2(n21), .B0(n43), .Y(n69) );
  OAI21X2M U73 ( .A0(RX_D_VLd), .A1(n81), .B0(n82), .Y(n64) );
  NAND4X2M U74 ( .A(RX_P_Data[4]), .B(RX_P_Data[6]), .C(n83), .D(n84), .Y(n82)
         );
  NOR4X1M U75 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n93), .D(n95), .Y(n84)
         );
  NAND4X2M U76 ( .A(Rd_Data_VLd), .B(FIFO_full), .C(n33), .D(n35), .Y(n30) );
  OAI211X2M U77 ( .A0(RX_D_VLd), .A1(n78), .B0(n79), .C0(n18), .Y(n72) );
  INVX2M U78 ( .A(n64), .Y(n18) );
  NAND4X2M U79 ( .A(n93), .B(n75), .C(RX_P_Data[0]), .D(n85), .Y(n79) );
  NOR2X2M U80 ( .A(n80), .B(n86), .Y(n85) );
  NOR2BX2M U81 ( .AN(RX_P_Data[5]), .B(n4), .Y(Wr_Data[5]) );
  NOR2BX2M U82 ( .AN(RX_P_Data[7]), .B(n4), .Y(Wr_Data[7]) );
  NAND4X2M U83 ( .A(C_S[3]), .B(C_S[0]), .C(n21), .D(n22), .Y(n55) );
  OAI221X1M U84 ( .A0(n32), .A1(n42), .B0(n59), .B1(n43), .C0(n52), .Y(
        WR_Data_FIFO[0]) );
  AOI22X1M U85 ( .A0(n40), .A1(ALU_out_reg[8]), .B0(n7), .B1(Rd_Data[0]), .Y(
        n52) );
  OAI221X1M U86 ( .A0(n29), .A1(n42), .B0(n36), .B1(n43), .C0(n51), .Y(
        WR_Data_FIFO[1]) );
  AOI22X1M U87 ( .A0(n40), .A1(ALU_out_reg[9]), .B0(n7), .B1(Rd_Data[1]), .Y(
        n51) );
  OAI221X1M U88 ( .A0(n28), .A1(n42), .B0(n37), .B1(n43), .C0(n50), .Y(
        WR_Data_FIFO[2]) );
  AOI22X1M U89 ( .A0(n40), .A1(ALU_out_reg[10]), .B0(n7), .B1(Rd_Data[2]), .Y(
        n50) );
  OAI221X1M U90 ( .A0(n27), .A1(n42), .B0(n38), .B1(n43), .C0(n49), .Y(
        WR_Data_FIFO[3]) );
  AOI22X1M U91 ( .A0(n40), .A1(ALU_out_reg[11]), .B0(n7), .B1(Rd_Data[3]), .Y(
        n49) );
  OAI221X1M U92 ( .A0(n26), .A1(n42), .B0(n45), .B1(n43), .C0(n48), .Y(
        WR_Data_FIFO[4]) );
  AOI22X1M U93 ( .A0(n40), .A1(ALU_out_reg[12]), .B0(n7), .B1(Rd_Data[4]), .Y(
        n48) );
  OAI221X1M U94 ( .A0(n25), .A1(n42), .B0(n54), .B1(n43), .C0(n47), .Y(
        WR_Data_FIFO[5]) );
  AOI22X1M U95 ( .A0(n40), .A1(ALU_out_reg[13]), .B0(n7), .B1(Rd_Data[5]), .Y(
        n47) );
  OAI221X1M U96 ( .A0(n24), .A1(n42), .B0(n56), .B1(n43), .C0(n46), .Y(
        WR_Data_FIFO[6]) );
  AOI22X1M U97 ( .A0(n40), .A1(ALU_out_reg[14]), .B0(n7), .B1(Rd_Data[6]), .Y(
        n46) );
  OAI221X1M U98 ( .A0(n23), .A1(n42), .B0(n58), .B1(n43), .C0(n44), .Y(
        WR_Data_FIFO[7]) );
  AOI22X1M U99 ( .A0(n40), .A1(ALU_out_reg[15]), .B0(n7), .B1(Rd_Data[7]), .Y(
        n44) );
  NAND4X2M U100 ( .A(RX_P_Data[6]), .B(RX_P_Data[2]), .C(n83), .D(n90), .Y(n66) );
  NOR4X1M U101 ( .A(RX_P_Data[5]), .B(RX_P_Data[4]), .C(RX_P_Data[1]), .D(
        RX_P_Data[0]), .Y(n90) );
  AND4X2M U102 ( .A(n91), .B(RX_P_Data[3]), .C(RX_P_Data[7]), .D(n92), .Y(n83)
         );
  NOR3X2M U103 ( .A(n96), .B(C_S[3]), .C(C_S[1]), .Y(n92) );
  NAND2X2M U104 ( .A(C_S[3]), .B(n91), .Y(n53) );
  INVX2M U105 ( .A(RX_P_Data[2]), .Y(n93) );
  NAND3X2M U106 ( .A(C_S[0]), .B(n21), .C(n68), .Y(n61) );
  NAND3X2M U107 ( .A(RX_P_Data[5]), .B(RX_P_Data[1]), .C(n83), .Y(n86) );
  OAI2BB2X1M U108 ( .B0(n6), .B1(n32), .A0N(n6), .A1N(Rd_Data[0]), .Y(n162) );
  OAI2BB2X1M U109 ( .B0(n6), .B1(n29), .A0N(n6), .A1N(Rd_Data[1]), .Y(n161) );
  OAI2BB2X1M U110 ( .B0(n6), .B1(n28), .A0N(n6), .A1N(Rd_Data[2]), .Y(n160) );
  OAI2BB2X1M U111 ( .B0(n6), .B1(n27), .A0N(n6), .A1N(Rd_Data[3]), .Y(n159) );
  OAI2BB2X1M U112 ( .B0(n6), .B1(n26), .A0N(n6), .A1N(Rd_Data[4]), .Y(n158) );
  OAI2BB2X1M U113 ( .B0(n6), .B1(n25), .A0N(n6), .A1N(Rd_Data[5]), .Y(n157) );
  OAI2BB2X1M U114 ( .B0(n6), .B1(n24), .A0N(n6), .A1N(Rd_Data[6]), .Y(n156) );
  OAI2BB2X1M U115 ( .B0(n6), .B1(n23), .A0N(n6), .A1N(Rd_Data[7]), .Y(n155) );
  NAND4X2M U116 ( .A(n66), .B(n13), .C(n76), .D(n77), .Y(N_S[0]) );
  AOI31X2M U117 ( .A0(n17), .A1(n95), .A2(n88), .B0(n89), .Y(n76) );
  AOI221XLM U118 ( .A0(n10), .A1(FIFO_full), .B0(n39), .B1(RX_D_VLd), .C0(n72), 
        .Y(n77) );
  NOR3X2M U119 ( .A(RX_P_Data[2]), .B(RX_P_Data[6]), .C(RX_P_Data[4]), .Y(n88)
         );
  INVX2M U120 ( .A(RX_P_Data[3]), .Y(n87) );
  INVX2M U121 ( .A(addr_reg[2]), .Y(n67) );
  INVX2M U122 ( .A(addr_reg[3]), .Y(n65) );
  NAND3X2M U123 ( .A(n15), .B(n21), .C(ALU_out_VLd), .Y(n13) );
  AOI21X2M U124 ( .A0(n61), .A1(n74), .B0(RX_D_VLd), .Y(n89) );
  OAI2BB2X1M U125 ( .B0(n8), .B1(n59), .A0N(ALU_out[0]), .A1N(n8), .Y(n111) );
  OAI2BB2X1M U126 ( .B0(n8), .B1(n58), .A0N(ALU_out[7]), .A1N(n8), .Y(n129) );
  OAI2BB2X1M U127 ( .B0(n8), .B1(n56), .A0N(ALU_out[6]), .A1N(n8), .Y(n131) );
  OAI2BB2X1M U128 ( .B0(n8), .B1(n54), .A0N(ALU_out[5]), .A1N(n8), .Y(n133) );
  OAI2BB2X1M U129 ( .B0(n8), .B1(n45), .A0N(ALU_out[4]), .A1N(n8), .Y(n135) );
  OAI2BB2X1M U130 ( .B0(n8), .B1(n38), .A0N(ALU_out[3]), .A1N(n8), .Y(n137) );
  OAI2BB2X1M U131 ( .B0(n8), .B1(n37), .A0N(ALU_out[2]), .A1N(n8), .Y(n139) );
  OAI2BB2X1M U132 ( .B0(n8), .B1(n36), .A0N(ALU_out[1]), .A1N(n8), .Y(n141) );
  NAND3X2M U133 ( .A(n68), .B(C_S[0]), .C(C_S[1]), .Y(n81) );
  INVX2M U134 ( .A(RX_P_Data[4]), .Y(n80) );
  INVX2M U135 ( .A(RX_P_Data[6]), .Y(n75) );
  INVX2M U136 ( .A(rd_got), .Y(n35) );
  AO22X1M U137 ( .A0(n13), .A1(ALU_out_reg[15]), .B0(ALU_out[15]), .B1(n8), 
        .Y(n113) );
  AO22X1M U138 ( .A0(n13), .A1(ALU_out_reg[14]), .B0(ALU_out[14]), .B1(n8), 
        .Y(n115) );
  AO22X1M U139 ( .A0(n13), .A1(ALU_out_reg[13]), .B0(ALU_out[13]), .B1(n8), 
        .Y(n117) );
  AO22X1M U140 ( .A0(n13), .A1(ALU_out_reg[12]), .B0(ALU_out[12]), .B1(n8), 
        .Y(n119) );
  AO22X1M U141 ( .A0(n13), .A1(ALU_out_reg[11]), .B0(ALU_out[11]), .B1(n8), 
        .Y(n121) );
  AO22X1M U142 ( .A0(n13), .A1(ALU_out_reg[10]), .B0(ALU_out[10]), .B1(n8), 
        .Y(n123) );
  AO22X1M U143 ( .A0(n13), .A1(ALU_out_reg[9]), .B0(ALU_out[9]), .B1(n8), .Y(
        n125) );
  AO22X1M U144 ( .A0(n13), .A1(ALU_out_reg[8]), .B0(ALU_out[8]), .B1(n8), .Y(
        n127) );
  INVX2M U145 ( .A(ALU_out_reg[0]), .Y(n59) );
  INVX2M U146 ( .A(ALU_out_reg[1]), .Y(n36) );
  INVX2M U147 ( .A(ALU_out_reg[2]), .Y(n37) );
  INVX2M U148 ( .A(ALU_out_reg[3]), .Y(n38) );
  INVX2M U149 ( .A(ALU_out_reg[4]), .Y(n45) );
  INVX2M U150 ( .A(ALU_out_reg[5]), .Y(n54) );
  INVX2M U151 ( .A(ALU_out_reg[6]), .Y(n56) );
  INVX2M U152 ( .A(ALU_out_reg[7]), .Y(n58) );
endmodule


module Register_file_test_1 ( Wr_Data, address, Wr_En, Rd_En, clk, rst, 
        Rd_Data_VLD, Rd_Data, Reg0, Reg1, Reg2, Reg3, test_si2, test_si1, 
        test_so2, test_so1, test_se );
  input [7:0] Wr_Data;
  input [3:0] address;
  output [7:0] Rd_Data;
  output [7:0] Reg0;
  output [7:0] Reg1;
  output [7:0] Reg2;
  output [7:0] Reg3;
  input Wr_En, Rd_En, clk, rst, test_si2, test_si1, test_se;
  output Rd_Data_VLD, test_so2, test_so1;
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
         N42, N43, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n442, n443, n444, n445;
  assign N11 = address[0];
  assign N12 = address[1];
  assign N13 = address[2];
  assign N14 = address[3];
  assign test_so2 = \mem[15][7] ;
  assign test_so1 = \mem[4][3] ;

  SDFFRQX2M \mem_reg[15][7]  ( .D(n312), .SI(\mem[15][6] ), .SE(n444), .CK(clk), .RN(n415), .Q(\mem[15][7] ) );
  SDFFRQX2M \mem_reg[15][6]  ( .D(n311), .SI(\mem[15][5] ), .SE(n443), .CK(clk), .RN(n415), .Q(\mem[15][6] ) );
  SDFFRQX2M \mem_reg[15][5]  ( .D(n310), .SI(\mem[15][4] ), .SE(n442), .CK(clk), .RN(n414), .Q(\mem[15][5] ) );
  SDFFRQX2M \mem_reg[15][4]  ( .D(n309), .SI(\mem[15][3] ), .SE(n445), .CK(clk), .RN(n414), .Q(\mem[15][4] ) );
  SDFFRQX2M \mem_reg[15][3]  ( .D(n308), .SI(\mem[15][2] ), .SE(n444), .CK(clk), .RN(n414), .Q(\mem[15][3] ) );
  SDFFRQX2M \mem_reg[15][2]  ( .D(n307), .SI(\mem[15][1] ), .SE(n443), .CK(clk), .RN(n414), .Q(\mem[15][2] ) );
  SDFFRQX2M \mem_reg[15][1]  ( .D(n306), .SI(\mem[15][0] ), .SE(n442), .CK(clk), .RN(n414), .Q(\mem[15][1] ) );
  SDFFRQX2M \mem_reg[15][0]  ( .D(n305), .SI(\mem[14][7] ), .SE(n445), .CK(clk), .RN(n414), .Q(\mem[15][0] ) );
  SDFFRQX2M \mem_reg[13][7]  ( .D(n296), .SI(\mem[13][6] ), .SE(n444), .CK(clk), .RN(n415), .Q(\mem[13][7] ) );
  SDFFRQX2M \mem_reg[13][6]  ( .D(n295), .SI(\mem[13][5] ), .SE(n443), .CK(clk), .RN(n415), .Q(\mem[13][6] ) );
  SDFFRQX2M \mem_reg[13][5]  ( .D(n294), .SI(\mem[13][4] ), .SE(n442), .CK(clk), .RN(n415), .Q(\mem[13][5] ) );
  SDFFRQX2M \mem_reg[13][4]  ( .D(n293), .SI(\mem[13][3] ), .SE(n445), .CK(clk), .RN(n415), .Q(\mem[13][4] ) );
  SDFFRQX2M \mem_reg[13][3]  ( .D(n292), .SI(\mem[13][2] ), .SE(n444), .CK(clk), .RN(n415), .Q(\mem[13][3] ) );
  SDFFRQX2M \mem_reg[13][2]  ( .D(n291), .SI(\mem[13][1] ), .SE(n443), .CK(clk), .RN(n415), .Q(\mem[13][2] ) );
  SDFFRQX2M \mem_reg[13][1]  ( .D(n290), .SI(\mem[13][0] ), .SE(n442), .CK(clk), .RN(n415), .Q(\mem[13][1] ) );
  SDFFRQX2M \mem_reg[13][0]  ( .D(n289), .SI(\mem[12][7] ), .SE(n445), .CK(clk), .RN(n415), .Q(\mem[13][0] ) );
  SDFFRQX2M \mem_reg[11][7]  ( .D(n280), .SI(\mem[11][6] ), .SE(n444), .CK(clk), .RN(n416), .Q(\mem[11][7] ) );
  SDFFRQX2M \mem_reg[11][6]  ( .D(n279), .SI(\mem[11][5] ), .SE(n443), .CK(clk), .RN(n416), .Q(\mem[11][6] ) );
  SDFFRQX2M \mem_reg[11][5]  ( .D(n278), .SI(\mem[11][4] ), .SE(n442), .CK(clk), .RN(n416), .Q(\mem[11][5] ) );
  SDFFRQX2M \mem_reg[11][4]  ( .D(n277), .SI(\mem[11][3] ), .SE(n445), .CK(clk), .RN(n416), .Q(\mem[11][4] ) );
  SDFFRQX2M \mem_reg[11][3]  ( .D(n276), .SI(\mem[11][2] ), .SE(n444), .CK(clk), .RN(n416), .Q(\mem[11][3] ) );
  SDFFRQX2M \mem_reg[11][2]  ( .D(n275), .SI(\mem[11][1] ), .SE(n443), .CK(clk), .RN(n416), .Q(\mem[11][2] ) );
  SDFFRQX2M \mem_reg[11][1]  ( .D(n274), .SI(\mem[11][0] ), .SE(n442), .CK(clk), .RN(n416), .Q(\mem[11][1] ) );
  SDFFRQX2M \mem_reg[11][0]  ( .D(n273), .SI(\mem[10][7] ), .SE(n445), .CK(clk), .RN(n416), .Q(\mem[11][0] ) );
  SDFFRQX2M \mem_reg[9][7]  ( .D(n264), .SI(\mem[9][6] ), .SE(n444), .CK(clk), 
        .RN(n417), .Q(\mem[9][7] ) );
  SDFFRQX2M \mem_reg[9][6]  ( .D(n263), .SI(\mem[9][5] ), .SE(n443), .CK(clk), 
        .RN(n417), .Q(\mem[9][6] ) );
  SDFFRQX2M \mem_reg[9][5]  ( .D(n262), .SI(\mem[9][4] ), .SE(n442), .CK(clk), 
        .RN(n417), .Q(\mem[9][5] ) );
  SDFFRQX2M \mem_reg[9][4]  ( .D(n261), .SI(\mem[9][3] ), .SE(n445), .CK(clk), 
        .RN(n417), .Q(\mem[9][4] ) );
  SDFFRQX2M \mem_reg[9][3]  ( .D(n260), .SI(\mem[9][2] ), .SE(n444), .CK(clk), 
        .RN(n417), .Q(\mem[9][3] ) );
  SDFFRQX2M \mem_reg[9][2]  ( .D(n259), .SI(\mem[9][1] ), .SE(n443), .CK(clk), 
        .RN(n417), .Q(\mem[9][2] ) );
  SDFFRQX2M \mem_reg[9][1]  ( .D(n258), .SI(\mem[9][0] ), .SE(n442), .CK(clk), 
        .RN(n419), .Q(\mem[9][1] ) );
  SDFFRQX2M \mem_reg[9][0]  ( .D(n257), .SI(\mem[8][7] ), .SE(n445), .CK(clk), 
        .RN(n419), .Q(\mem[9][0] ) );
  SDFFRQX2M \mem_reg[7][7]  ( .D(n248), .SI(\mem[7][6] ), .SE(n444), .CK(clk), 
        .RN(n418), .Q(\mem[7][7] ) );
  SDFFRQX2M \mem_reg[7][6]  ( .D(n247), .SI(\mem[7][5] ), .SE(n443), .CK(clk), 
        .RN(n418), .Q(\mem[7][6] ) );
  SDFFRQX2M \mem_reg[7][5]  ( .D(n246), .SI(\mem[7][4] ), .SE(n442), .CK(clk), 
        .RN(n418), .Q(\mem[7][5] ) );
  SDFFRQX2M \mem_reg[7][4]  ( .D(n245), .SI(\mem[7][3] ), .SE(n445), .CK(clk), 
        .RN(n418), .Q(\mem[7][4] ) );
  SDFFRQX2M \mem_reg[7][3]  ( .D(n244), .SI(\mem[7][2] ), .SE(n444), .CK(clk), 
        .RN(n420), .Q(\mem[7][3] ) );
  SDFFRQX2M \mem_reg[7][2]  ( .D(n243), .SI(\mem[7][1] ), .SE(n443), .CK(clk), 
        .RN(n420), .Q(\mem[7][2] ) );
  SDFFRQX2M \mem_reg[7][1]  ( .D(n242), .SI(\mem[7][0] ), .SE(n442), .CK(clk), 
        .RN(n419), .Q(\mem[7][1] ) );
  SDFFRQX2M \mem_reg[7][0]  ( .D(n241), .SI(\mem[6][7] ), .SE(n445), .CK(clk), 
        .RN(n419), .Q(\mem[7][0] ) );
  SDFFRQX2M \mem_reg[5][7]  ( .D(n232), .SI(\mem[5][6] ), .SE(n444), .CK(clk), 
        .RN(n419), .Q(\mem[5][7] ) );
  SDFFRQX2M \mem_reg[5][6]  ( .D(n231), .SI(\mem[5][5] ), .SE(n443), .CK(clk), 
        .RN(n421), .Q(\mem[5][6] ) );
  SDFFRQX2M \mem_reg[5][5]  ( .D(n230), .SI(\mem[5][4] ), .SE(n442), .CK(clk), 
        .RN(n421), .Q(\mem[5][5] ) );
  SDFFRQX2M \mem_reg[5][4]  ( .D(n229), .SI(\mem[5][3] ), .SE(n445), .CK(clk), 
        .RN(n421), .Q(\mem[5][4] ) );
  SDFFRQX2M \mem_reg[5][3]  ( .D(n228), .SI(\mem[5][2] ), .SE(n444), .CK(clk), 
        .RN(n420), .Q(\mem[5][3] ) );
  SDFFRQX2M \mem_reg[5][2]  ( .D(n227), .SI(\mem[5][1] ), .SE(n443), .CK(clk), 
        .RN(n420), .Q(\mem[5][2] ) );
  SDFFRQX2M \mem_reg[5][1]  ( .D(n226), .SI(\mem[5][0] ), .SE(n442), .CK(clk), 
        .RN(n420), .Q(\mem[5][1] ) );
  SDFFRQX2M \mem_reg[5][0]  ( .D(n225), .SI(\mem[4][7] ), .SE(n445), .CK(clk), 
        .RN(n420), .Q(\mem[5][0] ) );
  SDFFRQX2M \mem_reg[14][7]  ( .D(n304), .SI(\mem[14][6] ), .SE(n444), .CK(clk), .RN(n414), .Q(\mem[14][7] ) );
  SDFFRQX2M \mem_reg[14][6]  ( .D(n303), .SI(\mem[14][5] ), .SE(n443), .CK(clk), .RN(n414), .Q(\mem[14][6] ) );
  SDFFRQX2M \mem_reg[14][5]  ( .D(n302), .SI(\mem[14][4] ), .SE(n442), .CK(clk), .RN(n414), .Q(\mem[14][5] ) );
  SDFFRQX2M \mem_reg[14][4]  ( .D(n301), .SI(\mem[14][3] ), .SE(n445), .CK(clk), .RN(n419), .Q(\mem[14][4] ) );
  SDFFRQX2M \mem_reg[14][3]  ( .D(n300), .SI(\mem[14][2] ), .SE(n444), .CK(clk), .RN(n416), .Q(\mem[14][3] ) );
  SDFFRQX2M \mem_reg[14][2]  ( .D(n299), .SI(\mem[14][1] ), .SE(n443), .CK(clk), .RN(n416), .Q(\mem[14][2] ) );
  SDFFRQX2M \mem_reg[14][1]  ( .D(n298), .SI(\mem[14][0] ), .SE(n442), .CK(clk), .RN(n415), .Q(\mem[14][1] ) );
  SDFFRQX2M \mem_reg[14][0]  ( .D(n297), .SI(\mem[13][7] ), .SE(n445), .CK(clk), .RN(n415), .Q(\mem[14][0] ) );
  SDFFRQX2M \mem_reg[12][7]  ( .D(n288), .SI(\mem[12][6] ), .SE(n444), .CK(clk), .RN(n415), .Q(\mem[12][7] ) );
  SDFFRQX2M \mem_reg[12][6]  ( .D(n287), .SI(\mem[12][5] ), .SE(n443), .CK(clk), .RN(n415), .Q(\mem[12][6] ) );
  SDFFRQX2M \mem_reg[12][5]  ( .D(n286), .SI(\mem[12][4] ), .SE(n442), .CK(clk), .RN(n417), .Q(\mem[12][5] ) );
  SDFFRQX2M \mem_reg[12][4]  ( .D(n285), .SI(\mem[12][3] ), .SE(n445), .CK(clk), .RN(n417), .Q(\mem[12][4] ) );
  SDFFRQX2M \mem_reg[12][3]  ( .D(n284), .SI(\mem[12][2] ), .SE(n444), .CK(clk), .RN(n416), .Q(\mem[12][3] ) );
  SDFFRQX2M \mem_reg[12][2]  ( .D(n283), .SI(\mem[12][1] ), .SE(n443), .CK(clk), .RN(n416), .Q(\mem[12][2] ) );
  SDFFRQX2M \mem_reg[12][1]  ( .D(n282), .SI(\mem[12][0] ), .SE(n442), .CK(clk), .RN(n416), .Q(\mem[12][1] ) );
  SDFFRQX2M \mem_reg[12][0]  ( .D(n281), .SI(\mem[11][7] ), .SE(n445), .CK(clk), .RN(n416), .Q(\mem[12][0] ) );
  SDFFRQX2M \mem_reg[10][7]  ( .D(n272), .SI(\mem[10][6] ), .SE(n444), .CK(clk), .RN(n418), .Q(\mem[10][7] ) );
  SDFFRQX2M \mem_reg[10][6]  ( .D(n271), .SI(\mem[10][5] ), .SE(n443), .CK(clk), .RN(n418), .Q(\mem[10][6] ) );
  SDFFRQX2M \mem_reg[10][5]  ( .D(n270), .SI(\mem[10][4] ), .SE(n442), .CK(clk), .RN(n417), .Q(\mem[10][5] ) );
  SDFFRQX2M \mem_reg[10][4]  ( .D(n269), .SI(\mem[10][3] ), .SE(n445), .CK(clk), .RN(n417), .Q(\mem[10][4] ) );
  SDFFRQX2M \mem_reg[10][3]  ( .D(n268), .SI(\mem[10][2] ), .SE(n444), .CK(clk), .RN(n417), .Q(\mem[10][3] ) );
  SDFFRQX2M \mem_reg[10][2]  ( .D(n267), .SI(\mem[10][1] ), .SE(n443), .CK(clk), .RN(n417), .Q(\mem[10][2] ) );
  SDFFRQX2M \mem_reg[10][1]  ( .D(n266), .SI(\mem[10][0] ), .SE(n442), .CK(clk), .RN(n417), .Q(\mem[10][1] ) );
  SDFFRQX2M \mem_reg[10][0]  ( .D(n265), .SI(\mem[9][7] ), .SE(n445), .CK(clk), 
        .RN(n417), .Q(\mem[10][0] ) );
  SDFFRQX2M \mem_reg[8][7]  ( .D(n256), .SI(\mem[8][6] ), .SE(n444), .CK(clk), 
        .RN(n418), .Q(\mem[8][7] ) );
  SDFFRQX2M \mem_reg[8][6]  ( .D(n255), .SI(\mem[8][5] ), .SE(n443), .CK(clk), 
        .RN(n418), .Q(\mem[8][6] ) );
  SDFFRQX2M \mem_reg[8][5]  ( .D(n254), .SI(\mem[8][4] ), .SE(n442), .CK(clk), 
        .RN(n418), .Q(\mem[8][5] ) );
  SDFFRQX2M \mem_reg[8][4]  ( .D(n253), .SI(\mem[8][3] ), .SE(n445), .CK(clk), 
        .RN(n418), .Q(\mem[8][4] ) );
  SDFFRQX2M \mem_reg[8][3]  ( .D(n252), .SI(\mem[8][2] ), .SE(n444), .CK(clk), 
        .RN(n418), .Q(\mem[8][3] ) );
  SDFFRQX2M \mem_reg[8][2]  ( .D(n251), .SI(\mem[8][1] ), .SE(n443), .CK(clk), 
        .RN(n418), .Q(\mem[8][2] ) );
  SDFFRQX2M \mem_reg[8][1]  ( .D(n250), .SI(\mem[8][0] ), .SE(n442), .CK(clk), 
        .RN(n418), .Q(\mem[8][1] ) );
  SDFFRQX2M \mem_reg[8][0]  ( .D(n249), .SI(\mem[7][7] ), .SE(n445), .CK(clk), 
        .RN(n418), .Q(\mem[8][0] ) );
  SDFFRQX2M \mem_reg[6][7]  ( .D(n240), .SI(\mem[6][6] ), .SE(n444), .CK(clk), 
        .RN(n419), .Q(\mem[6][7] ) );
  SDFFRQX2M \mem_reg[6][6]  ( .D(n239), .SI(\mem[6][5] ), .SE(n443), .CK(clk), 
        .RN(n419), .Q(\mem[6][6] ) );
  SDFFRQX2M \mem_reg[6][5]  ( .D(n238), .SI(\mem[6][4] ), .SE(n442), .CK(clk), 
        .RN(n419), .Q(\mem[6][5] ) );
  SDFFRQX2M \mem_reg[6][4]  ( .D(n237), .SI(\mem[6][3] ), .SE(n445), .CK(clk), 
        .RN(n419), .Q(\mem[6][4] ) );
  SDFFRQX2M \mem_reg[6][3]  ( .D(n236), .SI(\mem[6][2] ), .SE(n444), .CK(clk), 
        .RN(n419), .Q(\mem[6][3] ) );
  SDFFRQX2M \mem_reg[6][2]  ( .D(n235), .SI(\mem[6][1] ), .SE(n443), .CK(clk), 
        .RN(n419), .Q(\mem[6][2] ) );
  SDFFRQX2M \mem_reg[6][1]  ( .D(n234), .SI(\mem[6][0] ), .SE(n442), .CK(clk), 
        .RN(n419), .Q(\mem[6][1] ) );
  SDFFRQX2M \mem_reg[6][0]  ( .D(n233), .SI(\mem[5][7] ), .SE(n445), .CK(clk), 
        .RN(n419), .Q(\mem[6][0] ) );
  SDFFRQX2M \mem_reg[4][7]  ( .D(n224), .SI(\mem[4][6] ), .SE(n444), .CK(clk), 
        .RN(n420), .Q(\mem[4][7] ) );
  SDFFRQX2M \mem_reg[4][6]  ( .D(n223), .SI(\mem[4][5] ), .SE(n443), .CK(clk), 
        .RN(n420), .Q(\mem[4][6] ) );
  SDFFRQX2M \mem_reg[4][5]  ( .D(n222), .SI(\mem[4][4] ), .SE(n442), .CK(clk), 
        .RN(n420), .Q(\mem[4][5] ) );
  SDFFRQX2M \mem_reg[4][4]  ( .D(n221), .SI(test_si2), .SE(n445), .CK(clk), 
        .RN(n420), .Q(\mem[4][4] ) );
  SDFFRQX2M \mem_reg[4][3]  ( .D(n220), .SI(\mem[4][2] ), .SE(n444), .CK(clk), 
        .RN(n420), .Q(\mem[4][3] ) );
  SDFFRQX2M \mem_reg[4][2]  ( .D(n219), .SI(\mem[4][1] ), .SE(n443), .CK(clk), 
        .RN(n420), .Q(\mem[4][2] ) );
  SDFFRQX2M \mem_reg[4][1]  ( .D(n218), .SI(\mem[4][0] ), .SE(n442), .CK(clk), 
        .RN(n420), .Q(\mem[4][1] ) );
  SDFFRQX2M \mem_reg[4][0]  ( .D(n217), .SI(Reg3[7]), .SE(n445), .CK(clk), 
        .RN(n422), .Q(\mem[4][0] ) );
  SDFFRQX2M \mem_reg[3][0]  ( .D(n209), .SI(Reg2[7]), .SE(n444), .CK(clk), 
        .RN(n421), .Q(Reg3[0]) );
  SDFFRQX2M \mem_reg[2][1]  ( .D(n202), .SI(Reg2[0]), .SE(n443), .CK(clk), 
        .RN(n421), .Q(Reg2[1]) );
  SDFFRQX2M \Rd_Data_reg[7]  ( .D(n184), .SI(Rd_Data[6]), .SE(n442), .CK(clk), 
        .RN(n421), .Q(Rd_Data[7]) );
  SDFFRQX2M \Rd_Data_reg[6]  ( .D(n183), .SI(Rd_Data[5]), .SE(n445), .CK(clk), 
        .RN(n423), .Q(Rd_Data[6]) );
  SDFFRQX2M \Rd_Data_reg[5]  ( .D(n182), .SI(Rd_Data[4]), .SE(n444), .CK(clk), 
        .RN(n423), .Q(Rd_Data[5]) );
  SDFFRQX2M \Rd_Data_reg[4]  ( .D(n181), .SI(Rd_Data[3]), .SE(n443), .CK(clk), 
        .RN(n423), .Q(Rd_Data[4]) );
  SDFFRQX2M \Rd_Data_reg[3]  ( .D(n180), .SI(Rd_Data[2]), .SE(n442), .CK(clk), 
        .RN(n423), .Q(Rd_Data[3]) );
  SDFFRQX2M \Rd_Data_reg[2]  ( .D(n179), .SI(Rd_Data[1]), .SE(n445), .CK(clk), 
        .RN(n423), .Q(Rd_Data[2]) );
  SDFFRQX2M \Rd_Data_reg[1]  ( .D(n178), .SI(Rd_Data[0]), .SE(n444), .CK(clk), 
        .RN(n423), .Q(Rd_Data[1]) );
  SDFFRQX2M \Rd_Data_reg[0]  ( .D(n177), .SI(Rd_Data_VLD), .SE(n443), .CK(clk), 
        .RN(n420), .Q(Rd_Data[0]) );
  SDFFRQX2M \mem_reg[1][6]  ( .D(n199), .SI(Reg1[5]), .SE(n442), .CK(clk), 
        .RN(n422), .Q(Reg1[6]) );
  SDFFRQX2M \mem_reg[0][7]  ( .D(n192), .SI(Reg0[6]), .SE(n445), .CK(clk), 
        .RN(n422), .Q(Reg0[7]) );
  SDFFRQX2M \mem_reg[0][6]  ( .D(n191), .SI(Reg0[5]), .SE(n444), .CK(clk), 
        .RN(n422), .Q(Reg0[6]) );
  SDFFRQX2M \mem_reg[0][5]  ( .D(n190), .SI(Reg0[4]), .SE(n443), .CK(clk), 
        .RN(n422), .Q(Reg0[5]) );
  SDFFRQX2M \mem_reg[0][4]  ( .D(n189), .SI(Reg0[3]), .SE(n442), .CK(clk), 
        .RN(n422), .Q(Reg0[4]) );
  SDFFRQX2M \mem_reg[0][3]  ( .D(n188), .SI(Reg0[2]), .SE(n445), .CK(clk), 
        .RN(n422), .Q(Reg0[3]) );
  SDFFRQX2M \mem_reg[0][2]  ( .D(n187), .SI(Reg0[1]), .SE(n444), .CK(clk), 
        .RN(n423), .Q(Reg0[2]) );
  SDFFRQX2M \mem_reg[0][1]  ( .D(n186), .SI(Reg0[0]), .SE(n443), .CK(clk), 
        .RN(n414), .Q(Reg0[1]) );
  SDFFRQX2M \mem_reg[0][0]  ( .D(n185), .SI(Rd_Data[7]), .SE(n442), .CK(clk), 
        .RN(n423), .Q(Reg0[0]) );
  SDFFSQX2M \mem_reg[2][0]  ( .D(n201), .SI(Reg1[7]), .SE(test_se), .CK(clk), 
        .SN(n414), .Q(Reg2[0]) );
  SDFFRQX2M \mem_reg[1][5]  ( .D(n198), .SI(Reg1[4]), .SE(n445), .CK(clk), 
        .RN(n423), .Q(Reg1[5]) );
  SDFFRQX2M \mem_reg[1][4]  ( .D(n197), .SI(Reg1[3]), .SE(n444), .CK(clk), 
        .RN(n422), .Q(Reg1[4]) );
  SDFFRQX2M \mem_reg[1][1]  ( .D(n194), .SI(Reg1[0]), .SE(n443), .CK(clk), 
        .RN(n422), .Q(Reg1[1]) );
  SDFFRQX2M \mem_reg[1][7]  ( .D(n200), .SI(Reg1[6]), .SE(n442), .CK(clk), 
        .RN(n423), .Q(Reg1[7]) );
  SDFFRQX2M \mem_reg[1][3]  ( .D(n196), .SI(Reg1[2]), .SE(n445), .CK(clk), 
        .RN(n422), .Q(Reg1[3]) );
  SDFFRQX2M \mem_reg[1][2]  ( .D(n195), .SI(Reg1[1]), .SE(n444), .CK(clk), 
        .RN(n422), .Q(Reg1[2]) );
  SDFFRQX2M \mem_reg[1][0]  ( .D(n193), .SI(Reg0[7]), .SE(n443), .CK(clk), 
        .RN(n422), .Q(Reg1[0]) );
  SDFFSQX2M \mem_reg[3][5]  ( .D(n214), .SI(Reg3[4]), .SE(n442), .CK(clk), 
        .SN(n414), .Q(Reg3[5]) );
  SDFFRQX2M \mem_reg[3][4]  ( .D(n213), .SI(Reg3[3]), .SE(n442), .CK(clk), 
        .RN(n421), .Q(Reg3[4]) );
  SDFFRQX2M \mem_reg[3][7]  ( .D(n216), .SI(Reg3[6]), .SE(n445), .CK(clk), 
        .RN(n422), .Q(Reg3[7]) );
  SDFFRQX2M \mem_reg[3][6]  ( .D(n215), .SI(Reg3[5]), .SE(n444), .CK(clk), 
        .RN(n422), .Q(Reg3[6]) );
  SDFFRQX2M Rd_Data_VLD_reg ( .D(n313), .SI(test_si1), .SE(n443), .CK(clk), 
        .RN(n423), .Q(Rd_Data_VLD) );
  SDFFRQX2M \mem_reg[3][2]  ( .D(n211), .SI(Reg3[1]), .SE(n442), .CK(clk), 
        .RN(n421), .Q(Reg3[2]) );
  SDFFRQX2M \mem_reg[3][3]  ( .D(n212), .SI(Reg3[2]), .SE(n445), .CK(clk), 
        .RN(n421), .Q(Reg3[3]) );
  SDFFRQX2M \mem_reg[3][1]  ( .D(n210), .SI(Reg3[0]), .SE(n444), .CK(clk), 
        .RN(n421), .Q(Reg3[1]) );
  SDFFSQX2M \mem_reg[2][7]  ( .D(n208), .SI(Reg2[6]), .SE(n445), .CK(clk), 
        .SN(n414), .Q(Reg2[7]) );
  SDFFRQX2M \mem_reg[2][6]  ( .D(n207), .SI(Reg2[5]), .SE(n443), .CK(clk), 
        .RN(n421), .Q(Reg2[6]) );
  SDFFRQX2M \mem_reg[2][2]  ( .D(n203), .SI(Reg2[1]), .SE(n442), .CK(clk), 
        .RN(n423), .Q(Reg2[2]) );
  SDFFRQX2M \mem_reg[2][3]  ( .D(n204), .SI(Reg2[2]), .SE(n445), .CK(clk), 
        .RN(n421), .Q(Reg2[3]) );
  SDFFRQX2M \mem_reg[2][4]  ( .D(n205), .SI(Reg2[3]), .SE(n444), .CK(clk), 
        .RN(n421), .Q(Reg2[4]) );
  SDFFRQX2M \mem_reg[2][5]  ( .D(n206), .SI(Reg2[4]), .SE(n443), .CK(clk), 
        .RN(n421), .Q(Reg2[5]) );
  NOR2BX2M U140 ( .AN(n175), .B(N11), .Y(n167) );
  NOR2BX2M U141 ( .AN(n163), .B(N11), .Y(n152) );
  NOR2BX2M U142 ( .AN(N13), .B(N12), .Y(n159) );
  NOR2BX2M U143 ( .AN(N13), .B(n438), .Y(n162) );
  NOR2X2M U144 ( .A(n438), .B(N13), .Y(n156) );
  NOR2X2M U145 ( .A(N12), .B(N13), .Y(n151) );
  INVX2M U146 ( .A(Wr_Data[5]), .Y(n434) );
  INVX2M U147 ( .A(Wr_Data[7]), .Y(n436) );
  INVX2M U148 ( .A(n138), .Y(n410) );
  OR2X2M U149 ( .A(n438), .B(n407), .Y(n138) );
  INVX2M U150 ( .A(n140), .Y(n413) );
  INVX2M U151 ( .A(n141), .Y(n411) );
  INVX2M U152 ( .A(n139), .Y(n412) );
  NOR2BX2M U153 ( .AN(n163), .B(n407), .Y(n154) );
  NOR2BX2M U154 ( .AN(n175), .B(n407), .Y(n169) );
  NAND2X2M U155 ( .A(n156), .B(n152), .Y(n155) );
  NAND2X2M U156 ( .A(n159), .B(n152), .Y(n158) );
  NAND2X2M U157 ( .A(n162), .B(n152), .Y(n161) );
  NAND2X2M U158 ( .A(n154), .B(n151), .Y(n153) );
  NAND2X2M U159 ( .A(n156), .B(n154), .Y(n157) );
  NAND2X2M U160 ( .A(n159), .B(n154), .Y(n160) );
  NAND2X2M U161 ( .A(n162), .B(n154), .Y(n164) );
  NAND2X2M U162 ( .A(n167), .B(n151), .Y(n166) );
  NAND2X2M U163 ( .A(n169), .B(n151), .Y(n168) );
  NAND2X2M U164 ( .A(n167), .B(n156), .Y(n170) );
  NAND2X2M U165 ( .A(n169), .B(n156), .Y(n171) );
  NAND2X2M U166 ( .A(n167), .B(n159), .Y(n172) );
  NAND2X2M U167 ( .A(n169), .B(n159), .Y(n173) );
  NAND2X2M U168 ( .A(n167), .B(n162), .Y(n174) );
  NAND2X2M U169 ( .A(n169), .B(n162), .Y(n176) );
  NAND2X2M U170 ( .A(n151), .B(n152), .Y(n150) );
  INVX2M U171 ( .A(n149), .Y(n437) );
  OR2X2M U172 ( .A(n407), .B(N12), .Y(n139) );
  OR2X2M U173 ( .A(N11), .B(N12), .Y(n140) );
  OR2X2M U174 ( .A(n438), .B(N11), .Y(n141) );
  INVX2M U175 ( .A(N11), .Y(n407) );
  NOR2BX2M U176 ( .AN(Wr_En), .B(Rd_En), .Y(n165) );
  NOR2BX2M U177 ( .AN(n165), .B(N14), .Y(n163) );
  INVX2M U178 ( .A(N13), .Y(n408) );
  INVX2M U179 ( .A(N14), .Y(n409) );
  AND2X2M U180 ( .A(N14), .B(n165), .Y(n175) );
  NAND2BX2M U181 ( .AN(Wr_En), .B(Rd_En), .Y(n149) );
  INVX2M U182 ( .A(N12), .Y(n438) );
  BUFX2M U183 ( .A(n424), .Y(n422) );
  BUFX2M U184 ( .A(n425), .Y(n421) );
  BUFX2M U185 ( .A(n425), .Y(n420) );
  BUFX2M U186 ( .A(n426), .Y(n418) );
  BUFX2M U187 ( .A(n427), .Y(n417) );
  BUFX2M U188 ( .A(n427), .Y(n416) );
  BUFX2M U189 ( .A(n426), .Y(n419) );
  BUFX2M U190 ( .A(n428), .Y(n415) );
  BUFX2M U191 ( .A(n428), .Y(n414) );
  BUFX2M U192 ( .A(n424), .Y(n423) );
  INVX2M U193 ( .A(Wr_Data[4]), .Y(n433) );
  INVX2M U194 ( .A(Wr_Data[6]), .Y(n435) );
  INVX2M U195 ( .A(Wr_Data[0]), .Y(n429) );
  INVX2M U196 ( .A(Wr_Data[1]), .Y(n430) );
  INVX2M U197 ( .A(Wr_Data[3]), .Y(n432) );
  INVX2M U198 ( .A(Wr_Data[2]), .Y(n431) );
  BUFX2M U199 ( .A(rst), .Y(n425) );
  BUFX2M U200 ( .A(rst), .Y(n427) );
  BUFX2M U201 ( .A(rst), .Y(n426) );
  BUFX2M U202 ( .A(rst), .Y(n428) );
  BUFX2M U203 ( .A(rst), .Y(n424) );
  AO22X1M U204 ( .A0(N43), .A1(n437), .B0(Rd_Data[0]), .B1(n149), .Y(n177) );
  AO22X1M U205 ( .A0(N42), .A1(n437), .B0(Rd_Data[1]), .B1(n149), .Y(n178) );
  AO22X1M U206 ( .A0(N41), .A1(n437), .B0(Rd_Data[2]), .B1(n149), .Y(n179) );
  AO22X1M U207 ( .A0(N40), .A1(n437), .B0(Rd_Data[3]), .B1(n149), .Y(n180) );
  AO22X1M U208 ( .A0(N39), .A1(n437), .B0(Rd_Data[4]), .B1(n149), .Y(n181) );
  AO22X1M U209 ( .A0(N38), .A1(n437), .B0(Rd_Data[5]), .B1(n149), .Y(n182) );
  AO22X1M U210 ( .A0(N37), .A1(n437), .B0(Rd_Data[6]), .B1(n149), .Y(n183) );
  AO22X1M U211 ( .A0(N36), .A1(n437), .B0(Rd_Data[7]), .B1(n149), .Y(n184) );
  OAI2BB2X1M U212 ( .B0(n429), .B1(n166), .A0N(\mem[8][0] ), .A1N(n166), .Y(
        n249) );
  OAI2BB2X1M U213 ( .B0(n430), .B1(n166), .A0N(\mem[8][1] ), .A1N(n166), .Y(
        n250) );
  OAI2BB2X1M U214 ( .B0(n431), .B1(n166), .A0N(\mem[8][2] ), .A1N(n166), .Y(
        n251) );
  OAI2BB2X1M U215 ( .B0(n432), .B1(n166), .A0N(\mem[8][3] ), .A1N(n166), .Y(
        n252) );
  OAI2BB2X1M U216 ( .B0(n433), .B1(n166), .A0N(\mem[8][4] ), .A1N(n166), .Y(
        n253) );
  OAI2BB2X1M U217 ( .B0(n434), .B1(n166), .A0N(\mem[8][5] ), .A1N(n166), .Y(
        n254) );
  OAI2BB2X1M U218 ( .B0(n435), .B1(n166), .A0N(\mem[8][6] ), .A1N(n166), .Y(
        n255) );
  OAI2BB2X1M U219 ( .B0(n436), .B1(n166), .A0N(\mem[8][7] ), .A1N(n166), .Y(
        n256) );
  OAI2BB2X1M U220 ( .B0(n429), .B1(n170), .A0N(\mem[10][0] ), .A1N(n170), .Y(
        n265) );
  OAI2BB2X1M U221 ( .B0(n430), .B1(n170), .A0N(\mem[10][1] ), .A1N(n170), .Y(
        n266) );
  OAI2BB2X1M U222 ( .B0(n431), .B1(n170), .A0N(\mem[10][2] ), .A1N(n170), .Y(
        n267) );
  OAI2BB2X1M U223 ( .B0(n432), .B1(n170), .A0N(\mem[10][3] ), .A1N(n170), .Y(
        n268) );
  OAI2BB2X1M U224 ( .B0(n433), .B1(n170), .A0N(\mem[10][4] ), .A1N(n170), .Y(
        n269) );
  OAI2BB2X1M U225 ( .B0(n434), .B1(n170), .A0N(\mem[10][5] ), .A1N(n170), .Y(
        n270) );
  OAI2BB2X1M U226 ( .B0(n435), .B1(n170), .A0N(\mem[10][6] ), .A1N(n170), .Y(
        n271) );
  OAI2BB2X1M U227 ( .B0(n436), .B1(n170), .A0N(\mem[10][7] ), .A1N(n170), .Y(
        n272) );
  OAI2BB2X1M U228 ( .B0(n429), .B1(n172), .A0N(\mem[12][0] ), .A1N(n172), .Y(
        n281) );
  OAI2BB2X1M U229 ( .B0(n430), .B1(n172), .A0N(\mem[12][1] ), .A1N(n172), .Y(
        n282) );
  OAI2BB2X1M U230 ( .B0(n431), .B1(n172), .A0N(\mem[12][2] ), .A1N(n172), .Y(
        n283) );
  OAI2BB2X1M U231 ( .B0(n432), .B1(n172), .A0N(\mem[12][3] ), .A1N(n172), .Y(
        n284) );
  OAI2BB2X1M U232 ( .B0(n433), .B1(n172), .A0N(\mem[12][4] ), .A1N(n172), .Y(
        n285) );
  OAI2BB2X1M U233 ( .B0(n434), .B1(n172), .A0N(\mem[12][5] ), .A1N(n172), .Y(
        n286) );
  OAI2BB2X1M U234 ( .B0(n435), .B1(n172), .A0N(\mem[12][6] ), .A1N(n172), .Y(
        n287) );
  OAI2BB2X1M U235 ( .B0(n436), .B1(n172), .A0N(\mem[12][7] ), .A1N(n172), .Y(
        n288) );
  OAI2BB2X1M U236 ( .B0(n429), .B1(n174), .A0N(\mem[14][0] ), .A1N(n174), .Y(
        n297) );
  OAI2BB2X1M U237 ( .B0(n430), .B1(n174), .A0N(\mem[14][1] ), .A1N(n174), .Y(
        n298) );
  OAI2BB2X1M U238 ( .B0(n431), .B1(n174), .A0N(\mem[14][2] ), .A1N(n174), .Y(
        n299) );
  OAI2BB2X1M U239 ( .B0(n432), .B1(n174), .A0N(\mem[14][3] ), .A1N(n174), .Y(
        n300) );
  OAI2BB2X1M U240 ( .B0(n433), .B1(n174), .A0N(\mem[14][4] ), .A1N(n174), .Y(
        n301) );
  OAI2BB2X1M U241 ( .B0(n434), .B1(n174), .A0N(\mem[14][5] ), .A1N(n174), .Y(
        n302) );
  OAI2BB2X1M U242 ( .B0(n435), .B1(n174), .A0N(\mem[14][6] ), .A1N(n174), .Y(
        n303) );
  OAI2BB2X1M U243 ( .B0(n436), .B1(n174), .A0N(\mem[14][7] ), .A1N(n174), .Y(
        n304) );
  OAI2BB2X1M U244 ( .B0(n150), .B1(n429), .A0N(Reg0[0]), .A1N(n150), .Y(n185)
         );
  OAI2BB2X1M U245 ( .B0(n150), .B1(n430), .A0N(Reg0[1]), .A1N(n150), .Y(n186)
         );
  OAI2BB2X1M U246 ( .B0(n150), .B1(n431), .A0N(Reg0[2]), .A1N(n150), .Y(n187)
         );
  OAI2BB2X1M U247 ( .B0(n150), .B1(n432), .A0N(Reg0[3]), .A1N(n150), .Y(n188)
         );
  OAI2BB2X1M U248 ( .B0(n150), .B1(n433), .A0N(Reg0[4]), .A1N(n150), .Y(n189)
         );
  OAI2BB2X1M U249 ( .B0(n150), .B1(n434), .A0N(Reg0[5]), .A1N(n150), .Y(n190)
         );
  OAI2BB2X1M U250 ( .B0(n150), .B1(n435), .A0N(Reg0[6]), .A1N(n150), .Y(n191)
         );
  OAI2BB2X1M U251 ( .B0(n150), .B1(n436), .A0N(Reg0[7]), .A1N(n150), .Y(n192)
         );
  OAI2BB2X1M U252 ( .B0(n429), .B1(n153), .A0N(Reg1[0]), .A1N(n153), .Y(n193)
         );
  OAI2BB2X1M U253 ( .B0(n430), .B1(n153), .A0N(Reg1[1]), .A1N(n153), .Y(n194)
         );
  OAI2BB2X1M U254 ( .B0(n431), .B1(n153), .A0N(Reg1[2]), .A1N(n153), .Y(n195)
         );
  OAI2BB2X1M U255 ( .B0(n432), .B1(n153), .A0N(Reg1[3]), .A1N(n153), .Y(n196)
         );
  OAI2BB2X1M U256 ( .B0(n433), .B1(n153), .A0N(Reg1[4]), .A1N(n153), .Y(n197)
         );
  OAI2BB2X1M U257 ( .B0(n434), .B1(n153), .A0N(Reg1[5]), .A1N(n153), .Y(n198)
         );
  OAI2BB2X1M U258 ( .B0(n435), .B1(n153), .A0N(Reg1[6]), .A1N(n153), .Y(n199)
         );
  OAI2BB2X1M U259 ( .B0(n436), .B1(n153), .A0N(Reg1[7]), .A1N(n153), .Y(n200)
         );
  OAI2BB2X1M U260 ( .B0(n429), .B1(n158), .A0N(\mem[4][0] ), .A1N(n158), .Y(
        n217) );
  OAI2BB2X1M U261 ( .B0(n430), .B1(n158), .A0N(\mem[4][1] ), .A1N(n158), .Y(
        n218) );
  OAI2BB2X1M U262 ( .B0(n431), .B1(n158), .A0N(\mem[4][2] ), .A1N(n158), .Y(
        n219) );
  OAI2BB2X1M U263 ( .B0(n432), .B1(n158), .A0N(\mem[4][3] ), .A1N(n158), .Y(
        n220) );
  OAI2BB2X1M U264 ( .B0(n433), .B1(n158), .A0N(\mem[4][4] ), .A1N(n158), .Y(
        n221) );
  OAI2BB2X1M U265 ( .B0(n434), .B1(n158), .A0N(\mem[4][5] ), .A1N(n158), .Y(
        n222) );
  OAI2BB2X1M U266 ( .B0(n435), .B1(n158), .A0N(\mem[4][6] ), .A1N(n158), .Y(
        n223) );
  OAI2BB2X1M U267 ( .B0(n436), .B1(n158), .A0N(\mem[4][7] ), .A1N(n158), .Y(
        n224) );
  OAI2BB2X1M U268 ( .B0(n429), .B1(n160), .A0N(\mem[5][0] ), .A1N(n160), .Y(
        n225) );
  OAI2BB2X1M U269 ( .B0(n430), .B1(n160), .A0N(\mem[5][1] ), .A1N(n160), .Y(
        n226) );
  OAI2BB2X1M U270 ( .B0(n431), .B1(n160), .A0N(\mem[5][2] ), .A1N(n160), .Y(
        n227) );
  OAI2BB2X1M U271 ( .B0(n432), .B1(n160), .A0N(\mem[5][3] ), .A1N(n160), .Y(
        n228) );
  OAI2BB2X1M U272 ( .B0(n433), .B1(n160), .A0N(\mem[5][4] ), .A1N(n160), .Y(
        n229) );
  OAI2BB2X1M U273 ( .B0(n434), .B1(n160), .A0N(\mem[5][5] ), .A1N(n160), .Y(
        n230) );
  OAI2BB2X1M U274 ( .B0(n435), .B1(n160), .A0N(\mem[5][6] ), .A1N(n160), .Y(
        n231) );
  OAI2BB2X1M U275 ( .B0(n436), .B1(n160), .A0N(\mem[5][7] ), .A1N(n160), .Y(
        n232) );
  OAI2BB2X1M U276 ( .B0(n429), .B1(n161), .A0N(\mem[6][0] ), .A1N(n161), .Y(
        n233) );
  OAI2BB2X1M U277 ( .B0(n430), .B1(n161), .A0N(\mem[6][1] ), .A1N(n161), .Y(
        n234) );
  OAI2BB2X1M U278 ( .B0(n431), .B1(n161), .A0N(\mem[6][2] ), .A1N(n161), .Y(
        n235) );
  OAI2BB2X1M U279 ( .B0(n432), .B1(n161), .A0N(\mem[6][3] ), .A1N(n161), .Y(
        n236) );
  OAI2BB2X1M U280 ( .B0(n433), .B1(n161), .A0N(\mem[6][4] ), .A1N(n161), .Y(
        n237) );
  OAI2BB2X1M U281 ( .B0(n434), .B1(n161), .A0N(\mem[6][5] ), .A1N(n161), .Y(
        n238) );
  OAI2BB2X1M U282 ( .B0(n435), .B1(n161), .A0N(\mem[6][6] ), .A1N(n161), .Y(
        n239) );
  OAI2BB2X1M U283 ( .B0(n436), .B1(n161), .A0N(\mem[6][7] ), .A1N(n161), .Y(
        n240) );
  OAI2BB2X1M U284 ( .B0(n429), .B1(n164), .A0N(\mem[7][0] ), .A1N(n164), .Y(
        n241) );
  OAI2BB2X1M U285 ( .B0(n430), .B1(n164), .A0N(\mem[7][1] ), .A1N(n164), .Y(
        n242) );
  OAI2BB2X1M U286 ( .B0(n431), .B1(n164), .A0N(\mem[7][2] ), .A1N(n164), .Y(
        n243) );
  OAI2BB2X1M U287 ( .B0(n432), .B1(n164), .A0N(\mem[7][3] ), .A1N(n164), .Y(
        n244) );
  OAI2BB2X1M U288 ( .B0(n433), .B1(n164), .A0N(\mem[7][4] ), .A1N(n164), .Y(
        n245) );
  OAI2BB2X1M U289 ( .B0(n434), .B1(n164), .A0N(\mem[7][5] ), .A1N(n164), .Y(
        n246) );
  OAI2BB2X1M U290 ( .B0(n435), .B1(n164), .A0N(\mem[7][6] ), .A1N(n164), .Y(
        n247) );
  OAI2BB2X1M U291 ( .B0(n436), .B1(n164), .A0N(\mem[7][7] ), .A1N(n164), .Y(
        n248) );
  OAI2BB2X1M U292 ( .B0(n429), .B1(n168), .A0N(\mem[9][0] ), .A1N(n168), .Y(
        n257) );
  OAI2BB2X1M U293 ( .B0(n430), .B1(n168), .A0N(\mem[9][1] ), .A1N(n168), .Y(
        n258) );
  OAI2BB2X1M U294 ( .B0(n431), .B1(n168), .A0N(\mem[9][2] ), .A1N(n168), .Y(
        n259) );
  OAI2BB2X1M U295 ( .B0(n432), .B1(n168), .A0N(\mem[9][3] ), .A1N(n168), .Y(
        n260) );
  OAI2BB2X1M U296 ( .B0(n433), .B1(n168), .A0N(\mem[9][4] ), .A1N(n168), .Y(
        n261) );
  OAI2BB2X1M U297 ( .B0(n434), .B1(n168), .A0N(\mem[9][5] ), .A1N(n168), .Y(
        n262) );
  OAI2BB2X1M U298 ( .B0(n435), .B1(n168), .A0N(\mem[9][6] ), .A1N(n168), .Y(
        n263) );
  OAI2BB2X1M U299 ( .B0(n436), .B1(n168), .A0N(\mem[9][7] ), .A1N(n168), .Y(
        n264) );
  OAI2BB2X1M U300 ( .B0(n429), .B1(n171), .A0N(\mem[11][0] ), .A1N(n171), .Y(
        n273) );
  OAI2BB2X1M U301 ( .B0(n430), .B1(n171), .A0N(\mem[11][1] ), .A1N(n171), .Y(
        n274) );
  OAI2BB2X1M U302 ( .B0(n431), .B1(n171), .A0N(\mem[11][2] ), .A1N(n171), .Y(
        n275) );
  OAI2BB2X1M U303 ( .B0(n432), .B1(n171), .A0N(\mem[11][3] ), .A1N(n171), .Y(
        n276) );
  OAI2BB2X1M U304 ( .B0(n433), .B1(n171), .A0N(\mem[11][4] ), .A1N(n171), .Y(
        n277) );
  OAI2BB2X1M U305 ( .B0(n434), .B1(n171), .A0N(\mem[11][5] ), .A1N(n171), .Y(
        n278) );
  OAI2BB2X1M U306 ( .B0(n435), .B1(n171), .A0N(\mem[11][6] ), .A1N(n171), .Y(
        n279) );
  OAI2BB2X1M U307 ( .B0(n436), .B1(n171), .A0N(\mem[11][7] ), .A1N(n171), .Y(
        n280) );
  OAI2BB2X1M U308 ( .B0(n429), .B1(n173), .A0N(\mem[13][0] ), .A1N(n173), .Y(
        n289) );
  OAI2BB2X1M U309 ( .B0(n430), .B1(n173), .A0N(\mem[13][1] ), .A1N(n173), .Y(
        n290) );
  OAI2BB2X1M U310 ( .B0(n431), .B1(n173), .A0N(\mem[13][2] ), .A1N(n173), .Y(
        n291) );
  OAI2BB2X1M U311 ( .B0(n432), .B1(n173), .A0N(\mem[13][3] ), .A1N(n173), .Y(
        n292) );
  OAI2BB2X1M U312 ( .B0(n433), .B1(n173), .A0N(\mem[13][4] ), .A1N(n173), .Y(
        n293) );
  OAI2BB2X1M U313 ( .B0(n434), .B1(n173), .A0N(\mem[13][5] ), .A1N(n173), .Y(
        n294) );
  OAI2BB2X1M U314 ( .B0(n435), .B1(n173), .A0N(\mem[13][6] ), .A1N(n173), .Y(
        n295) );
  OAI2BB2X1M U315 ( .B0(n436), .B1(n173), .A0N(\mem[13][7] ), .A1N(n173), .Y(
        n296) );
  OAI2BB2X1M U316 ( .B0(n429), .B1(n176), .A0N(\mem[15][0] ), .A1N(n176), .Y(
        n305) );
  OAI2BB2X1M U317 ( .B0(n430), .B1(n176), .A0N(\mem[15][1] ), .A1N(n176), .Y(
        n306) );
  OAI2BB2X1M U318 ( .B0(n431), .B1(n176), .A0N(\mem[15][2] ), .A1N(n176), .Y(
        n307) );
  OAI2BB2X1M U319 ( .B0(n432), .B1(n176), .A0N(\mem[15][3] ), .A1N(n176), .Y(
        n308) );
  OAI2BB2X1M U320 ( .B0(n433), .B1(n176), .A0N(\mem[15][4] ), .A1N(n176), .Y(
        n309) );
  OAI2BB2X1M U321 ( .B0(n434), .B1(n176), .A0N(\mem[15][5] ), .A1N(n176), .Y(
        n310) );
  OAI2BB2X1M U322 ( .B0(n435), .B1(n176), .A0N(\mem[15][6] ), .A1N(n176), .Y(
        n311) );
  OAI2BB2X1M U323 ( .B0(n436), .B1(n176), .A0N(\mem[15][7] ), .A1N(n176), .Y(
        n312) );
  OAI2BB2X1M U324 ( .B0(n430), .B1(n155), .A0N(Reg2[1]), .A1N(n155), .Y(n202)
         );
  OAI2BB2X1M U325 ( .B0(n431), .B1(n155), .A0N(Reg2[2]), .A1N(n155), .Y(n203)
         );
  OAI2BB2X1M U326 ( .B0(n432), .B1(n155), .A0N(Reg2[3]), .A1N(n155), .Y(n204)
         );
  OAI2BB2X1M U327 ( .B0(n433), .B1(n155), .A0N(Reg2[4]), .A1N(n155), .Y(n205)
         );
  OAI2BB2X1M U328 ( .B0(n434), .B1(n155), .A0N(Reg2[5]), .A1N(n155), .Y(n206)
         );
  OAI2BB2X1M U329 ( .B0(n435), .B1(n155), .A0N(Reg2[6]), .A1N(n155), .Y(n207)
         );
  OAI2BB2X1M U330 ( .B0(n429), .B1(n157), .A0N(Reg3[0]), .A1N(n157), .Y(n209)
         );
  OAI2BB2X1M U331 ( .B0(n430), .B1(n157), .A0N(Reg3[1]), .A1N(n157), .Y(n210)
         );
  OAI2BB2X1M U332 ( .B0(n431), .B1(n157), .A0N(Reg3[2]), .A1N(n157), .Y(n211)
         );
  OAI2BB2X1M U333 ( .B0(n432), .B1(n157), .A0N(Reg3[3]), .A1N(n157), .Y(n212)
         );
  OAI2BB2X1M U334 ( .B0(n433), .B1(n157), .A0N(Reg3[4]), .A1N(n157), .Y(n213)
         );
  OAI2BB2X1M U335 ( .B0(n435), .B1(n157), .A0N(Reg3[6]), .A1N(n157), .Y(n215)
         );
  OAI2BB2X1M U336 ( .B0(n436), .B1(n157), .A0N(Reg3[7]), .A1N(n157), .Y(n216)
         );
  OAI2BB2X1M U337 ( .B0(n429), .B1(n155), .A0N(Reg2[0]), .A1N(n155), .Y(n201)
         );
  OAI2BB2X1M U338 ( .B0(n436), .B1(n155), .A0N(Reg2[7]), .A1N(n155), .Y(n208)
         );
  OAI2BB2X1M U339 ( .B0(n434), .B1(n157), .A0N(Reg3[5]), .A1N(n157), .Y(n214)
         );
  OAI2BB1X2M U340 ( .A0N(Rd_Data_VLD), .A1N(n165), .B0(n149), .Y(n313) );
  AOI22X1M U341 ( .A0(\mem[10][0] ), .A1(n411), .B0(\mem[11][0] ), .B1(n410), 
        .Y(n143) );
  AOI22X1M U342 ( .A0(\mem[8][0] ), .A1(n413), .B0(\mem[9][0] ), .B1(n412), 
        .Y(n142) );
  CLKNAND2X2M U343 ( .A(N14), .B(n408), .Y(n391) );
  AOI21X1M U344 ( .A0(n143), .A1(n142), .B0(n391), .Y(n318) );
  AOI22X1M U345 ( .A0(\mem[14][0] ), .A1(n411), .B0(\mem[15][0] ), .B1(n410), 
        .Y(n145) );
  AOI22X1M U346 ( .A0(\mem[12][0] ), .A1(n413), .B0(\mem[13][0] ), .B1(n412), 
        .Y(n144) );
  CLKNAND2X2M U347 ( .A(N14), .B(N13), .Y(n394) );
  AOI21X1M U348 ( .A0(n145), .A1(n144), .B0(n394), .Y(n317) );
  AOI22X1M U349 ( .A0(Reg2[0]), .A1(n411), .B0(Reg3[0]), .B1(n410), .Y(n147)
         );
  AOI22X1M U350 ( .A0(Reg0[0]), .A1(n413), .B0(Reg1[0]), .B1(n412), .Y(n146)
         );
  CLKNAND2X2M U351 ( .A(n408), .B(n409), .Y(n397) );
  AOI21X1M U352 ( .A0(n147), .A1(n146), .B0(n397), .Y(n316) );
  AOI22X1M U353 ( .A0(\mem[6][0] ), .A1(n411), .B0(\mem[7][0] ), .B1(n410), 
        .Y(n314) );
  AOI22X1M U354 ( .A0(\mem[4][0] ), .A1(n413), .B0(\mem[5][0] ), .B1(n412), 
        .Y(n148) );
  CLKNAND2X2M U355 ( .A(N13), .B(n409), .Y(n400) );
  AOI21X1M U356 ( .A0(n314), .A1(n148), .B0(n400), .Y(n315) );
  OR4X1M U357 ( .A(n318), .B(n317), .C(n316), .D(n315), .Y(N43) );
  AOI22X1M U358 ( .A0(\mem[10][1] ), .A1(n411), .B0(\mem[11][1] ), .B1(n410), 
        .Y(n320) );
  AOI22X1M U359 ( .A0(\mem[8][1] ), .A1(n413), .B0(\mem[9][1] ), .B1(n412), 
        .Y(n319) );
  AOI21X1M U360 ( .A0(n320), .A1(n319), .B0(n391), .Y(n330) );
  AOI22X1M U361 ( .A0(\mem[14][1] ), .A1(n411), .B0(\mem[15][1] ), .B1(n410), 
        .Y(n322) );
  AOI22X1M U362 ( .A0(\mem[12][1] ), .A1(n413), .B0(\mem[13][1] ), .B1(n412), 
        .Y(n321) );
  AOI21X1M U363 ( .A0(n322), .A1(n321), .B0(n394), .Y(n329) );
  AOI22X1M U364 ( .A0(Reg2[1]), .A1(n411), .B0(Reg3[1]), .B1(n410), .Y(n324)
         );
  AOI22X1M U365 ( .A0(Reg0[1]), .A1(n413), .B0(Reg1[1]), .B1(n412), .Y(n323)
         );
  AOI21X1M U366 ( .A0(n324), .A1(n323), .B0(n397), .Y(n328) );
  AOI22X1M U367 ( .A0(\mem[6][1] ), .A1(n411), .B0(\mem[7][1] ), .B1(n410), 
        .Y(n326) );
  AOI22X1M U368 ( .A0(\mem[4][1] ), .A1(n413), .B0(\mem[5][1] ), .B1(n412), 
        .Y(n325) );
  AOI21X1M U369 ( .A0(n326), .A1(n325), .B0(n400), .Y(n327) );
  OR4X1M U370 ( .A(n330), .B(n329), .C(n328), .D(n327), .Y(N42) );
  AOI22X1M U371 ( .A0(\mem[10][2] ), .A1(n411), .B0(\mem[11][2] ), .B1(n410), 
        .Y(n332) );
  AOI22X1M U372 ( .A0(\mem[8][2] ), .A1(n413), .B0(\mem[9][2] ), .B1(n412), 
        .Y(n331) );
  AOI21X1M U373 ( .A0(n332), .A1(n331), .B0(n391), .Y(n342) );
  AOI22X1M U374 ( .A0(\mem[14][2] ), .A1(n411), .B0(\mem[15][2] ), .B1(n410), 
        .Y(n334) );
  AOI22X1M U375 ( .A0(\mem[12][2] ), .A1(n413), .B0(\mem[13][2] ), .B1(n412), 
        .Y(n333) );
  AOI21X1M U376 ( .A0(n334), .A1(n333), .B0(n394), .Y(n341) );
  AOI22X1M U377 ( .A0(Reg2[2]), .A1(n411), .B0(Reg3[2]), .B1(n410), .Y(n336)
         );
  AOI22X1M U378 ( .A0(Reg0[2]), .A1(n413), .B0(Reg1[2]), .B1(n412), .Y(n335)
         );
  AOI21X1M U379 ( .A0(n336), .A1(n335), .B0(n397), .Y(n340) );
  AOI22X1M U380 ( .A0(\mem[6][2] ), .A1(n411), .B0(\mem[7][2] ), .B1(n410), 
        .Y(n338) );
  AOI22X1M U381 ( .A0(\mem[4][2] ), .A1(n413), .B0(\mem[5][2] ), .B1(n412), 
        .Y(n337) );
  AOI21X1M U382 ( .A0(n338), .A1(n337), .B0(n400), .Y(n339) );
  OR4X1M U383 ( .A(n342), .B(n341), .C(n340), .D(n339), .Y(N41) );
  AOI22X1M U384 ( .A0(\mem[10][3] ), .A1(n411), .B0(\mem[11][3] ), .B1(n410), 
        .Y(n344) );
  AOI22X1M U385 ( .A0(\mem[8][3] ), .A1(n413), .B0(\mem[9][3] ), .B1(n412), 
        .Y(n343) );
  AOI21X1M U386 ( .A0(n344), .A1(n343), .B0(n391), .Y(n354) );
  AOI22X1M U387 ( .A0(\mem[14][3] ), .A1(n411), .B0(\mem[15][3] ), .B1(n410), 
        .Y(n346) );
  AOI22X1M U388 ( .A0(\mem[12][3] ), .A1(n413), .B0(\mem[13][3] ), .B1(n412), 
        .Y(n345) );
  AOI21X1M U389 ( .A0(n346), .A1(n345), .B0(n394), .Y(n353) );
  AOI22X1M U390 ( .A0(Reg2[3]), .A1(n411), .B0(Reg3[3]), .B1(n410), .Y(n348)
         );
  AOI22X1M U391 ( .A0(Reg0[3]), .A1(n413), .B0(Reg1[3]), .B1(n412), .Y(n347)
         );
  AOI21X1M U392 ( .A0(n348), .A1(n347), .B0(n397), .Y(n352) );
  AOI22X1M U393 ( .A0(\mem[6][3] ), .A1(n411), .B0(\mem[7][3] ), .B1(n410), 
        .Y(n350) );
  AOI22X1M U394 ( .A0(\mem[4][3] ), .A1(n413), .B0(\mem[5][3] ), .B1(n412), 
        .Y(n349) );
  AOI21X1M U395 ( .A0(n350), .A1(n349), .B0(n400), .Y(n351) );
  OR4X1M U396 ( .A(n354), .B(n353), .C(n352), .D(n351), .Y(N40) );
  AOI22X1M U397 ( .A0(\mem[10][4] ), .A1(n411), .B0(\mem[11][4] ), .B1(n410), 
        .Y(n356) );
  AOI22X1M U398 ( .A0(\mem[8][4] ), .A1(n413), .B0(\mem[9][4] ), .B1(n412), 
        .Y(n355) );
  AOI21X1M U399 ( .A0(n356), .A1(n355), .B0(n391), .Y(n366) );
  AOI22X1M U400 ( .A0(\mem[14][4] ), .A1(n411), .B0(\mem[15][4] ), .B1(n410), 
        .Y(n358) );
  AOI22X1M U401 ( .A0(\mem[12][4] ), .A1(n413), .B0(\mem[13][4] ), .B1(n412), 
        .Y(n357) );
  AOI21X1M U402 ( .A0(n358), .A1(n357), .B0(n394), .Y(n365) );
  AOI22X1M U403 ( .A0(Reg2[4]), .A1(n411), .B0(Reg3[4]), .B1(n410), .Y(n360)
         );
  AOI22X1M U404 ( .A0(Reg0[4]), .A1(n413), .B0(Reg1[4]), .B1(n412), .Y(n359)
         );
  AOI21X1M U405 ( .A0(n360), .A1(n359), .B0(n397), .Y(n364) );
  AOI22X1M U406 ( .A0(\mem[6][4] ), .A1(n411), .B0(\mem[7][4] ), .B1(n410), 
        .Y(n362) );
  AOI22X1M U407 ( .A0(\mem[4][4] ), .A1(n413), .B0(\mem[5][4] ), .B1(n412), 
        .Y(n361) );
  AOI21X1M U408 ( .A0(n362), .A1(n361), .B0(n400), .Y(n363) );
  OR4X1M U409 ( .A(n366), .B(n365), .C(n364), .D(n363), .Y(N39) );
  AOI22X1M U410 ( .A0(\mem[10][5] ), .A1(n411), .B0(\mem[11][5] ), .B1(n410), 
        .Y(n368) );
  AOI22X1M U411 ( .A0(\mem[8][5] ), .A1(n413), .B0(\mem[9][5] ), .B1(n412), 
        .Y(n367) );
  AOI21X1M U412 ( .A0(n368), .A1(n367), .B0(n391), .Y(n378) );
  AOI22X1M U413 ( .A0(\mem[14][5] ), .A1(n411), .B0(\mem[15][5] ), .B1(n410), 
        .Y(n370) );
  AOI22X1M U414 ( .A0(\mem[12][5] ), .A1(n413), .B0(\mem[13][5] ), .B1(n412), 
        .Y(n369) );
  AOI21X1M U415 ( .A0(n370), .A1(n369), .B0(n394), .Y(n377) );
  AOI22X1M U416 ( .A0(Reg2[5]), .A1(n411), .B0(Reg3[5]), .B1(n410), .Y(n372)
         );
  AOI22X1M U417 ( .A0(Reg0[5]), .A1(n413), .B0(Reg1[5]), .B1(n412), .Y(n371)
         );
  AOI21X1M U418 ( .A0(n372), .A1(n371), .B0(n397), .Y(n376) );
  AOI22X1M U419 ( .A0(\mem[6][5] ), .A1(n411), .B0(\mem[7][5] ), .B1(n410), 
        .Y(n374) );
  AOI22X1M U420 ( .A0(\mem[4][5] ), .A1(n413), .B0(\mem[5][5] ), .B1(n412), 
        .Y(n373) );
  AOI21X1M U421 ( .A0(n374), .A1(n373), .B0(n400), .Y(n375) );
  OR4X1M U422 ( .A(n378), .B(n377), .C(n376), .D(n375), .Y(N38) );
  AOI22X1M U423 ( .A0(\mem[10][6] ), .A1(n411), .B0(\mem[11][6] ), .B1(n410), 
        .Y(n380) );
  AOI22X1M U424 ( .A0(\mem[8][6] ), .A1(n413), .B0(\mem[9][6] ), .B1(n412), 
        .Y(n379) );
  AOI21X1M U425 ( .A0(n380), .A1(n379), .B0(n391), .Y(n390) );
  AOI22X1M U426 ( .A0(\mem[14][6] ), .A1(n411), .B0(\mem[15][6] ), .B1(n410), 
        .Y(n382) );
  AOI22X1M U427 ( .A0(\mem[12][6] ), .A1(n413), .B0(\mem[13][6] ), .B1(n412), 
        .Y(n381) );
  AOI21X1M U428 ( .A0(n382), .A1(n381), .B0(n394), .Y(n389) );
  AOI22X1M U429 ( .A0(Reg2[6]), .A1(n411), .B0(Reg3[6]), .B1(n410), .Y(n384)
         );
  AOI22X1M U430 ( .A0(Reg0[6]), .A1(n413), .B0(Reg1[6]), .B1(n412), .Y(n383)
         );
  AOI21X1M U431 ( .A0(n384), .A1(n383), .B0(n397), .Y(n388) );
  AOI22X1M U432 ( .A0(\mem[6][6] ), .A1(n411), .B0(\mem[7][6] ), .B1(n410), 
        .Y(n386) );
  AOI22X1M U433 ( .A0(\mem[4][6] ), .A1(n413), .B0(\mem[5][6] ), .B1(n412), 
        .Y(n385) );
  AOI21X1M U434 ( .A0(n386), .A1(n385), .B0(n400), .Y(n387) );
  OR4X1M U435 ( .A(n390), .B(n389), .C(n388), .D(n387), .Y(N37) );
  AOI22X1M U436 ( .A0(\mem[10][7] ), .A1(n411), .B0(\mem[11][7] ), .B1(n410), 
        .Y(n393) );
  AOI22X1M U437 ( .A0(\mem[8][7] ), .A1(n413), .B0(\mem[9][7] ), .B1(n412), 
        .Y(n392) );
  AOI21X1M U438 ( .A0(n393), .A1(n392), .B0(n391), .Y(n406) );
  AOI22X1M U439 ( .A0(\mem[14][7] ), .A1(n411), .B0(\mem[15][7] ), .B1(n410), 
        .Y(n396) );
  AOI22X1M U440 ( .A0(\mem[12][7] ), .A1(n413), .B0(\mem[13][7] ), .B1(n412), 
        .Y(n395) );
  AOI21X1M U441 ( .A0(n396), .A1(n395), .B0(n394), .Y(n405) );
  AOI22X1M U442 ( .A0(Reg2[7]), .A1(n411), .B0(Reg3[7]), .B1(n410), .Y(n399)
         );
  AOI22X1M U443 ( .A0(Reg0[7]), .A1(n413), .B0(Reg1[7]), .B1(n412), .Y(n398)
         );
  AOI21X1M U444 ( .A0(n399), .A1(n398), .B0(n397), .Y(n404) );
  AOI22X1M U445 ( .A0(\mem[6][7] ), .A1(n411), .B0(\mem[7][7] ), .B1(n410), 
        .Y(n402) );
  AOI22X1M U446 ( .A0(\mem[4][7] ), .A1(n413), .B0(\mem[5][7] ), .B1(n412), 
        .Y(n401) );
  AOI21X1M U447 ( .A0(n402), .A1(n401), .B0(n400), .Y(n403) );
  OR4X1M U448 ( .A(n406), .B(n405), .C(n404), .D(n403), .Y(N36) );
  DLY1X1M U449 ( .A(test_se), .Y(n442) );
  DLY1X1M U450 ( .A(test_se), .Y(n443) );
  DLY1X1M U451 ( .A(test_se), .Y(n444) );
  DLY1X1M U452 ( .A(test_se), .Y(n445) );
endmodule


module Alu_16_DW_div_uns_0 ( a, b, quotient, remainder, divide_by_0 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] quotient;
  output [7:0] remainder;
  output divide_by_0;
  wire   \u_div/SumTmp[1][0] , \u_div/SumTmp[1][1] , \u_div/SumTmp[1][2] ,
         \u_div/SumTmp[1][3] , \u_div/SumTmp[1][4] , \u_div/SumTmp[1][5] ,
         \u_div/SumTmp[1][6] , \u_div/SumTmp[2][0] , \u_div/SumTmp[2][1] ,
         \u_div/SumTmp[2][2] , \u_div/SumTmp[2][3] , \u_div/SumTmp[2][4] ,
         \u_div/SumTmp[2][5] , \u_div/SumTmp[3][0] , \u_div/SumTmp[3][1] ,
         \u_div/SumTmp[3][2] , \u_div/SumTmp[3][3] , \u_div/SumTmp[3][4] ,
         \u_div/SumTmp[4][0] , \u_div/SumTmp[4][1] , \u_div/SumTmp[4][2] ,
         \u_div/SumTmp[4][3] , \u_div/SumTmp[5][0] , \u_div/SumTmp[5][1] ,
         \u_div/SumTmp[5][2] , \u_div/SumTmp[6][0] , \u_div/SumTmp[6][1] ,
         \u_div/SumTmp[7][0] , \u_div/CryTmp[0][1] , \u_div/CryTmp[0][2] ,
         \u_div/CryTmp[0][3] , \u_div/CryTmp[0][4] , \u_div/CryTmp[0][5] ,
         \u_div/CryTmp[0][6] , \u_div/CryTmp[0][7] , \u_div/CryTmp[1][1] ,
         \u_div/CryTmp[1][2] , \u_div/CryTmp[1][3] , \u_div/CryTmp[1][4] ,
         \u_div/CryTmp[1][5] , \u_div/CryTmp[1][6] , \u_div/CryTmp[1][7] ,
         \u_div/CryTmp[2][1] , \u_div/CryTmp[2][2] , \u_div/CryTmp[2][3] ,
         \u_div/CryTmp[2][4] , \u_div/CryTmp[2][5] , \u_div/CryTmp[2][6] ,
         \u_div/CryTmp[3][1] , \u_div/CryTmp[3][2] , \u_div/CryTmp[3][3] ,
         \u_div/CryTmp[3][4] , \u_div/CryTmp[3][5] , \u_div/CryTmp[4][1] ,
         \u_div/CryTmp[4][2] , \u_div/CryTmp[4][3] , \u_div/CryTmp[4][4] ,
         \u_div/CryTmp[5][1] , \u_div/CryTmp[5][2] , \u_div/CryTmp[5][3] ,
         \u_div/CryTmp[6][1] , \u_div/CryTmp[6][2] , \u_div/CryTmp[7][1] ,
         \u_div/PartRem[1][1] , \u_div/PartRem[1][2] , \u_div/PartRem[1][3] ,
         \u_div/PartRem[1][4] , \u_div/PartRem[1][5] , \u_div/PartRem[1][6] ,
         \u_div/PartRem[1][7] , \u_div/PartRem[2][1] , \u_div/PartRem[2][2] ,
         \u_div/PartRem[2][3] , \u_div/PartRem[2][4] , \u_div/PartRem[2][5] ,
         \u_div/PartRem[2][6] , \u_div/PartRem[3][1] , \u_div/PartRem[3][2] ,
         \u_div/PartRem[3][3] , \u_div/PartRem[3][4] , \u_div/PartRem[3][5] ,
         \u_div/PartRem[4][1] , \u_div/PartRem[4][2] , \u_div/PartRem[4][3] ,
         \u_div/PartRem[4][4] , \u_div/PartRem[5][1] , \u_div/PartRem[5][2] ,
         \u_div/PartRem[5][3] , \u_div/PartRem[6][1] , \u_div/PartRem[6][2] ,
         \u_div/PartRem[7][1] , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22;

  ADDFX2M \u_div/u_fa_PartRem_0_2_5  ( .A(\u_div/PartRem[3][5] ), .B(n14), 
        .CI(\u_div/CryTmp[2][5] ), .CO(\u_div/CryTmp[2][6] ), .S(
        \u_div/SumTmp[2][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_3  ( .A(\u_div/PartRem[5][3] ), .B(n16), 
        .CI(\u_div/CryTmp[4][3] ), .CO(\u_div/CryTmp[4][4] ), .S(
        \u_div/SumTmp[4][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_2  ( .A(\u_div/PartRem[6][2] ), .B(n17), 
        .CI(\u_div/CryTmp[5][2] ), .CO(\u_div/CryTmp[5][3] ), .S(
        \u_div/SumTmp[5][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_6_1  ( .A(\u_div/PartRem[7][1] ), .B(n18), 
        .CI(\u_div/CryTmp[6][1] ), .CO(\u_div/CryTmp[6][2] ), .S(
        \u_div/SumTmp[6][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_4  ( .A(\u_div/PartRem[4][4] ), .B(n15), 
        .CI(\u_div/CryTmp[3][4] ), .CO(\u_div/CryTmp[3][5] ), .S(
        \u_div/SumTmp[3][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_5  ( .A(\u_div/PartRem[1][5] ), .B(n14), 
        .CI(\u_div/CryTmp[0][5] ), .CO(\u_div/CryTmp[0][6] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_6  ( .A(\u_div/PartRem[1][6] ), .B(n13), 
        .CI(\u_div/CryTmp[0][6] ), .CO(\u_div/CryTmp[0][7] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_7  ( .A(\u_div/PartRem[1][7] ), .B(n12), 
        .CI(\u_div/CryTmp[0][7] ), .CO(quotient[0]) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_1  ( .A(\u_div/PartRem[1][1] ), .B(n18), 
        .CI(\u_div/CryTmp[0][1] ), .CO(\u_div/CryTmp[0][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_1  ( .A(\u_div/PartRem[2][1] ), .B(n18), 
        .CI(\u_div/CryTmp[1][1] ), .CO(\u_div/CryTmp[1][2] ), .S(
        \u_div/SumTmp[1][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_1  ( .A(\u_div/PartRem[3][1] ), .B(n18), 
        .CI(\u_div/CryTmp[2][1] ), .CO(\u_div/CryTmp[2][2] ), .S(
        \u_div/SumTmp[2][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_1  ( .A(\u_div/PartRem[4][1] ), .B(n18), 
        .CI(\u_div/CryTmp[3][1] ), .CO(\u_div/CryTmp[3][2] ), .S(
        \u_div/SumTmp[3][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_1  ( .A(\u_div/PartRem[5][1] ), .B(n18), 
        .CI(\u_div/CryTmp[4][1] ), .CO(\u_div/CryTmp[4][2] ), .S(
        \u_div/SumTmp[4][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_5_1  ( .A(\u_div/PartRem[6][1] ), .B(n18), 
        .CI(\u_div/CryTmp[5][1] ), .CO(\u_div/CryTmp[5][2] ), .S(
        \u_div/SumTmp[5][1] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_2  ( .A(\u_div/PartRem[1][2] ), .B(n17), 
        .CI(\u_div/CryTmp[0][2] ), .CO(\u_div/CryTmp[0][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_3  ( .A(\u_div/PartRem[1][3] ), .B(n16), 
        .CI(\u_div/CryTmp[0][3] ), .CO(\u_div/CryTmp[0][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_0_4  ( .A(\u_div/PartRem[1][4] ), .B(n15), 
        .CI(\u_div/CryTmp[0][4] ), .CO(\u_div/CryTmp[0][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_5  ( .A(\u_div/PartRem[2][5] ), .B(n14), 
        .CI(\u_div/CryTmp[1][5] ), .CO(\u_div/CryTmp[1][6] ), .S(
        \u_div/SumTmp[1][5] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_4  ( .A(\u_div/PartRem[2][4] ), .B(n15), 
        .CI(\u_div/CryTmp[1][4] ), .CO(\u_div/CryTmp[1][5] ), .S(
        \u_div/SumTmp[1][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_3  ( .A(\u_div/PartRem[2][3] ), .B(n16), 
        .CI(\u_div/CryTmp[1][3] ), .CO(\u_div/CryTmp[1][4] ), .S(
        \u_div/SumTmp[1][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_4  ( .A(\u_div/PartRem[3][4] ), .B(n15), 
        .CI(\u_div/CryTmp[2][4] ), .CO(\u_div/CryTmp[2][5] ), .S(
        \u_div/SumTmp[2][4] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_2  ( .A(\u_div/PartRem[2][2] ), .B(n17), 
        .CI(\u_div/CryTmp[1][2] ), .CO(\u_div/CryTmp[1][3] ), .S(
        \u_div/SumTmp[1][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_3  ( .A(\u_div/PartRem[3][3] ), .B(n16), 
        .CI(\u_div/CryTmp[2][3] ), .CO(\u_div/CryTmp[2][4] ), .S(
        \u_div/SumTmp[2][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_2_2  ( .A(\u_div/PartRem[3][2] ), .B(n17), 
        .CI(\u_div/CryTmp[2][2] ), .CO(\u_div/CryTmp[2][3] ), .S(
        \u_div/SumTmp[2][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_3  ( .A(\u_div/PartRem[4][3] ), .B(n16), 
        .CI(\u_div/CryTmp[3][3] ), .CO(\u_div/CryTmp[3][4] ), .S(
        \u_div/SumTmp[3][3] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_3_2  ( .A(\u_div/PartRem[4][2] ), .B(n17), 
        .CI(\u_div/CryTmp[3][2] ), .CO(\u_div/CryTmp[3][3] ), .S(
        \u_div/SumTmp[3][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_4_2  ( .A(\u_div/PartRem[5][2] ), .B(n17), 
        .CI(\u_div/CryTmp[4][2] ), .CO(\u_div/CryTmp[4][3] ), .S(
        \u_div/SumTmp[4][2] ) );
  ADDFX2M \u_div/u_fa_PartRem_0_1_6  ( .A(\u_div/PartRem[2][6] ), .B(n13), 
        .CI(\u_div/CryTmp[1][6] ), .CO(\u_div/CryTmp[1][7] ), .S(
        \u_div/SumTmp[1][6] ) );
  INVX2M U1 ( .A(b[0]), .Y(n19) );
  XNOR2X2M U2 ( .A(n19), .B(a[7]), .Y(\u_div/SumTmp[7][0] ) );
  XNOR2X2M U3 ( .A(n19), .B(a[6]), .Y(\u_div/SumTmp[6][0] ) );
  XNOR2X2M U4 ( .A(n19), .B(a[5]), .Y(\u_div/SumTmp[5][0] ) );
  XNOR2X2M U5 ( .A(n19), .B(a[4]), .Y(\u_div/SumTmp[4][0] ) );
  XNOR2X2M U6 ( .A(n19), .B(a[3]), .Y(\u_div/SumTmp[3][0] ) );
  XNOR2X2M U7 ( .A(n19), .B(a[2]), .Y(\u_div/SumTmp[2][0] ) );
  OR2X2M U8 ( .A(n19), .B(a[7]), .Y(\u_div/CryTmp[7][1] ) );
  XNOR2X2M U9 ( .A(n19), .B(a[1]), .Y(\u_div/SumTmp[1][0] ) );
  NAND2X2M U10 ( .A(n2), .B(n3), .Y(\u_div/CryTmp[5][1] ) );
  INVX2M U11 ( .A(a[5]), .Y(n3) );
  INVX2M U12 ( .A(n19), .Y(n2) );
  NAND2X2M U13 ( .A(n4), .B(n5), .Y(\u_div/CryTmp[4][1] ) );
  INVX2M U14 ( .A(a[4]), .Y(n5) );
  INVX2M U15 ( .A(n19), .Y(n4) );
  NAND2X2M U16 ( .A(n6), .B(n7), .Y(\u_div/CryTmp[3][1] ) );
  INVX2M U17 ( .A(a[3]), .Y(n7) );
  INVX2M U18 ( .A(n19), .Y(n6) );
  NAND2X2M U19 ( .A(n8), .B(n9), .Y(\u_div/CryTmp[2][1] ) );
  INVX2M U20 ( .A(a[2]), .Y(n9) );
  INVX2M U21 ( .A(n19), .Y(n8) );
  NAND2X2M U22 ( .A(n6), .B(n10), .Y(\u_div/CryTmp[1][1] ) );
  INVX2M U23 ( .A(a[1]), .Y(n10) );
  NAND2X2M U24 ( .A(n4), .B(n11), .Y(\u_div/CryTmp[0][1] ) );
  INVX2M U25 ( .A(a[0]), .Y(n11) );
  NAND2X2M U26 ( .A(n2), .B(n1), .Y(\u_div/CryTmp[6][1] ) );
  INVX2M U27 ( .A(a[6]), .Y(n1) );
  INVX2M U28 ( .A(b[6]), .Y(n13) );
  INVX2M U29 ( .A(b[1]), .Y(n18) );
  INVX2M U30 ( .A(b[2]), .Y(n17) );
  INVX2M U31 ( .A(b[3]), .Y(n16) );
  INVX2M U32 ( .A(b[4]), .Y(n15) );
  INVX2M U33 ( .A(b[5]), .Y(n14) );
  INVX2M U34 ( .A(b[7]), .Y(n12) );
  CLKMX2X2M U35 ( .A(\u_div/PartRem[2][6] ), .B(\u_div/SumTmp[1][6] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][7] ) );
  CLKMX2X2M U36 ( .A(\u_div/PartRem[3][5] ), .B(\u_div/SumTmp[2][5] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][6] ) );
  CLKMX2X2M U37 ( .A(\u_div/PartRem[4][4] ), .B(\u_div/SumTmp[3][4] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][5] ) );
  CLKMX2X2M U38 ( .A(\u_div/PartRem[5][3] ), .B(\u_div/SumTmp[4][3] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][4] ) );
  CLKMX2X2M U39 ( .A(\u_div/PartRem[6][2] ), .B(\u_div/SumTmp[5][2] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][3] ) );
  CLKMX2X2M U40 ( .A(\u_div/PartRem[7][1] ), .B(\u_div/SumTmp[6][1] ), .S0(
        quotient[6]), .Y(\u_div/PartRem[6][2] ) );
  CLKMX2X2M U41 ( .A(a[7]), .B(\u_div/SumTmp[7][0] ), .S0(quotient[7]), .Y(
        \u_div/PartRem[7][1] ) );
  CLKMX2X2M U42 ( .A(\u_div/PartRem[2][5] ), .B(\u_div/SumTmp[1][5] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][6] ) );
  CLKMX2X2M U43 ( .A(\u_div/PartRem[3][4] ), .B(\u_div/SumTmp[2][4] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][5] ) );
  CLKMX2X2M U44 ( .A(\u_div/PartRem[4][3] ), .B(\u_div/SumTmp[3][3] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][4] ) );
  CLKMX2X2M U45 ( .A(\u_div/PartRem[5][2] ), .B(\u_div/SumTmp[4][2] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][3] ) );
  CLKMX2X2M U46 ( .A(\u_div/PartRem[6][1] ), .B(\u_div/SumTmp[5][1] ), .S0(
        quotient[5]), .Y(\u_div/PartRem[5][2] ) );
  CLKMX2X2M U47 ( .A(a[6]), .B(\u_div/SumTmp[6][0] ), .S0(quotient[6]), .Y(
        \u_div/PartRem[6][1] ) );
  CLKMX2X2M U48 ( .A(\u_div/PartRem[2][4] ), .B(\u_div/SumTmp[1][4] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][5] ) );
  CLKMX2X2M U49 ( .A(\u_div/PartRem[3][3] ), .B(\u_div/SumTmp[2][3] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][4] ) );
  CLKMX2X2M U50 ( .A(\u_div/PartRem[4][2] ), .B(\u_div/SumTmp[3][2] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][3] ) );
  CLKMX2X2M U51 ( .A(\u_div/PartRem[5][1] ), .B(\u_div/SumTmp[4][1] ), .S0(
        quotient[4]), .Y(\u_div/PartRem[4][2] ) );
  CLKMX2X2M U52 ( .A(a[5]), .B(\u_div/SumTmp[5][0] ), .S0(quotient[5]), .Y(
        \u_div/PartRem[5][1] ) );
  CLKMX2X2M U53 ( .A(\u_div/PartRem[2][3] ), .B(\u_div/SumTmp[1][3] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][4] ) );
  CLKMX2X2M U54 ( .A(\u_div/PartRem[3][2] ), .B(\u_div/SumTmp[2][2] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][3] ) );
  CLKMX2X2M U55 ( .A(\u_div/PartRem[4][1] ), .B(\u_div/SumTmp[3][1] ), .S0(
        quotient[3]), .Y(\u_div/PartRem[3][2] ) );
  CLKMX2X2M U56 ( .A(a[4]), .B(\u_div/SumTmp[4][0] ), .S0(quotient[4]), .Y(
        \u_div/PartRem[4][1] ) );
  CLKMX2X2M U57 ( .A(\u_div/PartRem[2][2] ), .B(\u_div/SumTmp[1][2] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][3] ) );
  CLKMX2X2M U58 ( .A(\u_div/PartRem[3][1] ), .B(\u_div/SumTmp[2][1] ), .S0(
        quotient[2]), .Y(\u_div/PartRem[2][2] ) );
  CLKMX2X2M U59 ( .A(a[3]), .B(\u_div/SumTmp[3][0] ), .S0(quotient[3]), .Y(
        \u_div/PartRem[3][1] ) );
  CLKMX2X2M U60 ( .A(\u_div/PartRem[2][1] ), .B(\u_div/SumTmp[1][1] ), .S0(
        quotient[1]), .Y(\u_div/PartRem[1][2] ) );
  CLKMX2X2M U61 ( .A(a[2]), .B(\u_div/SumTmp[2][0] ), .S0(quotient[2]), .Y(
        \u_div/PartRem[2][1] ) );
  CLKMX2X2M U62 ( .A(a[1]), .B(\u_div/SumTmp[1][0] ), .S0(quotient[1]), .Y(
        \u_div/PartRem[1][1] ) );
  AND4X1M U63 ( .A(\u_div/CryTmp[7][1] ), .B(n20), .C(n18), .D(n17), .Y(
        quotient[7]) );
  AND3X1M U64 ( .A(n20), .B(n17), .C(\u_div/CryTmp[6][2] ), .Y(quotient[6]) );
  AND2X1M U65 ( .A(\u_div/CryTmp[5][3] ), .B(n20), .Y(quotient[5]) );
  AND2X1M U66 ( .A(n21), .B(n16), .Y(n20) );
  AND2X1M U67 ( .A(\u_div/CryTmp[4][4] ), .B(n21), .Y(quotient[4]) );
  AND3X1M U68 ( .A(n22), .B(n15), .C(n14), .Y(n21) );
  AND3X1M U69 ( .A(n22), .B(n14), .C(\u_div/CryTmp[3][5] ), .Y(quotient[3]) );
  AND2X1M U70 ( .A(\u_div/CryTmp[2][6] ), .B(n22), .Y(quotient[2]) );
  NOR2X1M U71 ( .A(b[6]), .B(b[7]), .Y(n22) );
  AND2X1M U72 ( .A(\u_div/CryTmp[1][7] ), .B(n12), .Y(quotient[1]) );
endmodule


module Alu_16_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [9:0] carry;

  ADDFX2M U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7])
         );
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
  ADDFX2M U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6])
         );
  XNOR2X2M U1 ( .A(n9), .B(A[0]), .Y(DIFF[0]) );
  INVX2M U2 ( .A(B[6]), .Y(n3) );
  INVX2M U3 ( .A(B[0]), .Y(n9) );
  INVX2M U4 ( .A(B[2]), .Y(n7) );
  INVX2M U5 ( .A(B[3]), .Y(n6) );
  INVX2M U6 ( .A(B[4]), .Y(n5) );
  INVX2M U7 ( .A(B[5]), .Y(n4) );
  NAND2X2M U8 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX2M U9 ( .A(B[1]), .Y(n8) );
  INVX2M U10 ( .A(A[0]), .Y(n1) );
  INVX2M U11 ( .A(B[7]), .Y(n2) );
  CLKINVX1M U12 ( .A(carry[8]), .Y(DIFF[8]) );
endmodule


module Alu_16_DW01_add_0 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFX2M U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2M U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFX2M U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFX2M U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2M U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2M U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(SUM[8]), .S(SUM[7]) );
  ADDFX2M U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  AND2X2M U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  CLKXOR2X2M U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
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
  NAND2X2M U3 ( .A(A[7]), .B(B[7]), .Y(n15) );
  XNOR2X2M U4 ( .A(A[7]), .B(n8), .Y(SUM[7]) );
  INVX2M U5 ( .A(B[7]), .Y(n8) );
  XNOR2X2M U6 ( .A(B[13]), .B(n1), .Y(SUM[13]) );
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

  ADDFX2M S2_6_5 ( .A(\ab[6][5] ), .B(\CARRYB[5][5] ), .CI(\SUMB[5][6] ), .CO(
        \CARRYB[6][5] ), .S(\SUMB[6][5] ) );
  ADDFX2M S2_6_4 ( .A(\ab[6][4] ), .B(\CARRYB[5][4] ), .CI(\SUMB[5][5] ), .CO(
        \CARRYB[6][4] ), .S(\SUMB[6][4] ) );
  ADDFX2M S2_5_5 ( .A(\ab[5][5] ), .B(\CARRYB[4][5] ), .CI(\SUMB[4][6] ), .CO(
        \CARRYB[5][5] ), .S(\SUMB[5][5] ) );
  ADDFX2M S2_6_3 ( .A(\ab[6][3] ), .B(\CARRYB[5][3] ), .CI(\SUMB[5][4] ), .CO(
        \CARRYB[6][3] ), .S(\SUMB[6][3] ) );
  ADDFX2M S2_5_4 ( .A(\ab[5][4] ), .B(\CARRYB[4][4] ), .CI(\SUMB[4][5] ), .CO(
        \CARRYB[5][4] ), .S(\SUMB[5][4] ) );
  ADDFX2M S1_6_0 ( .A(\ab[6][0] ), .B(\CARRYB[5][0] ), .CI(\SUMB[5][1] ), .CO(
        \CARRYB[6][0] ), .S(\A1[4] ) );
  ADDFX2M S2_6_1 ( .A(\ab[6][1] ), .B(\CARRYB[5][1] ), .CI(\SUMB[5][2] ), .CO(
        \CARRYB[6][1] ), .S(\SUMB[6][1] ) );
  ADDFX2M S2_6_2 ( .A(\ab[6][2] ), .B(\CARRYB[5][2] ), .CI(\SUMB[5][3] ), .CO(
        \CARRYB[6][2] ), .S(\SUMB[6][2] ) );
  ADDFX2M S2_4_5 ( .A(\ab[4][5] ), .B(\CARRYB[3][5] ), .CI(\SUMB[3][6] ), .CO(
        \CARRYB[4][5] ), .S(\SUMB[4][5] ) );
  ADDFX2M S1_5_0 ( .A(\ab[5][0] ), .B(\CARRYB[4][0] ), .CI(\SUMB[4][1] ), .CO(
        \CARRYB[5][0] ), .S(\A1[3] ) );
  ADDFX2M S2_5_1 ( .A(\ab[5][1] ), .B(\CARRYB[4][1] ), .CI(\SUMB[4][2] ), .CO(
        \CARRYB[5][1] ), .S(\SUMB[5][1] ) );
  ADDFX2M S2_5_2 ( .A(\ab[5][2] ), .B(\CARRYB[4][2] ), .CI(\SUMB[4][3] ), .CO(
        \CARRYB[5][2] ), .S(\SUMB[5][2] ) );
  ADDFX2M S2_5_3 ( .A(\ab[5][3] ), .B(\CARRYB[4][3] ), .CI(\SUMB[4][4] ), .CO(
        \CARRYB[5][3] ), .S(\SUMB[5][3] ) );
  ADDFX2M S1_4_0 ( .A(\ab[4][0] ), .B(\CARRYB[3][0] ), .CI(\SUMB[3][1] ), .CO(
        \CARRYB[4][0] ), .S(\A1[2] ) );
  ADDFX2M S2_4_1 ( .A(\ab[4][1] ), .B(\CARRYB[3][1] ), .CI(\SUMB[3][2] ), .CO(
        \CARRYB[4][1] ), .S(\SUMB[4][1] ) );
  ADDFX2M S2_4_2 ( .A(\ab[4][2] ), .B(\CARRYB[3][2] ), .CI(\SUMB[3][3] ), .CO(
        \CARRYB[4][2] ), .S(\SUMB[4][2] ) );
  ADDFX2M S2_4_3 ( .A(\ab[4][3] ), .B(\CARRYB[3][3] ), .CI(\SUMB[3][4] ), .CO(
        \CARRYB[4][3] ), .S(\SUMB[4][3] ) );
  ADDFX2M S2_4_4 ( .A(\ab[4][4] ), .B(\CARRYB[3][4] ), .CI(\SUMB[3][5] ), .CO(
        \CARRYB[4][4] ), .S(\SUMB[4][4] ) );
  ADDFX2M S1_3_0 ( .A(\ab[3][0] ), .B(\CARRYB[2][0] ), .CI(\SUMB[2][1] ), .CO(
        \CARRYB[3][0] ), .S(\A1[1] ) );
  ADDFX2M S2_3_1 ( .A(\ab[3][1] ), .B(\CARRYB[2][1] ), .CI(\SUMB[2][2] ), .CO(
        \CARRYB[3][1] ), .S(\SUMB[3][1] ) );
  ADDFX2M S2_3_2 ( .A(\ab[3][2] ), .B(\CARRYB[2][2] ), .CI(\SUMB[2][3] ), .CO(
        \CARRYB[3][2] ), .S(\SUMB[3][2] ) );
  ADDFX2M S2_3_3 ( .A(\ab[3][3] ), .B(\CARRYB[2][3] ), .CI(\SUMB[2][4] ), .CO(
        \CARRYB[3][3] ), .S(\SUMB[3][3] ) );
  ADDFX2M S2_3_4 ( .A(\ab[3][4] ), .B(\CARRYB[2][4] ), .CI(\SUMB[2][5] ), .CO(
        \CARRYB[3][4] ), .S(\SUMB[3][4] ) );
  ADDFX2M S2_3_5 ( .A(\ab[3][5] ), .B(\CARRYB[2][5] ), .CI(\SUMB[2][6] ), .CO(
        \CARRYB[3][5] ), .S(\SUMB[3][5] ) );
  ADDFX2M S3_6_6 ( .A(\ab[6][6] ), .B(\CARRYB[5][6] ), .CI(\ab[5][7] ), .CO(
        \CARRYB[6][6] ), .S(\SUMB[6][6] ) );
  ADDFX2M S3_5_6 ( .A(\ab[5][6] ), .B(\CARRYB[4][6] ), .CI(\ab[4][7] ), .CO(
        \CARRYB[5][6] ), .S(\SUMB[5][6] ) );
  ADDFX2M S3_4_6 ( .A(\ab[4][6] ), .B(\CARRYB[3][6] ), .CI(\ab[3][7] ), .CO(
        \CARRYB[4][6] ), .S(\SUMB[4][6] ) );
  ADDFX2M S3_3_6 ( .A(\ab[3][6] ), .B(\CARRYB[2][6] ), .CI(\ab[2][7] ), .CO(
        \CARRYB[3][6] ), .S(\SUMB[3][6] ) );
  ADDFX2M S3_2_6 ( .A(\ab[2][6] ), .B(n8), .CI(\ab[1][7] ), .CO(\CARRYB[2][6] ), .S(\SUMB[2][6] ) );
  ADDFX2M S1_2_0 ( .A(\ab[2][0] ), .B(n9), .CI(\SUMB[1][1] ), .CO(
        \CARRYB[2][0] ), .S(\A1[0] ) );
  ADDFX2M S2_2_1 ( .A(\ab[2][1] ), .B(n7), .CI(\SUMB[1][2] ), .CO(
        \CARRYB[2][1] ), .S(\SUMB[2][1] ) );
  ADDFX2M S2_2_2 ( .A(\ab[2][2] ), .B(n6), .CI(\SUMB[1][3] ), .CO(
        \CARRYB[2][2] ), .S(\SUMB[2][2] ) );
  ADDFX2M S2_2_3 ( .A(\ab[2][3] ), .B(n5), .CI(\SUMB[1][4] ), .CO(
        \CARRYB[2][3] ), .S(\SUMB[2][3] ) );
  ADDFX2M S2_2_4 ( .A(\ab[2][4] ), .B(n4), .CI(\SUMB[1][5] ), .CO(
        \CARRYB[2][4] ), .S(\SUMB[2][4] ) );
  ADDFX2M S2_2_5 ( .A(\ab[2][5] ), .B(n3), .CI(\SUMB[1][6] ), .CO(
        \CARRYB[2][5] ), .S(\SUMB[2][5] ) );
  ADDFX2M S5_6 ( .A(\ab[7][6] ), .B(\CARRYB[6][6] ), .CI(\ab[6][7] ), .CO(
        \CARRYB[7][6] ), .S(\SUMB[7][6] ) );
  ADDFX2M S4_5 ( .A(\ab[7][5] ), .B(\CARRYB[6][5] ), .CI(\SUMB[6][6] ), .CO(
        \CARRYB[7][5] ), .S(\SUMB[7][5] ) );
  ADDFX2M S4_4 ( .A(\ab[7][4] ), .B(\CARRYB[6][4] ), .CI(\SUMB[6][5] ), .CO(
        \CARRYB[7][4] ), .S(\SUMB[7][4] ) );
  ADDFX2M S4_3 ( .A(\ab[7][3] ), .B(\CARRYB[6][3] ), .CI(\SUMB[6][4] ), .CO(
        \CARRYB[7][3] ), .S(\SUMB[7][3] ) );
  ADDFX2M S4_2 ( .A(\ab[7][2] ), .B(\CARRYB[6][2] ), .CI(\SUMB[6][3] ), .CO(
        \CARRYB[7][2] ), .S(\SUMB[7][2] ) );
  ADDFX2M S4_0 ( .A(\ab[7][0] ), .B(\CARRYB[6][0] ), .CI(\SUMB[6][1] ), .CO(
        \CARRYB[7][0] ), .S(\SUMB[7][0] ) );
  ADDFX2M S4_1 ( .A(\ab[7][1] ), .B(\CARRYB[6][1] ), .CI(\SUMB[6][2] ), .CO(
        \CARRYB[7][1] ), .S(\SUMB[7][1] ) );
  AND2X2M U2 ( .A(\ab[0][6] ), .B(\ab[1][5] ), .Y(n3) );
  AND2X2M U3 ( .A(\ab[0][5] ), .B(\ab[1][4] ), .Y(n4) );
  AND2X2M U4 ( .A(\ab[0][4] ), .B(\ab[1][3] ), .Y(n5) );
  AND2X2M U5 ( .A(\ab[0][3] ), .B(\ab[1][2] ), .Y(n6) );
  AND2X2M U6 ( .A(\ab[0][2] ), .B(\ab[1][1] ), .Y(n7) );
  AND2X2M U7 ( .A(\ab[0][7] ), .B(\ab[1][6] ), .Y(n8) );
  AND2X2M U8 ( .A(\ab[0][1] ), .B(\ab[1][0] ), .Y(n9) );
  AND2X2M U9 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(n10) );
  INVX2M U10 ( .A(\ab[0][6] ), .Y(n22) );
  CLKXOR2X2M U11 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(\A1[7] ) );
  CLKXOR2X2M U12 ( .A(\ab[1][0] ), .B(\ab[0][1] ), .Y(PRODUCT[1]) );
  CLKXOR2X2M U13 ( .A(\CARRYB[7][6] ), .B(\ab[7][7] ), .Y(\A1[12] ) );
  CLKXOR2X2M U14 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(\A1[8] ) );
  CLKXOR2X2M U15 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(\A1[10] ) );
  CLKXOR2X2M U16 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(\A1[9] ) );
  CLKXOR2X2M U17 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(\A1[11] ) );
  INVX2M U18 ( .A(\ab[0][7] ), .Y(n23) );
  INVX2M U19 ( .A(\ab[0][5] ), .Y(n21) );
  INVX2M U20 ( .A(\ab[0][4] ), .Y(n20) );
  INVX2M U21 ( .A(\ab[0][3] ), .Y(n19) );
  INVX2M U22 ( .A(\ab[0][2] ), .Y(n18) );
  XNOR2X2M U23 ( .A(\CARRYB[7][0] ), .B(n17), .Y(\A1[6] ) );
  INVX2M U24 ( .A(\SUMB[7][1] ), .Y(n17) );
  AND2X2M U25 ( .A(\CARRYB[7][0] ), .B(\SUMB[7][1] ), .Y(n11) );
  AND2X2M U26 ( .A(\CARRYB[7][1] ), .B(\SUMB[7][2] ), .Y(n12) );
  AND2X2M U27 ( .A(\CARRYB[7][3] ), .B(\SUMB[7][4] ), .Y(n13) );
  AND2X2M U28 ( .A(\CARRYB[7][5] ), .B(\SUMB[7][6] ), .Y(n14) );
  AND2X2M U29 ( .A(\CARRYB[7][2] ), .B(\SUMB[7][3] ), .Y(n15) );
  AND2X2M U30 ( .A(\CARRYB[7][4] ), .B(\SUMB[7][5] ), .Y(n16) );
  XNOR2X2M U31 ( .A(\ab[1][6] ), .B(n23), .Y(\SUMB[1][6] ) );
  XNOR2X2M U32 ( .A(\ab[1][5] ), .B(n22), .Y(\SUMB[1][5] ) );
  XNOR2X2M U33 ( .A(\ab[1][4] ), .B(n21), .Y(\SUMB[1][4] ) );
  XNOR2X2M U34 ( .A(\ab[1][3] ), .B(n20), .Y(\SUMB[1][3] ) );
  XNOR2X2M U35 ( .A(\ab[1][2] ), .B(n19), .Y(\SUMB[1][2] ) );
  XNOR2X2M U36 ( .A(\ab[1][1] ), .B(n18), .Y(\SUMB[1][1] ) );
  INVX2M U37 ( .A(A[7]), .Y(n32) );
  INVX2M U38 ( .A(A[6]), .Y(n33) );
  INVX2M U39 ( .A(A[1]), .Y(n38) );
  INVX2M U40 ( .A(A[0]), .Y(n39) );
  INVX2M U41 ( .A(A[3]), .Y(n36) );
  INVX2M U42 ( .A(A[5]), .Y(n34) );
  INVX2M U43 ( .A(A[4]), .Y(n35) );
  INVX2M U44 ( .A(A[2]), .Y(n37) );
  INVX2M U45 ( .A(B[6]), .Y(n25) );
  INVX2M U46 ( .A(B[0]), .Y(n31) );
  INVX2M U47 ( .A(B[2]), .Y(n29) );
  INVX2M U48 ( .A(B[3]), .Y(n28) );
  INVX2M U49 ( .A(B[7]), .Y(n24) );
  INVX2M U50 ( .A(B[1]), .Y(n30) );
  INVX2M U51 ( .A(B[4]), .Y(n27) );
  INVX2M U52 ( .A(B[5]), .Y(n26) );
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
  Alu_16_DW01_add_1 FS_1 ( .A({1'b0, \A1[12] , \A1[11] , \A1[10] , \A1[9] , 
        \A1[8] , \A1[7] , \A1[6] , \SUMB[7][0] , \A1[4] , \A1[3] , \A1[2] , 
        \A1[1] , \A1[0] }), .B({n10, n14, n16, n13, n15, n12, n11, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .CI(1'b0), .SUM(PRODUCT[15:2]) );
endmodule


module Alu_16_test_1 ( A, B, Alu_Fun, ALU_EN, clk, Alu_Rst, Out_VLD, Alu_Out, 
        test_si, test_se );
  input [7:0] A;
  input [7:0] B;
  input [3:0] Alu_Fun;
  output [15:0] Alu_Out;
  input ALU_EN, clk, Alu_Rst, test_si, test_se;
  output Out_VLD;
  wire   Out_VLD_Comb, N91, N92, N93, N94, N95, N96, N97, N98, N99, N100, N101,
         N102, N103, N104, N105, N106, N107, N108, N109, N110, N111, N112,
         N113, N114, N115, N116, N117, N118, N119, N120, N121, N122, N123,
         N124, N125, N126, N127, N128, N129, N130, N131, N132, N157, N158,
         N159, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63,
         n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77,
         n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n3, n4, n5, n6, n7, n8, n9, n27,
         n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41,
         n42, n43, n44, n45, n46, n47, n48, n49, n50, n133, n134, n135, n136,
         n137, n138, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163;
  wire   [15:0] ALU_OUT_FF;

  SDFFRQX2M \Alu_Out_reg[7]  ( .D(ALU_OUT_FF[7]), .SI(Alu_Out[6]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[7]) );
  SDFFRQX2M \Alu_Out_reg[6]  ( .D(ALU_OUT_FF[6]), .SI(Alu_Out[5]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[6]) );
  SDFFRQX2M \Alu_Out_reg[5]  ( .D(ALU_OUT_FF[5]), .SI(Alu_Out[4]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[5]) );
  SDFFRQX2M \Alu_Out_reg[4]  ( .D(ALU_OUT_FF[4]), .SI(Alu_Out[3]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[4]) );
  SDFFRQX2M \Alu_Out_reg[3]  ( .D(ALU_OUT_FF[3]), .SI(Alu_Out[2]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[3]) );
  SDFFRQX2M \Alu_Out_reg[2]  ( .D(ALU_OUT_FF[2]), .SI(Alu_Out[1]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[2]) );
  SDFFRQX2M \Alu_Out_reg[1]  ( .D(ALU_OUT_FF[1]), .SI(Alu_Out[0]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[1]) );
  SDFFRQX2M \Alu_Out_reg[0]  ( .D(ALU_OUT_FF[0]), .SI(test_si), .SE(test_se), 
        .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[0]) );
  SDFFRQX2M \Alu_Out_reg[15]  ( .D(ALU_OUT_FF[15]), .SI(Alu_Out[14]), .SE(
        test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[15]) );
  SDFFRQX2M \Alu_Out_reg[14]  ( .D(ALU_OUT_FF[14]), .SI(Alu_Out[13]), .SE(
        test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[14]) );
  SDFFRQX2M \Alu_Out_reg[13]  ( .D(ALU_OUT_FF[13]), .SI(Alu_Out[12]), .SE(
        test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[13]) );
  SDFFRQX2M \Alu_Out_reg[12]  ( .D(ALU_OUT_FF[12]), .SI(Alu_Out[11]), .SE(
        test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[12]) );
  SDFFRQX2M \Alu_Out_reg[11]  ( .D(ALU_OUT_FF[11]), .SI(Alu_Out[10]), .SE(
        test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[11]) );
  SDFFRQX2M \Alu_Out_reg[10]  ( .D(ALU_OUT_FF[10]), .SI(Alu_Out[9]), .SE(
        test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[10]) );
  SDFFRQX2M \Alu_Out_reg[9]  ( .D(ALU_OUT_FF[9]), .SI(Alu_Out[8]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[9]) );
  SDFFRQX2M \Alu_Out_reg[8]  ( .D(ALU_OUT_FF[8]), .SI(Alu_Out[7]), .SE(test_se), .CK(clk), .RN(Alu_Rst), .Q(Alu_Out[8]) );
  SDFFRQX2M Out_VLD_reg ( .D(Out_VLD_Comb), .SI(Alu_Out[15]), .SE(test_se), 
        .CK(clk), .RN(Alu_Rst), .Q(Out_VLD) );
  BUFX2M U7 ( .A(A[6]), .Y(n27) );
  INVX2M U23 ( .A(n57), .Y(n158) );
  INVX2M U24 ( .A(n59), .Y(n159) );
  INVX2M U25 ( .A(n63), .Y(n160) );
  INVX2M U26 ( .A(n71), .Y(n162) );
  INVX2M U27 ( .A(n62), .Y(n161) );
  NAND2X2M U28 ( .A(n115), .B(n116), .Y(n71) );
  NAND2X2M U29 ( .A(n125), .B(n129), .Y(n57) );
  NAND2X2M U30 ( .A(n115), .B(n131), .Y(n63) );
  AND2X2M U31 ( .A(n132), .B(n131), .Y(n55) );
  NAND2X2M U32 ( .A(n116), .B(n132), .Y(n59) );
  NAND2X2M U33 ( .A(n125), .B(n132), .Y(n58) );
  NAND2X2M U34 ( .A(n115), .B(n125), .Y(n62) );
  AND2X2M U35 ( .A(n129), .B(n131), .Y(n54) );
  NAND2X2M U36 ( .A(n58), .B(n130), .Y(n78) );
  AND2X2M U37 ( .A(n56), .B(n132), .Y(n70) );
  AOI21X2M U38 ( .A0(n51), .A1(n52), .B0(n157), .Y(Out_VLD_Comb) );
  NOR4X1M U39 ( .A(n53), .B(n54), .C(n55), .D(n56), .Y(n52) );
  NOR3X2M U40 ( .A(n60), .B(n162), .C(n29), .Y(n51) );
  NAND3X2M U41 ( .A(n57), .B(n58), .C(n59), .Y(n53) );
  NAND3X2M U42 ( .A(n62), .B(n63), .C(n64), .Y(n60) );
  AND2X2M U43 ( .A(n56), .B(n129), .Y(n79) );
  INVX2M U44 ( .A(n64), .Y(n163) );
  BUFX2M U45 ( .A(n61), .Y(n29) );
  OAI2BB1X2M U46 ( .A0N(n129), .A1N(n116), .B0(n130), .Y(n61) );
  OAI2BB1X2M U47 ( .A0N(N118), .A1N(n65), .B0(n66), .Y(ALU_OUT_FF[9]) );
  OAI2BB1X2M U48 ( .A0N(N119), .A1N(n65), .B0(n66), .Y(ALU_OUT_FF[10]) );
  OAI2BB1X2M U49 ( .A0N(N120), .A1N(n65), .B0(n66), .Y(ALU_OUT_FF[11]) );
  OAI2BB1X2M U50 ( .A0N(N121), .A1N(n65), .B0(n66), .Y(ALU_OUT_FF[12]) );
  OAI2BB1X2M U51 ( .A0N(N122), .A1N(n65), .B0(n66), .Y(ALU_OUT_FF[13]) );
  OAI2BB1X2M U52 ( .A0N(N123), .A1N(n65), .B0(n66), .Y(ALU_OUT_FF[14]) );
  OAI2BB1X2M U53 ( .A0N(N124), .A1N(n65), .B0(n66), .Y(ALU_OUT_FF[15]) );
  NOR2BX2M U54 ( .AN(Alu_Fun[2]), .B(Alu_Fun[1]), .Y(n125) );
  NOR2BX2M U55 ( .AN(Alu_Fun[1]), .B(Alu_Fun[2]), .Y(n56) );
  NOR2BX2M U56 ( .AN(Alu_Fun[3]), .B(Alu_Fun[0]), .Y(n115) );
  NOR2X2M U57 ( .A(Alu_Fun[3]), .B(Alu_Fun[0]), .Y(n132) );
  NOR2X2M U58 ( .A(Alu_Fun[2]), .B(Alu_Fun[1]), .Y(n131) );
  OAI22X1M U59 ( .A0(n64), .A1(n153), .B0(n71), .B1(n156), .Y(n114) );
  NOR2BX2M U60 ( .AN(Alu_Fun[0]), .B(Alu_Fun[3]), .Y(n129) );
  NAND3X2M U61 ( .A(n125), .B(Alu_Fun[0]), .C(Alu_Fun[3]), .Y(n64) );
  OAI2BB2X1M U62 ( .B0(n64), .B1(n154), .A0N(n161), .A1N(N159), .Y(n124) );
  NAND3X2M U63 ( .A(Alu_Fun[0]), .B(n131), .C(Alu_Fun[3]), .Y(n130) );
  NAND2BX2M U64 ( .AN(n67), .B(ALU_EN), .Y(n66) );
  INVX2M U65 ( .A(ALU_EN), .Y(n157) );
  AND2X2M U66 ( .A(Alu_Fun[2]), .B(Alu_Fun[1]), .Y(n116) );
  AND2X2M U67 ( .A(n70), .B(ALU_EN), .Y(n65) );
  INVX2M U68 ( .A(n3), .Y(n143) );
  AOI221XLM U69 ( .A0(n156), .A1(n29), .B0(n160), .B1(n4), .C0(n159), .Y(n128)
         );
  AOI211X2M U70 ( .A0(N108), .A1(n54), .B0(n159), .C0(n29), .Y(n67) );
  OAI222X1M U71 ( .A0(n84), .A1(n143), .B0(n3), .B1(n85), .C0(n71), .C1(n150), 
        .Y(n83) );
  AOI221XLM U72 ( .A0(n27), .A1(n160), .B0(n29), .B1(n149), .C0(n159), .Y(n85)
         );
  AOI221XLM U73 ( .A0(n160), .A1(n149), .B0(n27), .B1(n78), .C0(n158), .Y(n84)
         );
  AOI221XLM U74 ( .A0(n160), .A1(n154), .B0(n5), .B1(n78), .C0(n158), .Y(n118)
         );
  AOI31X2M U75 ( .A0(n110), .A1(n111), .A2(n112), .B0(n157), .Y(ALU_OUT_FF[1])
         );
  AOI211X2M U76 ( .A0(N159), .A1(n161), .B0(n113), .C0(n114), .Y(n112) );
  AOI222X1M U77 ( .A0(N126), .A1(n79), .B0(n159), .B1(n154), .C0(n5), .C1(n158), .Y(n111) );
  AOI222X1M U78 ( .A0(N92), .A1(n55), .B0(N110), .B1(n70), .C0(N101), .C1(n54), 
        .Y(n110) );
  AOI31X2M U79 ( .A0(n104), .A1(n105), .A2(n106), .B0(n157), .Y(ALU_OUT_FF[2])
         );
  AOI22X1M U80 ( .A0(N102), .A1(n54), .B0(N93), .B1(n55), .Y(n104) );
  AOI221XLM U81 ( .A0(n7), .A1(n163), .B0(n159), .B1(n153), .C0(n107), .Y(n106) );
  AOI222X1M U82 ( .A0(N111), .A1(n70), .B0(n6), .B1(n158), .C0(N127), .C1(n79), 
        .Y(n105) );
  AOI31X2M U83 ( .A0(n98), .A1(n99), .A2(n100), .B0(n157), .Y(ALU_OUT_FF[3])
         );
  AOI22X1M U84 ( .A0(N103), .A1(n54), .B0(N94), .B1(n55), .Y(n98) );
  AOI221XLM U85 ( .A0(n8), .A1(n163), .B0(n159), .B1(n152), .C0(n101), .Y(n100) );
  AOI222X1M U86 ( .A0(N112), .A1(n70), .B0(n7), .B1(n158), .C0(N128), .C1(n79), 
        .Y(n99) );
  AOI31X2M U87 ( .A0(n92), .A1(n93), .A2(n94), .B0(n157), .Y(ALU_OUT_FF[4]) );
  AOI22X1M U88 ( .A0(N104), .A1(n54), .B0(N95), .B1(n55), .Y(n92) );
  AOI221XLM U89 ( .A0(n163), .A1(n9), .B0(n159), .B1(n151), .C0(n95), .Y(n94)
         );
  AOI222X1M U90 ( .A0(N113), .A1(n70), .B0(n8), .B1(n158), .C0(N129), .C1(n79), 
        .Y(n93) );
  AOI31X2M U91 ( .A0(n86), .A1(n87), .A2(n88), .B0(n157), .Y(ALU_OUT_FF[5]) );
  AOI22X1M U92 ( .A0(N105), .A1(n54), .B0(N96), .B1(n55), .Y(n86) );
  AOI221XLM U93 ( .A0(n163), .A1(n27), .B0(n159), .B1(n150), .C0(n89), .Y(n88)
         );
  AOI222X1M U94 ( .A0(N114), .A1(n70), .B0(n9), .B1(n158), .C0(N130), .C1(n79), 
        .Y(n87) );
  AOI31X2M U95 ( .A0(n80), .A1(n81), .A2(n82), .B0(n157), .Y(ALU_OUT_FF[6]) );
  AOI22X1M U96 ( .A0(N106), .A1(n54), .B0(N97), .B1(n55), .Y(n80) );
  AOI221XLM U97 ( .A0(n163), .A1(n28), .B0(n159), .B1(n149), .C0(n83), .Y(n82)
         );
  AOI222X1M U98 ( .A0(N115), .A1(n70), .B0(n158), .B1(n27), .C0(N131), .C1(n79), .Y(n81) );
  AOI31X2M U99 ( .A0(n72), .A1(n73), .A2(n74), .B0(n157), .Y(ALU_OUT_FF[7]) );
  AOI22X1M U100 ( .A0(N132), .A1(n79), .B0(N116), .B1(n70), .Y(n73) );
  AOI22X1M U101 ( .A0(N107), .A1(n54), .B0(N98), .B1(n55), .Y(n72) );
  AOI221XLM U102 ( .A0(n159), .A1(n138), .B0(n158), .B1(n28), .C0(n75), .Y(n74) );
  AOI31X2M U103 ( .A0(n120), .A1(n121), .A2(n122), .B0(n157), .Y(ALU_OUT_FF[0]) );
  AOI22X1M U104 ( .A0(N100), .A1(n54), .B0(N91), .B1(n55), .Y(n120) );
  AOI211X2M U105 ( .A0(n159), .A1(n156), .B0(n123), .C0(n124), .Y(n122) );
  AOI222X1M U106 ( .A0(N109), .A1(n70), .B0(n4), .B1(n158), .C0(N125), .C1(n79), .Y(n121) );
  AOI31X2M U107 ( .A0(n67), .A1(n68), .A2(n69), .B0(n157), .Y(ALU_OUT_FF[8])
         );
  NAND2X2M U108 ( .A(N99), .B(n55), .Y(n68) );
  AOI22X1M U109 ( .A0(n28), .A1(n162), .B0(N117), .B1(n70), .Y(n69) );
  OAI21X2M U110 ( .A0(n126), .A1(n148), .B0(n127), .Y(n123) );
  AOI32X1M U111 ( .A0(n56), .A1(n115), .A2(N157), .B0(n155), .B1(n148), .Y(
        n127) );
  AOI221XLM U112 ( .A0(n160), .A1(n156), .B0(n4), .B1(n78), .C0(n158), .Y(n126) );
  INVX2M U113 ( .A(n128), .Y(n155) );
  INVX2M U114 ( .A(n5), .Y(n154) );
  INVX2M U115 ( .A(n6), .Y(n153) );
  INVX2M U116 ( .A(n4), .Y(n156) );
  INVX2M U117 ( .A(n27), .Y(n149) );
  INVX2M U118 ( .A(n7), .Y(n152) );
  INVX2M U119 ( .A(n9), .Y(n150) );
  INVX2M U120 ( .A(n8), .Y(n151) );
  INVX2M U121 ( .A(n28), .Y(n138) );
  OAI222X1M U122 ( .A0(n108), .A1(n140), .B0(B[2]), .B1(n109), .C0(n71), .C1(
        n154), .Y(n107) );
  AOI221XLM U123 ( .A0(n6), .A1(n160), .B0(n29), .B1(n153), .C0(n159), .Y(n109) );
  AOI221XLM U124 ( .A0(n160), .A1(n153), .B0(n6), .B1(n78), .C0(n158), .Y(n108) );
  OAI222X1M U125 ( .A0(n102), .A1(n142), .B0(B[3]), .B1(n103), .C0(n71), .C1(
        n153), .Y(n101) );
  AOI221XLM U126 ( .A0(n7), .A1(n160), .B0(n29), .B1(n152), .C0(n159), .Y(n103) );
  AOI221XLM U127 ( .A0(n160), .A1(n152), .B0(n7), .B1(n78), .C0(n158), .Y(n102) );
  OAI222X1M U128 ( .A0(n96), .A1(n146), .B0(B[4]), .B1(n97), .C0(n71), .C1(
        n152), .Y(n95) );
  INVX2M U129 ( .A(B[4]), .Y(n146) );
  AOI221XLM U130 ( .A0(n8), .A1(n160), .B0(n29), .B1(n151), .C0(n159), .Y(n97)
         );
  AOI221XLM U131 ( .A0(n160), .A1(n151), .B0(n8), .B1(n78), .C0(n158), .Y(n96)
         );
  OAI222X1M U132 ( .A0(n90), .A1(n145), .B0(B[5]), .B1(n91), .C0(n71), .C1(
        n151), .Y(n89) );
  INVX2M U133 ( .A(B[5]), .Y(n145) );
  AOI221XLM U134 ( .A0(n9), .A1(n160), .B0(n29), .B1(n150), .C0(n159), .Y(n91)
         );
  AOI221XLM U135 ( .A0(n160), .A1(n150), .B0(n9), .B1(n78), .C0(n158), .Y(n90)
         );
  OAI222X1M U136 ( .A0(n76), .A1(n144), .B0(B[7]), .B1(n77), .C0(n71), .C1(
        n149), .Y(n75) );
  INVX2M U137 ( .A(B[7]), .Y(n144) );
  AOI221XLM U138 ( .A0(n160), .A1(n28), .B0(n29), .B1(n138), .C0(n159), .Y(n77) );
  AOI221XLM U139 ( .A0(n160), .A1(n138), .B0(n28), .B1(n78), .C0(n158), .Y(n76) );
  OAI221X1M U140 ( .A0(B[1]), .A1(n117), .B0(n118), .B1(n147), .C0(n119), .Y(
        n113) );
  INVX2M U141 ( .A(B[1]), .Y(n147) );
  NAND4X2M U142 ( .A(N158), .B(n56), .C(Alu_Fun[3]), .D(Alu_Fun[0]), .Y(n119)
         );
  AOI221XLM U143 ( .A0(n5), .A1(n160), .B0(n29), .B1(n154), .C0(n159), .Y(n117) );
  INVX2M U144 ( .A(n30), .Y(n139) );
  INVX2M U145 ( .A(n41), .Y(n141) );
  BUFX2M U146 ( .A(A[7]), .Y(n28) );
  BUFX2M U147 ( .A(A[1]), .Y(n5) );
  BUFX2M U148 ( .A(A[0]), .Y(n4) );
  BUFX2M U149 ( .A(A[3]), .Y(n7) );
  BUFX2M U150 ( .A(A[5]), .Y(n9) );
  BUFX2M U151 ( .A(A[4]), .Y(n8) );
  BUFX2M U152 ( .A(A[2]), .Y(n6) );
  BUFX2M U153 ( .A(B[6]), .Y(n3) );
  INVX2M U154 ( .A(B[0]), .Y(n148) );
  INVX2M U155 ( .A(B[2]), .Y(n140) );
  INVX2M U156 ( .A(B[3]), .Y(n142) );
  NOR2X1M U157 ( .A(n138), .B(B[7]), .Y(n134) );
  NAND2BX1M U158 ( .AN(B[4]), .B(n8), .Y(n45) );
  NAND2BX1M U159 ( .AN(n8), .B(B[4]), .Y(n34) );
  CLKNAND2X2M U160 ( .A(n45), .B(n34), .Y(n47) );
  NOR2X1M U161 ( .A(n142), .B(n7), .Y(n42) );
  NOR2X1M U162 ( .A(n140), .B(n6), .Y(n33) );
  NOR2X1M U163 ( .A(n148), .B(n4), .Y(n30) );
  CLKNAND2X2M U164 ( .A(n6), .B(n140), .Y(n44) );
  NAND2BX1M U165 ( .AN(n33), .B(n44), .Y(n39) );
  AOI21X1M U166 ( .A0(n30), .A1(n154), .B0(B[1]), .Y(n31) );
  AOI211X1M U167 ( .A0(n5), .A1(n139), .B0(n39), .C0(n31), .Y(n32) );
  CLKNAND2X2M U168 ( .A(n7), .B(n142), .Y(n43) );
  OAI31X1M U169 ( .A0(n42), .A1(n33), .A2(n32), .B0(n43), .Y(n35) );
  NAND2BX1M U170 ( .AN(n9), .B(B[5]), .Y(n50) );
  OAI211X1M U171 ( .A0(n47), .A1(n35), .B0(n34), .C0(n50), .Y(n36) );
  NAND2BX1M U172 ( .AN(B[5]), .B(n9), .Y(n46) );
  XNOR2X1M U173 ( .A(n27), .B(n3), .Y(n49) );
  AOI32X1M U174 ( .A0(n36), .A1(n46), .A2(n49), .B0(n3), .B1(n149), .Y(n37) );
  CLKNAND2X2M U175 ( .A(B[7]), .B(n138), .Y(n135) );
  OAI21X1M U176 ( .A0(n134), .A1(n37), .B0(n135), .Y(N159) );
  CLKNAND2X2M U177 ( .A(n4), .B(n148), .Y(n40) );
  OA21X1M U178 ( .A0(n40), .A1(n154), .B0(B[1]), .Y(n38) );
  AOI211X1M U179 ( .A0(n40), .A1(n154), .B0(n39), .C0(n38), .Y(n41) );
  AOI31X1M U180 ( .A0(n141), .A1(n44), .A2(n43), .B0(n42), .Y(n48) );
  OAI2B11X1M U181 ( .A1N(n48), .A0(n47), .B0(n46), .C0(n45), .Y(n133) );
  AOI32X1M U182 ( .A0(n133), .A1(n50), .A2(n49), .B0(n27), .B1(n143), .Y(n136)
         );
  AOI2B1X1M U183 ( .A1N(n136), .A0(n135), .B0(n134), .Y(n137) );
  CLKINVX1M U184 ( .A(n137), .Y(N158) );
  NOR2X1M U185 ( .A(N159), .B(N158), .Y(N157) );
  Alu_16_DW_div_uns_0 div_48 ( .a({n28, n27, n9, n8, n7, n6, n5, n4}), .b({
        B[7], n3, B[5:0]}), .quotient({N132, N131, N130, N129, N128, N127, 
        N126, N125}) );
  Alu_16_DW01_sub_0 sub_46 ( .A({1'b0, n28, n27, n9, n8, n7, n6, n5, n4}), .B(
        {1'b0, B[7], n3, B[5:0]}), .CI(1'b0), .DIFF({N108, N107, N106, N105, 
        N104, N103, N102, N101, N100}) );
  Alu_16_DW01_add_0 add_45 ( .A({1'b0, n28, n27, n9, n8, n7, n6, n5, n4}), .B(
        {1'b0, B[7], n3, B[5:0]}), .CI(1'b0), .SUM({N99, N98, N97, N96, N95, 
        N94, N93, N92, N91}) );
  Alu_16_DW02_mult_0 mult_47 ( .A({n28, n27, n9, n8, n7, n6, n5, n4}), .B({
        B[7], n3, B[5:0]}), .TC(1'b0), .PRODUCT({N124, N123, N122, N121, N120, 
        N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109}) );
endmodule


module CLK_GATE ( CLK_EN, test_en, CLK, GATED_CLK );
  input CLK_EN, test_en, CLK;
  output GATED_CLK;
  wire   _0_net_;

  TLATNCAX12M U0_TLATNCAX12M ( .E(_0_net_), .CK(CLK), .ECK(GATED_CLK) );
  OR2X2M U1 ( .A(CLK_EN), .B(test_en), .Y(_0_net_) );
endmodule


module System_TOP ( RST_TOP, REF_CLK, UART_CLK, RX_IN_TOP, SI, SE, scan_clk, 
        scan_rst, test_mode, SO, TX_OUT_TOP, PARITY_ERROR, FRAMING_ERROR, 
        test_si2, test_so2, test_si3, test_so3, test_si4 );
  input RST_TOP, REF_CLK, UART_CLK, RX_IN_TOP, SI, SE, scan_clk, scan_rst,
         test_mode, test_si2, test_si3, test_si4;
  output SO, TX_OUT_TOP, PARITY_ERROR, FRAMING_ERROR, test_so2, test_so3;
  wire   Ref_muxed_clk, UART_muxed_clk, UART_TX_CLK, UART_TX_CLK_M,
         UART_RX_CLK, UART_RX_CLK_M, MUXed_rst, REF_SYNC_RST, REF_SYNC_RST_M,
         UART_SYNC_RST, UART_SYNC_RST_M, UART_RX_VLD, SYNC_VLD, WR_INC, RD_INC,
         F_FULL, F_EMPITY, UART_TX_BUSY, Rd_D_VLD, ALU_OUT_VLD, WrEn, RdEn,
         ALU_EN, GATE_EN, ALU_CLK, n1, n2, n3, n4, n5, n6, n8, n9, n10, n15,
         n16, n17, n18, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32,
         n33, n34, n35, n36;
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

  INVX2M U3 ( .A(n4), .Y(n3) );
  INVX2M U4 ( .A(F_EMPITY), .Y(n1) );
  INVX4M U5 ( .A(n6), .Y(n5) );
  INVX2M U6 ( .A(REF_SYNC_RST_M), .Y(n6) );
  INVX2M U7 ( .A(UART_SYNC_RST_M), .Y(n4) );
  BUFX2M U8 ( .A(test_mode), .Y(n2) );
  DLY1X1M U13 ( .A(n23), .Y(n22) );
  INVXLM U14 ( .A(n33), .Y(n23) );
  DLY1X1M U15 ( .A(n26), .Y(n24) );
  INVXLM U16 ( .A(n35), .Y(n25) );
  INVXLM U17 ( .A(n25), .Y(n26) );
  INVXLM U18 ( .A(n25), .Y(n27) );
  INVXLM U19 ( .A(n25), .Y(n28) );
  INVXLM U20 ( .A(n34), .Y(n29) );
  INVXLM U21 ( .A(n29), .Y(n30) );
  INVXLM U22 ( .A(n36), .Y(n31) );
  INVXLM U23 ( .A(n31), .Y(n32) );
  INVXLM U24 ( .A(SE), .Y(n33) );
  INVXLM U25 ( .A(n33), .Y(n34) );
  INVXLM U26 ( .A(n33), .Y(n35) );
  INVXLM U27 ( .A(n33), .Y(n36) );
  mux2X1_1 U0_MUX2x1 ( .IN_0(REF_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        Ref_muxed_clk) );
  mux2X1_4 U1_MUX2x1 ( .IN_0(UART_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_muxed_clk) );
  mux2X1_3 U3_MUX2x1 ( .IN_0(UART_TX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_TX_CLK_M) );
  mux2X1_2 U4_MUX2x1 ( .IN_0(UART_RX_CLK), .IN_1(scan_clk), .SEL(n2), .OUT(
        UART_RX_CLK_M) );
  mux2X1_0 U5_MUX2x1 ( .IN_0(RST_TOP), .IN_1(scan_rst), .SEL(n2), .OUT(
        MUXed_rst) );
  mux2X1_6 U6_MUX2x1 ( .IN_0(REF_SYNC_RST), .IN_1(scan_rst), .SEL(n2), .OUT(
        REF_SYNC_RST_M) );
  mux2X1_5 U7_MUX2x1 ( .IN_0(UART_SYNC_RST), .IN_1(scan_rst), .SEL(n2), .OUT(
        UART_SYNC_RST_M) );
  sync_rst_test_0 U0_RST_SYNC ( .RST(MUXed_rst), .clk(Ref_muxed_clk), 
        .SYNC_rst(REF_SYNC_RST), .test_si(n15), .test_se(n35) );
  sync_rst_test_1 U1_RST_SYNC ( .RST(MUXed_rst), .clk(UART_muxed_clk), 
        .SYNC_rst(UART_SYNC_RST), .test_si(n8), .test_se(n32) );
  DATA_SYNC_test_1 U0_DATA_SYNC ( .CLK(Ref_muxed_clk), .RST(n5), .unsync_bus(
        UART_RX_DATA), .bus_enable(UART_RX_VLD), .sync_bus(SYNC_RX_DATA), 
        .enable_pulse_d(SYNC_VLD), .test_si(n17), .test_so(n16), .test_se(n30)
         );
  Async_FIFO_test_1 U0_ASYNC_FIFO ( .WR_clk(Ref_muxed_clk), .WR_rst(n5), 
        .WR_inc(WR_INC), .WR_Data(WR_DATA_FIFO), .RD_clk(UART_muxed_clk), 
        .RD_rst(n3), .RD_inc(RD_INC), .FULL(F_FULL), .EMPTY(F_EMPITY), 
        .RD_Data(RD_DATA_FIFO), .test_si2(test_si2), .test_si1(ALU_OUT_VLD), 
        .test_so2(n18), .test_so1(SO), .test_se(SE) );
  pulse_Gen_test_1 U0_PULSE_GEN ( .CLK(UART_TX_CLK_M), .RST(n3), .in_signal(
        UART_TX_BUSY), .pulsed_signal(RD_INC), .test_si(n16), .test_so(n15), 
        .test_se(n30) );
  CLK_div_test_0 U0_CLK_DIV ( .i_rst_n(n3), .i_ref_clk(UART_muxed_clk), 
        .i_clk_en(1'b1), .i_div_ratio(DIV_RATiO), .o_div_clk(UART_TX_CLK), 
        .test_si(n18), .test_so(n17), .test_se(n27) );
  clk_div_mux U0_MUXED_CLK_DIV ( .in(UART_CONF[7:2]), .div_ratio({
        SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1, 
        SYNOPSYS_UNCONNECTED__2, SYNOPSYS_UNCONNECTED__3, RX_div_Ratio[3:0]})
         );
  CLK_div_test_1 U1_CLK_DIV ( .i_rst_n(n3), .i_ref_clk(UART_muxed_clk), 
        .i_clk_en(1'b1), .i_div_ratio({1'b0, 1'b0, 1'b0, 1'b0, 
        RX_div_Ratio[3:0]}), .o_div_clk(UART_RX_CLK), .test_si(n9), .test_so(
        n8), .test_se(n34) );
  UART_test_1 U0_UART ( .RST(n3), .TX_CLK(UART_TX_CLK_M), .RX_CLK(
        UART_RX_CLK_M), .RX_IN_S(RX_IN_TOP), .RX_OUT_P(UART_RX_DATA), 
        .RX_OUT_V(UART_RX_VLD), .TX_IN_P(RD_DATA_FIFO), .TX_IN_V(n1), 
        .TX_OUT_S(TX_OUT_TOP), .TX_OUT_V(UART_TX_BUSY), .Prescale(
        UART_CONF[7:2]), .parity_enable(UART_CONF[0]), .parity_type(
        UART_CONF[1]), .parity_error(PARITY_ERROR), .framing_error(
        FRAMING_ERROR), .test_si2(UART_SYNC_RST), .test_si1(n10), .test_so1(n9), .test_se(n22) );
  Sys_Ctrl_test_1 U0_SYS_CTRL ( .Sys_clk(Ref_muxed_clk), .Sys_rst(n5), 
        .RX_P_Data(SYNC_RX_DATA), .RX_D_VLd(SYNC_VLD), .Rd_Data(Rd_DATA_RF), 
        .Rd_Data_VLd(Rd_D_VLD), .ALU_out(ALU_OUT_DATA), .ALU_out_VLd(
        ALU_OUT_VLD), .FIFO_full(F_FULL), .Address(Address), .Wr_En(WrEn), 
        .Rd_En(RdEn), .Wr_Data(WR_D_RF), .ALU_fun(ALU_FUN), .ALU_EN(ALU_EN), 
        .CLK_ALU_EN(GATE_EN), .WR_Data_FIFO(WR_DATA_FIFO), .WR_INC(WR_INC), 
        .test_si(test_si4), .test_so(n10), .test_se(n24) );
  Register_file_test_1 U0_Reg_file ( .Wr_Data(WR_D_RF), .address(Address), 
        .Wr_En(WrEn), .Rd_En(RdEn), .clk(Ref_muxed_clk), .rst(n5), 
        .Rd_Data_VLD(Rd_D_VLD), .Rd_Data(Rd_DATA_RF), .Reg0(Op_A), .Reg1(Op_B), 
        .Reg2(UART_CONF), .Reg3(DIV_RATiO), .test_si2(test_si3), .test_si1(
        REF_SYNC_RST), .test_so2(test_so3), .test_so1(test_so2), .test_se(SE)
         );
  Alu_16_test_1 U0_ALU ( .A(Op_A), .B(Op_B), .Alu_Fun(ALU_FUN), .ALU_EN(ALU_EN), .clk(ALU_CLK), .Alu_Rst(n5), .Out_VLD(ALU_OUT_VLD), .Alu_Out(ALU_OUT_DATA), 
        .test_si(SI), .test_se(n28) );
  CLK_GATE U0_CLK_GATE ( .CLK_EN(GATE_EN), .test_en(n2), .CLK(Ref_muxed_clk), 
        .GATED_CLK(ALU_CLK) );
endmodule

