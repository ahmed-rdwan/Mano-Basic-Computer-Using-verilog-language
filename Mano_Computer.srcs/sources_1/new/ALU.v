module ALU(AND,ADD, LDA, CMA,E,AC, DR,cout , ACDATA);
    input AND,ADD, LDA, CMA,E;    
    input [7:0] AC, DR;
    
    output cout ;
    output [7:0]  ACDATA;
    
    wire [7:0] and8,add8,lda8,cma8;   
   
    wire [7:0] AND1,AND2,AND3,AND4 ,SUM;           
    wire CARRY;
    
  
    assign and8 = (AND ? 8'hff :8'b0);
	assign AND1 = AC & and8 & DR;
	
	
	assign {CARRY,SUM} = AC + DR ;
	assign cout = CARRY;
	
	assign add8= (ADD ? 8'b11111111 :8'b0);
	assign AND2 = SUM & add8 ;
	
	
	assign lda8 = (LDA ? 8'hff :8'b0);
	assign AND3 = lda8 & DR ;
	
	
	assign cma8 = (CMA ? 8'hff : 8'b0);
	assign AND4 = (~AC) & cma8;
	
	
	

    assign ACDATA = AND1 | AND2| AND3| AND4;   
endmodule
