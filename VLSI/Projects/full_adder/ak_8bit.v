`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2021 04:57:17 PM
// Design Name: 
// Module Name: ak_8bit
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


module ak_8bit(
    input [7:0] X,
    input [7:0] Y,
    input Ci,
    output [7:0] ankit_sum,
    output Co
    );
wire m;
ak_4bit rc1(X[3:0],Y[3:0],Ci,ankit_sum[3:0],m);
ak_4bit rc2(X[7:4],Y[7:4],m,ankit_sum[7:4],Co);
endmodule
