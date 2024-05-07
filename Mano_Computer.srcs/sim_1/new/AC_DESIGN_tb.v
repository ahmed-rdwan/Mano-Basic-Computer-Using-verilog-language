`timescale 1ns / 1ps

module AC_DESIGN_tb;

  
    reg[5:0] T;
    reg[7:0] D;
    reg[3:0] B;
    reg J;

 
    wire AND;
    wire CMA;
    wire LDA;
    wire ADD;
    wire Load;
    wire INR;
    wire CLR;

    
    AC_DESIGN  UUT (
        .AND(AND),
        .CMA(CMA),
        .LDA(LDA),
        .ADD(ADD),
        .Load(Load),
        .INR(INR),
        .CLR(CLR),
        .T(T),
        .D(D),
        .B(B),
        .J(J)
    );

    initial begin
       
        T = 6'b00000;
        D = 8'b00000000;
        B = 4'b0000;
        J = 0;
        #10;
               
     T = 6'b0001000;
     D = 8'b10000000;
     B = 4'b0100;
     J= 0;  
     #10;
       end 
endmodule
