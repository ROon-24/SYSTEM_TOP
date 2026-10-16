module Async_FIFO #(
    parameter D_width = 8 ,
    parameter F_depth = 8 ,
    parameter Ad_width = $clog2(F_depth)
) 
(
    input                    WR_clk , WR_rst , WR_inc ,
    input   [D_width-1 : 0]  WR_Data ,
    input                    RD_clk , RD_rst , RD_inc ,

    output                   FULL , EMPTY ,
    output [D_width-1 : 0]   RD_Data 
);


///intrnal signals ///////////////

wire    [Ad_width-1 : 0] Waddr , Raddr ;
wire    [Ad_width : 0]   Wptr , Rptr , wq2_rptr , rq2_wptr ;


/////////FIFO_MEM instantiation ///////////////////

FIFO_Mem #(
      .D_width(D_width),
      .F_depth(F_depth),
      .Ad_width(Ad_width)
    ) 
    U0_FIFO_MEM(
        .wr_clk_mem(WR_clk),
        .Wr_rst_mem(WR_rst), 
        .wr_full_mem(FULL),
        .wr_inc_mem(WR_inc),
        .wr_Data_mem(WR_Data),
        .wr_adr_mem(Waddr),
        .rd_adr_mem(Raddr),
        .rd_Data_mem(RD_Data)
    );

wptr_Full_blk #(
         .F_depth(F_depth),
         .Ad_width(Ad_width)
    )
     U0_full_blk (
         .wr_clk_blk(WR_clk),
         .wr_rst_blk(WR_rst),
         .wr_inc_blk(WR_inc),
         .wq2_rptr_blk(wq2_rptr),
         .wr_full_blk(FULL),
         .wr_adr_blk(Waddr),
         .wr_ptr_blk(Wptr)

     );

rptr_empty_blk #(
         .F_depth(F_depth),
         .Ad_width(Ad_width)
    )
    u0_empty_blk (
         .rd_clk_blk(RD_clk),
         .rd_rst_blk(RD_rst),
         .rd_inc_blk(RD_inc),
         .rq2_wptr_blk(rq2_wptr),
         .rd_empty_blk (EMPTY),
         .rd_adr_blk(Raddr),
         .rd_ptr_blk(Rptr)
         
    );    

sync_2FF #(
         .F_depth(F_depth),
         .Ad_width(Ad_width)
    )
    u0_sync_r2w (
         .clk_sync(WR_clk),
         .rst_sync(WR_rst),
         .ptr_sync(Rptr),
         .Sync_out(wq2_rptr)
    ); 

sync_2FF #(
         .F_depth(F_depth),
         .Ad_width(Ad_width)
    )
    u0_sync_w2r (
         .clk_sync(RD_clk),
         .rst_sync(RD_rst),
         .ptr_sync(Wptr),
         .Sync_out(rq2_wptr)
    );     



    
endmodule