`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/13/2023 12:06:18 AM
// Design Name: 
// Module Name: IR_Control
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


module IR_DESIGN(D,T,CLR,INR,LD);

    input [7:0] D;
    input [5:0] T;
    output LD,INR,CLR;
    
   assign LD = T[1];
   assign INR=0;
   assign CLR=0;
endmodule
