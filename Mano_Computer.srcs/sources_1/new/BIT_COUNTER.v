`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2024 07:08:44 PM
// Design Name: 
// Module Name: counter
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


module  bit_counter(clk, clr, count);
  input clk, clr;     
  output [3:0] count; 
  reg [3:0] count;    

  always @(posedge clk, negedge clr) begin 
    if (!clr) begin                       
      count <= 3'b000;                  
    end else begin                        
      count <= count + 1;                 
    end
  end                                   
endmodule
