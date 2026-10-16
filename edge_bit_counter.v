module edge_bit_counter(

    input         clk , rst ,
    input         enable_edge ,
    input   [5:0]  prescale_edge ,

    output reg  [5:0]  edge_cnt_edge ,
    output reg  [3:0]  bit_cnt_edge 
);

always @(posedge clk , negedge rst)
 begin
    if(!rst)
     begin
    edge_cnt_edge <= 6'b0 ;
    bit_cnt_edge <= 4'b0 ;
    end
   else if (enable_edge)
      begin
         if (edge_cnt_edge != prescale_edge - 1'b1 ) begin
              edge_cnt_edge <= edge_cnt_edge + 1'b1 ;
         end   
            else if ( edge_cnt_edge == prescale_edge - 1'b1) begin
                 bit_cnt_edge <= bit_cnt_edge + 1'b1 ;
                 edge_cnt_edge <= 'b0 ;
             end
    end
      else begin
         bit_cnt_edge <= 4'b0 ;
        edge_cnt_edge <= 6'b0 ;
    end 
end 

endmodule