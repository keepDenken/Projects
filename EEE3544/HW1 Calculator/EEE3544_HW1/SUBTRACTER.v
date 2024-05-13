module SUBTRACTER(
	input wire clk,
	input wire [7:0] src1,
	input wire [7:0] src2,
	output reg [15:0] result,
	output reg neg
);



always@(posedge clk) begin
	result = src1 - src2;
	neg = src1 < src2;
end


endmodule
