# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir E:/vivado/Vivado/2014.4/examples/Vivado_Tutorial/Projects/lab11/lab11.cache/wt [current_project]
set_property parent.project_path E:/vivado/Vivado/2014.4/examples/Vivado_Tutorial/Projects/lab11/lab11.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
read_verilog -library xil_defaultlib E:/vivado/Vivado/2014.4/examples/Vivado_Tutorial/Projects/lab11/ALU.v
catch { write_hwdef -file ALU.hwdef }
synth_design -top ALU -part xc7a35tcpg236-1
write_checkpoint -noxdef ALU.dcp
catch { report_utilization -file ALU_utilization_synth.rpt -pb ALU_utilization_synth.pb }