module Top_Tx (

    input wire   [7:0] P_DATA ,
    input wire         PAR_EN ,
    input wire         Data_Valid ,
    input wire         PAR_TYP ,
    input wire         CLK , RST ,

    output wire        TX_OUT ,
    output wire         Busy
);

wire  [1:0] MUX_SEL ;
wire  ser_done , ser_en , ser_data ,Par_bit  ;


Serializer_tx ser_U0 (
           .P_Data_ser(P_DATA),
           .Data_valid_ser(Data_Valid),
           .ser_en_ser(ser_en),
           .rst_ser(RST),
           .clk_ser(CLK),
           .ser_done_ser(ser_done),//output
           .out_Data_ser(ser_data)//output
           
);

FSM_tx fsm_U0 (
      .Data_v_fsm(Data_Valid),
      .Par_en_fsm(PAR_EN),
      .ser_done_fsm(ser_done),//input
      .rst_fsm(RST),
      .clk_fsm(CLK),
      .ser_en_fsm(ser_en) ,//output
      .mux_sel_fsm(MUX_SEL),
      .busy_fsm(Busy)

);

parity_calc parity_U0 (
          .P_Data_par(P_DATA),
          .Data_valid_par(Data_Valid),
          .Par_TYP_par(PAR_TYP),
          .Par_bit_par(Par_bit),
          .rst_par(RST),
          .clk_par(CLK)
      
);


mux_tx mux_U0 (
      .mux_sel(MUX_SEL),//input
      .ser_data_mux(ser_data),//input
      .Par_bit_mux(Par_bit),
      .TX_out_max(TX_OUT)

);

endmodule 