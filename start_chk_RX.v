module start_chk_RX(

    input       strt_chk_en ,
    input       sampled_strt_bit ,
    input       rst , clk ,

    output reg  strt_glitch 
);

//assign strt_glitch = (strt_chk_en) ? (sampled_strt_bit != 1'b0) : 1'b0;

always @(posedge clk or negedge rst) begin
    if (!rst) begin
        strt_glitch <= 1'b0;
    end
    else if(strt_chk_en) begin
         strt_glitch <= (sampled_strt_bit != 1'b0 ) ;
    end 
    else strt_glitch <= 1'b0 ;
end

endmodule