`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 06:12:24 PM
// Design Name: 
// Module Name: decoder_A
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


module decoder_A(
    input A,
    input B,
    input E,
    output out_Ankit1,
    output out_Ankit2,
    output out_Ankit3,
    output out_Ankit4
    );
    wire w0,w1;
    not C1(w0,A);
    not C2(w1,B);
    and A1(out_Ankit1,w0,w1,E);
    and A2(out_Ankit2,w0,B,E);
    and A3(out_Ankit3,A,w1,E);
    and A4(out_Ankit4,A,B,E);
endmodule
