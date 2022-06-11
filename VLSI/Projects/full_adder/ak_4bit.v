`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2021 04:38:32 PM
// Design Name: 
// Module Name: ak_4bit
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


module ak_4bit(
    input [3:0] A,
    input [3:0] B,
    input C0,
    output [3:0] ankit_sum,
    output C4
    );
wire c1,c2,c3;
ak_1bit var1(A[0],B[0],C0,ankit_sum[0],c1);
ak_1bit var2(A[1],B[1],c1,ankit_sum[1],c2);
ak_1bit var3(A[2],B[2],c2,ankit_sum[2],c3);
ak_1bit var4(A[3],B[3],c3,ankit_sum[3],C4);
endmodule
