SetActiveLib -work
comp -include "$dsn\src\not1i.vhd" 
comp -include "$dsn\src\TestBench\not1i_TB.vhd" 
asim +access +r TESTBENCH_FOR_not1i 
wave 
wave -noreg i0
wave -noreg q
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\not1i_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_not1i 
