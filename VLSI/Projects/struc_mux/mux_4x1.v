`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/26/2021 02:24:13 PM
// Design Name: 
// Module Name: mux_4x1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_4x1(
    input a,b,c,d,
    input s0,s1,
    output x
    );
    wire x1,x2,x3,x4;
    wire nots0,nots1;
    not (nots0,s0);
    not (nots1,s1);
    and (x1,a,nots0,nots1);
    and (x2,b,nots0,s1);
    and (x3,c,s0,nots1);
    and (x4,d,s0,s1);
    or (x,x1,x2,x3,x4);
endmodule
