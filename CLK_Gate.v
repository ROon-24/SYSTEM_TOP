module CLK_GATE (
input      CLK_EN,
input      CLK,
output     GATED_CLK
);

//internal signal
reg     Latch_Out ;

//latch (Level Sensitive Device)
always @(CLK or CLK_EN)
 begin
  if(!CLK)      // active low latch
   begin
    Latch_Out <= CLK_EN ;
   end
 end
 
assign  GATED_CLK = CLK && Latch_Out ;

endmodule