module Register_file (
    input wire    [7:0] Wr_Data ,
    input wire    [3:0 ] address,
    input wire           Wr_En ,Rd_En ,
    input wire           clk , rst ,

    
    output reg           Rd_Data_VLD,
    output reg    [7:0] Rd_Data  ,
    output        [7:0 ] Reg0 ,
    output        [7:0 ] Reg1 ,
    output        [7:0 ] Reg2 ,
    output        [7:0 ] Reg3 
);

//2D array
reg [7:0] mem [15:0];
integer i ;

always @(posedge clk or negedge rst) begin
      
   if (!rst) begin
      Rd_Data <= 8'd0 ;
      Rd_Data_VLD <= 1'b0 ;

      for(i=0 ; i < 16 ; i=i+1'b1) begin
         if (i==2 ) begin
            mem[i] <= 16'b1000_0001; 
         end
         else  if (i==3 ) begin
            mem[i] <= 16'b0010_0000; 
         end
         else mem[i] <= 16'd0 ;

      end  
    end
        else begin
           //synchronous Write
          if (Wr_En && !Rd_En) begin
             mem[address] <= Wr_Data ;
          end
          else if (Rd_En && !Wr_En) begin
            Rd_Data <= mem[address] ;
            Rd_Data_VLD <= 1'b1 ;
         end
         else Rd_Data_VLD <= 1'b0 ; 
        end
end


assign Reg0 = mem[0];
assign Reg1 = mem[1];
assign Reg2 = mem[2];
assign Reg3 = mem[3];


//synchronous Read
/*always @(posedge clk) begin
    
         if (Rd_En && !Wr_En) begin
            Rd_Data <= mem[address] ;
         end

end*/

    
endmodule