vlib work
vlog *.*v
vsim -voptargs="+acc" work.tb_System_TOP
do wave.do
run -all