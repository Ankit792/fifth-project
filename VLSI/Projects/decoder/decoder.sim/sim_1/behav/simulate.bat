@echo off
set xv_path=E:\\vivado\\Vivado\\2014.4\\bin
call %xv_path%/xsim decoder_A_behav -key {Behavioral:sim_1:Functional:decoder_A} -tclbatch decoder_A.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
