module System_TOP (

input         RST_TOP,
input         REF_CLK , UART_CLK ,
input         RX_IN_TOP ,

output        TX_OUT_TOP ,
output        PARITY_ERROR ,
output        FRAMING_ERROR 

);

wire                   REF_SYNC_RST  ,
                       UART_SYNC_RST ;  

wire                   UART_TX_CLK   ,
                       UART_RX_CLK   ,
                       ALU_CLK       ;

wire           [7:0]   UART_RX_DATA ;

wire                   UART_RX_VLD  , 
                       UART_TX_BUSY ;

wire           [7:0]   SYNC_RX_DATA ;
wire                   SYNC_VLD     ;

wire                   WrEn , RdEn  ,
                       WR_INC,ALU_EN,
                       GATE_EN      ;

wire           [7:0]   WR_DATA_FIFO , 
                       WR_D_RF      ;

wire           [3:0]   Address      ,
                       ALU_FUN      ;

wire           [7:0]   Rd_DATA_RF   ,
                       Op_A ,Op_B   ,
                       UART_CONF    , 
                       DIV_RATiO    ;

wire                  Rd_D_VLD      ;

wire                  ALU_OUT_VLD   ;

wire           [15:0]  ALU_OUT_DATA  ;
wire           [7:0]   RX_div_Ratio  , 
                       RD_DATA_FIFO  ;

wire                  RD_INC        ,
                      F_EMPITY      ,
                      F_FULL        ;



///********************************************************///
//////////////////// Reset synchronizers /////////////////////
///********************************************************/// 

sync_rst #(.NUM_stages(2)) U0_RST_SYNC (
          .RST(RST_TOP),
          .clk(REF_CLK),
          .SYNC_rst(REF_SYNC_RST)
);

sync_rst #(.NUM_stages(2)) U1_RST_SYNC (
          .RST(RST_TOP),
          .clk(UART_CLK),
          .SYNC_rst(UART_SYNC_RST)
);

///********************************************************///
////////////////////// Data Synchronizer /////////////////////
///********************************************************///

DATA_SYNC # ( .NUM_STAGES(2) , .BUS_WIDTH(8) )  U0_DATA_SYNC (
          .CLK(REF_CLK),
          .RST(REF_SYNC_RST),
          .unsync_bus(UART_RX_DATA),
          .bus_enable(UART_RX_VLD),
          .sync_bus(SYNC_RX_DATA),
          .enable_pulse_d(SYNC_VLD) 
        
);                                                                           

///********************************************************///
///////////////////////// Async FIFO /////////////////////////
///********************************************************///            

Async_FIFO #( .D_width(8) , .F_depth(8) , .Ad_width($clog2(8)) ) U0_ASYNC_FIFO (
          .WR_clk(REF_CLK),
          .WR_rst(REF_SYNC_RST),
          .WR_inc(WR_INC),
          .WR_Data(WR_DATA_FIFO),
          .RD_clk(UART_CLK),
          .RD_rst(UART_SYNC_RST),
          .RD_Data(RD_DATA_FIFO ),
          .RD_inc(RD_INC),
          .FULL(F_FULL),
          .EMPTY(F_EMPITY)
);

///********************************************************///
//////////////////////// Pulse Generator /////////////////////
///********************************************************///
pulse_Gen U0_PULSE_GEN (
         .CLK(UART_TX_CLK),
         .RST(UART_SYNC_RST),
         .in_signal(UART_TX_BUSY),
         .pulsed_signal(RD_INC)
);

///********************************************************///
//////////// Clock Divider for UART_TX Clock /////////////////
///********************************************************///

