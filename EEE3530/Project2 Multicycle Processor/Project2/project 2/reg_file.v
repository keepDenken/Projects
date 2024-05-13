
module reg_file(clk, RegWrite, RN1, RN2, WN, RD1, RD2, WD);
	input clk;
	input RegWrite;
	input [4:0] RN1, RN2, WN;
	input [63:0] WD;
	output [63:0] RD1, RD2;

	reg [63:0] RD1, RD2;
	reg [63:0] ARRAY[0:63]; //64 64-bit wide register? 
	
	// fill in the missing code
	always @(negedge clk)
	begin
		if (RegWrite==1)
		begin
			ARRAY[WN]<=WD;
		end
	end
	
	always @(posedge clk)
	begin
		RD1 <= ARRAY[RN1];
		RD2 <= ARRAY[RN2];
	end
	// fill in the missing code
endmodule

