`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2021 09:03:40 PM
// Design Name: 
// Module Name: ak_adderSub_8bit
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


module ak_adderSub_8bit(
        input [7:0] A,
        input [7:0] B,
        input m,
        output [7:0] ankit_sum_sub,
        output Cout
        );
wire c0,c1,c2,c3,c4,c5,c6;
wire w0,w1,w2,w3,w4,w5,w6,w7;
    xor(w0,B[0],m);
    xor(w1,B[1],m);
    xor(w2,B[2],m);
    xor(w3,B[3],m);
    xor(w4,B[4],m);
    xor(w5,B[5],m);
    xor(w6,B[6],m);
    xor(w7,B[7],m);
    
    ak_1bit va1(A[0],w0,m,ankit_sum_sub[0],c0);
    ak_1bit va2(A[1],w1,c0,ankit_sum_sub[1],c1);
    ak_1bit va3(A[2],w2,c1,ankit_sum_sub[2],c2);
    ak_1bit va4(A[3],w3,c2,ankit_sum_sub[3],c3);
    ak_1bit va5(A[4],w4,c3,ankit_sum_sub[4],c4);
    ak_1bit va6(A[5],w5,c4,ankit_sum_sub[5],c5);
    ak_1bit va7(A[6],w6,c5,ankit_sum_sub[6],c6);
    ak_1bit va8(A[7],w7,c6,ankit_sum_sub[7],Cout);

endmodule
