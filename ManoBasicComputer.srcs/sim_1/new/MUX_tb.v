module MUX_tb;

	
	reg [7:0] d [7:0];
    reg [7:0] D;
    reg [7:0] T;
    reg J;
	
	wire [7:0] out;
	wire [2:0] sel;
    wire [7:0] Z;
    
	// Instantiate the MUX module
	BUS_SELECTION bus (d[0],d[1],d[2],d[3],d[4],d[5],d[6],d[7],sel,out);
	BUS_DESIGN dut (Z, D, T, J);
	Encoder8_3 enc (sel, Z);


    

	initial begin
		d [0]= 8'b00000001;
		d [1]= 8'b00000010;
		d [2]= 8'b00000100;
		d [3]= 8'b00001000;
		d [4]= 8'b00010000;
		d [5]= 8'b00100000;
		d [6]= 8'b01000000;
		d [7]= 8'b10000000;
//	
    
        #10
        D[4] = 1;
        T[4] = 1;
        
        #10
        D[4] = 0;
        T[4] = 0;
        T[1] = 1;
            
	end

	

endmodule