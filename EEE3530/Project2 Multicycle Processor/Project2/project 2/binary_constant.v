module binary_constant(constant);

	output [63:0] constant;
	
	reg [63:0] constant;
	
	parameter const = 3'b100;
	
	always
	
	begin
		constant[2:0] <= const;
		constant[63:3] <= {61'b0};
	end

endmodule
