module RCA_32bit(
    input   wire[31:0]  A,
    input   wire[31:0]  B,
    input   wire        Cin,
    output  wire[31:0]  S,
    output  wire        Cout
);

wire Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110;

RCA_4bit RCA000 (
    .A( A[3:0] ),
    .B( B[3:0] ),
    .Cin( Cin ),
    .C( S[3:0] ),
    .Cout( Cout000 )
);

RCA_4bit RCA001 (
    .A( A[7:4] ),
    .B( B[7:4] ),
    .Cin( Cout000 ),
    .C( S[7:4] ),
    .Cout( Cout001 )
);

RCA_4bit RCA010 (
    .A( A[11:8] ),
    .B( B[11:8] ),
    .Cin( Cout001 ),
    .C( S[11:8] ),
    .Cout( Cout010 )
);

RCA_4bit RCA011 (
    .A( A[15:12] ),
    .B( B[15:12] ),
    .Cin( Cout010 ),
    .C( S[15:12] ),
    .Cout( Cout011 )
);

RCA_4bit RCA100 (
    .A( A[19:16] ),
    .B( B[19:16] ),
    .Cin( Cout011 ),
    .C( S[19:16] ),
    .Cout( Cout100 )
);

RCA_4bit RCA101 (
    .A( A[23:20] ),
    .B( B[23:20] ),
    .Cin( Cout100 ),
    .C( S[23:20] ),
    .Cout( Cout101 )
);

RCA_4bit RCA110 (
    .A( A[27:24] ),
    .B( B[27:24] ),
    .Cin( Cout101 ),
    .C( S[27:24] ),
    .Cout( Cout110 )
);

RCA_4bit RCA111 (
    .A( A[31:28] ),
    .B( B[31:28] ),
    .Cin( Cout110 ),
    .C( S[31:28] ),
    .Cout( Cout )
);

endmodule
