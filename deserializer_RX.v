module deserializer (

    input               clk , rst ,
    input               sampled_data_bit ,
    input               deser_en ,

    output reg  [7:0]    deser_out
);


always @(posedge clk or negedge rst)
  begin
     if(!rst) begin
        deser_out <= 8'b0;
        end  
     else if (deser_en) begin
           deser_out <= { sampled_data_bit , deser_out[7:1]};         
        end
         
    
end
endmodule