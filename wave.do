onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group System_TOP /tb_System_TOP/RST_TOP
add wave -noupdate -expand -group System_TOP /tb_System_TOP/REF_CLK
add wave -noupdate -expand -group System_TOP /tb_System_TOP/UART_CLK
add wave -noupdate -expand -group System_TOP /tb_System_TOP/RX_IN_TOP
add wave -noupdate -expand -group System_TOP -color Coral -itemcolor White /tb_System_TOP/TX_OUT_TOP
add wave -noupdate -expand -group System_TOP /tb_System_TOP/PARITY_ERROR
add wave -noupdate -expand -group System_TOP /tb_System_TOP/FRAMING_ERROR
add wave -noupdate -expand -group System_TOP /tb_System_TOP/PARITY_EN_RT
add wave -noupdate -expand -group Data_SYNC /tb_System_TOP/U0_DUT/U0_DATA_SYNC/bus_enable
add wave -noupdate -expand -group Data_SYNC -color Pink /tb_System_TOP/U0_DUT/U0_DATA_SYNC/sync_bus
add wave -noupdate -expand -group Data_SYNC -color Pink /tb_System_TOP/U0_DUT/U0_DATA_SYNC/enable_pulse_d
add wave -noupdate -expand -group SYS_CTRL -color {Medium Sea Green} /tb_System_TOP/U0_DUT/U0_SYS_CTRL/C_S
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/ALU_fun
add wave -noupdate -expand -group SYS_CTRL -color Orange /tb_System_TOP/U0_DUT/U0_SYS_CTRL/ALU_EN
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/Rd_Data
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/ALU_out
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/ALU_out_VLd
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/FIFO_full
add wave -noupdate -expand -group SYS_CTRL -color Firebrick /tb_System_TOP/U0_DUT/U0_SYS_CTRL/Address
add wave -noupdate -expand -group SYS_CTRL -color Magenta /tb_System_TOP/U0_DUT/U0_SYS_CTRL/Wr_En
add wave -noupdate -expand -group SYS_CTRL -color {Medium Orchid} /tb_System_TOP/U0_DUT/U0_SYS_CTRL/Rd_En
add wave -noupdate -expand -group SYS_CTRL -color Red /tb_System_TOP/U0_DUT/U0_SYS_CTRL/Wr_Data
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/CLK_ALU_EN
add wave -noupdate -expand -group SYS_CTRL -color Orange /tb_System_TOP/U0_DUT/U0_SYS_CTRL/WR_Data_FIFO
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/WR_INC
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/rd_data_reg
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/rd_got
add wave -noupdate -expand -group SYS_CTRL /tb_System_TOP/U0_DUT/U0_SYS_CTRL/C_S
add wave -noupdate -expand -group Reg_File -color Red /tb_System_TOP/U0_DUT/U0_Reg_file/Wr_Data
add wave -noupdate -expand -group Reg_File -color Firebrick /tb_System_TOP/U0_DUT/U0_Reg_file/address
add wave -noupdate -expand -group Reg_File -color Magenta /tb_System_TOP/U0_DUT/U0_Reg_file/Wr_En
add wave -noupdate -expand -group Reg_File -color {Medium Orchid} /tb_System_TOP/U0_DUT/U0_Reg_file/Rd_En
add wave -noupdate -expand -group Reg_File -color Tan /tb_System_TOP/U0_DUT/U0_Reg_file/Rd_Data_VLD
add wave -noupdate -expand -group Reg_File -color Tan /tb_System_TOP/U0_DUT/U0_Reg_file/Rd_Data
add wave -noupdate -expand -group Reg_File /tb_System_TOP/U0_DUT/U0_Reg_file/Reg0
add wave -noupdate -expand -group Reg_File /tb_System_TOP/U0_DUT/U0_Reg_file/Reg1
add wave -noupdate -expand -group Reg_File /tb_System_TOP/U0_DUT/U0_Reg_file/Reg2
add wave -noupdate -expand -group Reg_File /tb_System_TOP/U0_DUT/U0_Reg_file/Reg3
add wave -noupdate -expand -group ALU /tb_System_TOP/U0_DUT/U0_ALU/A
add wave -noupdate -expand -group ALU /tb_System_TOP/U0_DUT/U0_ALU/B
add wave -noupdate -expand -group ALU /tb_System_TOP/U0_DUT/U0_ALU/Alu_Fun
add wave -noupdate -expand -group ALU -color Orange /tb_System_TOP/U0_DUT/U0_ALU/ALU_EN
add wave -noupdate -expand -group ALU /tb_System_TOP/U0_DUT/U0_ALU/clk
add wave -noupdate -expand -group ALU /tb_System_TOP/U0_DUT/U0_ALU/Alu_Rst
add wave -noupdate -expand -group ALU /tb_System_TOP/U0_DUT/U0_ALU/Out_VLD
add wave -noupdate -expand -group ALU -color Thistle /tb_System_TOP/U0_DUT/U0_ALU/Alu_Out
add wave -noupdate -expand -group ALU /tb_System_TOP/U0_DUT/U0_ALU/Carry
add wave -noupdate -expand -group CLK_Gate -color Thistle /tb_System_TOP/U0_DUT/U0_CLK_GATE/CLK_EN
add wave -noupdate -expand -group CLK_Gate /tb_System_TOP/U0_DUT/U0_CLK_GATE/CLK
add wave -noupdate -expand -group CLK_Gate /tb_System_TOP/U0_DUT/U0_CLK_GATE/GATED_CLK
add wave -noupdate -expand -group CLK_Gate /tb_System_TOP/U0_DUT/U0_CLK_GATE/Latch_Out
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/WR_clk
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/WR_rst
add wave -noupdate -expand -group SYNC_FIFO -color Cyan /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/WR_inc
add wave -noupdate -expand -group SYNC_FIFO -color Orange /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/WR_Data
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/RD_clk
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/RD_rst
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/RD_inc
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/FULL
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/EMPTY
add wave -noupdate -expand -group SYNC_FIFO -color Cyan /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/RD_Data
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/Waddr
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/Raddr
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/Wptr
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/Rptr
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/wq2_rptr
add wave -noupdate -expand -group SYNC_FIFO /tb_System_TOP/U0_DUT/U0_ASYNC_FIFO/rq2_wptr
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/TX_CLK
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/RX_CLK
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/RX_IN_S
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/TX_IN_P
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/TX_IN_V
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/TX_OUT_S
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/TX_OUT_V
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/Prescale
add wave -noupdate -expand -group UART -color Pink /tb_System_TOP/U0_DUT/U0_UART/parity_enable
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/parity_type
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/parity_error
add wave -noupdate -expand -group UART /tb_System_TOP/U0_DUT/U0_UART/framing_error
add wave -noupdate -expand -group CLK_DIV /tb_System_TOP/U0_DUT/U0_CLK_DIV/i_rst_n
add wave -noupdate -expand -group CLK_DIV /tb_System_TOP/U0_DUT/U0_CLK_DIV/i_ref_clk
add wave -noupdate -expand -group CLK_DIV /tb_System_TOP/U0_DUT/U0_CLK_DIV/i_clk_en
add wave -noupdate -expand -group CLK_DIV /tb_System_TOP/U0_DUT/U0_CLK_DIV/i_div_ratio
add wave -noupdate -expand -group CLK_DIV /tb_System_TOP/U0_DUT/U0_CLK_DIV/o_div_clk
add wave -noupdate -expand -group CLK_DIV /tb_System_TOP/U0_DUT/U0_CLK_DIV/CLK_DIV_EN
add wave -noupdate -expand -group Pulse_gen /tb_System_TOP/U0_DUT/U0_PULSE_GEN/CLK
add wave -noupdate -expand -group Pulse_gen /tb_System_TOP/U0_DUT/U0_PULSE_GEN/RST
add wave -noupdate -expand -group Pulse_gen /tb_System_TOP/U0_DUT/U0_PULSE_GEN/in_signal
add wave -noupdate -expand -group Pulse_gen /tb_System_TOP/U0_DUT/U0_PULSE_GEN/pulsed_signal
add wave -noupdate -expand -group Pulse_gen /tb_System_TOP/U0_DUT/U0_PULSE_GEN/in_Flop
add wave -noupdate -expand -group Pulse_gen /tb_System_TOP/U0_DUT/U0_PULSE_GEN/out_Flop
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {982402828 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {2103397388 ps}
