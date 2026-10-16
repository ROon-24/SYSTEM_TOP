module FIFO_Mem #(
    parameter D_width = 8 ,
    parameter F_depth = 8 ,
    parameter Ad_width = $clog2(F_depth)
)
(
    
input                                wr_clk_mem ,Wr_rst_mem ,
input                                wr_full_mem ,wr_inc_mem ,
input  [D_width -1 : 0]              wr_Data_mem , 
input  [( Ad_width-1) : 0]           wr_adr_mem , rd_adr_mem , 


output [D_width -1 : 0]              rd_Data_mem 

);

reg [D_width-1 : 0] MEM [0 : F_depth-1] ;
integer i ;

wire wr_clk_en ;
assign wr_clk_en = wr_inc_mem & !wr_full_mem ;

always @(posedge wr_clk_mem , negedge Wr_rst_mem) begin
    if (!Wr_rst_mem) 
     begin
       for (i = 0 ; i<F_depth ;i=i+1 ) 
       begin
          MEM[i] <= 'b0 ;
        end  
     end 
    else if (wr_clk_en) begin
        MEM[wr_adr_mem] <= wr_Data_mem ;
    end
end

assign rd_Data_mem = MEM[rd_adr_mem] ;


    
endmodule