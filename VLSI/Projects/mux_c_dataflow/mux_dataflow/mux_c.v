`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/02/2021 06:27:22 PM
// Design Name: 
// Module Name: mux_c
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


module mux_c(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output out_ankit
    );
//Logic equation for X
assign ankit_out = (~s1 & ~s0 & a) | 
                   (~s1 & s0 & b) | 
                   (s1 & ~s0 & c) | 
                   ( s1 & s0 & d ) ;
endmodule
