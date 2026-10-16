module clk_div_mux (

input       [5:0] in ,

output reg  [7:0] div_ratio 

);

always @(*) 
begin

    case (in)
      6'b100000  : div_ratio = 8'd1 ;
      6'b010000  : div_ratio = 8'd2 ;
      6'b001000  : div_ratio = 8'd4 ; 
      6'b000100  : div_ratio = 8'd8 ;      
        default: div_ratio = 8'd1 ;
    endcase

end
endmodule