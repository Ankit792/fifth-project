`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 09:04:27 AM
// Design Name: 
// Module Name: MUX_C
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


module MUX_C(
    input [7:0] I,
    input [2:0] S,
    output OUT_ANKIT
    );
    assign OUT_ANKIT=(~S[2]&~S[1]&~S[0]&I[0])|
    (~S[2]&~S[1]&S[0]&I[1])|
    (~S[2]&S[1]&~S[0]&I[2])|
    (~S[2]&S[1]&S[0]&I[3])|
    (S[2]&~S[1]&~S[0]&I[4])|
    (S[2]&~S[1]&S[0]&I[5])|
    (S[2]&S[1]&~S[0]&I[6])|
    (S[2]&S[1]&S[0]&I[7]);
endmodule
