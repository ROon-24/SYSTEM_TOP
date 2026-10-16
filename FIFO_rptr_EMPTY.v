/*module rptr_empty_blk #(
  parameter F_depth = 8 ,
  parameter Ad_width = $clog2(F_depth)
)
(

input                               rd_clk_blk ,rd_rst_blk ,
input                               rd_inc_blk ,
input [Ad_width : 0]                rq2_wptr_blk ,

output reg                          rd_empty_blk , 
output wire  [Ad_width-1 : 0]       rd_adr_blk ,
output reg     [Ad_width : 0]       rd_ptr_blk 

);

wire empty_flag ;

///////next read pointer LoGic////////////////
reg  [Ad_width: 0] bin_ptr ;
wire [Ad_width: 0] ptr_bin_next ;
assign ptr_bin_next = bin_ptr + (rd_inc_blk & !rd_empty_blk) ;

//////Gray encoding LoGic//////////////////////
wire [Ad_width : 0] rd_ptr_G ;
assign rd_ptr_G = ptr_bin_next ^ (ptr_bin_next>> 1);

////////empty LoGic/////////////////////////////
assign empty_flag = (rd_ptr_G == rq2_wptr_blk) ;

/////////read address out /////////////////////
assign rd_adr_blk = bin_ptr[Ad_width-1 : 0] ;


always @(posedge rd_clk_blk , negedge rd_rst_blk) begin
  if(!rd_rst_blk) 
    begin
      bin_ptr   <= 'b0 ;
      rd_ptr_blk <= 'b0 ;
      rd_empty_blk <= 'b1 ;
    end
  else
   begin
      bin_ptr      <= ptr_bin_next ;
      rd_ptr_blk   <= rd_ptr_G ;
      rd_empty_blk <= empty_flag ;
  end  
end

endmodule*/



module rptr_empty_blk #(
  parameter F_depth  = 8 ,
  parameter Ad_width = $clog2(F_depth)
)
(
  input                          rd_clk_blk, rd_rst_blk,
  input                          rd_inc_blk,
  input      [Ad_width : 0]      rq2_wptr_blk,

  output wire                    rd_empty_blk,        
  output wire [Ad_width-1 : 0]   rd_adr_blk,
  output reg  [Ad_width : 0]     rd_ptr_blk
);

reg  [Ad_width : 0] bin_ptr ;                          


wire [Ad_width : 0] gray_bin_ptr ;
assign gray_bin_ptr = bin_ptr ^ (bin_ptr >> 1) ;


assign rd_empty_blk = (gray_bin_ptr == rq2_wptr_blk) ;


wire [Ad_width : 0] ptr_bin_next ;
assign ptr_bin_next = bin_ptr + (rd_inc_blk & !rd_empty_blk) ;


assign rd_adr_blk = bin_ptr[Ad_width-1 : 0] ;

always @(posedge rd_clk_blk or negedge rd_rst_blk) begin
  if(!rd_rst_blk) begin
    bin_ptr    <= 'b0 ;
    rd_ptr_blk <= 'b0 ;
  end
  else begin
    bin_ptr    <= ptr_bin_next ;
    rd_ptr_blk <= gray_bin_ptr ;   
  end
end

endmodule