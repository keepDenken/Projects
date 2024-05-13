module CSA_32bit (
    input   wire[31:0]  A,
    input   wire[31:0]  B,
    input   wire        Cin,
    output  wire[31:0]  S,
    output  wire        Cout
);

/*********Local Variable*********/
wire Cout001_0, Cout001_1;
wire Cout010_0, Cout010_1;
wire Cout011_0, Cout011_1;
wire Cout100_0, Cout100_1;
wire Cout101_0, Cout101_1;
wire Cout110_0, Cout110_1;
wire Cout111_0, Cout111_1;
wire Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110, Cout111;

wire [3:0] S001_0, S001_1;
wire [3:0] S010_0, S010_1;
wire [3:0] S011_0, S011_1;
wire [3:0] S100_0, S100_1;
wire [3:0] S101_0, S101_1;
wire [3:0] S110_0, S110_1;
wire [3:0] S111_0, S111_1;

/*********MUX Selection*********/
assign S[7:4]   = Cout000 ? S001_1 : S001_0;
assign S[11:8]  = Cout001 ? S010_1 : S010_0;
assign S[15:12] = Cout010 ? S011_1 : S011_0;
assign S[19:16] = Cout011 ? S100_1 : S100_0;
assign S[23:20] = Cout100 ? S101_1 : S101_0;
assign S[27:24] = Cout101 ? S110_1 : S110_0;
assign S[31:28] = Cout110 ? S111_1 : S111_0;

assign Cout001  = Cout000 ? Cout001_1 : Cout001_0;
assign Cout010  = Cout001 ? Cout010_1 : Cout010_0;
assign Cout011  = Cout010 ? Cout011_1 : Cout011_0;
assign Cout100  = Cout011 ? Cout100_1 : Cout100_0;
assign Cout101  = Cout100 ? Cout101_1 : Cout101_0;
assign Cout110  = Cout101 ? Cout110_1 : Cout110_0;
assign Cout     = Cout110 ? Cout111_1 : Cout111_0;

/*********LV0*********/
RCA_4bit RCA000 (
    .A(A[3:0]),
    .B(B[3:0]),
    .Cin(Cin),
    .C(S[3:0]),
    .Cout(Cout000)
);

/*********LV1*********/
CSA_4bit CSA001_0 (
    .A(A[7:4]),
    .B(B[7:4]),
    .Cin(1'b0),
    .S(S001_0),
    .Cout(Cout001_0)
);

CSA_4bit CSA001_1 (
    .A(A[7:4]),
    .B(B[7:4]),
    .Cin(1'b1),
    .S(S001_1),
    .Cout(Cout001_1)
);

/*********LV2*********/
CSA_4bit CSA010_0 (
    .A(A[11:8]),
    .B(B[11:8]),
    .Cin(1'b0),
    .S(S010_0),
    .Cout(Cout010_0)
);

CSA_4bit CSA010_1 (
    .A(A[11:8]),
    .B(B[11:8]),
    .Cin(1'b1),
    .S(S010_1),
    .Cout(Cout010_1)
);

/*********LV3*********/
CSA_4bit CSA011_0 (
    .A(A[15:12]),
    .B(B[15:12]),
    .Cin(1'b0),
    .S(S011_0),
    .Cout(Cout011_0)
);

CSA_4bit CSA011_1 (
    .A(A[15:12]),
    .B(B[15:12]),
    .Cin(1'b1),
    .S(S011_1),
    .Cout(Cout011_1)
);

/*********LV4*********/
CSA_4bit CSA100_0 (
    .A(A[19:16]),
    .B(B[19:16]),
    .Cin(1'b0),
    .S(S100_0),
    .Cout(Cout100_0)
);

CSA_4bit CSA100_1 (
    .A(A[19:16]),
    .B(B[19:16]),
    .Cin(1'b1),
    .S(S100_1),
    .Cout(Cout100_1)
);

/*********LV5*********/
CSA_4bit CSA101_0 (
    .A(A[23:20]),
    .B(B[23:20]),
    .Cin(1'b0),
    .S(S101_0),
    .Cout(Cout101_0)
);

CSA_4bit CSA101_1 (
    .A(A[23:20]),
    .B(B[23:20]),
    .Cin(1'b1),
    .S(S101_1),
    .Cout(Cout101_1)
);

/*********LV6*********/
CSA_4bit CSA110_0 (
    .A(A[27:24]),
    .B(B[27:24]),
    .Cin(1'b0),
    .S(S110_0),
    .Cout(Cout110_0)
);

CSA_4bit CSA110_1 (
    .A(A[27:24]),
    .B(B[27:24]),
    .Cin(1'b1),
    .S(S110_1),
    .Cout(Cout110_1)
);

/*********LV7*********/
CSA_4bit CSA111_0 (
    .A(A[31:28]),
    .B(B[31:28]),
    .Cin(1'b0),
    .S(S111_0),
    .Cout(Cout111_0)
);

CSA_4bit CSA111_1 (
    .A(A[31:28]),
    .B(B[31:28]),
    .Cin(1'b1),
    .S(S111_1),
    .Cout(Cout111_1)
);

endmodule
