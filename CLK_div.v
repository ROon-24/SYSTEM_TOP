module CLK_div(

input         i_rst_n ,
input         i_ref_clk ,
input         i_clk_en  ,//1 at top system
input  [7:0]  i_div_ratio ,

output        o_div_clk  

);


wire CLK_DIV_EN ;
assign CLK_DIV_EN = (i_clk_en && (i_div_ratio != 8'd0 ) && (i_div_ratio != 8'd1 )) ;

wire odd ;
assign odd =i_div_ratio[0];

wire [7:0] half_ratio ;
assign half_ratio =((i_div_ratio >> 1)-1'b0) ;

reg  [7:0] counter ;
reg  toggle_flag ;
reg  div_clk_reg ;


always @(posedge i_ref_clk , negedge i_rst_n)
begin
if(!i_rst_n)
     begin
     div_clk_reg <= 1'b0;
      counter   <= 8'b0;
      toggle_flag  <= 1'b0; 
     end
else if (CLK_DIV_EN) begin
     if (!odd ) begin 
     if (counter == half_ratio) //even
     begin 
        div_clk_reg <= !(div_clk_reg); 
         counter <= 8'b0;
     end
  else
   counter <= counter + 1'b1;
end
  else begin
  if ( ((counter == half_ratio-1'b1) && !toggle_flag )  || ((counter == half_ratio) && toggle_flag ))//odd
    begin
        div_clk_reg <= !(div_clk_reg);
         counter <= 8'b0;
         toggle_flag <= ~toggle_flag ;
     end 
  else
   counter <= counter + 1'b1;
 end
end
else begin
   div_clk_reg <= 1'b0 ;
    counter   <= 8'b0 ;
      toggle_flag  <= 1'b0 ; 
end 
end

assign o_div_clk = (CLK_DIV_EN)? div_clk_reg : i_ref_clk ;

endmodule