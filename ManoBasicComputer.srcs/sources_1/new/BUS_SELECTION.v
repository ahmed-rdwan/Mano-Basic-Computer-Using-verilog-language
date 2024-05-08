module BUS_SELECTION(d0,d1,d2,d3,d4,d5,d6,d7,sel,out_bus);

	input [7:0] d0,d1,d2,d3,d4,d5,d6,d7;
	input [2:0] sel;
	output reg [7:0] out_bus;

	always @* begin
		case(sel)
			3'b000: out_bus = d0;
			3'b001: out_bus = d1;
			3'b010: out_bus = d2;  
			3'b011: out_bus = d3;
			3'b100: out_bus = d4;
			3'b101: out_bus = d5;
			3'b110: out_bus = d6;
			3'b111: out_bus = d7;
		endcase
	end

endmodule
