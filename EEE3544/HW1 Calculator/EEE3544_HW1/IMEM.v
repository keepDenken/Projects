
module IMEM(
	input wire clk,
	input wire nrst,
	input wire read,
	input wire[15:0] raddr,
	input wire write,
	input wire[15:0] waddr,
	input wire [17:0] instr_in,	
	output reg [17:0] instr_out
);

reg [15:0][17:0] mem;

always @(posedge clk or negedge nrst) begin
	//RESET
	if(~nrst) begin
		mem  <= 0;
	end
	//NORMAL OP
	else begin
		// WRITE OP
		if(write==1) begin
			mem[waddr][17:0] = instr_in;
			instr_out[17:0] = 18'bZ;
		end
		// READ OP
		else if(read==1) begin
			instr_out[17:0] = mem[raddr][17:0];
		end
		// NO OP
		else begin
			instr_out[17:0] = 18'bZ;
		end			
	end
end
endmodule