module HA_1bit(
    input   wire    A,
    input   wire    B,
    output  wire    C,
    output  wire    Cout
);

assign C    = A^B;
assign Cout = A&&B;

endmodule
