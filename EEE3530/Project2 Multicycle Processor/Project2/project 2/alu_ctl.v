module alu_ctl(ALUOp, Funct7, Funct3, ALUOperation);
	input [1:0] ALUOp;
	input Funct7;
	input [2:0] Funct3;
	output [3:0] ALUOperation;
	reg [3:0] ALUOperation;

	// symbolic constants for instruction function code
	parameter F7_add  = 1'b0;
	parameter F7_sub  = 1'b1;
	parameter F7_and  = 1'b0;
	parameter F7_or   = 1'b0;
	parameter F7_xor  = 1'b0;

	parameter F3_add  = 3'b000;
	parameter F3_sub  = 3'b000;
	parameter F3_and  = 3'b111;
	parameter F3_or   = 3'b110;
	parameter F3_xor  = 3'b100;
	
	parameter F3_addi = 3'b000;
	parameter F3_ori =  3'b110;

	// symbolic constants for ALU Operations
	parameter ALU_add  = 4'b0010;
	parameter ALU_sub  = 4'b0110;
	parameter ALU_and  = 4'b0000;
	parameter ALU_or   = 4'b0001;
	parameter ALU_xor  = 4'b0101;
	
	parameter ALU_addi = 4'b0010;
	parameter ALU_ori  = 4'b0001;

	always @(ALUOp or Funct7 or Funct3)
	begin
		case (ALUOp)
		// fill in the missing code
		
		2'b10: begin
			if(Funct7==F7_sub && Funct3==F3_sub) ALUOperation<=ALU_sub;
				else if(Funct7==F7_add && Funct3==F3_add) ALUOperation<=ALU_add;
				else if(Funct7==F7_and && Funct3==F3_and) ALUOperation<=ALU_and;
				else if(Funct7==F7_or && Funct3==F3_or) ALUOperation<=ALU_or;
				else if(Funct7==F7_xor && Funct3==F3_xor) ALUOperation<=ALU_xor;
			end
		
		2'b00: ALUOperation<=ALU_add;
		
		2'b01: ALUOperation<=ALU_sub;
		
		2'b11: begin
			if(Funct3==F3_addi) ALUOperation<=ALU_addi;
				else if(Funct3==F3_ori) ALUOperation<=ALU_ori;
			end
		
		
		// fill in the missing code
		
		endcase
	end	
endmodule

