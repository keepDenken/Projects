module alu(ctl, op1, op2, zero, result);
	input [3:0] ctl;
	input [63:0] op1, op2;
	output [63:0] result;
	output zero;
	
	reg [63:0] result;
	reg zero;
	
	// symbolic constants for ALU operations
	parameter ALU_add = 4'b0010;
	parameter ALU_sub = 4'b0110;
	parameter ALU_and = 4'b0000;
	parameter ALU_or  = 4'b0001;
	parameter ALU_xor = 4'b0101;
	
	parameter ALU_addi = 4'b0010;
	parameter ALU_ori = 4'b0001;

	always @(op1 or op2 or ctl)
	begin
		case (ctl)
		// fill in the missing code
		
		4'b0010: result <= op1 + op2;
		4'b0110: result <= op1 - op2;
		4'b0000: result <= op1 & op2;
		4'b0001: result <= op1 | op2;
		4'b0101: result <= op1 ^ op2;

		// fill in the missing code  
		default : result <= result;
		endcase
		
		if (result == 63'd0)
		begin
			zero <= 1;
		end
		else
		begin
			zero <= 0;
		end
	end
endmodule

