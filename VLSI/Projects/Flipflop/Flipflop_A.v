`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2021 17:03:50
// Design Name: 
// Module Name: Flipflop_A
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


module Flipflop_A(D,clk,async_reset,Ankit_out);
    input D; 
    input clk; 
    input async_reset; 
    output reg Ankit_out;
always @(posedge clk or negedge async_reset)
begin 
if(async_reset==1'b1)
    Ankit_out <= 1'b0;
else 
    Ankit_out <= D;
end 
endmodule
