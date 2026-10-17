module UART (

 input   wire                          RST,
 input   wire                          TX_CLK,
 input   wire                          RX_CLK,
 input   wire                          RX_IN_S,
 output  wire   [7:0]                  RX_OUT_P, 
 output  wire                          RX_OUT_V,
 input   wire   [7:0]                  TX_IN_P, 
 input   wire                          TX_IN_V, 
 output  wire                          TX_OUT_S,
 output  wire                          TX_OUT_V,  
 input   wire   [5:0]                  Prescale, 
 input   wire                          parity_enable,
 input   wire                          parity_type,
 output  wire                          parity_error,
 output  wire                          framing_error
);


Top_Tx  U0_UART_TX(
            .RST(RST),
            .CLK(TX_CLK),
            .P_DATA(TX_IN_P),
            .Data_Valid(TX_IN_V),
            .PAR_EN(parity_enable),
            .PAR_TYP(parity_type),
            .TX_OUT(TX_OUT_S),
            .Busy(TX_OUT_V)
);


TOP_RX  U0_UART_RX(
            .RST(RST),
            .CLK(RX_CLK), 
            .RX_IN(RX_IN_S),
            .PRESCALE(Prescale),
            .PAR_EN(parity_enable),
            .PAR_TYP(parity_type),
            .P_DATA(RX_OUT_P),
            .PARITY_ERR(parity_error),
            .STOP_ERR(framing_error),
            .DATA_VALID(RX_OUT_V)
);

endmodule