module Serializer_tx (

input wire  [7:0] P_Data_ser ,
input wire        ser_en_ser ,
input wire         rst_ser ,
input wire         clk_ser,
input wire         Data_valid_ser,

output reg        out_Data_ser ,
output reg        ser_done_ser

);

reg [7:0] P_Data_register ;

reg [3:0] counter ;
reg shift_en ;//high wwhile counter<8 (shifting mode)


always @(*) begin
    if(counter == 4'd8)
    begin
      shift_en = 1'b0;
      ser_done_ser = 1'b1;
    end
   else 
     begin
        shift_en = 1'b1;
      ser_done_ser = 1'b0;
     end 
end

always @(posedge clk_ser , negedge rst_ser) 

   begin

     if (!rst_ser) begin 

    P_Data_register <= 8'b0;
    out_Data_ser <= 1'b0 ;
    counter <= 4'd0 ;                  
    
       end

     else if (Data_valid_ser )
       begin

         P_Data_register <= P_Data_ser ;
        
         counter <= 4'b0;
      end  


        else if (ser_en_ser && shift_en ) 
             begin
             {P_Data_register ,out_Data_ser} <=  {1'b0,P_Data_register};
              //P_Data_register <= P_Data_register >> 1;
              //out_Data_ser <= P_Data_register[0];
                
                 counter <= counter +1'b1 ;
              end
   end 


endmodule






