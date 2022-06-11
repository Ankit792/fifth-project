`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.09.2021 18:42:49
// Design Name: 
// Module Name: Flipflop_C
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


module Flipflop_C(clk,reset,mode,Ankit_out);
      input clk;
      input reset;
      input mode;
      output [3:0] Ankit_out;
      reg [3:0] Ankit_out;  
 always @(posedge clk or posedge reset)
 begin
    if(reset == 1) 
       Ankit_out <= 0;
    else    
        if(mode == 1)   
            if(Ankit_out == 15)
                Ankit_out <= 0;
     else
          Ankit_out <= Ankit_out + 1; 
     else  
          if(Ankit_out == 0)
                Ankit_out <= 15;
     else
          Ankit_out <= Ankit_out - 1; 
end      
endmodule
