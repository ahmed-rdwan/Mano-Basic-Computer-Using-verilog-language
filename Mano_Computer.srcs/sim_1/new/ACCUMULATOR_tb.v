`timescale 1ns/1ps

module ACCUMULATOR_tb;

    
    reg [7:0] Data;
    reg INR, LD, CLK, CLR;
    
    
    wire [7:0] Q;
    
   
    ACCUMULATOR dut (
        .Q(Q),
        .Data(Data),
        .INR(INR),
        .LD(LD),
        .CLK(CLK),
        .CLR(CLR)
    );
    
   
    always #5 CLK = ~CLK;
    
        
    
        initial begin
            CLR = 0;
            LD = 0;
            CLK = 0;
            INR = 0;
           
            Data = 8'h14;
            LD = 1;
            #10;
            LD = 0;
            INR = 1;
            #10;
            INR = 0;
            CLR = 1;
           
     end

endmodule
