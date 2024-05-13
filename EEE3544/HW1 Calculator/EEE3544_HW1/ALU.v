module ALU(
    input wire clk,
    input wire nrst,
    input wire [1:0] OP,
    input wire [7:0] src1,
    input wire [7:0] src2,
    output reg [15:0] result,
    output wire neg
);
reg [1:0] prevop;
reg [7:0] addsrc1;
reg [7:0] addsrc2;
reg [7:0] subsrc1;
reg [7:0] subsrc2;
reg [7:0] mulsrc1;
reg [7:0] mulsrc2;

wire [15:0] result1;
wire [15:0] result2;
wire [15:0] result3;

always @(*) begin

	casez(prevop)
		2'bX?: prevop = OP;
		2'b00: begin
			result = result1;
			prevop = OP;
		end
		2'b01: begin
			result = result2;
			prevop = OP;
		end
		2'b10	: begin
			result = result3;
			prevop = OP;
		end
	endcase
	// MULTIPLEXING INPUT AND OUTPUT
	case(OP)
		// ROUTING TO ADDER
		2'b00: begin
			addsrc1 = src1;
			addsrc2 = src2;
			subsrc1 = 8'bZ;    
			subsrc2 = 8'bZ;
			mulsrc1 = 8'bZ;
			mulsrc2 = 8'bZ;
     		end
		// ROUTING TO SUBTRACTER
		2'b01: begin
			addsrc1 = 8'bZ;
			addsrc2 = 8'bZ;
			subsrc1 = src1;    
			subsrc2 = src2;
			mulsrc1 = 8'bZ;
			mulsrc2 = 8'bZ;
        	end
 		// ROUTING TO MULTIPLIER
		2'b10: begin 
			addsrc1 = 8'bZ;
			addsrc2 = 8'bZ;
			subsrc1 = 8'bZ;    
			subsrc2 = 8'bZ;
			mulsrc1 = src1;
			mulsrc2 = src2;
		end
		// NO SIG
		default : begin
			result  = 8'bz;
			addsrc1 = 8'bz;
			addsrc2 = 8'bz;
			subsrc1 = 8'bz;    
			subsrc2 = 8'bz;
			mulsrc1 = 8'bz;
			mulsrc2 = 8'bz;
    		end
    	endcase
end

ADDER ADDER0(
    .clk(clk),
    .src1(addsrc1),
    .src2(addsrc2),
    .result(result1)
);

SUBTRACTER SUBTRACTER0(
    .clk(clk),
    .src1(subsrc1),
    .src2(subsrc2),
    .result(result2),
    .neg(neg)
);

MULTIPLIER MULTIPLIER0(
    .clk(clk),
    .src1(mulsrc1),
    .src2(mulsrc2),
    .result(result3)
);

endmodule

