`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 09:38:20 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] A,
    input [7:0] B,
    input [2:0] S,
    output [7:0] R,
    output CF,
    output ZF
    );
    reg [8:0] Ankit_Rtem;
    always @(S,A,B)
    begin
      case(S)
        3'b000: Ankit_Rtem=A+B;
        3'b001: Ankit_Rtem=A-B;
        3'b010: Ankit_Rtem=A&B;
        3'b011: Ankit_Rtem=A|B;
        3'b100: Ankit_Rtem=A^B;
        3'b101: Ankit_Rtem=~A;
        3'b110: Ankit_Rtem=A>B;
        3'b111: Ankit_Rtem=A==B;
      endcase
    end
    assign R=Ankit_Rtem[7:0];
    assign CF=Ankit_Rtem[8];
    assign ZF=(R==8'b0);
endmodule
