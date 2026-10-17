module Sys_Ctrl (

input wire         Sys_clk ,
input wire         Sys_rst ,
input wire  [7:0]  RX_P_Data , //frames 
input wire         RX_D_VLd ,
input wire  [7:0]  Rd_Data ,  //go to fifo
input wire         Rd_Data_VLd ,
input wire  [15:0] ALU_out ,  //go to fifo
input wire         ALU_out_VLd ,
input wire         FIFO_full ,

output reg [3:0] Address ,
output reg       Wr_En ,
output reg       Rd_En ,
output reg [7:0] Wr_Data ,
output reg [3:0] ALU_fun ,
output reg       ALU_EN ,
output reg       CLK_ALU_EN ,
output reg [7:0] WR_Data_FIFO ,
output reg       WR_INC            

);
/////STATES/////////////////////////////////

localparam  IDLE            = 4'b0000, //0 wait & recive cmd

            // Register File Write Path (0xAA)
            WR_ADDR         = 4'b0001, //1 recive & store address of reg at regfile
            WR_DATA         = 4'b0010, //2 recive data & wr_En=1

            //  Register File Read Path (0xBB)
            RD_ADDR         = 4'b0011, //3 recive address & rd_En=1
            WAIT_RD_VAL     = 4'b0100, //4 wait RdData_Valid & write data at fifo

            // ALU Command with/out Operands Path (0xCC) (0xDD)
            GET_OP_A        = 4'b0101, //5  recive REG0 & write it at opA 
            GET_OP_B        = 4'b0110, //6  recive REG1 & write it at opB 
            GET_ALU_FUN     = 4'b0111, //7  recive ALU_Function & EN=1 و CLK_EN=1
            WAIT_ALU_VAL    = 4'b1000, //8  wait OUT_Valid
            SEND_ALU_LOW    = 4'b1001, //9 send ALU_OUT[7:0] to FIFO
            SEND_ALU_HIGH   = 4'b1010; //10 send ALU_OUT[8:15] to FIFO

///////////buf & register/////////////////
reg     [3:0]    addr_reg ;
reg     [15:0]   ALU_out_reg ;
reg     [7:0]    rd_data_reg ;   // holds read data while FIFO is full
reg              rd_got ;        //  rd_data_reg holds data waiting for FIFO space

reg      [3:0]   C_S , N_S ;

/////////////Registers /////////////////////
always @(posedge Sys_clk , negedge Sys_rst)
begin
   if(!Sys_rst) begin
        addr_reg <= 4'b0 ;
        ALU_out_reg <= 16'b0 ;
        rd_data_reg <= 'b0 ;
          rd_got      <= 1'b0 ; 
      end
      else begin
         if (C_S == WR_ADDR &&  RX_D_VLd)
         begin
         addr_reg <= RX_P_Data[3:0] ;
         end 
         if (C_S == WAIT_ALU_VAL &&  ALU_out_VLd)
         begin
         ALU_out_reg <= ALU_out ;
         end
         if (C_S == WAIT_RD_VAL) begin
         if (Rd_Data_VLd && !rd_got && FIFO_full) begin   // valid arrived but no space at fifo so we save it
         rd_data_reg <= Rd_Data ;
          rd_got      <= 1'b1 ;
            end
          else if (rd_got && !FIFO_full)                   // used saved data at this cycle
           rd_got      <= 1'b0 ;
        end
    end  
     
end

////////////Next_State LoGic//////////////

always @(posedge Sys_clk , negedge Sys_rst)
 begin
      if(!Sys_rst)
        C_S <= IDLE ;
      else 
        C_S <= N_S ;  
end

//////////NEXT_STATE LoGIc///////////////

always @(*)
begin
case (C_S)
      ////////IDLE_ٍState///Frame 0/////
 IDLE  : begin
  if(RX_D_VLd) begin
   case (RX_P_Data)
       8'hAA : N_S = WR_ADDR  ;  
       8'hBB : N_S = RD_ADDR  ; 
       8'hCC : N_S = GET_OP_A ;   
       8'hDD : N_S = GET_ALU_FUN ;  
        default: N_S = IDLE ;
   endcase 
    end
  else  N_S = IDLE ; 
  end
//////////////////////////////////////////////////////////////////////
///////////Write at Regfile///////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

       ////////WR_ADDR_ٍState///Frame 1/////
  WR_ADDR : if (RX_D_VLd) begin
       N_S = WR_DATA ;
  end
  else N_S = WR_ADDR ;
       ////////WR_DATA_ٍState///Frame 2/////
  WR_DATA : if (RX_D_VLd) begin
       N_S = IDLE ;
  end
  else N_S = WR_DATA ;
