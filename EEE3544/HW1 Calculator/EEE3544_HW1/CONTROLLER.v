module CONTROLLER(
	input wire clk,
	input wire nrst,
	input wire mode,
	input reg [17:0] instr_read,
	input reg [17:0] instr_write,
	output reg write,
	output reg[15:0] waddr,
	output reg read,
	output reg[15:0] raddr, 
	output reg [1:0] OP,
	output reg [7:0] src1,
	output reg [7:0] src2
);

always @(posedge clk or negedge nrst) begin
	// RESET
	if(~nrst) begin
		write = 1'bZ;
		read  = 1'bZ;
		waddr = 16'b0;
		raddr = 16'bZ;
		OP    = 2'bZ;
		src1  = 8'bZ;
		src2  = 8'bZ;
	end
	// NORMAL OP
	else begin
		// OPERATION SEQ #1
		if(mode==0) begin
 			write = 1; 
			read  = 0;
			casez(instr_write)
				18'bX?: waddr = waddr;
				default: waddr = waddr+1;
			endcase

		end
		
		// OPERATION SEQ #2
		else if(mode == 1) begin
			// READ IMEM
			write = 0;
			read  = 1;
			casez(raddr)	
				16'bX?: raddr = 0;
				default: raddr = raddr + 1;
			endcase
			OP[1:0]   = instr_read[17:16];
			src1[7:0] = instr_read[15:8];
			src2[7:0] = instr_read[7:0];


		end
		
	end
end
endmodule	
