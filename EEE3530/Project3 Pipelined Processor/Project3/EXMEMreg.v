module EXMEMreg(EXPC, EXresult, EXWN, EXRD2, EXIMM, EXRW, EXM2R, EXMR, EXMW, EXBranch, EXzero, 
		MEMPC, MEMresult, MEMWN, MEMRD2, MEMIMM, MEMRW, MEMM2R, MEMMR, MEMMW, MEMBranch, MEMzero, clk);

	input EXRW, EXM2R, EXMR, EXMW, EXBranch, EXzero, clk;
	input [63:0] EXPC, EXresult, EXRD2, EXIMM;
	input [4:0] EXWN;
	
	output MEMRW, MEMM2R, MEMMR, MEMMW, MEMBranch, MEMzero;
	output [63:0] MEMPC, MEMresult, MEMRD2, MEMIMM;
	output [4:0] MEMWN;
	
	reg MEMRW, MEMM2R, MEMMR, MEMMW, MEMBranch, MEMzero;
	reg[63:0] MEMPC, MEMresult, MEMRD2, MEMIMM;
	reg [4:0] MEMWN;
	
initial
	begin
		MEMRW <= 0;
		MEMM2R <= 0;
		MEMMR <= 0;
		MEMMW <= 0;
		MEMBranch <= 0;
		MEMzero <= 0;
		MEMPC <= 0;
		MEMresult <= 0;
		MEMRD2 <= 0;
		MEMIMM <= 0;
		MEMWN <= 0;
	end
	
	always @(posedge clk)
		begin
		
			MEMRW <= EXRW;
			MEMM2R <= EXM2R;
			MEMMR <= EXMR;
			MEMMW <= EXMW;
			MEMBranch <= EXBranch;
			MEMzero <= EXzero;
			
			MEMPC <= EXPC;
			MEMresult <= EXresult;
			MEMRD2 <= EXRD2;
			MEMIMM <= EXIMM;
			
			MEMWN <= EXWN;
			
		end

endmodule 