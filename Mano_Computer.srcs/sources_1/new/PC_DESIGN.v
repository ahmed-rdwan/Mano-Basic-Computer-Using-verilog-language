module PC_DESIGN(CLR, INR, LD,T);
	
	
	input [5:0] T;
    output INR,LD,CLR;
	
  assign LD=0;
   assign INR=T[1];
    assign CLR=0;
    
   
	
	

endmodule
