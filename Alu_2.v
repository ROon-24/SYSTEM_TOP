module Alu_16 (
   //input decleration
    input       [7:0]     A,B,
    input       [3:0]      Alu_Fun,
    input                  ALU_EN ,
    input                  clk,
    input                  Alu_Rst , 
   //output decleration
   /* output              Carry_Flag,
    output                Arith_Flag,
    output                Logic_Flag,
    output                Cmp_Flag,
    output                Shift_Flag,*/
    output  reg             Out_VLD, 
    output  reg [ 15:0]     Alu_Out
);
  
   //internal signal
reg [15:0] ALU_OUT_FF ;
reg        Out_VLD_Comb ;
reg              Carry;

   //Alu_out Register 
always @(posedge clk , negedge Alu_Rst) begin
     if(!Alu_Rst) begin
       Alu_Out <= 16'd0 ;
       Out_VLD <= 1'b0 ;  
     end
    else begin
      Alu_Out <= ALU_OUT_FF ;
      Out_VLD <= Out_VLD_Comb ;
    end
end 

always @(*) begin
   ALU_OUT_FF   =  16'd0 ;
   Out_VLD_Comb = 1'b0 ; 
   Carry = 1'b0 ;
   
 if (ALU_EN) begin
  Out_VLD_Comb = 1'b1 ;
  case (Alu_Fun)
           
            //Arithmatic//////
       4'b0000 : {Carry , ALU_OUT_FF} =  A +  B ; 
       4'b0001 : {Carry , ALU_OUT_FF} =  A -  B ;
       4'b0010 : ALU_OUT_FF = A * B;
       4'b0011 : ALU_OUT_FF = A / B;
          
           //Logic//////////
       4'b0100 : ALU_OUT_FF =  A & B;
       4'b0101 : ALU_OUT_FF =  A | B;
       4'b0110 : ALU_OUT_FF = ~(A & B);
       4'b0111 : ALU_OUT_FF = ~(A | B);
       4'b1000 : ALU_OUT_FF =  A ^ B;
       4'b1001 : ALU_OUT_FF = ~(A ^ B);
           
            //CMP///////////
       4'b1010 : begin 
             if (A == B) ALU_OUT_FF = 16'b0000000000000001;//1
                
             else  ALU_OUT_FF = 16'b0;
              end 
       4'b1011 :  begin 
             if (A > B) ALU_OUT_FF = 16'b0000000000000010;//2
                
             else  ALU_OUT_FF = 16'b0;
              end 
       4'b1100 :  begin 
             if (A < B) ALU_OUT_FF = 16'b0000000000000011;//3
                
             else  ALU_OUT_FF = 16'b0;
              end 
            //Shift////////
       4'b1101 : ALU_OUT_FF = A>>1;
       4'b1110 : ALU_OUT_FF = A<<1;

        default:begin 
             ALU_OUT_FF = 16'b0 ;
             Out_VLD_Comb = 1'b0 ; 
             Carry      = 1'b0 ;
        end
    endcase
 end 
      else Out_VLD_Comb = 1'b0 ;   
end

     ////////////Flags//////////////////
/*assign Carry_Flag = (Alu_Fun == 4'b0000 || Alu_Fun == 4'b0001  ) ? Carry : 1'b0 ;

assign Arith_Flag = (Alu_Fun ==4'b0000 || Alu_Fun ==4'b0001 || Alu_Fun ==4'b0010  || Alu_Fun ==4'b0011 ) ? 1'b1:1'b0;

assign Logic_Flag = (Alu_Fun ==4'b0100 || Alu_Fun ==4'b0101 || Alu_Fun ==4'b0110  || Alu_Fun ==4'b0111 || Alu_Fun ==4'b1000 || Alu_Fun ==4'b1001) ? 1'b1:1'b0;

assign Cmp_Flag = (Alu_Fun ==4'b1010 || Alu_Fun ==4'b1011 || Alu_Fun ==4'b1100 ) ? 1'b1:1'b0;

assign Shift_Flag = (Alu_Fun ==4'b1101 || Alu_Fun ==4'b1110 ) ? 1'b1:1'b0;*/

    
endmodule