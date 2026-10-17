module stop_chk_RX(

    input       clk , rst ,
    input       stp_chk_en ,
    input       sampled_stp_bit ,

    output reg  stp_err 
);

always @(posedge clk or negedge rst )
 begin
  if (!rst) begin
      stp_err <= 1'b0 ; 
    end 
  else if(stp_chk_en) begin
        stp_err <= (sampled_stp_bit != 1'b1);
          end
      else  stp_err <= 1'b0 ;
    
end

endmodule