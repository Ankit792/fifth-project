@echo off
set xv_path=E:\\vivado\\Vivado\\2014.4\\bin
echo "xvlog -m64 -prj mux_c_vlog.prj"
call %xv_path%/xvlog  -m64 -prj mux_c_vlog.prj -log compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0
