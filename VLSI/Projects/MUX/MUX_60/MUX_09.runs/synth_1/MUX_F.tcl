# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000

create_project -in_memory -part xc7a35tcpg236-1
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir C:/Users/ACER/Desktop/MUX/MUX_09/MUX_09.cache/wt [current_project]
set_property parent.project_path C:/Users/ACER/Desktop/MUX/MUX_09/MUX_09.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
read_verilog -library xil_defaultlib {
  C:/Users/ACER/Desktop/MUX/MUX_09/MUX_A.v
  C:/Users/ACER/Desktop/MUX/MUX_09/MUX_F.v
}
catch { write_hwdef -file MUX_F.hwdef }
synth_design -top MUX_F -part xc7a35tcpg236-1
write_checkpoint -noxdef MUX_F.dcp
catch { report_utilization -file MUX_F_utilization_synth.rpt -pb MUX_F_utilization_synth.pb }
