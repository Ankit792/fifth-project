
N
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-347h px
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a35t2default:defaultZ17-349h px
?
?The version limit for your license is '%s' and will expire in %s days. A version limit expiration means that, although you may be able to continue to use the current version of tools or IP with this license, you will not be eligible for any updates or new releases.
519*common2
2017.122default:default2
-13302default:defaultZ17-1223h px
m
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
S
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px
b
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px
S

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px
v
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px
m

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px
@
.Phase 1 Build RT Design | Checksum: 17e7992ce
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:52 . Memory (MB): peak = 986.281 ; gain = 70.8982default:defaulth px
s

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px
x
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64h px
q

Phase %s%s
101*constraints2
2.1 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px
D
2Phase 2.1 Pre Route Cleanup | Checksum: 17e7992ce
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 990.965 ; gain = 75.5822default:defaulth px
F
4Phase 2 Router Initialization | Checksum: 11ee72a03
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 992.398 ; gain = 77.0162default:defaulth px
m

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px
?
-Phase 3 Initial Routing | Checksum: 1608ab39
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 992.398 ; gain = 77.0162default:defaulth px
p

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px
r

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px
D
2Phase 4.1 Global Iteration 0 | Checksum: edae1481
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 992.398 ; gain = 77.0162default:defaulth px
B
0Phase 4 Rip-up And Reroute | Checksum: edae1481
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 992.398 ; gain = 77.0162default:defaulth px
k

Phase %s%s
101*constraints2
5 2default:default2!
Post Hold Fix2default:defaultZ18-101h px
=
+Phase 5 Post Hold Fix | Checksum: edae1481
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 992.398 ; gain = 77.0162default:defaulth px
l

Phase %s%s
101*constraints2
6 2default:default2"
Route finalize2default:defaultZ18-101h px
>
,Phase 6 Route finalize | Checksum: edae1481
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 992.398 ; gain = 77.0162default:defaulth px
s

Phase %s%s
101*constraints2
7 2default:default2)
Verifying routed nets2default:defaultZ18-101h px
E
3Phase 7 Verifying routed nets | Checksum: edae1481
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 993.641 ; gain = 78.2582default:defaulth px
o

Phase %s%s
101*constraints2
8 2default:default2%
Depositing Routes2default:defaultZ18-101h px
A
/Phase 8 Depositing Routes | Checksum: c9d3cff4
*commonh px
?

%s
*constraints2o
[Time (s): cpu = 00:00:53 ; elapsed = 00:00:53 . Memory (MB): peak = 993.641 ; gain = 78.2582default:defaulth px
:
Router Completed Successfully
16*routeZ35-16h px
?

%s
*constraints2o
[Time (s): cpu = 00:00:00 ; elapsed = 00:00:53 . Memory (MB): peak = 993.641 ; gain = 78.2582default:defaulth px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
462default:default2
62default:default2
02default:default2
02default:defaultZ4-41h px
[
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:00:542default:default2
00:00:542default:default2
993.6412default:default2
78.2582default:defaultZ17-268h px
A
Writing placer database...
1603*designutilsZ20-1893h px
:
Writing XDEF routing.
211*designutilsZ20-211h px
G
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px
G
#Writing XDEF routing special nets.
210*designutilsZ20-210h px
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.1002default:default2
993.6412default:default2
0.0002default:defaultZ17-268h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
?
#The results of DRC are in file %s.
168*coretcl2?
{E:/vivado/Vivado/2014.4/examples/Vivado_Tutorial/Projects/full_adder/full_adder.runs/impl_1/ak_adderSub_8bit_drc_routed.rpt{E:/vivado/Vivado/2014.4/examples/Vivado_Tutorial/Projects/full_adder/full_adder.runs/impl_1/ak_adderSub_8bit_drc_routed.rpt2default:default8Z2-168h px
o
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px
y
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px
M
/No user defined clocks was found in the design!216*powerZ33-232h px
H
,Running Vector-less Activity Propagation...
51*powerZ33-51h px
M
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px


End Record