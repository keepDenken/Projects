module tbTOP();

reg clk, nrst;
reg mode;
reg [17:0] instr;
wire [15:0] result;
wire neg;

TOP TOP0(
	.clk(clk),
	.nrst(nrst),
	.mode(mode),
	.instr(instr),
	.neg(neg),
	.result(result)
);


always #5 clk = ~clk;

initial begin

// OPERATION 1
clk  = 1;
nrst = 1;

#5
nrst = 0;
#5
nrst = 1;

#10
mode  = 0;
#10
instr = 18'b00_00000000_01011101;
#10
instr = 18'b00_11000010_11110110;
#10
instr = 18'b01_11001100_00000000;
#10
instr = 18'b10_10000110_01011001;
#10
instr = 18'b01_00110110_10011011;
#10
instr = 18'b01_00010010_00000111;
#10
instr = 18'b10_11010000_00000000;
#10
instr = 18'b00_01010101_10101010;
#10
instr = 18'b10_00000000_00000000;
mode = 1;
#150
$stop;


end
endmodule
