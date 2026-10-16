
####################################################################################
# Constraints
# ----------------------------------------------------------------------------
#
# 0. Design Compiler variables
#
# 1. Master Clock Definitions
#
# 2. Generated Clock Definitions
#
# 3. Clock Uncertainties
#
# 4. Clock Latencies 
#
# 5. Clock Relationships
#
# 6. #set input/output delay on ports
#
# 7. Driving cells
#
# 8. Output load

####################################################################################
           #########################################################
                  #### Section 0 : DC Variables ####
           #########################################################
#################################################################################### 

# Prevent assign statements in the generated netlist (must be applied before compile command)
set_fix_multiple_port_nets -all -buffer_constants -feedthroughs

####################################################################################
           #########################################################
                  #### Section 1 : Clock Definition ####
           #########################################################
#################################################################################### 
# 1. Master Clock Definitions 
# 2. Generated Clock Definitions
# 3. Clock Latencies
# 4. Clock Uncertainties
# 4. Clock Transitions
####################################################################################

#1. Master Clocks
create_clock -name "REF_CLK" -period 10 -waveform "0 5" [get_ports REF_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks REF_CLK]
set_clock_uncertainty -hold  0.1  [get_clocks REF_CLK]
set_clock_transition  -rise  0.05 [get_clocks REF_CLK]
set_clock_transition  -fall  0.05 [get_clocks REF_CLK]

set_dont_touch_network [get_clocks REF_CLK]
 
#1. Generated clocks
create_generated_clock -master_clock REF_CLK -source [get_ports REF_CLK] -name "Gated_clk" [get_pin U0_CLK_GATE/GATED_CLK] -divide_by 1  

set_clock_uncertainty -setup 0.2  [get_clocks Gated_clk]
set_clock_uncertainty -hold  0.1  [get_clocks Gated_clk]

#2. Master Clocks
create_clock -name "UART_CLK" -period 271.267 -waveform "0 135.6335" [get_ports UART_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks UART_CLK]
set_clock_uncertainty -hold  0.1  [get_clocks UART_CLK]
set_clock_transition  -rise  0.05 [get_clocks UART_CLK]
set_clock_transition  -fall  0.05 [get_clocks UART_CLK]

set_dont_touch_network [get_clocks UART_CLK]
 
#2. Generated clocks
#2.1
create_generated_clock -master_clock UART_CLK -source [get_ports UART_CLK] -name "CLK_DIV_TX" [get_pin U0_CLK_DIV/o_div_clk] -divide_by 32  

set_clock_uncertainty -setup 0.2  [get_clocks CLK_DIV_TX]
set_clock_uncertainty -hold  0.1  [get_clocks CLK_DIV_TX]

#2.2
create_generated_clock -master_clock UART_CLK -source [get_ports UART_CLK] -name "CLK_DIV_RX" [get_pin U1_CLK_DIV/o_div_clk] -divide_by 1  

set_clock_uncertainty -setup 0.2  [get_clocks CLK_DIV_RX]
set_clock_uncertainty -hold  0.1  [get_clocks CLK_DIV_RX]

####################################################################################
           #########################################################
             #### Section 2 : Clocks Relationship ####
           #########################################################
####################################################################################

set_clock_groups -asynchronous -group [get_clocks {REF_CLK Gated_clk}] -group [get_clocks {UART_CLK CLK_DIV_TX CLK_DIV_RX}]

####################################################################################
           #########################################################
             #### Section 3 : set input/output delay on ports ####
           #########################################################
####################################################################################

#set delay_REF [expr 0.2*10]
set delay_UART_tx [expr 0.2*8680.544]
set delay_UART_rx [expr 0.2*271.267]

set_input_delay  $delay_UART_rx   -clock CLK_DIV_RX [get_port RX_IN_TOP]

set_output_delay $delay_UART_tx   -clock CLK_DIV_TX [get_port TX_OUT_TOP]
set_output_delay $delay_UART_rx   -clock CLK_DIV_RX [get_port PARITY_ERROR]
set_output_delay $delay_UART_rx   -clock CLK_DIV_RX [get_port FRAMING_ERROR]


####################################################################################
           #########################################################
                  #### Section 4 : Driving cells ####
           #########################################################
####################################################################################

set_driving_cell -library scmetro_tsmc_cl013g_rvt_ss_1p08v_125c -lib_cell BUFX2M -pin Y [get_port RX_IN_TOP]

####################################################################################
           #########################################################
                  #### Section 5 : Output load ####
           #########################################################
####################################################################################

set_load 0.1 [get_ports {TX_OUT_TOP PARITY_ERROR FRAMING_ERROR}]

####################################################################################
           #########################################################
                 #### Section 6 : Operating Condition ####
           #########################################################
####################################################################################

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis

set_operating_conditions -min_library "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -min "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c" -max_library "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c" -max "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c"

####################################################################################
           #########################################################
                  #### Section 7 : wireload Model ####
           #########################################################
####################################################################################


####################################################################################
           #########################################################
                  #### Section 8 : premapped cells ####
           #########################################################
####################################################################################

set_dont_touch [get_cells U0_CLK_GATE/U0_TLATNCAX12M]

####################################################################################

