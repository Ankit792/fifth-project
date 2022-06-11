`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 09:18:40 PM
// Design Name: 
// Module Name: FSM
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


module FSM(
 input input_D,
input clock,
input reset,
output reg out_Ankit
);
parameter 
S0=3'b000,
S1=3'b001,
S2=3'b010,
S3=3'b011,
S4=3'b100,
S5=3'b101;
reg [2:0] current_state, next_state;
always@ (posedge clock, posedge reset)
begin
if(reset==1)
current_state <= S0;
else
current_state <= next_state;
end
always@ (current_state,input_D)
begin
case(current_state)
S0:begin
 if(input_D==1)
 next_state <= S1;
 else
 next_state <= S0;
end
S1:begin
 if(input_D==0)
 next_state <= S2;
 else
 next_state <= S1;
end
S2:begin
 if(input_D==1)
 next_state <= S3;
else
 next_state <= S0;
end
S3:begin
 if(input_D==0)
 next_state <= S4;
else
 next_state <= S1;
end 
S4:begin
 if(input_D==0)
 next_state <= S5;
else
 next_state <= S1;
end
S5:begin
 if(input_D==0)
 next_state <= S0;
else
 next_state <= S1;
end
endcase
end
always@(current_state)
begin
 case(current_state)
 S0: out_Ankit <= 0;
 S1: out_Ankit <= 0;
 S2: out_Ankit <= 0;
 S3: out_Ankit <= 0;
 S4: out_Ankit <= 0;
 S5: out_Ankit <= 1;
 default: out_Ankit <= 1;
 endcase 
end 
endmodule