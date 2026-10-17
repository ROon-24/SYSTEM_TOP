module FSM_tx(

input wire        clk_fsm ,
input wire        rst_fsm ,
input wire        Data_v_fsm ,
input wire        Par_en_fsm ,
input wire        ser_done_fsm ,

output reg        ser_en_fsm ,
output reg [1:0]  mux_sel_fsm ,
output reg        busy_fsm 

);

reg     busy_c ;


 /*typedef enum bit [2:0] {
             IDLE = 3'b001 ,
            START = 3'b000 ,
            SERIAL_DATA = 3'b011 ,
             PAR_BIT = 3'b010 ,
             STOP = 3'b110 
          } state_e ;

 state_e   C_S , N_S ;*/


localparam  IDLE = 3'b000 ,
            START = 3'b001 ,
            SERIAL_DATA = 3'b010 ,
            PAR_BIT = 3'b011 ,
            STOP = 3'b100 ;

reg  [2:0] C_S , N_S ;



always @(posedge clk_fsm or negedge rst_fsm) 
  begin
     if (!rst_fsm) begin

               C_S <= 3'b000 ;
               busy_fsm <= 1'b0 ;
     end
      else begin
             C_S <= N_S ;
             busy_fsm <= busy_c ;
      end
   end  


//NEXT_STATE LoGIc
always @(*) 
  begin
     case (C_S)
        IDLE : begin 
                  if(Data_v_fsm ) begin
                    N_S = START ;
                 end
                   else N_S = IDLE ;
               end


        START : begin
                    N_S = SERIAL_DATA ;
                end


        SERIAL_DATA : begin
                       if (!ser_done_fsm ) begin
                         N_S = SERIAL_DATA ;
                       end   
                        else if (Par_en_fsm) begin
                          N_S = PAR_BIT ;
                        end
                         else begin
                          N_S = STOP ;
                         end
                      end


         PAR_BIT : begin
                    N_S = STOP ;
                  end 


         STOP    : begin
                       N_S = IDLE ;
                       end

                                         


        default: begin
                   N_S = IDLE ;
                  end

     endcase
  end


  //OUTPUT LoGIc

  always @(*) begin
       
       case (C_S) 
         IDLE  : begin
                  ser_en_fsm = 1'b0;
                  busy_c = 1'b0;
                  mux_sel_fsm = 2'b11 ;
                end 

        START  : begin
                  ser_en_fsm = 1'b1;
                  busy_c = 1'b1;
                  mux_sel_fsm = 2'b00 ;
                 end

        SERIAL_DATA  : begin
                  ser_en_fsm = 1'b1;
                  busy_c = 1'b1;
                  mux_sel_fsm = 2'b01 ;
                 end

        PAR_BIT  : begin
                  ser_en_fsm = 1'b0;
                  busy_c = 1'b1;
                  mux_sel_fsm = 2'b10 ;
                 end  

        STOP  : begin
                  ser_en_fsm = 1'b0;
                  busy_c = 1'b1;
                  mux_sel_fsm = 2'b11 ;
                 end                                          

        default :   begin
                  ser_en_fsm = 1'b0;
                  busy_c = 1'b0;
                  mux_sel_fsm = 2'b11 ;
                end   
  endcase    
  end
       

endmodule
