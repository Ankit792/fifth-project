`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 10:59:36 AM
// Design Name: 
// Module Name: MUX_F
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


module MUX_F(
    input [15:0] I,
    input [3:0] S,
    output OUT_ANKIT
    );
    wire C0,C1,C2,C3;
    MUX_A A1(I[0],I[1],I[2],I[3],S[0],S[1],C0);
    MUX_A A2(I[4],I[5],I[6],I[7],S[0],S[1],C1);
    MUX_A A3(I[8],I[9],I[10],I[11],S[0],S[1],C2);
    MUX_A A4(I[12],I[13],I[14],I[15],S[0],S[1],C3);
    MUX_A A5(C0,C1,C2,C3,S[2],S[3],OUT_ANKIT);
endmodule
