module CSA_4bit(
    input   wire[3:0]   A,
    input   wire[3:0]   B,
    input   wire        Cin,
    output  wire[3:0]   S,
    output  wire        Cout
);

wire Cout0, Cout1;
wire [3:0] S0;
wire [3:0] S1;

assign S    = Cin ? S1 : S0;
assign Cout = Cin ? Cout1 : Cout0;

RCA_4bit RCA0 (
    .A(A),
    .B(B),
    .Cin(1'b0),
    .C(S0),
    .Cout(Cout0)
);

RCA_4bit RCA1 (
    .A(A),
    .B(B),
    .Cin(1'b1),
    .C(S1),
    .Cout(Cout1)
);

endmodule
