module mux_tx (

input wire [1:0] mux_sel ,
input wire       ser_data_mux ,
input wire       Par_bit_mux ,

output reg    TX_out_max 

);

localparam  start_bit = 1'b0  ,  
            stop_bit  = 1'b1  ;

always @(*) begin
    case(mux_sel)
     2'b00 : TX_out_max = start_bit ;
     2'b01 : TX_out_max = ser_data_mux ;
     2'b10 : TX_out_max = Par_bit_mux ;
     2'b11 : TX_out_max = stop_bit ;
    default : TX_out_max = 1'b1;
    endcase 
end

endmodule
