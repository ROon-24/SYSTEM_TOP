module data_sampling_RX(

    input         clk , rst ,  
    input         RX_in_sampling , data_samp_en , 
    input  [5:0]  prescale_sampling ,               
    input  [5:0]    edge_cnt_sampling ,  
 
    output reg       sampled_out 

);

wire [5:0] half_prescale ;
assign half_prescale = prescale_sampling >> 1;// prescale /2


reg  [2:0]  sampled_reg ;

always @(posedge clk , negedge rst )
  begin
     if (!rst) begin
        sampled_out <= 1'b0 ;
        sampled_reg <= 3'b0 ;
       end
    else if (data_samp_en) begin
         if (prescale_sampling <= 6'd4 ) begin
                if (edge_cnt_sampling == half_prescale ) begin
                      sampled_out <= RX_in_sampling ;
                 end
        end
       else begin
            if ( edge_cnt_sampling == (half_prescale)-1'b1 ||
                        edge_cnt_sampling == half_prescale || 
                       edge_cnt_sampling == (half_prescale)+1'b1 )
                   begin
                     sampled_reg <= {sampled_reg[1:0] , RX_in_sampling };
                 end 
            else if (edge_cnt_sampling == ( half_prescale ) + 2'b10 )
                  begin
                     sampled_out <=  ( (sampled_reg[2] & sampled_reg[1]) |
                                       (sampled_reg[2] & sampled_reg[0]) |
                                       (sampled_reg[1] & sampled_reg[0]) ) ;
              end

        end
     end 
      else begin
        sampled_out <= 1'b0 ;
        sampled_reg <= 3'b0 ;
       end
  end


endmodule