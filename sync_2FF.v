module sync_2FF #(
    parameter F_depth = 8 ,
    parameter Ad_width = $clog2(F_depth) 
) 
(
  input                       clk_sync , rst_sync ,
  input       [Ad_width : 0]  ptr_sync ,

  output reg  [Ad_width : 0]  Sync_out

);

reg [Ad_width : 0]  wq1_reg ;

always @(posedge clk_sync , negedge rst_sync )
begin
    if (!rst_sync)
       begin
        Sync_out <= 'b0 ;
        wq1_reg <= 'b0 ;
       end
    else 
      begin
        wq1_reg <= ptr_sync ;
        Sync_out <= wq1_reg ;
      end

end
    
endmodule