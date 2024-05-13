module adder(PCcurrent, offset, PCnew);

	input [63:0] PCcurrent;
	input [63:0] offset;
	output [63:0] PCnew;
	
	reg [63:0] PCnew;
	
	always @(PCcurrent)
	begin
		PCnew <= PCcurrent + offset;
	end
endmodule
