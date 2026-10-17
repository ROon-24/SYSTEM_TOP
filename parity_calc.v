module parity_calc (

    input wire [7:0] P_Data_par ,
    input wire       Data_valid_par ,
    input wire       Par_TYP_par ,
    input wire       rst_par , clk_par ,

    output reg       Par_bit_par
  
);


always @(posedge clk_par , negedge rst_par) 
  begin 
    if (!rst_par) 
       begin
        Par_bit_par <= 1'b0;
      end
    else if (Data_valid_par)
      begin
                     //even///
         case (Par_TYP_par) 
           1'b0 : begin 
                 
                  Par_bit_par <= (^P_Data_par);
           end
                     //odd///
           1'b1 : begin 
              
                  Par_bit_par <= ~(^P_Data_par);
             end
           default : Par_bit_par <= 1'b0;        
    
         endcase 
       end 


   end
endmodule