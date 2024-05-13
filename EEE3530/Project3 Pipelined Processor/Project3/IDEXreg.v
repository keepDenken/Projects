module IDEXreg(IDFunct3, IDFunct7, IDPC, IDRN1, IDRN2, IDWN, 
			IDRD1, IDRD2, IDIMM, IDRW, IDM2R, IDMR, IDMW, IDALUOp, IDBranch, IDALUsrc, 
			EXFunct3, EXFunct7, EXPC, EXRN1, EXRN2, EXWN, 
			EXRD1, EXRD2, EXIMM, EXRW, EXM2R, EXMR, EXMW, EXALUop, EXBranch, EXALUsrc, clk);

	input IDRW, IDM2R, IDMR, IDMW, IDBranch, IDFunct7, IDALUsrc, clk;
	input [63:0] IDPC, IDRD1, IDRD2, IDIMM;
	input [4:0] IDRN1, IDRN2, IDWN;
	input [2:0] IDFunct3;
	input [1:0] IDALUOp;

	output EXRW, EXM2R, EXMR, EXMW, EXBranch, EXFunct7, EXALUsrc;
	output [63:0] EXPC, EXRD1, EXRD2, EXIMM;
	output [4:0] EXRN1, EXRN2, EXWN;
	output [2:0] EXFunct3;
	output [1:0] EXALUop;
	
	reg EXRW, EXM2R, EXMR, EXMW, EXBranch, EXFunct7, EXALUsrc;
	reg [63:0] EXPC, EXRD1, EXRD2, EXIMM;
	reg [4:0] EXRN1, EXRN2, EXWN;
	reg [2:0] EXFunct3;
	reg [1:0] EXALUop;
	
	initial
		begin
		
			EXRW <= 0;
			EXM2R <= 0;
			EXMR <= 0;
			EXMW <= 0;
			EXBranch <= 0;
			EXALUsrc <= 0;
			EXFunct7 <= 0;
			EXIMM <= 0;
			EXPC <= 0;
			EXRD1 <= 0;
			EXRD2 <= 0;
			EXRN1 <= 0;
			EXRN2 <= 0;
			EXWN <= 0;
			EXFunct3 <= 0;
			EXALUop <= 0;
			
		end
	
always @(posedge clk)
	begin
		
		EXRW <= IDRW;
		EXM2R <= IDM2R;
		EXMR <= IDMR;
		EXMW <= IDMW;
		EXBranch <= IDBranch;
		EXFunct7 <= IDFunct7;
		EXALUsrc <= IDALUsrc;
		
		EXPC <= IDPC;
		EXRD1 <= IDRD1;
		EXRD2 <= IDRD2;
		EXIMM <= IDIMM;
		
		EXFunct3 <= IDFunct3;
		
		EXRN1 <= IDRN1;
		EXRN2 <= IDRN2;
		EXWN <= IDWN;
		
		EXALUop <= IDALUOp;
	end

endmodule 