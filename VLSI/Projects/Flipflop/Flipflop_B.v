`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2021 18:39:52
// Design Name: 
// Module Name: Flipflop_B
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


module Flipflop_B(D,clk,reset,Ankit_out);
    input [7:0]D;
    input clk;
    input reset;
    output [7:0] Ankit_out; 
    reg [7:0] Ankit_out;
always@(posedge clk or posedge reset)
begin if(reset==1'b1)
    Ankit_out<=8'b00000000;
else
    Ankit_out<=D;
end
endmodule