//////////////////////////////////////////////////////////////////////
///////////Read from Regfile//////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

   ////////RD_ADDR _ٍState///Frame 1/////
  RD_ADDR : if (RX_D_VLd) begin
       N_S = WAIT_RD_VAL ;
  end
  else N_S = RD_ADDR ;
  /////////WAIT_RD_VAL_ٍState///Frame 2/////
    WAIT_RD_VAL : if  ((Rd_Data_VLd || rd_got) && !FIFO_full) begin
       N_S = IDLE ;
  end
  else N_S = WAIT_RD_VAL ;

//////////////////////////////////////////////////////////////////////
///////////ALU Operation command with  OR without operand//////////////////////////////////////////
//////////////////////////////////////////////////////////////////////

      //////GET_OP_A/////Frame 1/////
  GET_OP_A : if (RX_D_VLd) begin 
          N_S = GET_OP_B ;
  end 
  else N_S =  GET_OP_A ;
      //////GET_OP_B/////Frame 2/////
  GET_OP_B : if (RX_D_VLd) begin 
          N_S = GET_ALU_FUN  ;
  end 
  else N_S =  GET_OP_B ;
      ///////ALU_FUN ////Frame 3/////
  GET_ALU_FUN : if (RX_D_VLd) begin 
          N_S = WAIT_ALU_VAL   ;
  end 
  else N_S =  GET_ALU_FUN ; 
      /////// WAIT_ALU_VAL /////////
  WAIT_ALU_VAL : if (ALU_out_VLd) begin 
          N_S = SEND_ALU_LOW   ;
  end 
  else N_S =  WAIT_ALU_VAL ;  
     /////// Send to FIFO /////////
    SEND_ALU_LOW :if (!FIFO_full) begin 
          N_S = SEND_ALU_HIGH   ;
  end 
  else N_S =  SEND_ALU_LOW ;  

     SEND_ALU_HIGH :if (!FIFO_full) begin 
          N_S = IDLE   ;
  end 
  else N_S =  SEND_ALU_HIGH ;  


    default: N_S = IDLE ;
   endcase

 end

 //////////OutPut LoGIc///////////////

 always @(*) 
begin
 Address      = 4'b0 ;
 Wr_En        = 1'b0 ;
 Rd_En        = 1'b0 ;
 Wr_Data      = 8'h0 ;
 ALU_fun      = 4'b0 ;
 ALU_EN       = 1'b0 ;
 CLK_ALU_EN   = 1'b0 ;
 WR_Data_FIFO = 8'h0 ;
 WR_INC       = 1'b0 ; 

 case (C_S)
  IDLE : begin
  end
  WR_ADDR : begin
     
  end
  WR_DATA : begin
       Address = addr_reg  ;
       if (RX_D_VLd ) begin
       Wr_Data = RX_P_Data ;
       Wr_En = 1'b1;   
       end  
  end
  RD_ADDR : if (RX_D_VLd) begin
    Address = RX_P_Data[3:0];
    Rd_En   = 1'b1;
  end
  WAIT_RD_VAL: begin
    if (Rd_Data_VLd && !FIFO_full) begin
      WR_Data_FIFO = Rd_Data ;
      WR_INC = 1'b1;
  end
  else if (rd_got && !FIFO_full) begin
      WR_Data_FIFO = rd_data_reg ;
      WR_INC = 1'b1;
  end
    
  end

  GET_OP_A : if (RX_D_VLd) begin
      Address = 4'h0;
      Wr_Data = RX_P_Data ;
      Wr_En = 1'b1 ;
  end
  GET_OP_B : if (RX_D_VLd) begin
      Address = 4'h1;
      Wr_Data = RX_P_Data ;
      Wr_En = 1'b1 ;
  end 
  GET_ALU_FUN : if (RX_D_VLd) begin
      ALU_fun = RX_P_Data[3:0] ;
      ALU_EN = 1'b1 ;
      CLK_ALU_EN= 1'b1 ; 
  end
  WAIT_ALU_VAL : CLK_ALU_EN = 1'b1 ; 
  
  SEND_ALU_LOW : begin
      CLK_ALU_EN = 1'b1; 
      if (!FIFO_full) begin
      WR_Data_FIFO = ALU_out_reg[7:0];
      WR_INC = 1'b1;
             
  end
  end 

  SEND_ALU_HIGH : begin
      CLK_ALU_EN = 1'b1;
   if (!FIFO_full) begin
      WR_Data_FIFO = ALU_out_reg[15:8];
      WR_INC = 1'b1;
       
   end
  end  
  
 default: begin
      Address      = 4'b0000;
      Wr_En        = 1'b0;
      Rd_En        = 1'b0;
      Wr_Data      = 8'h00;
      ALU_fun      = 4'b0000;
      ALU_EN       = 1'b0;
      CLK_ALU_EN   = 1'b0;
      WR_Data_FIFO = 8'h00;
      WR_INC       = 1'b0;    
  end 
     endcase
     
 end
endmodule