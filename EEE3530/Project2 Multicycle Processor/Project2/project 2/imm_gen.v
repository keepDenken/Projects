module imm_gen (input_32, output_64);
	input [31:0] input_32;
	output [63:0] output_64;
	
	// fill in the missing code
	
	reg[63:0] output_64;
	
	always @(input_32)
	begin
		case (input_32[6:0])
		
			7'b0000011:
				begin
					output_64[11:0] <= input_32[31:20];
					output_64[63:12] <= {52{input_32[31]}};
				end
			
			7'b0100011:
				begin
					output_64[4:0] <= input_32[11:7];
					output_64[11:5] <= input_32[31:25];
					output_64[63:12] <= {52{input_32[31]}};
				end
				
			7'b0010011:
				begin
					output_64[11:0] <= input_32[31:20];
					output_64[63:12] <= {52{input_32[31]}};
				end
			
			7'b1100111:
				begin
					output_64[0] <= 1'b0;
					output_64[4:1] <= input_32[11:8];
					output_64[10:5] <= input_32[30:25];
					output_64[11] <= input_32[7];
					output_64[12] <= input_32[31];
					output_64[63:13] <= {52{input_32[31]}};
				end
				
			endcase
		end
	// fill in the missing code
endmodule
