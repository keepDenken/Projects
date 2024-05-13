module ROW_MUL (
    input wire  [31:0] A,
    input wire  B,
    input wire  [31:0] Sin,
    input wire  [31:0] Cin,
    output wire [31:0] Sout,
    output wire [31:0] Cout
);

wire [31:0] _Cout;

FA_1bit ROW[31:0] (
    .A( A&{32{B}} ),
    .B( Sin ),
    .Cin( Cin ),
    .C( Sout ),
    .Cout( Cout )
);

endmodule
