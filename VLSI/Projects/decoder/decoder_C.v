`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 07:04:17 PM
// Design Name: 
// Module Name: decoder_C
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


module decoder_C(
    input [2:0]x,
    output [7:0] out_Ankit
    );
    assign out_Ankit[0] = ~x[2]&~x[1]&~x[0];
    assign out_Ankit[1] = ~x[2]&~x[1]&x[0];
    assign out_Ankit[2] = ~x[2]&x[1]&~x[0];
    assign out_Ankit[3] = ~x[2]&x[1]&x[0];
    assign out_Ankit[4] = x[2]&~x[1]&~x[0];
    assign out_Ankit[5] = x[2]&~x[1]&x[0];
    assign out_Ankit[6] = x[2]&x[1]&~x[0];
    assign out_Ankit[7] = x[2]&x[1]&x[0];
endmodule
