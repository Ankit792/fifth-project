`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 10:40:06 AM
// Design Name: 
// Module Name: MUX_E
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


module MUX_E(I0,I1,I2,I3,I4,I5,I6,I7,S,OUT_ANKIT);
 input I0,I1,I2,I3,I4,I5,I6,I7;
 input [2:0]S;
 output OUT_ANKIT;
 reg OUT_ANKIT;;
 always @(S or I0 or I1 or I2 or I3 or I4 or I5 or I6 or I7)
 case(S)
 3'b000 : OUT_ANKIT = I0;
 3'b001 : OUT_ANKIT = I1;
 3'b010 : OUT_ANKIT = I2;
 3'b011 : OUT_ANKIT = I3;
 3'b100 : OUT_ANKIT = I4;
 3'b101 : OUT_ANKIT = I5;
 3'b110 : OUT_ANKIT = I6;
 3'b111 : OUT_ANKIT = I7;
 endcase
endmodule
