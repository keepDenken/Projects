module TOP(
	input wire clk,
	input wire nrst,
	input wire mode,
	input wire [17:0] instr,
	output wire neg,
	output wire [15:0] result
);

wire read;
wire write;
wire [15:0]  waddr;
wire [15:0]  raddr;
wire [17:0] instr_out;
wire [1:0]  OP;
wire [7:0]  src1;
wire [7:0]  src2;


IMEM IMEM0(
	.clk(clk),
	.nrst(nrst),
	.read(read),
	.raddr(raddr),
	.write(write),
	.waddr(waddr),
	.instr_in(instr),
	.instr_out(instr_out)
);

CONTROLLER CONTROLLER0(
	.clk(clk),
	.nrst(nrst),
	.mode(mode),
	.instr_read(instr_out),
	.instr_write(instr),
	.write(write),
	.waddr(waddr),
	.read(read),
	.raddr(raddr),
	.OP(OP),
	.src1(src1),
	.src2(src2)
);

ALU ALU0(
	.clk(clk),
	.nrst(nrst),
	.OP(OP),
	.src1(src1),
	.src2(src2),
	.result(result),
	.neg(neg)
);

endmodule
