`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 07:53:39 PM
// Design Name: 
// Module Name: decoder_E
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


module decoder_E(
    input A,
    input B,
    input C,
    input E,
    output out_Ankit1,output out_Ankit2,
    output out_Ankit3,output out_Ankit4,
    output out_Ankit5,output out_Ankit6,
    output out_Ankit7,output out_Ankit8,
    output out_Ankit9,output out_Ankit10,
    output out_Ankit11,output out_Ankit12,
    output out_Ankit13,output out_Ankit14,
    output out_Ankit15,output out_Ankit16
    );
    wire NE;
    not(NE,E);
    decoder_B A1(A,B,C,NE,out_Ankit1,out_Ankit2,out_Ankit3,out_Ankit4,out_Ankit5,out_Ankit6,out_Ankit7,out_Ankit8);
    decoder_B A2(A,B,C,E,out_Ankit9,out_Ankit10,out_Ankit11,out_Ankit12,out_Ankit13,out_Ankit14,out_Ankit15,out_Ankit16);
endmodule
