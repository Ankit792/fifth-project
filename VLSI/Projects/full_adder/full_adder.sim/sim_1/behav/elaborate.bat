@echo off
set xv_path=E:\\vivado\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 47f3cc06bfc149cba3dd393945ede236 -m64 --debug typical --relax -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot ak_4bit_behav xil_defaultlib.ak_4bit xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
