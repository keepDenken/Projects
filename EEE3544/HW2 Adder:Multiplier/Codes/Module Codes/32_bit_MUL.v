module MUL_32bit (
    input wire [31:0] A,
    input wire [7:0]  B,
    output wire [39:0] Y
);

wire [31:0] Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110, Cout111;
wire [31:0] Sout000, Sout001, Sout010, Sout011, Sout100, Sout101, Sout110, Sout111;
wire [31:0] Sout;

assign Y = {Sout, Sout111[0], Sout110[0], Sout101[0], Sout100[0], Sout011[0], Sout010[0], Sout001[0], Sout000[0]};

ROW_MUL ROW0 (
    .A(A),
    .B(B[0]),
    .Sin(32'b0),
    .Cin(32'b0),
    .Sout(Sout000),
    .Cout(Cout000)
);

ROW_MUL ROW1 (
    .A(A),
    .B(B[1]),
    .Sin({1'b0, Sout000[31:1]}),
    .Cin(Cout000),
    .Sout(Sout001),
    .Cout(Cout001)
);

ROW_MUL ROW2 (
    .A(A),
    .B(B[2]),
    .Sin({1'b0, Sout001[31:1]}),
    .Cin(Cout001),
    .Sout(Sout010),
    .Cout(Cout010)
);

ROW_MUL ROW3 (
    .A(A),
    .B(B[3]),
    .Sin({1'b0, Sout010[31:1]}),
    .Cin(Cout010),
    .Sout(Sout011),
    .Cout(Cout011)
);

ROW_MUL ROW4 (
    .A(A),
    .B(B[4]),
    .Sin({1'b0, Sout011[31:1]}),
    .Cin(Cout011),
    .Sout(Sout100),
    .Cout(Cout100)
);

ROW_MUL ROW5 (
    .A(A),
    .B(B[5]),
    .Sin({1'b0, Sout100[31:1]}),
    .Cin(Cout100),
    .Sout(Sout101),
    .Cout(Cout101)
);

ROW_MUL ROW6 (
    .A(A),
    .B(B[6]),
    .Sin({1'b0, Sout101[31:1]}),
    .Cin(Cout101),
    .Sout(Sout110),
    .Cout(Cout110)
);

ROW_MUL ROW7 (
    .A(A),
    .B(B[7]),
    .Sin({1'b0, Sout110[31:1]}),
    .Cin(Cout110),
    .Sout(Sout111),
    .Cout(Cout111)
);

RCA_32bit FINAL_SUM (
    .A({1'b0, Sout111[31:1]}),
    .B(Cout111),
    .Cin(1'b0),
    .S(Sout),
    .Cout()
);

endmodule
