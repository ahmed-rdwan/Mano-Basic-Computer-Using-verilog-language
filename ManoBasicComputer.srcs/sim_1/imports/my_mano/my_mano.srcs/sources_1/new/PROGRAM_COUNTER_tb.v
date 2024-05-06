module PROGRAM_COUNTER_tb;

	
	reg [7:0] Data;
	reg INR,CLK;

	wire [7:0] Q;


PROGRAM_COUNTER uut (Q,INR,Data,CLK);

	
	
endmodule