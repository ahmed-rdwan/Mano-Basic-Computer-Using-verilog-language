module ALU_tb;
    reg AND, ADD, LDA, CMA, E;
    reg [7:0] AC, DR;
    wire [7:0] ACDATA;
    wire cout;

    ALU dut (        
        .AND(AND),
        .ADD(ADD),
        .LDA(LDA),
        .CMA(CMA),
        .E(E),
        .AC(AC),
        .DR(DR),
        .cout(cout),
        .ACDATA(ACDATA)
    );

    initial begin
        AND = 1; ADD = 0; LDA = 0; CMA = 0; E = 0; AC = 8'h01; DR = 8'h11;
        #10;
        
        AND = 1; AC = 8'h23; DR = 8'h57;
               #10;
        


        $finish;
    end
endmodule
