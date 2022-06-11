`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 10:10:35 AM
// Design Name: 
// Module Name: MUX_D
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


module MUX_D(I0,I1,I2,I3,S,OUT_ANKIT);
 output OUT_ANKIT;
 input I0,I1,I2,I3;
 input [1:0] S;
 reg OUT_ANKIT;
 always @(I0 or I1 or I2 or I3 or S)
 begin
 if (S == 2'b00)OUT_ANKIT = I0;
 else if (S == 2'b01)OUT_ANKIT = I1;
 else if (S == 2'b10)OUT_ANKIT = I2;
 else OUT_ANKIT = I3;
 end
endmodule