CLK_div U0_CLK_DIV (
        .i_rst_n(UART_SYNC_RST), 
        .i_ref_clk(UART_CLK),
        .i_clk_en(1'b1),
        .i_div_ratio(DIV_RATiO ),
        .o_div_clk(UART_TX_CLK)
);

///********************************************************///
/////////////////////// Custom Mux Clock /////////////////////
///********************************************************///

clk_div_mux U0_MUXED_CLK_DIV (
         .in(UART_CONF[7:2]),
         .div_ratio(RX_div_Ratio) 

);

///********************************************************///
//////////// Clock Divider for UART_RX Clock /////////////////
///********************************************************///

CLK_div U1_CLK_DIV (
        .i_rst_n(UART_SYNC_RST), 
        .i_ref_clk(UART_CLK),
        .i_clk_en(1'b1),
        .i_div_ratio(RX_div_Ratio),
        .o_div_clk(UART_RX_CLK)
);

///********************************************************///
/////////////////////////// UART /////////////////////////////
///********************************************************///

UART U0_UART (
        .RST(UART_SYNC_RST),
        .TX_CLK(UART_TX_CLK),
        .RX_CLK(UART_RX_CLK),
        .RX_IN_S(RX_IN_TOP),
        .RX_OUT_P(UART_RX_DATA),
        .RX_OUT_V( UART_RX_VLD ),
        .TX_IN_P(RD_DATA_FIFO),
        .TX_IN_V(!F_EMPITY),
        .TX_OUT_S(TX_OUT_TOP),
        .TX_OUT_V(UART_TX_BUSY),
        .Prescale(UART_CONF[7:2]), 
        .parity_enable(UART_CONF[0]),
        .parity_type(UART_CONF[1]),
        .parity_error(PARITY_ERROR),
        .framing_error(FRAMING_ERROR)
);

///********************************************************///
//////////////////// System Controller ///////////////////////
///********************************************************///

Sys_Ctrl U0_SYS_CTRL (
        .Sys_clk(REF_CLK),
        .Sys_rst(REF_SYNC_RST),
        .RX_P_Data(SYNC_RX_DATA),
        .RX_D_VLd(SYNC_VLD),
        .Rd_Data(Rd_DATA_RF),
        .Rd_Data_VLd(Rd_D_VLD),
        .ALU_out( ALU_OUT_DATA),
        .ALU_out_VLd(ALU_OUT_VLD),
        .FIFO_full(F_FULL),
        .Address(Address),
        .Wr_En(WrEn),
        .Rd_En(RdEn),
        .Wr_Data( WR_D_RF),
        .ALU_fun(ALU_FUN),
        .ALU_EN(ALU_EN),
        .CLK_ALU_EN(GATE_EN),
        .WR_Data_FIFO(WR_DATA_FIFO),
        .WR_INC(WR_INC) 

);


///********************************************************///
/////////////////////// Register File ////////////////////////
///********************************************************///

Register_file U0_Reg_file (
         .Wr_Data(WR_D_RF),
         .address(Address),
         .Wr_En(WrEn),
         .Rd_En(RdEn),
         .clk(REF_CLK),
         .rst(REF_SYNC_RST),
         .Rd_Data_VLD(Rd_D_VLD),
         .Rd_Data(Rd_DATA_RF),
         .Reg0(Op_A),
         .Reg1(Op_B),
         .Reg2(UART_CONF),
         .Reg3(DIV_RATiO)
);

///********************************************************///
//////////////////////////// ALU /////////////////////////////
///********************************************************///
Alu_16 U0_ALU (
      .A(Op_A),
      .B(Op_B),
      .Alu_Fun(ALU_FUN),
      .ALU_EN(ALU_EN),
      .clk(ALU_CLK),
      .Alu_Rst(REF_SYNC_RST),
      .Out_VLD(ALU_OUT_VLD),
      .Alu_Out(ALU_OUT_DATA)
);

///********************************************************///
///////////////////////// Clock Gating ///////////////////////
///********************************************************///

CLK_GATE U0_CLK_GATE (
         .CLK_EN(GATE_EN),
         .CLK(REF_CLK),
         .GATED_CLK(ALU_CLK)
);

endmodule
