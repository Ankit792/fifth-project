`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 07:34:05 PM
// Design Name: 
// Module Name: decoder_D
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


module decoder_D(A,B,C,out_Ankit);    
    input A,B,C;
    output [7:0] out_Ankit;
    reg [7:0] out_Ankit;
    always @(A or B or C)
begin
  case({A,B,C})
    3'b000 : out_Ankit = 8'b00000001;
    3'b001 : out_Ankit = 8'b00000010;
    3'b010 : out_Ankit = 8'b00000100;
    3'b011 : out_Ankit = 8'b00001000;
    3'b100 : out_Ankit = 8'b00010000;
    3'b101 : out_Ankit = 8'b00100000;
    3'b110 : out_Ankit = 8'b01000000;
    default : out_Ankit = 8'b10000000;
  endcase
end
endmodule
