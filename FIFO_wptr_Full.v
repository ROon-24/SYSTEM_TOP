/*module wptr_Full_blk #(
  parameter F_depth = 8 ,
  parameter Ad_width = $clog2(F_depth)
)
(

input                               wr_clk_blk ,wr_rst_blk ,
input                               wr_inc_blk ,
input [Ad_width : 0]                wq2_rptr_blk ,

output reg                          wr_full_blk , 
output wire  [Ad_width-1 : 0]       wr_adr_blk ,
output reg     [Ad_width : 0]       wr_ptr_blk 

);

wire full_flag ;

///////next write pointer(address) LoGic////////////////
reg  [Ad_width: 0] bin_ptr ;//current address
wire [Ad_width: 0] ptr_bin_next ;
assign ptr_bin_next = bin_ptr + (wr_inc_blk & !wr_full_blk) ;

//////Gray encoding LoGic//////////////////////
wire [Ad_width : 0] wr_ptr_G ;
assign wr_ptr_G = ptr_bin_next ^ (ptr_bin_next>> 1);


////////full LoGic/////////////////////////////
assign full_flag = ((wr_ptr_G[Ad_width] != wq2_rptr_blk[Ad_width]) &
                    (wr_ptr_G[Ad_width-1] != wq2_rptr_blk[Ad_width-1] ) &
                    (wr_ptr_G[Ad_width-2 : 0] == wq2_rptr_blk[Ad_width-2 : 0])) ;


/*assign wr_full_blk =(!wr_rst_blk)? 1'b0 : full_flag ;*/
/////////write address out /////////////////////
/*assign wr_adr_blk = bin_ptr[Ad_width-1 : 0] ;


always @(posedge wr_clk_blk , negedge wr_rst_blk) begin
  if(!wr_rst_blk) 
    begin
       bin_ptr   <= 'b0 ;
      wr_ptr_blk  <= 'b0 ;
      wr_full_blk  <= 'b0 ;
    end
  else
   begin
      bin_ptr     <= ptr_bin_next ;
      wr_ptr_blk  <= wr_ptr_G  ;
      wr_full_blk <= full_flag ;
  end  
end

endmodule*/


module wptr_Full_blk #(
  parameter F_depth  = 8 ,
  parameter Ad_width = $clog2(F_depth)
)
(
  input                          wr_clk_blk, wr_rst_blk,
  input                          wr_inc_blk,
  input      [Ad_width : 0]      wq2_rptr_blk,

  output wire                    wr_full_blk,          
  output wire [Ad_width-1 : 0]   wr_adr_blk,
  output reg  [Ad_width : 0]     wr_ptr_blk
);

reg  [Ad_width : 0] bin_ptr ;                          


wire [Ad_width : 0] gray_bin_ptr ;
assign gray_bin_ptr = bin_ptr ^ (bin_ptr >> 1) ;


assign wr_full_blk = ( (gray_bin_ptr[Ad_width]   != wq2_rptr_blk[Ad_width])   &
                       (gray_bin_ptr[Ad_width-1] != wq2_rptr_blk[Ad_width-1]) &
                       (gray_bin_ptr[Ad_width-2:0] == wq2_rptr_blk[Ad_width-2:0]) ) ;


wire [Ad_width : 0] ptr_bin_next ;
assign ptr_bin_next = bin_ptr + (wr_inc_blk & !wr_full_blk) ;


assign wr_adr_blk = bin_ptr[Ad_width-1 : 0] ;

always @(posedge wr_clk_blk or negedge wr_rst_blk) begin
  if(!wr_rst_blk) begin
    bin_ptr    <= 'b0 ;
    wr_ptr_blk <= 'b0 ;
  end
  else begin
    bin_ptr    <= ptr_bin_next ;
    wr_ptr_blk <= gray_bin_ptr ;   
  end
end

endmodule