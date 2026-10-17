module parity_chk_RX(
 
 input         clk , rst ,
 input         par_chk_en ,
 input         par_typ ,
 input [7:0]   sampled_data ,
 input         sampled_par_bit ,

 output reg    par_err 

);

/*wire  par_calc ;
assign par_calc = (par_typ) ? ~^sampled_data : ^sampled_data ;
*/

reg par_calc ;

always @(posedge clk or negedge rst) begin
   begin
   if(!rst) begin
     par_calc <= 1'b0 ;
      end 
     if (par_typ) begin
       par_calc <= ~^sampled_data ;
       end 
     else 
      par_calc <= ^sampled_data ;
end
end

always @(posedge clk or negedge rst)
 begin
   if(!rst) begin
     par_err <= 1'b0 ;
      end
  else if (par_chk_en) 
      par_err <= (sampled_par_bit != par_calc);
    else 
        par_err <= 1'b0 ;     
end

endmodule