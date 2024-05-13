/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun May 12 21:44:27 2024
/////////////////////////////////////////////////////////////


module FA_1bit_0 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n1) );
endmodule


module FA_1bit_401 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_402 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_403 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
  XNOR2X1_RVT U2 ( .A1(A), .A2(n2), .Y(n3) );
  INVX1_RVT U3 ( .A(B), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module RCA_4bit_0 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_0 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_403 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_402 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_401 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_137 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_138 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_139 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_140 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_35 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_140 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_139 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_138 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_137 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_141 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(n3), .Y(C) );
  INVX1_RVT U2 ( .A(Cin), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_142 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_143 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_144 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_36 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_144 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_143 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_142 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_141 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_0 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n1;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_36 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_35 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n1), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n1), .Y(S[2]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n1), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n1), .Y(S[0]) );
  INVX1_RVT U7 ( .A(Cin), .Y(n1) );
  AO22X1_RVT U8 ( .A1(S1[3]), .A2(Cin), .A3(n1), .A4(S0[3]), .Y(S[3]) );
endmodule


module FA_1bit_33 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_34 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_35 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_36 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_9 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_36 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_35 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_34 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_33 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_37 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_38 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_39 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_40 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_10 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_40 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_39 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_38 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_37 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_1 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_10 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_9 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U4 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U5 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_41 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_42 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_43 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_44 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_11 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_44 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_43 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_42 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_41 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_45 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_46 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_47 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_48 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_12 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_48 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_47 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_46 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_45 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_2 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_12 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_11 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U4 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U5 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_49 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_50 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_51 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_52 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_13 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_52 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_51 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_50 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_49 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_53 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_54 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_55 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_56 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_14 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_56 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_55 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_54 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_53 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_3 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_14 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_13 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_57 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_58 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_59 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_60 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_15 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_60 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_59 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_58 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_57 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_61 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_62 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_63 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_64 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_16 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_64 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_63 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_62 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_61 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_4 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_16 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_15 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U4 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_65 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_66 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_67 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_68 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_17 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_68 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_67 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_66 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_65 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_69 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_70 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_71 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_72 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_18 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_72 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_71 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_70 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_69 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_5 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_18 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_17 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U4 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U5 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U6 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_73 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_74 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_75 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_76 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_19 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_76 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_75 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_74 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_73 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_77 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_78 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_79 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_80 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_20 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_80 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_79 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_78 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_77 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_6 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_20 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_19 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U4 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_81 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_82 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_83 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_84 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_21 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;

  FA_1bit_84 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_83 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_82 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_81 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_85 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_86 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_87 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_88 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_22 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;

  FA_1bit_88 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_87 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_86 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_85 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_7 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;

  RCA_4bit_22 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_21 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U4 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U5 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U6 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_89 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_90 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_91 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_92 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_23 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;

  FA_1bit_92 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_91 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_90 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_89 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_93 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_94 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_95 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_96 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_24 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;

  FA_1bit_96 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_95 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_94 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_93 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module CSA_4bit_8 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;

  RCA_4bit_24 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_23 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_97 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_98 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_99 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_100 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_25 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] B;

  FA_1bit_100 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_99 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_98 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_97 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_101 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_102 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_103 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_104 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module RCA_4bit_26 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] B;

  FA_1bit_104 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_103 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_102 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_101 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_9 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] B;

  RCA_4bit_26 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_25 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U4 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U5 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U6 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_105 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_106 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_107 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_108 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module RCA_4bit_27 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] B;

  FA_1bit_108 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_107 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_106 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_105 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_109 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_110 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_111 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_112 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_28 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] B;

  FA_1bit_112 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_111 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_110 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_109 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_10 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] B;

  RCA_4bit_28 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_27 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U5 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U6 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  INVX1_RVT U7 ( .A(Cin), .Y(n2) );
  AO22X1_RVT U8 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
endmodule


