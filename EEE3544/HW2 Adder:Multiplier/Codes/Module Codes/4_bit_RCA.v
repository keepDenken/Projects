module RCA_4bit(
    input   wire[3:0]   A,
    input   wire[3:0]   B,
    input   wire        Cin,
    output  wire[3:0]   C,
    output  wire        Cout
);

wire Cout00, Cout01, Cout10;

FA_1bit HA00 (
    .A( A[0] ),
    .B( B[0] ),
    .Cin( Cin ),
    .C( C[0] ),
    .Cout( Cout00 )
);

FA_1bit FA01 (
    .A( A[1] ),
    .B( B[1] ),
    .Cin( Cout00 ),
    .C( C[1] ),
    .Cout( Cout01 )
);

FA_1bit FA10 (
    .A( A[2] ),
    .B( B[2] ),
    .Cin( Cout01 ),
    .C( C[2] ),
    .Cout( Cout10 )
);

FA_1bit FA11 (
    .A( A[3] ),
    .B( B[3] ),
    .Cin( Cout10 ),
    .C( C[3] ),
    .Cout( Cout )
);

endmodule
