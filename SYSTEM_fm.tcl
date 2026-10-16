###################define_Variables########################

lappend search_path /home/ICer/tsmc_fb_cl013g_sc/aci/sc-m/synopsys

set SSLIB "scmetro_tsmc_cl013g_rvt_ss_1p08v_125c.db"
set TTLIB "scmetro_tsmc_cl013g_rvt_tt_1p2v_25c.db"
set FFLIB "scmetro_tsmc_cl013g_rvt_ff_1p32v_m40c.db"

####################Guidance##############################

set synopsys_auto_setup true 

set_svf "/home/ICer/Projects/Formality_post_Synthesis/System_TOP.svf"
#####################Refrence Container########################

# Read Reference Design Verilog Files

set rtl_dir "/home/ICer/Projects/rtl"

read_verilog -container ref [glob $rtl_dir/*.v $rtl_dir/ASYNC_FIFO/*.v $rtl_dir/System_ctrl/*.v $rtl_dir/UART/*.v]
read_verilog -container ref "/home/ICer/Projects/rtl/UART/FSM_RX.sv"
read_verilog -container ref "/home/ICer/Projects/rtl/UART/FSM_tx.sv"

# Read Reference technology libraries
read_db -container ref [list $SSLIB $TTLIB $FFLIB]

# set the top Reference Design 
set_reference_design System_TOP
set_top System_TOP  

################Implementation Container###################

# Read implementation Netlist 
read_verilog -container imp "/home/ICer/Projects/Formality_post_Synthesis/Netlist_post_syn/System_TOP.v"

# Read implementation technology libraries
read_db -container imp [list $SSLIB $TTLIB $FFLIB]

# set the top Implementation Design
set_implementation_design System_TOP 
set_top System_TOP

###################### Matching Compare points ####################
match


#################### Verification #############################

set successful [verify]
if {!$successful} {
diagnose
analyze_points -failing
}

########################### Reporting ############################# 
report_passing_points > "passing_points.rpt"
report_failing_points > "failing_points.rpt"
report_aborted_points > "aborted_points.rpt"
report_unverified_points > "unverified_points.rpt"

start_gui


