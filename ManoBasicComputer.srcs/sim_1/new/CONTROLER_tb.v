module CONTROLER_tb();
  // Inputs
    reg CLK, cout;
	reg [7:0] IR,AC,DR;
	reg [5:0] T;
	wire  CLRAC, INRAC, LoadAC ,CMA,LDA, ADD, AND, 
	   LoadAR,  INRPC,  WRITE, READ,
	 LoadDR, CLRSC,INRSC, E, LoadIR;
	 wire [7:0] Z;
  
  
  CONTROLER ctrl (
    .CLK(CLK), .IR(IR), .T(T), .CLRAC(CLRAC), .INRAC(INRAC),
    .LoadAC(LoadAC), .CMA(CMA), .LDA(LDA), .ADD(ADD), .AND(AND),
      .LoadAR(LoadAR), 
    .INRPC(INRPC),  .WRITE(WRITE), .READ(READ),
    .LoadDR(LoadDR), .CLRSC(CLRSC),.v(INRSC),.E(E), .Z(Z),
    .AC(AC), .DR(DR), .LoadIR(LoadIR), .cout(cout)
  );
 
    always #10 CLK = ~CLK;

  initial begin
        
        T = 8'b00000;
        IR = 8'b0;
        AC = 8'b0;
        DR = 8'b0;
        cout = 1'b0;
        #10;
                
        T = 6'b000001;
        #10;
        T = 6'b000010;
        #10;
        T = 6'b000100;
        
        
       end 
endmodule