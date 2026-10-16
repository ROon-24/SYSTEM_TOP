module FSM_RX (

input              RX_in_fsm,
input              clk , rst ,
input              Par_en_fsm ,
input   [5:0]      prescale_fsm , edge_cnt_fsm,
input  [3:0]       bit_cnt_fsm ,
input           strt_glitch_fsm , par_err_fsm , stp_err_fsm ,

output reg         par_chk_en , strt_chk_en , stp_chk_en , deser_en_fsm,
output reg         enable ,data_samp_en ,
output reg           data_valid_fsm

);

 /*typedef enum bit [2:0] {
             START = 3'b001 ,
             IDLE = 3'b000 ,
             DATA = 3'b011 ,
             PARITY = 3'b010 ,
             STOP = 3'b110 ,
             CHECK = 3'b100
          } state_e ;

 state_e   next_state , current_state ;*/


localparam  IDLE = 3'b000 ,//0
            START = 3'b001 ,//1
            DATA = 3'b011 ,//3
            PARITY = 3'b010 ,//2
            STOP = 3'b110 ,//6
            CHECK = 3'b100;//4

reg [2:0] next_state , current_state ;
//reg data_valid_fsm;

//state transiton 
always @ (posedge clk or negedge rst)
 begin
  if(!rst)
   begin
    current_state <= IDLE ;
    //data_valid_fsm <= 1'b0 ;
   end
  else
   begin
    current_state <= next_state ;
   // data_valid_fsm <= data_valid_fsm ; 
    
   end
 end

 //NEXT_STATE LoGIc
 always @(*) 
  begin
     case(current_state)  
      IDLE : begin
         if (!RX_in_fsm)
           next_state = START ;
         else 
         next_state = IDLE ; 
     end  
      START : begin
        if ( bit_cnt_fsm == 4'd1) begin
           if (!strt_glitch_fsm)
           next_state = DATA ;
         else 
           next_state = IDLE ;  
        end
       else next_state = START ; 
      end
      DATA : begin
         if ( bit_cnt_fsm < 4'd9)
           next_state = DATA ;
         else if ( Par_en_fsm )
           next_state = PARITY  ;
         else 
         next_state = STOP ;   
      end
      PARITY : begin
        if (edge_cnt_fsm == prescale_fsm - 1'b1 && bit_cnt_fsm == 4'd9) begin
          next_state = STOP ;
        end
          else next_state = PARITY ; 
      end 
      STOP : begin
         if (edge_cnt_fsm == prescale_fsm - 1'b1 ) begin
            next_state = CHECK;
         end 
           else next_state = STOP ;
        end

      CHECK : begin 
         if (!RX_in_fsm) begin
          next_state = START ;
         end
         else begin
           next_state = IDLE ;
        end
    end
     default : next_state = IDLE ;
     endcase 
 end
 

  //OUTPUT LoGIc
  always @(*)
   begin
       
       enable         =1'b0 ; 
       deser_en_fsm   =1'b0 ;
       stp_chk_en     =1'b0 ;
       par_chk_en     =1'b0;
       strt_chk_en    =1'b0 ;
       data_samp_en   =1'b0 ;
       data_valid_fsm =1'b0 ; 

     case (current_state)
        IDLE : if (!RX_in_fsm) begin
              enable = 1'b1 ;
              data_samp_en =1'b1 ;
            end 
           else enable = 1'b0 ;
        START : begin 
            if (edge_cnt_fsm == prescale_fsm - 1'b1) begin
              strt_chk_en = 1'b1;
              enable = 1'b1 ;
              data_samp_en =1'b1 ;
              end
            else begin 
              strt_chk_en = 1'b0;
              enable = 1'b1 ;
              data_samp_en =1'b1 ;
               end
        end
              
        DATA : begin
            if (edge_cnt_fsm == prescale_fsm - 1'b1) begin
                enable = 1'b1 ;
                data_samp_en =1'b1 ;
                deser_en_fsm= 1'b1 ;
              end
              else begin 
              enable = 1'b1 ;
              data_samp_en =1'b1 ;
              deser_en_fsm= 1'b0 ;
              end
           end
        PARITY : begin
            if (edge_cnt_fsm == prescale_fsm - 1'b1) begin
                enable = 1'b1 ;
                data_samp_en =1'b1 ;
                par_chk_en = 1'b1 ; 
              end
            else
               begin
                enable = 1'b1 ;
                data_samp_en =1'b1 ;
                par_chk_en = 1'b0 ; 
               end 
            end  
                 
         
        STOP  : begin 
             if (edge_cnt_fsm == prescale_fsm - 1'b1) begin
              enable = 1'b1 ;
              data_samp_en =1'b1 ;
              stp_chk_en = 1'b1 ;  
             end
             else begin
                enable = 1'b1 ;
              data_samp_en =1'b1 ;
              stp_chk_en = 1'b0 ; 
              end           
          end  
        CHECK  : begin
                if (!par_err_fsm && !stp_err_fsm) begin
                    data_valid_fsm = 1'b1 ;
                  
              end
              else begin
                 data_valid_fsm = 1'b0 ;
               
              end
             end
        default: begin
               enable         =1'b0 ; 
               deser_en_fsm   =1'b0 ;
               stp_chk_en     =1'b0 ;
               par_chk_en     =1'b0;
               strt_chk_en    =1'b0 ;
               data_samp_en   =1'b0 ;
               data_valid_fsm =1'b0 ; 
        end
     endcase  
  end


endmodule


