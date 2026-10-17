`timescale 1ns/1ps

module tb_System_TOP();

//====================================================
// DUT signals
//====================================================
reg  RST_TOP, REF_CLK, UART_CLK, RX_IN_TOP;
wire TX_OUT_TOP, PARITY_ERROR, FRAMING_ERROR;

System_TOP U0_DUT (
    .RST_TOP       (RST_TOP),
    .REF_CLK       (REF_CLK),
    .UART_CLK      (UART_CLK),
    .RX_IN_TOP     (RX_IN_TOP),
    .TX_OUT_TOP    (TX_OUT_TOP),
    .PARITY_ERROR  (PARITY_ERROR),
    .FRAMING_ERROR (FRAMING_ERROR)
);

//====================================================
// Clocks
//====================================================
localparam REF_CLK_PERIOD       = 10.0;      // 100 MHz
localparam real UART_CLK_PERIOD = 271.267;   // 3.6864 MHz

initial REF_CLK = 0;
always #(REF_CLK_PERIOD/2) REF_CLK = ~REF_CLK;

initial UART_CLK = 0;
always #(UART_CLK_PERIOD/2) UART_CLK = ~UART_CLK;

///////////////////////////////////////////////////////
// Baud timing (confirmed: 115200 baud)
///////////////////////////////////////////////////////
localparam real BIT_PERIOD = 8680.556; // ns

reg PARITY_EN_RT;                 
localparam PARITY_TYPE = 1'b0;    // even (Default)

localparam RF_WR_CMD   = 8'hAA;
localparam RF_RD_CMD   = 8'hBB;
localparam ALU_OP_CMD  = 8'hCC;
localparam ALU_NOP_CMD = 8'hDD;

localparam FUN_ADD   = 4'h0;
localparam FUN_SUB   = 4'h1;
localparam FUN_AND   = 4'h4;

///////////////////////////////////////////////////////
// Task: send one UART byte on RX_IN_TOP
///////////////////////////////////////////////////////
task send_uart_byte(input [7:0] data);
    integer i;
    reg parity_bit;
    begin
        parity_bit = ^data ^ PARITY_TYPE;

        RX_IN_TOP = 1'b0; // Start bit
         #(BIT_PERIOD);
        for (i = 0; i < 8; i = i + 1) begin
            RX_IN_TOP = data[i];
            #(BIT_PERIOD);
        end

        if (PARITY_EN_RT) begin
            RX_IN_TOP = parity_bit;
            #(BIT_PERIOD);
        end

        RX_IN_TOP = 1'b1;// Stop bit
         #(BIT_PERIOD);           
    end
endtask

///////////////////////////////////////////////////////
// Command tasks
///////////////////////////////////////////////////////
task send_rf_write(input [7:0] addr, input [7:0] data);
    begin
        send_uart_byte(RF_WR_CMD);
        send_uart_byte(addr);
        send_uart_byte(data);
    end
endtask

task send_rf_read(input [7:0] addr);
    begin
        send_uart_byte(RF_RD_CMD);
        send_uart_byte(addr);
    end
endtask

task send_alu_op(input [7:0] opA, input [7:0] opB, input [3:0] fun);
    begin
        send_uart_byte(ALU_OP_CMD);
        send_uart_byte(opA);
        send_uart_byte(opB);
        send_uart_byte({4'b0, fun});
    end
endtask

task send_alu_nop(input [3:0] fun);
    begin
        send_uart_byte(ALU_NOP_CMD);
        send_uart_byte({4'b0, fun});
    end
endtask



//////////////disable_parity task//////////////////////// 
task disable_parity_in_dut;
    begin
        send_rf_write(8'h02, 8'h80);  // Prescale=32, Type=0, Enable=0
        PARITY_EN_RT = 1'b0;
    end
endtask

//////////////enable_parity task//////////////////////// 
task enable_parity_in_dut;
    begin
        send_rf_write(8'h02, 8'h81);  // Prescale=32, Type=0, Enable=1
        PARITY_EN_RT = 1'b1;
    end
endtask

////////////////////////////////////////////////////////
/////////////////////initial///////////////////////////
///////////////////////////////////////////////////////

initial begin
    $dumpfile("tb_System_TOP.vcd");
    $dumpvars(0, tb_System_TOP);
end

initial begin
    RST_TOP      = 1'b0;
    RX_IN_TOP    = 1'b1;
    PARITY_EN_RT = 1'b1;   // reset: parity enabled
    #500;
    RST_TOP      = 1'b1;
    #1000;

    send_rf_write(8'h04, 8'hAB);   // WITH parity
    #(10*BIT_PERIOD);

    ///////////////////////////////////////////////
    //Disable parity
    //////////////////////////////////////////////
    disable_parity_in_dut;
    #(10*BIT_PERIOD);

    send_rf_write(8'h05, 8'hAC);   //WITHOUT parity
    send_rf_read(8'h04);           //WITHOUT parity

    send_alu_op(8'h05, 8'h03, FUN_ADD);  //WITHOUT parity
    #(10*BIT_PERIOD);


    enable_parity_in_dut;
    #(10*BIT_PERIOD);

    send_alu_nop(FUN_SUB);         // WITH parity
    send_rf_read(8'h05);           // WITH parity
    #(10*BIT_PERIOD);

    $finish;
end



endmodule