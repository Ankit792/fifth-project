`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2021 03:53:58 PM
// Design Name: 
// Module Name: ak_1bit
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


module ak_1bit(
    input A,
    input B,
    input Cin,
    output MOHIT_SUM,
    output Cout
    );
wire c1,c2,c3;
    xor(MOHIT_SUM, A, B, Cin);
    and(c1, A, B);
    and(c2, B, Cin);
    and(c3, A, Cin);
    or(Cout, c1, c2, c3);
endmodule
