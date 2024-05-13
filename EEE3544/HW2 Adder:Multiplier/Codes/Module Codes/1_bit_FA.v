module FA_1bit (
    input   wire A,
    input   wire B,
    input   wire Cin,
    output  wire C,
    output  wire Cout
);

assign C    = (A^B)^Cin;
assign Cout = (A&&B) || ((A^B) && Cin);

endmodule
