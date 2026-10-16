module pulse_Gen(

    input       CLK , RST ,
    input       in_signal ,

    output      pulsed_signal 
);

reg      in_Flop , out_Flop ;

always @(posedge CLK or negedge RST)
 begin
  if(!RST)      // active low
   begin
    in_Flop  <= 1'b0 ;
    out_Flop <= 1'b0 ;	
   end
  else
   begin
     in_Flop  <= in_signal ;
     out_Flop <= in_Flop ;
   end  
 end

 
assign pulsed_signal = in_Flop && out_Flop ;

endmodule