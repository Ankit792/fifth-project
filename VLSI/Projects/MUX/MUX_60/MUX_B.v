`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 08:30:36 AM
// Design Name: 
// Module Name: MUX_B
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


module MUX_B(
    input [7:0] I,
    input [2:0] S,
    output OUT_ANKIT
    );
    wire C0,C1,C2,C3,C4;
    MUX_A A1(I[0],I[1],I[2],I[3],S[0],S[1],C0); 
    MUX_A A2(I[4],I[5],I[6],I[7],S[0],S[1],C1); 
    not(C2,S[2]); 
    and (C3,C0,C2);
    and (C4,C1,S[2]);
    or(OUT_ANKIT,C3,C4);
endmodule
