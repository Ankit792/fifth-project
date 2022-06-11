`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/12/2021 07:42:49 AM
// Design Name: 
// Module Name: MUX_A
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


module MUX_A(
    input I0,
    input I1,
    input I2,
    input I3,
    input S0,
    input S1,
    output OUT_ANKIT
    );
    wire NotS0, NotS1;	
    wire C0,C1,C2,C3;    
    not(NotS0,S0);
    not(NotS1,S1);
    and(C0,I0,NotS1,NotS0);
    and(C1,I1,NotS1,S0);
    and(C2,I2,S1,NotS0);
    and(C3,I3,S1,S0);
    or(OUT_ANKIT,C0,C1,C2,C3);
endmodule
