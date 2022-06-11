@echo off
set xv_path=E:\\vivado\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto d95b27a4194c41888c57c9b605480df4 -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot mux_c_behav xil_defaultlib.mux_c xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
