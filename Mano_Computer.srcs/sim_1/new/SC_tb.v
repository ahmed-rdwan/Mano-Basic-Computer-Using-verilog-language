module SequenceCounter_TB;

	wire INR;         
	reg CLK;           
	wire CLR;

	wire [2:0] out;    
	
    wire [7:0] T;
    reg [7:0] D;
    reg J;
    
	SequenceCounter SC (.INR(INR), .CLR(CLR), .CLK(CLK), .out(out));   // Instantiate dUT (data Under Test)
	SC_DESIGN(.CLR(CLR), .INR(INR),.T(T),.D(D),.J(J));
	Decoder3_8(out, T);


    always #10 CLK = ~CLK;
    
    initial begin
		CLK = 0;
		J = 0;
		D = 0;
		
		#60
		D [4] = 1;		
		
	end

endmodule
