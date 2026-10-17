module sync_rst #(
   parameter  NUM_stages = 2
) (

input       RST ,
input       clk ,

output   SYNC_rst  

);

reg [NUM_stages-1 :0 ] q_reg ;
    
 always @(posedge clk , negedge RST ) begin
    if(!RST) begin
      q_reg <= 'b0;
      end
    else begin
      q_reg <= {q_reg[NUM_stages -2 : 0] ,1'b1} ;
    end
 end   
assign SYNC_rst = q_reg[NUM_stages -1] ;

endmodule