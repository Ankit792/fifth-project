`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 06:40:15 PM
// Design Name: 
// Module Name: decoder_B
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


module decoder_B(
    input A,
    input B,
    input C,
    input E,
    output out_Ankit1,
    output out_Ankit2,
    output out_Ankit3,
    output out_Ankit4,
    output out_Ankit5,
    output out_Ankit6,
    output out_Ankit7,
    output out_Ankit8
    );
    wire w0,w1,w2;
    decoder_A D1(A,B,w1,out_Ankit1,out_Ankit2,out_Ankit3,out_Ankit4);
    decoder_A D2(A,B,w2,out_Ankit5,out_Ankit6,out_Ankit7,out_Ankit8);
    not(w0,C);
    and A1(w1,E,w0);
    and A2(w2,E,C);
endmodule