module FA_1bit_113 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_114 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_115 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_116 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_29 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_116 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_115 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_114 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_113 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_117 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_118 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_119 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_120 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module RCA_4bit_30 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_120 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_119 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_118 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_117 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_11 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_30 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_29 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_121 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_122 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_123 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_124 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module RCA_4bit_31 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_124 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_123 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_122 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_121 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_125 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_126 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_127 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_128 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_32 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_128 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_127 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_126 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_125 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_12 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_32 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_31 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U4 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U7 ( .A(Cin), .Y(n2) );
  AO22X1_RVT U8 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_129 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  XNOR2X1_RVT U3 ( .A1(n2), .A2(n3), .Y(C) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_130 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_131 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_132 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_33 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_132 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_131 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_130 FA10 ( .A(A[2]), .B(n2), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_129 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
  INVX1_RVT U1 ( .A(n1), .Y(n2) );
  INVX1_RVT U2 ( .A(B[2]), .Y(n1) );
endmodule


module FA_1bit_133 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_134 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_135 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_136 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_34 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_136 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_135 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_134 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_133 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_13 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_34 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_33 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U4 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module CSA_32bit ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   Cout000, Cout001_1, Cout001_0, Cout010_1, Cout010_0, Cout011_1,
         Cout011_0, Cout100_1, Cout100_0, Cout101_1, Cout101_0, Cout110_1,
         Cout110_0, Cout111_1, Cout111_0, n2, n3, n4, n5, n6, n7, n8, n9, n10,
         n11, n12, n13, n1;
  wire   [3:0] S001_1;
  wire   [3:0] S001_0;
  wire   [3:0] S010_1;
  wire   [3:0] S010_0;
  wire   [3:0] S011_1;
  wire   [3:0] S011_0;
  wire   [3:0] S100_1;
  wire   [3:0] S100_0;
  wire   [3:0] S101_1;
  wire   [3:0] S101_0;
  wire   [3:0] S110_1;
  wire   [3:0] S110_0;
  wire   [3:0] S111_1;
  wire   [3:0] S111_0;
  tri   [31:0] A;
  tri   [31:0] B;

  RCA_4bit_0 RCA000 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .C(S[3:0]), .Cout(
        Cout000) );
  CSA_4bit_0 CSA001_0 ( .A(A[7:4]), .B(B[7:4]), .Cin(1'b0), .S(S001_0), .Cout(
        Cout001_0) );
  CSA_4bit_13 CSA001_1 ( .A(A[7:4]), .B(B[7:4]), .Cin(1'b1), .S(S001_1), 
        .Cout(Cout001_1) );
  CSA_4bit_12 CSA010_0 ( .A(A[11:8]), .B(B[11:8]), .Cin(1'b0), .S(S010_0), 
        .Cout(Cout010_0) );
  CSA_4bit_11 CSA010_1 ( .A(A[11:8]), .B(B[11:8]), .Cin(1'b1), .S(S010_1), 
        .Cout(Cout010_1) );
  CSA_4bit_10 CSA011_0 ( .A(A[15:12]), .B(B[15:12]), .Cin(1'b0), .S(S011_0), 
        .Cout(Cout011_0) );
  CSA_4bit_9 CSA011_1 ( .A(A[15:12]), .B(B[15:12]), .Cin(1'b1), .S(S011_1), 
        .Cout(Cout011_1) );
  CSA_4bit_8 CSA100_0 ( .A(A[19:16]), .B(B[19:16]), .Cin(1'b0), .S(S100_0), 
        .Cout(Cout100_0) );
  CSA_4bit_7 CSA100_1 ( .A(A[19:16]), .B(B[19:16]), .Cin(1'b1), .S(S100_1), 
        .Cout(Cout100_1) );
  CSA_4bit_6 CSA101_0 ( .A(A[23:20]), .B(B[23:20]), .Cin(1'b0), .S(S101_0), 
        .Cout(Cout101_0) );
  CSA_4bit_5 CSA101_1 ( .A(A[23:20]), .B(B[23:20]), .Cin(1'b1), .S(S101_1), 
        .Cout(Cout101_1) );
  CSA_4bit_4 CSA110_0 ( .A(A[27:24]), .B(B[27:24]), .Cin(1'b0), .S(S110_0), 
        .Cout(Cout110_0) );
  CSA_4bit_3 CSA110_1 ( .A(A[27:24]), .B(B[27:24]), .Cin(1'b1), .S(S110_1), 
        .Cout(Cout110_1) );
  CSA_4bit_2 CSA111_0 ( .A(A[31:28]), .B(B[31:28]), .Cin(1'b0), .S(S111_0), 
        .Cout(Cout111_0) );
  CSA_4bit_1 CSA111_1 ( .A(A[31:28]), .B(B[31:28]), .Cin(1'b1), .S(S111_1), 
        .Cout(Cout111_1) );
  AO22X1_RVT U3 ( .A1(S101_1[1]), .A2(n11), .A3(S101_0[1]), .A4(n3), .Y(S[21])
         );
  INVX1_RVT U4 ( .A(n11), .Y(n3) );
  AO22X1_RVT U5 ( .A1(S101_1[0]), .A2(n11), .A3(S101_0[0]), .A4(n3), .Y(S[20])
         );
  AO22X1_RVT U6 ( .A1(Cout101_1), .A2(n11), .A3(Cout101_0), .A4(n3), .Y(n10)
         );
  AO22X1_RVT U7 ( .A1(S100_1[3]), .A2(n12), .A3(S100_0[3]), .A4(n4), .Y(S[19])
         );
  AO22X1_RVT U8 ( .A1(S100_1[1]), .A2(n12), .A3(S100_0[1]), .A4(n4), .Y(S[17])
         );
  AO22X1_RVT U9 ( .A1(S100_1[0]), .A2(n12), .A3(S100_0[0]), .A4(n4), .Y(S[16])
         );
  AO22X1_RVT U10 ( .A1(S011_1[2]), .A2(n13), .A3(S011_0[2]), .A4(n5), .Y(S[14]) );
  INVX1_RVT U11 ( .A(n1), .Y(n9) );
  INVX0_RVT U12 ( .A(n10), .Y(n2) );
  INVX0_RVT U13 ( .A(n12), .Y(n4) );
  INVX1_RVT U14 ( .A(n13), .Y(n5) );
  INVX1_RVT U15 ( .A(n8), .Y(n6) );
  INVX1_RVT U16 ( .A(Cout000), .Y(n7) );
  AO22X1_RVT U17 ( .A1(Cout111_1), .A2(n9), .A3(Cout111_0), .A4(n1), .Y(Cout)
         );
  AO22X1_RVT U18 ( .A1(S111_1[2]), .A2(n9), .A3(S111_0[2]), .A4(n1), .Y(S[30])
         );
  AO22X1_RVT U19 ( .A1(S111_1[0]), .A2(n9), .A3(S111_0[0]), .A4(n1), .Y(S[28])
         );
  AO22X1_RVT U20 ( .A1(S111_1[3]), .A2(n9), .A3(S111_0[3]), .A4(n1), .Y(S[31])
         );
  AO22X1_RVT U21 ( .A1(S111_1[1]), .A2(n9), .A3(S111_0[1]), .A4(n1), .Y(S[29])
         );
  AO22X1_RVT U22 ( .A1(S011_1[1]), .A2(n13), .A3(S011_0[1]), .A4(n5), .Y(S[13]) );
  AO22X1_RVT U23 ( .A1(S011_1[0]), .A2(n13), .A3(S011_0[0]), .A4(n5), .Y(S[12]) );
  AO22X1_RVT U24 ( .A1(S101_1[3]), .A2(n11), .A3(S101_0[3]), .A4(n3), .Y(S[23]) );
  AOI22X1_RVT U25 ( .A1(Cout110_1), .A2(n10), .A3(Cout110_0), .A4(n2), .Y(n1)
         );
  AO22X1_RVT U26 ( .A1(S011_1[3]), .A2(n13), .A3(S011_0[3]), .A4(n5), .Y(S[15]) );
  AO22X1_RVT U27 ( .A1(Cout010_1), .A2(n8), .A3(Cout010_0), .A4(n6), .Y(n13)
         );
  AO22X1_RVT U28 ( .A1(Cout001_1), .A2(Cout000), .A3(Cout001_0), .A4(n7), .Y(
        n8) );
  AO22X1_RVT U29 ( .A1(S001_1[2]), .A2(Cout000), .A3(S001_0[2]), .A4(n7), .Y(
        S[6]) );
  AO22X1_RVT U30 ( .A1(S010_1[3]), .A2(n8), .A3(S010_0[3]), .A4(n6), .Y(S[11])
         );
  AO22X1_RVT U31 ( .A1(S010_1[1]), .A2(n8), .A3(S010_0[1]), .A4(n6), .Y(S[9])
         );
  AO22X1_RVT U32 ( .A1(S010_1[2]), .A2(n8), .A3(S010_0[2]), .A4(n6), .Y(S[10])
         );
  AO22X1_RVT U33 ( .A1(S010_1[0]), .A2(n8), .A3(S010_0[0]), .A4(n6), .Y(S[8])
         );
  AO22X1_RVT U34 ( .A1(S001_1[3]), .A2(Cout000), .A3(S001_0[3]), .A4(n7), .Y(
        S[7]) );
  AO22X1_RVT U35 ( .A1(S001_1[1]), .A2(Cout000), .A3(S001_0[1]), .A4(n7), .Y(
        S[5]) );
  AO22X1_RVT U36 ( .A1(S001_1[0]), .A2(Cout000), .A3(S001_0[0]), .A4(n7), .Y(
        S[4]) );
  AO22X1_RVT U37 ( .A1(S101_1[2]), .A2(n11), .A3(S101_0[2]), .A4(n3), .Y(S[22]) );
  AO22X1_RVT U38 ( .A1(S100_1[2]), .A2(n12), .A3(S100_0[2]), .A4(n4), .Y(S[18]) );
  AO22X1_RVT U39 ( .A1(S110_1[3]), .A2(n10), .A3(S110_0[3]), .A4(n2), .Y(S[27]) );
  AO22X1_RVT U40 ( .A1(S110_1[2]), .A2(n10), .A3(S110_0[2]), .A4(n2), .Y(S[26]) );
  AO22X1_RVT U41 ( .A1(S110_1[1]), .A2(n10), .A3(S110_0[1]), .A4(n2), .Y(S[25]) );
  AO22X1_RVT U42 ( .A1(S110_1[0]), .A2(n10), .A3(S110_0[0]), .A4(n2), .Y(S[24]) );
  AO22X1_RVT U43 ( .A1(Cout011_1), .A2(n13), .A3(Cout011_0), .A4(n5), .Y(n12)
         );
  AO22X1_RVT U44 ( .A1(Cout100_1), .A2(n12), .A3(Cout100_0), .A4(n4), .Y(n11)
         );
endmodule


module FA_1bit_369 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_370 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_371 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_372 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_373 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_374 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_375 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_376 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_377 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_378 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_379 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_380 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_381 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_382 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_383 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_384 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_385 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_386 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_387 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_388 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_389 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_390 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_391 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_392 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_393 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_394 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_395 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_396 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_397 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_398 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_399 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_400 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module ROW_MUL_0 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
  tri   B;

  FA_1bit_400 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_399 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_398 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_397 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_396 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_395 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_394 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_393 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_392 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_391 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_390 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_389 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_388 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_387 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_386 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_385 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_384 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_383 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_382 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_381 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_380 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_379 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_378 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_377 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_376 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_375 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_374 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_373 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_372 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_371 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_370 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_369 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U2 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U3 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U4 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U6 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U7 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U8 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U9 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U10 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U11 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U12 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U13 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U14 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U15 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U16 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U17 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U18 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U19 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U20 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U21 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U22 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U23 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U24 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U25 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U26 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U27 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U28 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U29 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_1 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_2 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_3 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_4 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_1 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_4 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_3 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_2 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_1 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_5 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_6 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_7 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_8 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  INVX1_RVT U1 ( .A(Cin), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n4) );
  INVX0_RVT U3 ( .A(n4), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module RCA_4bit_2 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_8 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_7 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_6 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_5 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_9 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_10 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_11 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_12 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_3 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_12 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_11 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_10 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_9 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_13 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_14 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_15 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_16 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;

  INVX1_RVT U1 ( .A(n3), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  XNOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module RCA_4bit_4 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_16 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_15 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_14 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_13 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_17 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3, n4;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(n4), .Y(C) );
  INVX1_RVT U2 ( .A(Cin), .Y(n3) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n4) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_18 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n4) );
  INVX1_RVT U2 ( .A(A), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(n4), .Y(C) );
  INVX0_RVT U4 ( .A(Cin), .Y(n3) );
  AO22X1_RVT U5 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_19 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_20 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_5 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_20 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_19 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_18 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_17 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_21 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3, n4;

  INVX1_RVT U1 ( .A(Cin), .Y(n3) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n4) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(n4), .Y(C) );
  AO22X1_RVT U4 ( .A1(B), .A2(A), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_22 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3, n4;

  INVX1_RVT U1 ( .A(n3), .Y(n4) );
  XNOR2X1_RVT U2 ( .A1(Cin), .A2(n3), .Y(C) );
  XNOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_23 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3, n4;

  INVX1_RVT U1 ( .A(Cin), .Y(n3) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n4) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(n4), .Y(C) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_24 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3, n4;

  INVX1_RVT U1 ( .A(Cin), .Y(n3) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n4) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(n4), .Y(C) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module RCA_4bit_6 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_24 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_23 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_22 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_21 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_25 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_26 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3, n4, n5;

  INVX1_RVT U1 ( .A(n5), .Y(n3) );
  INVX1_RVT U2 ( .A(Cin), .Y(n4) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n5) );
  XOR2X1_RVT U4 ( .A1(n4), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(A), .A2(B), .A3(Cin), .A4(n5), .Y(Cout) );
endmodule


module FA_1bit_27 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_28 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_7 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_28 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_27 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_26 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_25 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_29 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_30 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_31 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_32 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_8 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_32 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_31 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_30 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_29 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module RCA_32bit ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110;

  RCA_4bit_8 RCA000 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .C(S[3:0]), .Cout(
        Cout000) );
  RCA_4bit_7 RCA001 ( .A(A[7:4]), .B(B[7:4]), .Cin(Cout000), .C(S[7:4]), 
        .Cout(Cout001) );
  RCA_4bit_6 RCA010 ( .A(A[11:8]), .B(B[11:8]), .Cin(Cout001), .C(S[11:8]), 
        .Cout(Cout010) );
  RCA_4bit_5 RCA011 ( .A(A[15:12]), .B(B[15:12]), .Cin(Cout010), .C(S[15:12]), 
        .Cout(Cout011) );
  RCA_4bit_4 RCA100 ( .A(A[19:16]), .B(B[19:16]), .Cin(Cout011), .C(S[19:16]), 
        .Cout(Cout100) );
  RCA_4bit_3 RCA101 ( .A(A[23:20]), .B(B[23:20]), .Cin(Cout100), .C(S[23:20]), 
        .Cout(Cout101) );
  RCA_4bit_2 RCA110 ( .A(A[27:24]), .B(B[27:24]), .Cin(Cout101), .C(S[27:24]), 
        .Cout(Cout110) );
  RCA_4bit_1 RCA111 ( .A(A[31:28]), .B(B[31:28]), .Cin(Cout110), .C(S[31:28]), 
        .Cout(Cout) );
endmodule


module FA_1bit_145 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_146 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_147 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_148 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX1_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_149 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  INVX1_RVT U2 ( .A(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_150 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_151 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_152 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_153 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_154 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_155 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_156 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_157 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_158 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_159 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3;

  XOR2X1_RVT U1 ( .A1(n3), .A2(Cin), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_160 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_161 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_162 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_163 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_164 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_165 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_166 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_167 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_168 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_169 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_170 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_171 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n3) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_172 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_173 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_174 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_175 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_176 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_1 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
  tri   B;

  FA_1bit_176 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_175 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_174 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_173 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_172 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_171 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_170 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_169 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_168 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_167 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_166 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_165 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_164 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_163 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_162 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_161 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_160 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_159 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_158 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_157 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_156 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_155 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_154 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_153 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_152 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_151 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_150 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_149 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_148 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_147 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_146 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_145 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U2 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U3 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U4 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U5 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U6 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U7 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U8 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U9 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U10 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U11 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U12 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U13 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U14 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U15 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U16 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U17 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U18 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U19 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U20 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U21 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U22 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U23 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U24 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U25 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U26 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U27 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U28 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U29 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_177 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_178 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_179 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_180 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_181 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_182 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_183 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_184 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_185 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_186 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_187 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_188 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_189 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_190 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_191 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_192 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_193 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_194 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_195 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_196 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_197 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_198 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_199 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_200 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_201 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_202 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_203 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_204 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_205 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_206 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_207 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
endmodule


module FA_1bit_208 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  INVX1_RVT U1 ( .A(n4), .Y(n3) );
  INVX1_RVT U2 ( .A(Cin), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n4) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(n2), .A2(n3), .Y(C) );
endmodule


module ROW_MUL_2 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
  tri   B;

  FA_1bit_208 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_207 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_206 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_205 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_204 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_203 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_202 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_201 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_200 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_199 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_198 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_197 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_196 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_195 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_194 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_193 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_192 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_191 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_190 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_189 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_188 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_187 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_186 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_185 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_184 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_183 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_182 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_181 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_180 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_179 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_178 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_177 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U2 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U3 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U4 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U5 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U6 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U7 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U8 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U9 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U10 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U11 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U12 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U13 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U14 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U15 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U16 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U17 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U18 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U19 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U20 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U21 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U22 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U23 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U24 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U25 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U26 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U27 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U28 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U29 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_209 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_210 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_211 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_212 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n1) );
endmodule


module FA_1bit_213 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_214 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_215 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_216 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_217 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_218 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_219 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_220 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_221 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_222 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_223 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_224 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_225 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_226 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_227 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_228 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_229 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_230 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_231 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_232 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_233 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_234 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_235 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_236 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_237 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_238 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_239 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_240 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_3 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2;
  tri   [31:0] A;

  FA_1bit_240 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_239 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_238 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_237 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_236 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_235 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_234 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_233 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_232 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_231 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_230 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_229 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_228 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_227 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_226 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_225 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_224 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_223 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_222 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_221 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_220 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_219 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_218 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_217 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_216 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_215 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_214 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_213 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_212 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_211 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_210 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_209 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  NBUFFX2_RVT U1 ( .A(B), .Y(n2) );
  NBUFFX2_RVT U2 ( .A(B), .Y(n1) );
  AND2X1_RVT U3 ( .A1(A[15]), .A2(n2), .Y(\_0_net_[15] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(n1), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(A[7]), .A2(n2), .Y(\_0_net_[7] ) );
  AND2X1_RVT U6 ( .A1(A[16]), .A2(n2), .Y(\_0_net_[16] ) );
  AND2X1_RVT U7 ( .A1(A[2]), .A2(n2), .Y(\_0_net_[2] ) );
  AND2X1_RVT U8 ( .A1(A[11]), .A2(n2), .Y(\_0_net_[11] ) );
  AND2X1_RVT U9 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U10 ( .A1(A[0]), .A2(n1), .Y(\_0_net_[0] ) );
  AND2X1_RVT U11 ( .A1(A[1]), .A2(n2), .Y(\_0_net_[1] ) );
  AND2X1_RVT U12 ( .A1(A[3]), .A2(n1), .Y(\_0_net_[3] ) );
  AND2X1_RVT U13 ( .A1(A[27]), .A2(n1), .Y(\_0_net_[27] ) );
  AND2X1_RVT U14 ( .A1(A[30]), .A2(n1), .Y(\_0_net_[30] ) );
  AND2X1_RVT U15 ( .A1(A[24]), .A2(n1), .Y(\_0_net_[24] ) );
  AND2X1_RVT U16 ( .A1(A[17]), .A2(n1), .Y(\_0_net_[17] ) );
  AND2X1_RVT U17 ( .A1(A[28]), .A2(n1), .Y(\_0_net_[28] ) );
  AND2X1_RVT U18 ( .A1(A[29]), .A2(n1), .Y(\_0_net_[29] ) );
  AND2X1_RVT U19 ( .A1(A[25]), .A2(n2), .Y(\_0_net_[25] ) );
  AND2X1_RVT U20 ( .A1(A[21]), .A2(n1), .Y(\_0_net_[21] ) );
  AND2X1_RVT U21 ( .A1(A[22]), .A2(n1), .Y(\_0_net_[22] ) );
  AND2X1_RVT U22 ( .A1(A[18]), .A2(n1), .Y(\_0_net_[18] ) );
  AND2X1_RVT U23 ( .A1(A[31]), .A2(n1), .Y(\_0_net_[31] ) );
  AND2X1_RVT U24 ( .A1(A[26]), .A2(n1), .Y(\_0_net_[26] ) );
  AND2X1_RVT U25 ( .A1(A[23]), .A2(n2), .Y(\_0_net_[23] ) );
  AND2X1_RVT U26 ( .A1(A[20]), .A2(n2), .Y(\_0_net_[20] ) );
  AND2X1_RVT U27 ( .A1(A[12]), .A2(n2), .Y(\_0_net_[12] ) );
  AND2X1_RVT U28 ( .A1(A[8]), .A2(n2), .Y(\_0_net_[8] ) );
  AND2X1_RVT U29 ( .A1(A[5]), .A2(n2), .Y(\_0_net_[5] ) );
  AND2X1_RVT U30 ( .A1(A[13]), .A2(n2), .Y(\_0_net_[13] ) );
  AND2X1_RVT U31 ( .A1(A[14]), .A2(n2), .Y(\_0_net_[14] ) );
  AND2X1_RVT U32 ( .A1(A[19]), .A2(n2), .Y(\_0_net_[19] ) );
  AND2X1_RVT U33 ( .A1(n2), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U34 ( .A1(A[10]), .A2(n2), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_241 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_242 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_243 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_244 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_245 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_246 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_247 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_248 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_249 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_250 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_251 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_252 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_253 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_254 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_255 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_256 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_257 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_258 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_259 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_260 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_261 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_262 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_263 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_264 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_265 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_266 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_267 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_268 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_269 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_270 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_271 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_272 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_4 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
  tri   B;

  FA_1bit_272 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_271 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_270 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_269 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_268 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_267 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_266 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_265 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_264 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_263 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_262 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_261 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_260 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_259 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_258 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_257 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_256 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_255 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_254 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_253 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_252 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_251 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_250 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_249 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_248 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_247 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_246 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_245 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_244 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_243 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_242 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_241 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U2 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U3 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U6 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U7 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U8 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U9 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U10 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U11 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U12 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U13 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U14 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U15 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U16 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U17 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U18 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U19 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U20 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U21 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U22 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U23 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U24 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U25 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U26 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U27 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U28 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U29 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_273 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_274 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_275 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_276 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_277 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_278 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_279 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_280 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_281 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_282 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_283 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_284 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_285 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_286 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_287 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_288 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_289 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_290 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_291 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_292 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_293 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_294 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_295 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_296 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_297 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_298 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_299 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_300 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_301 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_302 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_303 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_304 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_5 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
  tri   B;

  FA_1bit_304 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_303 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_302 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_301 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_300 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_299 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_298 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_297 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_296 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_295 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_294 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_293 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_292 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_291 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_290 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_289 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_288 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_287 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_286 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_285 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_284 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_283 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_282 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_281 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_280 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_279 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_278 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_277 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_276 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_275 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_274 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_273 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U2 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U3 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U4 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U5 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U6 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U7 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U8 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U9 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U10 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U11 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U12 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U13 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U14 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U15 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U16 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U17 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U18 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U19 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U20 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U21 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U22 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U23 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U24 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U25 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U28 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_305 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_306 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_307 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_308 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_309 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_310 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_311 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_312 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_313 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_314 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_315 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_316 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_317 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_318 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_319 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_320 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_321 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_322 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_323 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_324 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_325 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_326 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_327 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_328 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_329 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_330 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_331 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_332 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_333 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_334 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_335 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_336 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_6 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
  tri   B;

  FA_1bit_336 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_335 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_334 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_333 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_332 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_331 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_330 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_329 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_328 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_327 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_326 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_325 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_324 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_323 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_322 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_321 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_320 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_319 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_318 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_317 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_316 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_315 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_314 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_313 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_312 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_311 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_310 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_309 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_308 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_307 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_306 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_305 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U2 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U3 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U4 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U6 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U7 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U8 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U9 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U10 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U11 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U12 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U13 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U14 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U15 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U16 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U17 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U18 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U19 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U20 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U21 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U22 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U23 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U24 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U25 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U28 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_337 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_338 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_339 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_340 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_341 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_342 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_343 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_344 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_345 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_346 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_347 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_348 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_349 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_350 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_351 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_352 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_353 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_354 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_355 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_356 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_357 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_358 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_359 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_360 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_361 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_362 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_363 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_364 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_365 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_366 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_367 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_368 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_7 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
  tri   B;

  FA_1bit_368 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_367 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_366 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_365 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_364 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_363 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_362 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_361 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_360 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_359 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_358 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_357 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_356 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_355 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_354 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_353 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_352 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_351 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_350 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_349 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_348 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_347 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_346 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_345 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_344 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_343 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_342 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_341 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_340 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_339 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_338 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_337 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U2 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U3 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U6 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U7 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U8 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U9 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U12 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U13 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U14 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U15 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U16 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U17 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U18 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U19 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U20 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U21 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U22 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U23 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U24 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U25 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U28 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module MUL_32bit ( A, B, Y );
  input [31:0] A;
  input [7:0] B;
  output [39:0] Y;

  wire   [31:1] Sout111;
  wire   [31:1] Sout110;
  wire   [31:1] Sout101;
  wire   [31:1] Sout100;
  wire   [31:1] Sout011;
  wire   [31:1] Sout010;
  wire   [31:1] Sout001;
  wire   [31:1] Sout000;
  wire   [31:0] Cout000;
  wire   [31:0] Cout001;
  wire   [31:0] Cout010;
  wire   [31:0] Cout011;
  wire   [31:0] Cout100;
  wire   [31:0] Cout101;
  wire   [31:0] Cout110;
  wire   [31:0] Cout111;
  tri   [31:0] A;
  tri   [7:0] B;

  ROW_MUL_0 ROW0 ( .A(A), .B(B[0]), .Sin({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .Cin({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Sout({Sout000, Y[0]}), .Cout(Cout000) );
  ROW_MUL_7 ROW1 ( .A(A), .B(B[1]), .Sin({1'b0, Sout000}), .Cin(Cout000), 
        .Sout({Sout001, Y[1]}), .Cout(Cout001) );
  ROW_MUL_6 ROW2 ( .A(A), .B(B[2]), .Sin({1'b0, Sout001}), .Cin(Cout001), 
        .Sout({Sout010, Y[2]}), .Cout(Cout010) );
  ROW_MUL_5 ROW3 ( .A(A), .B(B[3]), .Sin({1'b0, Sout010}), .Cin(Cout010), 
        .Sout({Sout011, Y[3]}), .Cout(Cout011) );
  ROW_MUL_4 ROW4 ( .A(A), .B(B[4]), .Sin({1'b0, Sout011}), .Cin(Cout011), 
        .Sout({Sout100, Y[4]}), .Cout(Cout100) );
  ROW_MUL_3 ROW5 ( .A(A), .B(B[5]), .Sin({1'b0, Sout100}), .Cin(Cout100), 
        .Sout({Sout101, Y[5]}), .Cout(Cout101) );
  ROW_MUL_2 ROW6 ( .A(A), .B(B[6]), .Sin({1'b0, Sout101}), .Cin(Cout101), 
        .Sout({Sout110, Y[6]}), .Cout(Cout110) );
  ROW_MUL_1 ROW7 ( .A(A), .B(B[7]), .Sin({1'b0, Sout110}), .Cin(Cout110), 
        .Sout({Sout111, Y[7]}), .Cout(Cout111) );
  RCA_32bit FINAL_SUM ( .A({1'b0, Sout111}), .B(Cout111), .Cin(1'b0), .S(
        Y[39:8]) );
endmodule


module Top_6 ( clk, nrst, A, B, Sel, Result );
  input [31:0] A;
  input [31:0] B;
  output [39:0] Result;
  input clk, nrst, Sel;
  wire   N107, N110, N113, N116, N119, N122, N125, N128, N131, N134, N137,
         N140, N143, N146, N149, N152, N155, N158, N161, N164, N167, N170,
         N173, N176, N179, N182, N185, N188, N191, N194, N197, N200, N203,
         N206, N209, N212, N215, N218, N221, N224, N227, N230, N233, N236,
         N239, N242, N245, N248, N251, N254, N257, N260, N263, N266, N269,
         N272, N275, N278, N281, N284, N287, N290, N293, N296, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135;
  wire   [39:0] Result_B;
  wire   [31:0] Result_A;
  tri   [31:0] DFF_A;
  tri   [31:0] DFF_B;

  CSA_32bit module_A ( .A({DFF_A[31:23], n118, DFF_A[21:13], n120, DFF_A[11:7], 
        n122, DFF_A[5:0]}), .B({DFF_B[31:17], n111, DFF_B[15:6], n124, 
        DFF_B[4:0]}), .Cin(1'b0), .S(Result_A) );
  MUL_32bit module_B ( .A({DFF_A[31:23], n118, DFF_A[21:13], n120, DFF_A[11:7], 
        n122, DFF_A[5:0]}), .B({DFF_B[7:6], n124, DFF_B[4:0]}), .Y(Result_B)
         );
  DFFX1_RVT \DFF_A_reg[31]  ( .D(A[31]), .CLK(clk), .Q(N107) );
  DFFX1_RVT \DFF_A_tri_enable_reg[31]  ( .D(n128), .CLK(clk), .QN(n3) );
  DFFX1_RVT \DFF_A_reg[30]  ( .D(A[30]), .CLK(clk), .Q(N110) );
  DFFX1_RVT \DFF_A_tri_enable_reg[30]  ( .D(n127), .CLK(clk), .QN(n4) );
  DFFX1_RVT \DFF_A_reg[29]  ( .D(A[29]), .CLK(clk), .Q(N113) );
  DFFX1_RVT \DFF_A_tri_enable_reg[29]  ( .D(n131), .CLK(clk), .QN(n5) );
  DFFX1_RVT \DFF_A_reg[28]  ( .D(A[28]), .CLK(clk), .Q(N116) );
  DFFX1_RVT \DFF_A_tri_enable_reg[28]  ( .D(n107), .CLK(clk), .QN(n6) );
  DFFX1_RVT \DFF_A_reg[27]  ( .D(A[27]), .CLK(clk), .Q(N119) );
  DFFX1_RVT \DFF_A_tri_enable_reg[27]  ( .D(n131), .CLK(clk), .QN(n7) );
  DFFX1_RVT \DFF_A_reg[26]  ( .D(A[26]), .CLK(clk), .Q(N122) );
  DFFX1_RVT \DFF_A_tri_enable_reg[26]  ( .D(n107), .CLK(clk), .QN(n8) );
  DFFX1_RVT \DFF_A_reg[25]  ( .D(A[25]), .CLK(clk), .Q(N125) );
  DFFX1_RVT \DFF_A_tri_enable_reg[25]  ( .D(n131), .CLK(clk), .QN(n9) );
  DFFX1_RVT \DFF_A_reg[24]  ( .D(A[24]), .CLK(clk), .Q(N128) );
  DFFX1_RVT \DFF_A_tri_enable_reg[24]  ( .D(n131), .CLK(clk), .QN(n10) );
  DFFX1_RVT \DFF_A_reg[23]  ( .D(A[23]), .CLK(clk), .Q(N131) );
  DFFX1_RVT \DFF_A_tri_enable_reg[23]  ( .D(n131), .CLK(clk), .QN(n11) );
  DFFX1_RVT \DFF_A_reg[22]  ( .D(A[22]), .CLK(clk), .Q(N134) );
  DFFX1_RVT \DFF_A_tri_enable_reg[22]  ( .D(n131), .CLK(clk), .QN(n12) );
  DFFX1_RVT \DFF_A_reg[21]  ( .D(A[21]), .CLK(clk), .Q(N137) );
  DFFX1_RVT \DFF_A_tri_enable_reg[21]  ( .D(n131), .CLK(clk), .QN(n13) );
  DFFX1_RVT \DFF_A_reg[20]  ( .D(A[20]), .CLK(clk), .Q(N140) );
  DFFX1_RVT \DFF_A_tri_enable_reg[20]  ( .D(n131), .CLK(clk), .QN(n14) );
  DFFX1_RVT \DFF_A_reg[19]  ( .D(A[19]), .CLK(clk), .Q(N143) );
  DFFX1_RVT \DFF_A_tri_enable_reg[19]  ( .D(n130), .CLK(clk), .QN(n15) );
  DFFX1_RVT \DFF_A_reg[18]  ( .D(A[18]), .CLK(clk), .Q(N146) );
  DFFX1_RVT \DFF_A_tri_enable_reg[18]  ( .D(n130), .CLK(clk), .QN(n16) );
  DFFX1_RVT \DFF_A_reg[17]  ( .D(A[17]), .CLK(clk), .Q(N149) );
  DFFX1_RVT \DFF_A_tri_enable_reg[17]  ( .D(n131), .CLK(clk), .QN(n17) );
  DFFX1_RVT \DFF_A_reg[16]  ( .D(A[16]), .CLK(clk), .Q(N152) );
  DFFX1_RVT \DFF_A_tri_enable_reg[16]  ( .D(n131), .CLK(clk), .QN(n18) );
  DFFX1_RVT \DFF_A_reg[15]  ( .D(A[15]), .CLK(clk), .Q(N155) );
  DFFX1_RVT \DFF_A_tri_enable_reg[15]  ( .D(n131), .CLK(clk), .QN(n19) );
  DFFX1_RVT \DFF_A_reg[14]  ( .D(A[14]), .CLK(clk), .Q(N158) );
  DFFX1_RVT \DFF_A_tri_enable_reg[14]  ( .D(n130), .CLK(clk), .QN(n20) );
  DFFX1_RVT \DFF_A_reg[13]  ( .D(A[13]), .CLK(clk), .Q(N161) );
  DFFX1_RVT \DFF_A_tri_enable_reg[13]  ( .D(n130), .CLK(clk), .QN(n21) );
  DFFX1_RVT \DFF_A_reg[12]  ( .D(A[12]), .CLK(clk), .Q(N164) );
  DFFX1_RVT \DFF_A_tri_enable_reg[12]  ( .D(n131), .CLK(clk), .QN(n22) );
  DFFX1_RVT \DFF_A_reg[11]  ( .D(A[11]), .CLK(clk), .Q(N167) );
  DFFX1_RVT \DFF_A_tri_enable_reg[11]  ( .D(n130), .CLK(clk), .QN(n23) );
  DFFX1_RVT \DFF_A_reg[10]  ( .D(A[10]), .CLK(clk), .Q(N170) );
  DFFX1_RVT \DFF_A_tri_enable_reg[10]  ( .D(n131), .CLK(clk), .QN(n24) );
  DFFX1_RVT \DFF_A_reg[9]  ( .D(A[9]), .CLK(clk), .Q(N173) );
  DFFX1_RVT \DFF_A_tri_enable_reg[9]  ( .D(n129), .CLK(clk), .QN(n25) );
  DFFX1_RVT \DFF_A_reg[8]  ( .D(A[8]), .CLK(clk), .Q(N176) );
  DFFX1_RVT \DFF_A_tri_enable_reg[8]  ( .D(n131), .CLK(clk), .QN(n26) );
  DFFX1_RVT \DFF_A_reg[7]  ( .D(A[7]), .CLK(clk), .Q(N179) );
  DFFX1_RVT \DFF_A_tri_enable_reg[7]  ( .D(n130), .CLK(clk), .QN(n27) );
  DFFX1_RVT \DFF_A_reg[6]  ( .D(A[6]), .CLK(clk), .Q(N182) );
  DFFX1_RVT \DFF_A_tri_enable_reg[6]  ( .D(n130), .CLK(clk), .QN(n28) );
  DFFX1_RVT \DFF_A_reg[5]  ( .D(A[5]), .CLK(clk), .Q(N185) );
  DFFX1_RVT \DFF_A_tri_enable_reg[5]  ( .D(n130), .CLK(clk), .QN(n29) );
  DFFX1_RVT \DFF_A_reg[4]  ( .D(A[4]), .CLK(clk), .Q(N188) );
  DFFX1_RVT \DFF_A_tri_enable_reg[4]  ( .D(n130), .CLK(clk), .QN(n30) );
  DFFX1_RVT \DFF_A_reg[3]  ( .D(A[3]), .CLK(clk), .Q(N191) );
  DFFX1_RVT \DFF_A_tri_enable_reg[3]  ( .D(n130), .CLK(clk), .QN(n31) );
  DFFX1_RVT \DFF_A_reg[2]  ( .D(A[2]), .CLK(clk), .Q(N194) );
  DFFX1_RVT \DFF_A_tri_enable_reg[2]  ( .D(n130), .CLK(clk), .QN(n32) );
  DFFX1_RVT \DFF_A_reg[1]  ( .D(A[1]), .CLK(clk), .Q(N197) );
  DFFX1_RVT \DFF_A_tri_enable_reg[1]  ( .D(n130), .CLK(clk), .QN(n33) );
  DFFX1_RVT \DFF_A_reg[0]  ( .D(A[0]), .CLK(clk), .Q(N200) );
  DFFX1_RVT \DFF_A_tri_enable_reg[0]  ( .D(n130), .CLK(clk), .QN(n34) );
  DFFX1_RVT \DFF_B_reg[31]  ( .D(B[31]), .CLK(clk), .Q(N203) );
  DFFX1_RVT \DFF_B_tri_enable_reg[31]  ( .D(n129), .CLK(clk), .QN(n35) );
  DFFX1_RVT \DFF_B_reg[30]  ( .D(B[30]), .CLK(clk), .Q(N206) );
  DFFX1_RVT \DFF_B_tri_enable_reg[30]  ( .D(n130), .CLK(clk), .QN(n36) );
  DFFX1_RVT \DFF_B_reg[29]  ( .D(B[29]), .CLK(clk), .Q(N209) );
  DFFX1_RVT \DFF_B_tri_enable_reg[29]  ( .D(n129), .CLK(clk), .QN(n37) );
  DFFX1_RVT \DFF_B_reg[28]  ( .D(B[28]), .CLK(clk), .Q(N212) );
  DFFX1_RVT \DFF_B_tri_enable_reg[28]  ( .D(n129), .CLK(clk), .QN(n38) );
  DFFX1_RVT \DFF_B_reg[27]  ( .D(B[27]), .CLK(clk), .Q(N215) );
  DFFX1_RVT \DFF_B_tri_enable_reg[27]  ( .D(n129), .CLK(clk), .QN(n39) );
  DFFX1_RVT \DFF_B_reg[26]  ( .D(B[26]), .CLK(clk), .Q(N218) );
  DFFX1_RVT \DFF_B_tri_enable_reg[26]  ( .D(n129), .CLK(clk), .QN(n40) );
  DFFX1_RVT \DFF_B_reg[25]  ( .D(B[25]), .CLK(clk), .Q(N221) );
  DFFX1_RVT \DFF_B_tri_enable_reg[25]  ( .D(n129), .CLK(clk), .QN(n41) );
  DFFX1_RVT \DFF_B_reg[24]  ( .D(B[24]), .CLK(clk), .Q(N224) );
  DFFX1_RVT \DFF_B_tri_enable_reg[24]  ( .D(n129), .CLK(clk), .QN(n42) );
  DFFX1_RVT \DFF_B_reg[23]  ( .D(B[23]), .CLK(clk), .Q(N227) );
  DFFX1_RVT \DFF_B_tri_enable_reg[23]  ( .D(n129), .CLK(clk), .QN(n43) );
  DFFX1_RVT \DFF_B_reg[22]  ( .D(B[22]), .CLK(clk), .Q(N230) );
  DFFX1_RVT \DFF_B_tri_enable_reg[22]  ( .D(n129), .CLK(clk), .QN(n44) );
  DFFX1_RVT \DFF_B_reg[21]  ( .D(B[21]), .CLK(clk), .Q(N233) );
  DFFX1_RVT \DFF_B_tri_enable_reg[21]  ( .D(n129), .CLK(clk), .QN(n45) );
  DFFX1_RVT \DFF_B_reg[20]  ( .D(B[20]), .CLK(clk), .Q(N236) );
  DFFX1_RVT \DFF_B_tri_enable_reg[20]  ( .D(n129), .CLK(clk), .QN(n46) );
  DFFX1_RVT \DFF_B_reg[19]  ( .D(B[19]), .CLK(clk), .Q(N239) );
  DFFX1_RVT \DFF_B_tri_enable_reg[19]  ( .D(n129), .CLK(clk), .QN(n47) );
  DFFX1_RVT \DFF_B_reg[18]  ( .D(B[18]), .CLK(clk), .Q(N242) );
  DFFX1_RVT \DFF_B_tri_enable_reg[18]  ( .D(n129), .CLK(clk), .QN(n48) );
  DFFX1_RVT \DFF_B_reg[17]  ( .D(B[17]), .CLK(clk), .Q(N245) );
  DFFX1_RVT \DFF_B_tri_enable_reg[17]  ( .D(n128), .CLK(clk), .QN(n49) );
  DFFX1_RVT \DFF_B_reg[16]  ( .D(B[16]), .CLK(clk), .Q(N248) );
  DFFX1_RVT \DFF_B_tri_enable_reg[16]  ( .D(n128), .CLK(clk), .QN(n50) );
  DFFX1_RVT \DFF_B_reg[15]  ( .D(B[15]), .CLK(clk), .Q(N251) );
  DFFX1_RVT \DFF_B_tri_enable_reg[15]  ( .D(n128), .CLK(clk), .QN(n51) );
  DFFX1_RVT \DFF_B_reg[14]  ( .D(B[14]), .CLK(clk), .Q(N254) );
  DFFX1_RVT \DFF_B_tri_enable_reg[14]  ( .D(n128), .CLK(clk), .QN(n52) );
  DFFX1_RVT \DFF_B_reg[13]  ( .D(B[13]), .CLK(clk), .Q(N257) );
  DFFX1_RVT \DFF_B_tri_enable_reg[13]  ( .D(n128), .CLK(clk), .QN(n53) );
  DFFX1_RVT \DFF_B_reg[12]  ( .D(B[12]), .CLK(clk), .Q(N260) );
  DFFX1_RVT \DFF_B_tri_enable_reg[12]  ( .D(n128), .CLK(clk), .QN(n54) );
  DFFX1_RVT \DFF_B_reg[11]  ( .D(B[11]), .CLK(clk), .Q(N263) );
  DFFX1_RVT \DFF_B_tri_enable_reg[11]  ( .D(n128), .CLK(clk), .QN(n55) );
  DFFX1_RVT \DFF_B_reg[10]  ( .D(B[10]), .CLK(clk), .Q(N266) );
  DFFX1_RVT \DFF_B_tri_enable_reg[10]  ( .D(n128), .CLK(clk), .QN(n56) );
  DFFX1_RVT \DFF_B_reg[9]  ( .D(B[9]), .CLK(clk), .Q(N269) );
  DFFX1_RVT \DFF_B_tri_enable_reg[9]  ( .D(n128), .CLK(clk), .QN(n57) );
  DFFX1_RVT \DFF_B_reg[8]  ( .D(B[8]), .CLK(clk), .Q(N272) );
  DFFX1_RVT \DFF_B_tri_enable_reg[8]  ( .D(n128), .CLK(clk), .QN(n58) );
  DFFX1_RVT \DFF_B_reg[7]  ( .D(B[7]), .CLK(clk), .Q(N275) );
  DFFX1_RVT \DFF_B_tri_enable_reg[7]  ( .D(n128), .CLK(clk), .QN(n59) );
  DFFX1_RVT \DFF_B_reg[6]  ( .D(B[6]), .CLK(clk), .Q(N278) );
  DFFX1_RVT \DFF_B_tri_enable_reg[6]  ( .D(n128), .CLK(clk), .QN(n60) );
  DFFX1_RVT \DFF_B_reg[5]  ( .D(B[5]), .CLK(clk), .Q(N281) );
  DFFX1_RVT \DFF_B_tri_enable_reg[5]  ( .D(n128), .CLK(clk), .QN(n61) );
  DFFX1_RVT \DFF_B_reg[4]  ( .D(B[4]), .CLK(clk), .Q(N284) );
  DFFX1_RVT \DFF_B_tri_enable_reg[4]  ( .D(n127), .CLK(clk), .QN(n62) );
  DFFX1_RVT \DFF_B_reg[3]  ( .D(B[3]), .CLK(clk), .Q(N287) );
  DFFX1_RVT \DFF_B_tri_enable_reg[3]  ( .D(n127), .CLK(clk), .QN(n63) );
  DFFX1_RVT \DFF_B_reg[2]  ( .D(B[2]), .CLK(clk), .Q(N290) );
  DFFX1_RVT \DFF_B_tri_enable_reg[2]  ( .D(n127), .CLK(clk), .QN(n64) );
  DFFX1_RVT \DFF_B_tri_enable_reg[1]  ( .D(n127), .CLK(clk), .QN(n65) );
  DFFX1_RVT \DFF_B_reg[0]  ( .D(B[0]), .CLK(clk), .Q(N296) );
  DFFX1_RVT \DFF_B_tri_enable_reg[0]  ( .D(n127), .CLK(clk), .QN(n66) );
  DFFX1_RVT \DFF_Result_reg[39]  ( .D(n106), .CLK(clk), .Q(Result[39]) );
  DFFX1_RVT \DFF_Result_reg[38]  ( .D(n105), .CLK(clk), .Q(Result[38]) );
  DFFX1_RVT \DFF_Result_reg[37]  ( .D(n104), .CLK(clk), .Q(Result[37]) );
  DFFX1_RVT \DFF_Result_reg[36]  ( .D(n103), .CLK(clk), .Q(Result[36]) );
  DFFX1_RVT \DFF_Result_reg[35]  ( .D(n102), .CLK(clk), .Q(Result[35]) );
  DFFX1_RVT \DFF_Result_reg[34]  ( .D(n101), .CLK(clk), .Q(Result[34]) );
  DFFX1_RVT \DFF_Result_reg[33]  ( .D(n100), .CLK(clk), .Q(Result[33]) );
  DFFX1_RVT \DFF_Result_reg[32]  ( .D(n99), .CLK(clk), .Q(Result[32]) );
  DFFX1_RVT \DFF_Result_reg[23]  ( .D(n90), .CLK(clk), .Q(Result[23]) );
  DFFX1_RVT \DFF_Result_reg[19]  ( .D(n86), .CLK(clk), .Q(Result[19]) );
  DFFX1_RVT \DFF_Result_reg[18]  ( .D(n85), .CLK(clk), .Q(Result[18]) );
  DFFX1_RVT \DFF_Result_reg[17]  ( .D(n84), .CLK(clk), .Q(Result[17]) );
  DFFX1_RVT \DFF_Result_reg[16]  ( .D(n83), .CLK(clk), .Q(Result[16]) );
  DFFX1_RVT \DFF_Result_reg[15]  ( .D(n82), .CLK(clk), .Q(Result[15]) );
  DFFX1_RVT \DFF_Result_reg[14]  ( .D(n81), .CLK(clk), .Q(Result[14]) );
  DFFX1_RVT \DFF_Result_reg[13]  ( .D(n80), .CLK(clk), .Q(Result[13]) );
  DFFX1_RVT \DFF_Result_reg[12]  ( .D(n79), .CLK(clk), .Q(Result[12]) );
  DFFX1_RVT \DFF_Result_reg[11]  ( .D(n78), .CLK(clk), .Q(Result[11]) );
  DFFX1_RVT \DFF_Result_reg[10]  ( .D(n77), .CLK(clk), .Q(Result[10]) );
  DFFX1_RVT \DFF_Result_reg[9]  ( .D(n76), .CLK(clk), .Q(Result[9]) );
  DFFX1_RVT \DFF_Result_reg[8]  ( .D(n75), .CLK(clk), .Q(Result[8]) );
  DFFX1_RVT \DFF_Result_reg[7]  ( .D(n74), .CLK(clk), .Q(Result[7]) );
  DFFX1_RVT \DFF_Result_reg[6]  ( .D(n73), .CLK(clk), .Q(Result[6]) );
  DFFX1_RVT \DFF_Result_reg[5]  ( .D(n72), .CLK(clk), .Q(Result[5]) );
  DFFX1_RVT \DFF_Result_reg[4]  ( .D(n71), .CLK(clk), .Q(Result[4]) );
  DFFX1_RVT \DFF_Result_reg[3]  ( .D(n70), .CLK(clk), .Q(Result[3]) );
  DFFX1_RVT \DFF_Result_reg[2]  ( .D(n69), .CLK(clk), .Q(Result[2]) );
  DFFX1_RVT \DFF_Result_reg[1]  ( .D(n68), .CLK(clk), .Q(Result[1]) );
  DFFX1_RVT \DFF_Result_reg[0]  ( .D(n67), .CLK(clk), .Q(Result[0]) );
  AO222X1_RVT U3 ( .A1(Result_B[0]), .A2(n135), .A3(Result_A[0]), .A4(n2), 
        .A5(Result[0]), .A6(n125), .Y(n67) );
  AO222X1_RVT U4 ( .A1(Result_B[1]), .A2(n135), .A3(Result_A[1]), .A4(n133), 
        .A5(Result[1]), .A6(n125), .Y(n68) );
  AO222X1_RVT U5 ( .A1(Result_B[2]), .A2(n134), .A3(Result_A[2]), .A4(n2), 
        .A5(Result[2]), .A6(n125), .Y(n69) );
  AO222X1_RVT U6 ( .A1(Result_B[3]), .A2(n134), .A3(Result_A[3]), .A4(n133), 
        .A5(Result[3]), .A6(n125), .Y(n70) );
  AO222X1_RVT U7 ( .A1(Result_B[4]), .A2(n134), .A3(Result_A[4]), .A4(n2), 
        .A5(Result[4]), .A6(n125), .Y(n71) );
  AO222X1_RVT U8 ( .A1(Result_B[5]), .A2(n134), .A3(Result_A[5]), .A4(n133), 
        .A5(Result[5]), .A6(n125), .Y(n72) );
  AO222X1_RVT U9 ( .A1(n134), .A2(Result_B[6]), .A3(Result_A[6]), .A4(n2), 
        .A5(Result[6]), .A6(n125), .Y(n73) );
  AO222X1_RVT U10 ( .A1(n134), .A2(Result_B[7]), .A3(Result_A[7]), .A4(n2), 
        .A5(Result[7]), .A6(n125), .Y(n74) );
  AO222X1_RVT U11 ( .A1(Result_B[8]), .A2(n134), .A3(Result_A[8]), .A4(n2), 
        .A5(Result[8]), .A6(n125), .Y(n75) );
  AO222X1_RVT U12 ( .A1(Result_B[9]), .A2(n134), .A3(Result_A[9]), .A4(n2), 
        .A5(Result[9]), .A6(n125), .Y(n76) );
  AO222X1_RVT U13 ( .A1(Result_B[10]), .A2(n134), .A3(Result_A[10]), .A4(n2), 
        .A5(Result[10]), .A6(n125), .Y(n77) );
  AO222X1_RVT U14 ( .A1(Result_B[11]), .A2(n134), .A3(Result_A[11]), .A4(n2), 
        .A5(Result[11]), .A6(n125), .Y(n78) );
  AO222X1_RVT U15 ( .A1(Result_B[12]), .A2(n134), .A3(Result_A[12]), .A4(n132), 
        .A5(Result[12]), .A6(n126), .Y(n79) );
  AO222X1_RVT U16 ( .A1(Result_B[13]), .A2(n134), .A3(Result_A[13]), .A4(n132), 
        .A5(Result[13]), .A6(n126), .Y(n80) );
  AO222X1_RVT U17 ( .A1(n134), .A2(Result_B[14]), .A3(Result_A[14]), .A4(n132), 
        .A5(Result[14]), .A6(n126), .Y(n81) );
  AO222X1_RVT U18 ( .A1(Result_B[15]), .A2(n135), .A3(Result_A[15]), .A4(n132), 
        .A5(Result[15]), .A6(n126), .Y(n82) );
  AO222X1_RVT U19 ( .A1(Result_B[16]), .A2(n1), .A3(Result_A[16]), .A4(n132), 
        .A5(Result[16]), .A6(n126), .Y(n83) );
  AO222X1_RVT U20 ( .A1(Result_B[17]), .A2(n135), .A3(Result_A[17]), .A4(n132), 
        .A5(Result[17]), .A6(n126), .Y(n84) );
  AO222X1_RVT U21 ( .A1(Result_B[18]), .A2(n1), .A3(Result_A[18]), .A4(n132), 
        .A5(Result[18]), .A6(n126), .Y(n85) );
  AO222X1_RVT U22 ( .A1(Result_B[19]), .A2(n135), .A3(Result_A[19]), .A4(n132), 
        .A5(Result[19]), .A6(n126), .Y(n86) );
  AO222X1_RVT U25 ( .A1(Result_B[22]), .A2(n1), .A3(Result_A[22]), .A4(n132), 
        .A5(Result[22]), .A6(n126), .Y(n89) );
  AO222X1_RVT U26 ( .A1(Result_B[23]), .A2(n135), .A3(Result_A[23]), .A4(n132), 
        .A5(Result[23]), .A6(n126), .Y(n90) );
  AO222X1_RVT U27 ( .A1(Result_B[24]), .A2(n1), .A3(Result_A[24]), .A4(n133), 
        .A5(Result[24]), .A6(n126), .Y(n91) );
  AO222X1_RVT U28 ( .A1(Result_B[25]), .A2(n135), .A3(Result_A[25]), .A4(n133), 
        .A5(Result[25]), .A6(n127), .Y(n92) );
  AO222X1_RVT U29 ( .A1(Result_B[26]), .A2(n1), .A3(Result_A[26]), .A4(n133), 
        .A5(Result[26]), .A6(n127), .Y(n93) );
  AO222X1_RVT U30 ( .A1(Result_B[27]), .A2(n135), .A3(Result_A[27]), .A4(n133), 
        .A5(Result[27]), .A6(n127), .Y(n94) );
  AO222X1_RVT U31 ( .A1(Result_B[28]), .A2(n134), .A3(Result_A[28]), .A4(n133), 
        .A5(Result[28]), .A6(n127), .Y(n95) );
  AO222X1_RVT U32 ( .A1(Result_B[29]), .A2(n1), .A3(Result_A[29]), .A4(n133), 
        .A5(Result[29]), .A6(n127), .Y(n96) );
  AO222X1_RVT U33 ( .A1(Result_B[30]), .A2(n135), .A3(Result_A[30]), .A4(n133), 
        .A5(Result[30]), .A6(n127), .Y(n97) );
  AO222X1_RVT U34 ( .A1(Result_B[31]), .A2(n135), .A3(Result_A[31]), .A4(n133), 
        .A5(Result[31]), .A6(n127), .Y(n98) );
  NOR2X0_RVT U35 ( .A1(n125), .A2(Sel), .Y(n2) );
  AO22X1_RVT U36 ( .A1(Result[32]), .A2(n107), .A3(Result_B[32]), .A4(n1), .Y(
        n99) );
  AO22X1_RVT U37 ( .A1(Result[33]), .A2(n107), .A3(Result_B[33]), .A4(n1), .Y(
        n100) );
  AO22X1_RVT U38 ( .A1(Result[34]), .A2(n107), .A3(Result_B[34]), .A4(n135), 
        .Y(n101) );
  AO22X1_RVT U39 ( .A1(Result[35]), .A2(n107), .A3(Result_B[35]), .A4(n1), .Y(
        n102) );
  AO22X1_RVT U40 ( .A1(Result[36]), .A2(n127), .A3(Result_B[36]), .A4(n135), 
        .Y(n103) );
  AO22X1_RVT U41 ( .A1(Result[37]), .A2(n126), .A3(Result_B[37]), .A4(n1), .Y(
        n104) );
  AO22X1_RVT U42 ( .A1(Result[38]), .A2(n107), .A3(Result_B[38]), .A4(n135), 
        .Y(n105) );
  AO22X1_RVT U43 ( .A1(Result[39]), .A2(n107), .A3(Result_B[39]), .A4(n1), .Y(
        n106) );
  AND2X1_RVT U44 ( .A1(Sel), .A2(nrst), .Y(n1) );
  INVX0_RVT U45 ( .A(nrst), .Y(n107) );
  TNBUFFX4_RVT \DFF_B_tri[3]  ( .A(N287), .EN(n63), .Y(DFF_B[3]) );
  TNBUFFX4_RVT \DFF_B_tri[7]  ( .A(N275), .EN(n59), .Y(DFF_B[7]) );
  TNBUFFX4_RVT \DFF_B_tri[6]  ( .A(N278), .EN(n60), .Y(DFF_B[6]) );
  TNBUFFX4_RVT \DFF_B_tri[2]  ( .A(N290), .EN(n64), .Y(DFF_B[2]) );
  TNBUFFX4_RVT \DFF_B_tri[4]  ( .A(N284), .EN(n62), .Y(DFF_B[4]) );
  TNBUFFX2_RVT \DFF_A_tri[4]  ( .A(N188), .EN(n30), .Y(DFF_A[4]) );
  TNBUFFX4_RVT \DFF_B_tri[1]  ( .A(N293), .EN(n65), .Y(DFF_B[1]) );
  TNBUFFX2_RVT \DFF_A_tri[15]  ( .A(N155), .EN(n19), .Y(DFF_A[15]) );
  TNBUFFX4_RVT \DFF_B_tri[0]  ( .A(N296), .EN(n66), .Y(DFF_B[0]) );
  TNBUFFX2_RVT \DFF_A_tri[16]  ( .A(N152), .EN(n18), .Y(DFF_A[16]) );
  TNBUFFX2_RVT \DFF_A_tri[26]  ( .A(N122), .EN(n8), .Y(DFF_A[26]) );
  TNBUFFX2_RVT \DFF_A_tri[30]  ( .A(N110), .EN(n4), .Y(DFF_A[30]) );
  TNBUFFX1_RVT \DFF_A_tri[3]  ( .A(N191), .EN(n31), .Y(DFF_A[3]) );
  TNBUFFX2_RVT \DFF_A_tri[19]  ( .A(N143), .EN(n15), .Y(DFF_A[19]) );
  TNBUFFX2_RVT \DFF_A_tri[23]  ( .A(N131), .EN(n11), .Y(DFF_A[23]) );
  TNBUFFX1_RVT \DFF_B_tri[10]  ( .A(N266), .EN(n56), .Y(DFF_B[10]) );
  TNBUFFX1_RVT \DFF_B_tri[9]  ( .A(N269), .EN(n57), .Y(DFF_B[9]) );
  TNBUFFX1_RVT \DFF_B_tri[14]  ( .A(N254), .EN(n52), .Y(DFF_B[14]) );
  TNBUFFX1_RVT \DFF_B_tri[18]  ( .A(N242), .EN(n48), .Y(DFF_B[18]) );
  TNBUFFX1_RVT \DFF_B_tri[8]  ( .A(N272), .EN(n58), .Y(DFF_B[8]) );
  DFFX1_RVT \DFF_Result_reg[22]  ( .D(n89), .CLK(clk), .Q(Result[22]) );
  DFFX1_RVT \DFF_Result_reg[29]  ( .D(n96), .CLK(clk), .Q(Result[29]) );
  DFFX1_RVT \DFF_Result_reg[24]  ( .D(n91), .CLK(clk), .Q(Result[24]) );
  DFFX1_RVT \DFF_Result_reg[27]  ( .D(n94), .CLK(clk), .Q(Result[27]) );
  DFFX1_RVT \DFF_Result_reg[26]  ( .D(n93), .CLK(clk), .Q(Result[26]) );
  DFFX1_RVT \DFF_Result_reg[25]  ( .D(n92), .CLK(clk), .Q(Result[25]) );
  DFFX1_RVT \DFF_Result_reg[31]  ( .D(n98), .CLK(clk), .Q(Result[31]) );
  DFFX1_RVT \DFF_Result_reg[28]  ( .D(n95), .CLK(clk), .Q(Result[28]) );
  DFFX1_RVT \DFF_Result_reg[30]  ( .D(n97), .CLK(clk), .Q(Result[30]) );
  DFFX1_RVT \DFF_Result_reg[20]  ( .D(n108), .CLK(clk), .Q(Result[20]) );
  DFFX1_RVT \DFF_Result_reg[21]  ( .D(n109), .CLK(clk), .Q(Result[21]), .QN(
        n116) );
  TNBUFFX1_RVT \DFF_B_tri[5]  ( .A(N281), .EN(n61), .Y(DFF_B[5]) );
  TNBUFFX1_RVT \DFF_A_tri[6]  ( .A(N182), .EN(n28), .Y(DFF_A[6]) );
  TNBUFFX1_RVT \DFF_B_tri[11]  ( .A(N263), .EN(n55), .Y(DFF_B[11]) );
  TNBUFFX1_RVT \DFF_B_tri[15]  ( .A(N251), .EN(n51), .Y(DFF_B[15]) );
  TNBUFFX1_RVT \DFF_A_tri[2]  ( .A(N194), .EN(n32), .Y(DFF_A[2]) );
  TNBUFFX1_RVT \DFF_A_tri[1]  ( .A(N197), .EN(n33), .Y(DFF_A[1]) );
  TNBUFFX1_RVT \DFF_A_tri[0]  ( .A(N200), .EN(n34), .Y(DFF_A[0]) );
  TNBUFFX2_RVT \DFF_A_tri[5]  ( .A(N185), .EN(n29), .Y(DFF_A[5]) );
  TNBUFFX2_RVT \DFF_A_tri[10]  ( .A(N170), .EN(n24), .Y(DFF_A[10]) );
  TNBUFFX2_RVT \DFF_A_tri[7]  ( .A(N179), .EN(n27), .Y(DFF_A[7]) );
  TNBUFFX2_RVT \DFF_A_tri[11]  ( .A(N167), .EN(n23), .Y(DFF_A[11]) );
  TNBUFFX2_RVT \DFF_A_tri[9]  ( .A(N173), .EN(n25), .Y(DFF_A[9]) );
  TNBUFFX2_RVT \DFF_A_tri[8]  ( .A(N176), .EN(n26), .Y(DFF_A[8]) );
  TNBUFFX1_RVT \DFF_B_tri[23]  ( .A(N227), .EN(n43), .Y(DFF_B[23]) );
  TNBUFFX2_RVT \DFF_A_tri[14]  ( .A(N158), .EN(n20), .Y(DFF_A[14]) );
  TNBUFFX2_RVT \DFF_A_tri[18]  ( .A(N146), .EN(n16), .Y(DFF_A[18]) );
  TNBUFFX1_RVT \DFF_B_tri[16]  ( .A(N248), .EN(n50), .Y(DFF_B[16]) );
  TNBUFFX1_RVT \DFF_A_tri[22]  ( .A(N134), .EN(n12), .Y(DFF_A[22]) );
  TNBUFFX1_RVT \DFF_A_tri[12]  ( .A(N164), .EN(n22), .Y(DFF_A[12]) );
  TNBUFFX2_RVT \DFF_A_tri[29]  ( .A(N113), .EN(n5), .Y(DFF_A[29]) );
  TNBUFFX2_RVT \DFF_A_tri[13]  ( .A(N161), .EN(n21), .Y(DFF_A[13]) );
  TNBUFFX2_RVT \DFF_A_tri[27]  ( .A(N119), .EN(n7), .Y(DFF_A[27]) );
  TNBUFFX2_RVT \DFF_A_tri[17]  ( .A(N149), .EN(n17), .Y(DFF_A[17]) );
  TNBUFFX2_RVT \DFF_A_tri[31]  ( .A(N107), .EN(n3), .Y(DFF_A[31]) );
  TNBUFFX2_RVT \DFF_A_tri[28]  ( .A(N116), .EN(n6), .Y(DFF_A[28]) );
  TNBUFFX2_RVT \DFF_A_tri[21]  ( .A(N137), .EN(n13), .Y(DFF_A[21]) );
  TNBUFFX2_RVT \DFF_A_tri[25]  ( .A(N125), .EN(n9), .Y(DFF_A[25]) );
  TNBUFFX2_RVT \DFF_A_tri[20]  ( .A(N140), .EN(n14), .Y(DFF_A[20]) );
  TNBUFFX2_RVT \DFF_A_tri[24]  ( .A(N128), .EN(n10), .Y(DFF_A[24]) );
  TNBUFFX1_RVT \DFF_B_tri[31]  ( .A(N203), .EN(n35), .Y(DFF_B[31]) );
  TNBUFFX1_RVT \DFF_B_tri[30]  ( .A(N206), .EN(n36), .Y(DFF_B[30]) );
  TNBUFFX1_RVT \DFF_B_tri[27]  ( .A(N215), .EN(n39), .Y(DFF_B[27]) );
  TNBUFFX1_RVT \DFF_B_tri[29]  ( .A(N209), .EN(n37), .Y(DFF_B[29]) );
  TNBUFFX1_RVT \DFF_B_tri[26]  ( .A(N218), .EN(n40), .Y(DFF_B[26]) );
  TNBUFFX1_RVT \DFF_B_tri[28]  ( .A(N212), .EN(n38), .Y(DFF_B[28]) );
  TNBUFFX1_RVT \DFF_B_tri[25]  ( .A(N221), .EN(n41), .Y(DFF_B[25]) );
  TNBUFFX1_RVT \DFF_B_tri[24]  ( .A(N224), .EN(n42), .Y(DFF_B[24]) );
  TNBUFFX1_RVT \DFF_B_tri[22]  ( .A(N230), .EN(n44), .Y(DFF_B[22]) );
  TNBUFFX1_RVT \DFF_B_tri[19]  ( .A(N239), .EN(n47), .Y(DFF_B[19]) );
  TNBUFFX1_RVT \DFF_B_tri[21]  ( .A(N233), .EN(n45), .Y(DFF_B[21]) );
  TNBUFFX1_RVT \DFF_B_tri[17]  ( .A(N245), .EN(n49), .Y(DFF_B[17]) );
  TNBUFFX1_RVT \DFF_B_tri[20]  ( .A(N236), .EN(n46), .Y(DFF_B[20]) );
  TNBUFFX1_RVT \DFF_B_tri[13]  ( .A(N257), .EN(n53), .Y(DFF_B[13]) );
  TNBUFFX1_RVT \DFF_B_tri[12]  ( .A(N260), .EN(n54), .Y(DFF_B[12]) );
  DFFX1_RVT \DFF_B_reg[1]  ( .D(B[1]), .CLK(clk), .Q(N293) );
  AO222X1_RVT U46 ( .A1(Result_B[20]), .A2(n1), .A3(Result_A[20]), .A4(n132), 
        .A5(Result[20]), .A6(n126), .Y(n108) );
  OAI222X1_RVT U47 ( .A1(n112), .A2(n113), .A3(n114), .A4(n115), .A5(n116), 
        .A6(nrst), .Y(n109) );
  INVX1_RVT U48 ( .A(Result_A[21]), .Y(n114) );
  INVX1_RVT U49 ( .A(Result_B[21]), .Y(n112) );
  NBUFFX2_RVT U50 ( .A(n107), .Y(n126) );
  NBUFFX2_RVT U51 ( .A(n1), .Y(n134) );
  NBUFFX2_RVT U52 ( .A(n2), .Y(n132) );
  NBUFFX2_RVT U53 ( .A(n107), .Y(n127) );
  NBUFFX2_RVT U54 ( .A(n107), .Y(n129) );
  NBUFFX2_RVT U55 ( .A(n107), .Y(n130) );
  NBUFFX2_RVT U56 ( .A(n107), .Y(n131) );
  NBUFFX2_RVT U57 ( .A(n107), .Y(n128) );
  NBUFFX2_RVT U58 ( .A(n2), .Y(n133) );
  NBUFFX2_RVT U59 ( .A(n107), .Y(n125) );
  NBUFFX2_RVT U60 ( .A(n1), .Y(n135) );
  INVX1_RVT U61 ( .A(n132), .Y(n115) );
  INVX1_RVT U62 ( .A(n135), .Y(n113) );
  INVX1_RVT U63 ( .A(n119), .Y(n120) );
  INVX1_RVT U64 ( .A(DFF_A[12]), .Y(n119) );
  INVX1_RVT U65 ( .A(n117), .Y(n118) );
  INVX1_RVT U66 ( .A(DFF_A[22]), .Y(n117) );
  INVX1_RVT U67 ( .A(n110), .Y(n111) );
  INVX1_RVT U68 ( .A(DFF_B[16]), .Y(n110) );
  INVX1_RVT U69 ( .A(n121), .Y(n122) );
  INVX1_RVT U70 ( .A(DFF_A[6]), .Y(n121) );
  INVX1_RVT U71 ( .A(n123), .Y(n124) );
  INVX1_RVT U72 ( .A(DFF_B[5]), .Y(n123) );
endmodule

