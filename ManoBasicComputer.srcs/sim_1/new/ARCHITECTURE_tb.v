`timescale 1 ns / 1 ps

module ARCHITECTURE_tb;

wire   [7:0] DR, AC, IR, MEM;
wire [3:0] PC, AR;
wire [7:0] D;
wire [5:0] T;
wire [2:0] mohaned;
wire [7:0] mux_out;
wire [2:0] SSS;
wire [7:0] Z;
wire J;
wire E;

reg CLK;

ARCHITECTURE ARCH(CLK,
     DR, AC, IR, MEM,
     PC, AR,
     T, D,
     mohaned,
     mux_out,
     SSS,
     Z,
     J,
     E
     ); 
     
     initial CLK = 0; 
     
    always begin
         CLK = 0; #5; CLK = 1; #5;
     end




endmodule

