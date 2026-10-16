module TOP_RX(
    
    input          RX_IN ,
    input  [5:0]   PRESCALE ,
    input          CLK , RST ,
    input          PAR_EN , PAR_TYP ,

   output  [7:0]   P_DATA ,
   output          PARITY_ERR , STOP_ERR , DATA_VALID   

);

wire [3:0]   Bit_Cnt  ;
wire [5:0]   Edge_Cnt ;
wire [7:0]   Deser_Data;
wire         Dat_Samp_En , Enable,
             Stp_Chk_En ,Par_Err,Stp_Err, 
             Strt_Glitch , Strt_Chk_En ,
             Par_Chk_En ,OUT_EN , 
             Deser_En , Sampled_Bit ; 
assign P_DATA = Deser_Data ;             

assign PARITY_ERR = Par_Err;
assign STOP_ERR  = Stp_Err ;


FSM_RX  U0_FSM (
              .RX_in_fsm (RX_IN),
              .clk(CLK) ,
              .rst(RST) ,
              .Par_en_fsm(PAR_EN) ,
              .bit_cnt_fsm(Bit_Cnt) ,
              .strt_glitch_fsm (Strt_Glitch) ,
              .par_err_fsm(Par_Err) , 
              .stp_err_fsm(Stp_Err) ,
              .prescale_fsm(PRESCALE),
              .edge_cnt_fsm(Edge_Cnt),
              .par_chk_en(Par_Chk_En) ,  /*outputs */
              .strt_chk_en(Strt_Chk_En) , 
              .stp_chk_en(Stp_Chk_En) , 
              .deser_en_fsm(Deser_En),
              .enable(Enable) , 
              .data_samp_en(Dat_Samp_En) ,
              .data_valid_fsm(DATA_VALID)   
);

data_sampling_RX U0_DATA_SAMPLing(
                .clk(CLK) , 
                .rst(RST) ,  
                .RX_in_sampling(RX_IN) ,
                .prescale_sampling(PRESCALE) ,
                .edge_cnt_sampling(Edge_Cnt) ,
                .data_samp_en(Dat_Samp_En) , 
                .sampled_out (Sampled_Bit) /*output */               

);

deserializer  U0_Deserializer(
                .clk(CLK) ,
                .rst(RST) ,
                .sampled_data_bit(Sampled_Bit) ,
                .deser_en(Deser_En) ,
                .deser_out(Deser_Data)
);

/*P_data_iso  U0_out_Isolation(
                .clk(CLK),
                .rst(RST),
                .out_en(DATA_VALID),
                .deser_data(Deser_Data),
                .out_Data(P_DATA)

);*/

parity_chk_RX  U0_Parity_Chk(
                .clk(CLK),
                .rst(RST),
                .par_chk_en(Par_Chk_En),
                .par_typ(PAR_TYP),
                .sampled_data(Deser_Data),
                .sampled_par_bit(Sampled_Bit),      
                .par_err (Par_Err)
); 

start_chk_RX  U0_Start_Chk(
                .clk(CLK),
                .rst(RST),     
                .strt_chk_en(Strt_Chk_En),
                .sampled_strt_bit(Sampled_Bit),
                .strt_glitch(Strt_Glitch)    

);

stop_chk_RX  U0_Stop_Chk(
                .clk(CLK),
                .rst(RST), 
                .stp_chk_en(Stp_Chk_En) ,
                .sampled_stp_bit(Sampled_Bit) ,
                .stp_err(Stp_Err)   

);

edge_bit_counter  U0_Edge_Bit_Counter (
                .clk(CLK),
                .rst(RST),
                .enable_edge(Enable),
                .prescale_edge(PRESCALE),
                .edge_cnt_edge(Edge_Cnt),
                .bit_cnt_edge(Bit_Cnt)  
);
            
endmodule