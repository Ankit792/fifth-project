`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/22/2021 06:31:25 PM
// Design Name: 
// Module Name: adder
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


module adder(
    input [7:0] A,
    input [7:0] B,
    input On,
    output [7:0] Sum,
    output Cout
    );
    wire [8:0] result;
    assign result = A+B+Cin;
    assign Sum = result[7:0];
    assign Cout = result[8];
endmodule
