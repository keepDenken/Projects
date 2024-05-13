/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun May 12 21:45:06 2024
/////////////////////////////////////////////////////////////


module FA_1bit_0 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;
  tri   A;
  tri   B;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_229 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(n2), .A2(Cin), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_230 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_231 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;
  tri   A;
  tri   B;

  IBUFFX4_RVT U1 ( .A(n3), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module RCA_4bit_0 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   n3, Cout00, Cout01, Cout10, n1;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_0 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_231 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_230 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_229 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(n3) );
  IBUFFX4_RVT U1 ( .A(n1), .Y(Cout) );
  INVX0_RVT U2 ( .A(n3), .Y(n1) );
endmodule


module FA_1bit_217 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_218 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_219 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_220 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_55 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_220 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_219 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_218 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_217 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_221 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_222 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_223 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_224 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_56 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_224 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_223 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_222 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_221 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
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

  RCA_4bit_56 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_55 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n1), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n1), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n1), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n1), .Y(S[0]) );
  INVX1_RVT U7 ( .A(Cin), .Y(n1) );
  AO22X1_RVT U8 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n1), .Y(S[2]) );
endmodule


module FA_1bit_113 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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


module CSA_4bit_15 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2, n3, n4, n5, n6;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_30 RCA0 ( .A({n3, A[2], n5, A[0]}), .B(B), .Cin(1'b0), .C(S0), 
        .Cout(Cout0) );
  RCA_4bit_29 RCA1 ( .A({n3, A[2], n5, A[0]}), .B(B), .Cin(1'b1), .C(S1), 
        .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n6), .Y(S[3]) );
  AO22X1_RVT U4 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n6), .Y(S[2]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n6), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n6), .Y(S[0]) );
  INVX1_RVT U7 ( .A(n4), .Y(n5) );
  INVX1_RVT U8 ( .A(A[1]), .Y(n4) );
  INVX1_RVT U9 ( .A(n2), .Y(n3) );
  INVX1_RVT U10 ( .A(A[3]), .Y(n2) );
  AO22X1_RVT U11 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n6), .Y(Cout) );
  INVX1_RVT U12 ( .A(Cin), .Y(n6) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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


module CSA_4bit_16 ( A, B, Cin, S, Cout );
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
  AO22X1_RVT U4 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_129 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(n3), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
endmodule


module FA_1bit_130 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_131 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

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
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_132 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_131 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_130 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_129 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_133 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_134 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_135 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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


module CSA_4bit_17 ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   Cout1, Cout0, n2, n3, n4;
  wire   [3:0] S1;
  wire   [3:0] S0;
  tri   [3:0] A;
  tri   [3:0] B;

  RCA_4bit_34 RCA0 ( .A({A[3:2], n3, A[0]}), .B(B), .Cin(1'b0), .C(S0), .Cout(
        Cout0) );
  RCA_4bit_33 RCA1 ( .A({A[3:2], n3, A[0]}), .B(B), .Cin(1'b1), .C(S1), .Cout(
        Cout1) );
  AO22X1_RVT U3 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n4), .Y(S[3]) );
  AO22X1_RVT U4 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n4), .Y(Cout) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n4), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n4), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n4), .Y(S[0]) );
  INVX1_RVT U8 ( .A(n2), .Y(n3) );
  INVX1_RVT U9 ( .A(A[1]), .Y(n2) );
  INVX1_RVT U10 ( .A(Cin), .Y(n4) );
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
  tri   A;
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
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_140 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_142 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_143 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
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


module CSA_4bit_18 ( A, B, Cin, S, Cout );
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

  RCA_4bit_36 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_35 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_145 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_146 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_147 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_148 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_37 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_148 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_147 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_146 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_145 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_149 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_150 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_151 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_152 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_38 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_152 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_151 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_150 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_149 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_19 ( A, B, Cin, S, Cout );
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

  RCA_4bit_38 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_37 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_153 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_154 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_155 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_156 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_39 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_156 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_155 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_154 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_153 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_157 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_158 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_159 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_160 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_40 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_160 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_159 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_158 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_157 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_20 ( A, B, Cin, S, Cout );
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

  RCA_4bit_40 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_39 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U7 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_161 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_162 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_163 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_164 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_41 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_164 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_163 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_162 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_161 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_165 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_166 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_167 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_168 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_42 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_168 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_167 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_166 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_165 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_21 ( A, B, Cin, S, Cout );
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

  RCA_4bit_42 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_41 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_169 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_170 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_171 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_172 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_43 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_172 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_171 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_170 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_169 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_173 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_174 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_175 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_176 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_44 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_176 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_175 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_174 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_173 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_22 ( A, B, Cin, S, Cout );
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

  RCA_4bit_44 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_43 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U7 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_177 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_178 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_179 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_180 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_45 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_180 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_179 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_178 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_177 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_181 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_182 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_183 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_184 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module RCA_4bit_46 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_184 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_183 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_182 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_181 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_23 ( A, B, Cin, S, Cout );
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

  RCA_4bit_46 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_45 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_185 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_186 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_187 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_188 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module RCA_4bit_47 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_188 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_187 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_186 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_185 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_189 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_190 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_191 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_192 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_48 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_192 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_191 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_190 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_189 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_24 ( A, B, Cin, S, Cout );
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

  RCA_4bit_48 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_47 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U7 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_193 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_194 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_195 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_196 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_49 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_196 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_195 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_194 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_193 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_197 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_198 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_199 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_200 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_50 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_200 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_199 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_198 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_197 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_25 ( A, B, Cin, S, Cout );
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

  RCA_4bit_50 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_49 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_201 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_202 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_203 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_204 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_51 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_204 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_203 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_202 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_201 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_205 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_206 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_207 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_208 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_52 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_208 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_207 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_206 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_205 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_26 ( A, B, Cin, S, Cout );
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

  RCA_4bit_52 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_51 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U7 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_209 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_210 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_211 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_212 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module RCA_4bit_53 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_212 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_211 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_210 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_209 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_213 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_214 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_215 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_216 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_54 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_216 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_215 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_214 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_213 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_27 ( A, B, Cin, S, Cout );
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

  RCA_4bit_54 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_53 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U7 ( .A(Cin), .Y(n2) );
  AO22X1_RVT U8 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
endmodule


module CSA_32bit_0 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   Cout000, Cout001_1, Cout001_0, Cout010_1, Cout010_0, Cout011_1,
         Cout011_0, Cout100_1, Cout100_0, Cout101_1, Cout101_0, Cout110_1,
         Cout110_0, Cout111_1, Cout111_0, n1, n2, n3, n4, n5, n7, n8, n9, n10,
         n11, n12, n13, n15, n16, n17, n18, n19, n20, n21;
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
  CSA_4bit_27 CSA001_1 ( .A(A[7:4]), .B(B[7:4]), .Cin(1'b1), .S(S001_1), 
        .Cout(Cout001_1) );
  CSA_4bit_26 CSA010_0 ( .A(A[11:8]), .B(B[11:8]), .Cin(1'b0), .S(S010_0), 
        .Cout(Cout010_0) );
  CSA_4bit_25 CSA010_1 ( .A(A[11:8]), .B(B[11:8]), .Cin(1'b1), .S(S010_1), 
        .Cout(Cout010_1) );
  CSA_4bit_24 CSA011_0 ( .A(A[15:12]), .B(B[15:12]), .Cin(1'b0), .S(S011_0), 
        .Cout(Cout011_0) );
  CSA_4bit_23 CSA011_1 ( .A(A[15:12]), .B(B[15:12]), .Cin(1'b1), .S(S011_1), 
        .Cout(Cout011_1) );
  CSA_4bit_22 CSA100_0 ( .A(A[19:16]), .B(B[19:16]), .Cin(1'b0), .S(S100_0), 
        .Cout(Cout100_0) );
  CSA_4bit_21 CSA100_1 ( .A(A[19:16]), .B(B[19:16]), .Cin(1'b1), .S(S100_1), 
        .Cout(Cout100_1) );
  CSA_4bit_20 CSA101_0 ( .A({n21, A[22:20]}), .B(B[23:20]), .Cin(1'b0), .S(
        S101_0), .Cout(Cout101_0) );
  CSA_4bit_19 CSA101_1 ( .A(A[23:20]), .B(B[23:20]), .Cin(1'b1), .S(S101_1), 
        .Cout(Cout101_1) );
  CSA_4bit_18 CSA110_0 ( .A(A[27:24]), .B(B[27:24]), .Cin(1'b0), .S(S110_0), 
        .Cout(Cout110_0) );
  CSA_4bit_17 CSA110_1 ( .A(A[27:24]), .B(B[27:24]), .Cin(1'b1), .S(S110_1), 
        .Cout(Cout110_1) );
  CSA_4bit_16 CSA111_0 ( .A(A[31:28]), .B(B[31:28]), .Cin(1'b0), .S(S111_0), 
        .Cout(Cout111_0) );
  CSA_4bit_15 CSA111_1 ( .A(A[31:28]), .B(B[31:28]), .Cin(1'b1), .S(S111_1), 
        .Cout(Cout111_1) );
  INVX1_RVT U3 ( .A(S011_0[0]), .Y(n17) );
  INVX1_RVT U4 ( .A(S011_1[0]), .Y(n16) );
  AO22X1_RVT U5 ( .A1(Cout010_1), .A2(n8), .A3(Cout010_0), .A4(n15), .Y(n13)
         );
  INVX1_RVT U6 ( .A(n10), .Y(n2) );
  INVX1_RVT U7 ( .A(n8), .Y(n15) );
  INVX1_RVT U8 ( .A(n12), .Y(n4) );
  OAI22X1_RVT U9 ( .A1(n16), .A2(n5), .A3(n17), .A4(n13), .Y(S[12]) );
  OAI22X1_RVT U10 ( .A1(n18), .A2(n15), .A3(n19), .A4(n8), .Y(S[8]) );
  INVX1_RVT U11 ( .A(S010_0[0]), .Y(n19) );
  INVX1_RVT U12 ( .A(S010_1[0]), .Y(n18) );
  INVX1_RVT U13 ( .A(n13), .Y(n5) );
  INVX1_RVT U14 ( .A(n11), .Y(n3) );
  AO22X1_RVT U15 ( .A1(Cout001_1), .A2(Cout000), .A3(Cout001_0), .A4(n7), .Y(
        n8) );
  INVX0_RVT U16 ( .A(Cout000), .Y(n7) );
  INVX1_RVT U17 ( .A(n9), .Y(n1) );
  AO22X1_RVT U18 ( .A1(Cout111_1), .A2(n9), .A3(Cout111_0), .A4(n1), .Y(Cout)
         );
  AO22X1_RVT U19 ( .A1(Cout100_1), .A2(n12), .A3(Cout100_0), .A4(n4), .Y(n11)
         );
  AO22X1_RVT U20 ( .A1(Cout011_1), .A2(n13), .A3(Cout011_0), .A4(n5), .Y(n12)
         );
  AO22X1_RVT U21 ( .A1(S111_1[0]), .A2(n9), .A3(S111_0[0]), .A4(n1), .Y(S[28])
         );
  AO22X1_RVT U22 ( .A1(S111_1[1]), .A2(n9), .A3(S111_0[1]), .A4(n1), .Y(S[29])
         );
  AO22X1_RVT U23 ( .A1(S111_1[2]), .A2(n9), .A3(S111_0[2]), .A4(n1), .Y(S[30])
         );
  AO22X1_RVT U24 ( .A1(S111_1[3]), .A2(n9), .A3(S111_0[3]), .A4(n1), .Y(S[31])
         );
  AO22X1_RVT U25 ( .A1(S001_1[2]), .A2(Cout000), .A3(S001_0[2]), .A4(n7), .Y(
        S[6]) );
  AO22X1_RVT U26 ( .A1(S101_1[0]), .A2(n11), .A3(S101_0[0]), .A4(n3), .Y(S[20]) );
  AO22X1_RVT U27 ( .A1(S101_1[1]), .A2(n11), .A3(S101_0[1]), .A4(n3), .Y(S[21]) );
  AO22X1_RVT U28 ( .A1(S101_1[2]), .A2(n11), .A3(S101_0[2]), .A4(n3), .Y(S[22]) );
  AO22X1_RVT U29 ( .A1(S101_1[3]), .A2(n11), .A3(S101_0[3]), .A4(n3), .Y(S[23]) );
  AO22X1_RVT U30 ( .A1(S100_1[0]), .A2(n12), .A3(S100_0[0]), .A4(n4), .Y(S[16]) );
  AO22X1_RVT U31 ( .A1(S100_1[1]), .A2(n12), .A3(S100_0[1]), .A4(n4), .Y(S[17]) );
  AO22X1_RVT U32 ( .A1(S100_1[2]), .A2(n12), .A3(S100_0[2]), .A4(n4), .Y(S[18]) );
  AO22X1_RVT U33 ( .A1(S100_1[3]), .A2(n12), .A3(S100_0[3]), .A4(n4), .Y(S[19]) );
  AO22X1_RVT U34 ( .A1(S011_1[3]), .A2(n13), .A3(S011_0[3]), .A4(n5), .Y(S[15]) );
  AO22X1_RVT U35 ( .A1(S011_1[2]), .A2(n13), .A3(S011_0[2]), .A4(n5), .Y(S[14]) );
  AO22X1_RVT U36 ( .A1(S011_1[1]), .A2(n13), .A3(S011_0[1]), .A4(n5), .Y(S[13]) );
  INVX1_RVT U37 ( .A(n20), .Y(n21) );
  INVX1_RVT U38 ( .A(A[23]), .Y(n20) );
  AO22X1_RVT U39 ( .A1(S010_1[1]), .A2(n8), .A3(S010_0[1]), .A4(n15), .Y(S[9])
         );
  AO22X1_RVT U40 ( .A1(S010_1[2]), .A2(n8), .A3(S010_0[2]), .A4(n15), .Y(S[10]) );
  AO22X1_RVT U41 ( .A1(S010_1[3]), .A2(n8), .A3(S010_0[3]), .A4(n15), .Y(S[11]) );
  AO22X1_RVT U42 ( .A1(S001_1[3]), .A2(Cout000), .A3(S001_0[3]), .A4(n7), .Y(
        S[7]) );
  AO22X1_RVT U43 ( .A1(S001_1[1]), .A2(Cout000), .A3(S001_0[1]), .A4(n7), .Y(
        S[5]) );
  AO22X1_RVT U44 ( .A1(S001_1[0]), .A2(Cout000), .A3(S001_0[0]), .A4(n7), .Y(
        S[4]) );
  AO22X1_RVT U45 ( .A1(Cout101_1), .A2(n11), .A3(Cout101_0), .A4(n3), .Y(n10)
         );
  AO22X1_RVT U46 ( .A1(Cout110_1), .A2(n10), .A3(Cout110_0), .A4(n2), .Y(n9)
         );
  AO22X1_RVT U47 ( .A1(S110_1[0]), .A2(n10), .A3(S110_0[0]), .A4(n2), .Y(S[24]) );
  AO22X1_RVT U48 ( .A1(S110_1[1]), .A2(n10), .A3(S110_0[1]), .A4(n2), .Y(S[25]) );
  AO22X1_RVT U49 ( .A1(S110_1[3]), .A2(n10), .A3(S110_0[3]), .A4(n2), .Y(S[27]) );
  AO22X1_RVT U50 ( .A1(S110_1[2]), .A2(n10), .A3(S110_0[2]), .A4(n2), .Y(S[26]) );
endmodule


module FA_1bit_225 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n6, net3920, net3938, n2, n3, n4, n5;
  tri   A;
  tri   B;
  assign Cout = net3938;

  IBUFFX4_RVT U1 ( .A(n5), .Y(n2) );
  INVX1_RVT U2 ( .A(n2), .Y(n3) );
  XNOR2X1_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX1_RVT U4 ( .A(n4), .Y(n5) );
  XOR2X1_RVT U5 ( .A1(A), .A2(B), .Y(n4) );
  AO22X1_RVT U6 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(n6) );
  INVX0_RVT U7 ( .A(net3920), .Y(net3938) );
  IBUFFX16_RVT U8 ( .A(n6), .Y(net3920) );
endmodule


module FA_1bit_226 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n4), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n4) );
  INVX1_RVT U3 ( .A(n2), .Y(n3) );
  INVX1_RVT U4 ( .A(A), .Y(n2) );
  AO22X1_RVT U5 ( .A1(n3), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_227 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(B), .Y(n3) );
  INVX1_RVT U2 ( .A(A), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(n2), .A2(n3), .Y(n5) );
  INVX0_RVT U4 ( .A(n5), .Y(n4) );
  XNOR2X1_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  AO22X1_RVT U6 ( .A1(A), .A2(B), .A3(Cin), .A4(n5), .Y(Cout) );
endmodule


module FA_1bit_228 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_57 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_228 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_227 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_226 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_225 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module FA_1bit_1 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_2 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_3 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_4 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_1 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

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
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_6 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_7 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_8 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_2 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_8 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_7 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_6 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_5 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
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

  RCA_4bit_2 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_1 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U4 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U5 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_9 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_10 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_11 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_12 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_3 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

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
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_14 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_15 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_16 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_4 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_16 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_15 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_14 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_13 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
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

  RCA_4bit_4 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_3 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U4 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_17 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_18 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_19 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_20 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_5 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

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
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_22 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_23 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_24 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_6 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_24 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_23 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_22 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_21 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
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

  RCA_4bit_6 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_5 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_25 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_26 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_27 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_28 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_7 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

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
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_30 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_31 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_32 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module RCA_4bit_8 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_32 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_31 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_30 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_29 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
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

  RCA_4bit_8 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_7 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U4 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U5 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U6 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  AO22X1_RVT U7 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_33 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_36 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_38 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  RCA_4bit_10 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_9 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_46 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_47 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_48 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
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

  RCA_4bit_12 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_11 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
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

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_51 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_52 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_54 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_55 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  tri   [3:0] B;

  RCA_4bit_14 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_13 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_59 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_62 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_63 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_64 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
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
  tri   [3:0] B;

  RCA_4bit_16 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_15 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_65 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_66 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_67 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_68 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
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
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_71 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_72 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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


module CSA_4bit_9 ( A, B, Cin, S, Cout );
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
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
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
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_75 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_76 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_78 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_79 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_80 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
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


module CSA_4bit_10 ( A, B, Cin, S, Cout );
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
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_83 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_84 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

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
  tri   [3:0] B;

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

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_88 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

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
  tri   [3:0] B;

  FA_1bit_88 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_87 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_86 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_85 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
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

  RCA_4bit_22 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_21 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_89 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_92 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

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
  tri   [3:0] B;

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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_94 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_95 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_96 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

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
  tri   [3:0] B;

  FA_1bit_96 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_95 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_94 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_93 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
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

  RCA_4bit_24 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_23 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_98 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_99 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_100 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_25 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_104 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_26 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_104 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_103 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_102 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_101 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
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

  RCA_4bit_26 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_25 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U4 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U5 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_105 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_108 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_27 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_111 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_112 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;
  tri   A;
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
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_112 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_111 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_110 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_109 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout)
         );
endmodule


module CSA_4bit_14 ( A, B, Cin, S, Cout );
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

  RCA_4bit_28 RCA0 ( .A(A), .B(B), .Cin(1'b0), .C(S0), .Cout(Cout0) );
  RCA_4bit_27 RCA1 ( .A(A), .B(B), .Cin(1'b1), .C(S1), .Cout(Cout1) );
  AO22X1_RVT U3 ( .A1(Cout1), .A2(Cin), .A3(Cout0), .A4(n2), .Y(Cout) );
  AO22X1_RVT U4 ( .A1(S1[3]), .A2(Cin), .A3(S0[3]), .A4(n2), .Y(S[3]) );
  AO22X1_RVT U5 ( .A1(S1[2]), .A2(Cin), .A3(S0[2]), .A4(n2), .Y(S[2]) );
  AO22X1_RVT U6 ( .A1(S1[1]), .A2(Cin), .A3(S0[1]), .A4(n2), .Y(S[1]) );
  AO22X1_RVT U7 ( .A1(S1[0]), .A2(Cin), .A3(S0[0]), .A4(n2), .Y(S[0]) );
  INVX1_RVT U8 ( .A(Cin), .Y(n2) );
endmodule


module CSA_32bit_1 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   Cout000, Cout001_1, Cout001_0, Cout010_1, Cout010_0, Cout011_1,
         Cout011_0, Cout100_1, Cout100_0, Cout101_1, Cout101_0, Cout110_1,
         Cout110_0, Cout111_1, Cout111_0, n1, n5, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24;
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

  RCA_4bit_57 RCA000 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .C(S[3:0]), .Cout(
        Cout000) );
  CSA_4bit_14 CSA001_0 ( .A(A[7:4]), .B(B[7:4]), .Cin(1'b0), .S(S001_0), 
        .Cout(Cout001_0) );
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
  INVX1_RVT U3 ( .A(n16), .Y(n23) );
  INVX1_RVT U4 ( .A(n17), .Y(n24) );
  INVX1_RVT U5 ( .A(n19), .Y(n21) );
  INVX1_RVT U6 ( .A(n15), .Y(n22) );
  INVX1_RVT U7 ( .A(Cout000), .Y(n20) );
  AO22X1_RVT U8 ( .A1(Cout010_1), .A2(n19), .A3(Cout010_0), .A4(n21), .Y(n14)
         );
  AO22X1_RVT U9 ( .A1(Cout111_1), .A2(n18), .A3(Cout111_0), .A4(n1), .Y(Cout)
         );
  AO22X1_RVT U10 ( .A1(S111_1[0]), .A2(n18), .A3(S111_0[0]), .A4(n1), .Y(S[28]) );
  AO22X1_RVT U11 ( .A1(S111_1[1]), .A2(n18), .A3(S111_0[1]), .A4(n1), .Y(S[29]) );
  AO22X1_RVT U12 ( .A1(S111_1[2]), .A2(n18), .A3(S111_0[2]), .A4(n1), .Y(S[30]) );
  AO22X1_RVT U13 ( .A1(S111_1[3]), .A2(n18), .A3(S111_0[3]), .A4(n1), .Y(S[31]) );
  AO22X1_RVT U14 ( .A1(Cout001_1), .A2(Cout000), .A3(Cout001_0), .A4(n20), .Y(
        n19) );
  AO22X1_RVT U15 ( .A1(Cout100_1), .A2(n15), .A3(Cout100_0), .A4(n22), .Y(n16)
         );
  AO22X1_RVT U16 ( .A1(Cout011_1), .A2(n14), .A3(Cout011_0), .A4(n5), .Y(n15)
         );
  AO22X1_RVT U17 ( .A1(S101_1[0]), .A2(n16), .A3(S101_0[0]), .A4(n23), .Y(
        S[20]) );
  AO22X1_RVT U18 ( .A1(S101_1[1]), .A2(n16), .A3(S101_0[1]), .A4(n23), .Y(
        S[21]) );
  AO22X1_RVT U19 ( .A1(S101_1[2]), .A2(n16), .A3(S101_0[2]), .A4(n23), .Y(
        S[22]) );
  AO22X1_RVT U20 ( .A1(S101_1[3]), .A2(n16), .A3(S101_0[3]), .A4(n23), .Y(
        S[23]) );
  AO22X1_RVT U21 ( .A1(S100_1[0]), .A2(n15), .A3(S100_0[0]), .A4(n22), .Y(
        S[16]) );
  AO22X1_RVT U22 ( .A1(S100_1[1]), .A2(n15), .A3(S100_0[1]), .A4(n22), .Y(
        S[17]) );
  AO22X1_RVT U23 ( .A1(S100_1[2]), .A2(n15), .A3(S100_0[2]), .A4(n22), .Y(
        S[18]) );
  AO22X1_RVT U24 ( .A1(S100_1[3]), .A2(n15), .A3(S100_0[3]), .A4(n22), .Y(
        S[19]) );
  AO22X1_RVT U25 ( .A1(S011_1[3]), .A2(n14), .A3(S011_0[3]), .A4(n5), .Y(S[15]) );
  AO22X1_RVT U26 ( .A1(S011_1[2]), .A2(n14), .A3(S011_0[2]), .A4(n5), .Y(S[14]) );
  AO22X1_RVT U27 ( .A1(S011_1[0]), .A2(n14), .A3(S011_0[0]), .A4(n5), .Y(S[12]) );
  AO22X1_RVT U28 ( .A1(S011_1[1]), .A2(n14), .A3(S011_0[1]), .A4(n5), .Y(S[13]) );
  AO22X1_RVT U29 ( .A1(S010_1[0]), .A2(n19), .A3(S010_0[0]), .A4(n21), .Y(S[8]) );
  AO22X1_RVT U30 ( .A1(S010_1[1]), .A2(n19), .A3(S010_0[1]), .A4(n21), .Y(S[9]) );
  AO22X1_RVT U31 ( .A1(S010_1[2]), .A2(n19), .A3(S010_0[2]), .A4(n21), .Y(
        S[10]) );
  AO22X1_RVT U32 ( .A1(S010_1[3]), .A2(n19), .A3(S010_0[3]), .A4(n21), .Y(
        S[11]) );
  AO22X1_RVT U33 ( .A1(S001_1[3]), .A2(Cout000), .A3(S001_0[3]), .A4(n20), .Y(
        S[7]) );
  AO22X1_RVT U34 ( .A1(Cout101_1), .A2(n16), .A3(Cout101_0), .A4(n23), .Y(n17)
         );
  AO22X1_RVT U35 ( .A1(Cout110_1), .A2(n17), .A3(Cout110_0), .A4(n24), .Y(n18)
         );
  AO22X1_RVT U36 ( .A1(S110_1[3]), .A2(n17), .A3(S110_0[3]), .A4(n24), .Y(
        S[27]) );
  AO22X1_RVT U37 ( .A1(S110_1[2]), .A2(n17), .A3(S110_0[2]), .A4(n24), .Y(
        S[26]) );
  AO22X1_RVT U38 ( .A1(S110_1[1]), .A2(n17), .A3(S110_0[1]), .A4(n24), .Y(
        S[25]) );
  AO22X1_RVT U39 ( .A1(S110_1[0]), .A2(n17), .A3(S110_0[0]), .A4(n24), .Y(
        S[24]) );
  AO22X1_RVT U40 ( .A1(S001_1[2]), .A2(Cout000), .A3(S001_0[2]), .A4(n20), .Y(
        S[6]) );
  AO22X1_RVT U41 ( .A1(S001_1[1]), .A2(Cout000), .A3(S001_0[1]), .A4(n20), .Y(
        S[5]) );
  AO22X1_RVT U42 ( .A1(S001_1[0]), .A2(Cout000), .A3(S001_0[0]), .A4(n20), .Y(
        S[4]) );
  AOI22X1_RVT U43 ( .A1(Cout110_1), .A2(n17), .A3(Cout110_0), .A4(n24), .Y(n1)
         );
  AOI22X1_RVT U44 ( .A1(Cout010_1), .A2(n19), .A3(Cout010_0), .A4(n21), .Y(n5)
         );
endmodule


module Top_2 ( clk, nrst, A, B, Sel, Result );
  input [31:0] A;
  input [31:0] B;
  output [39:0] Result;
  input clk, nrst, Sel;
  wire   N99, N102, N105, N108, N111, N114, N117, N120, N123, N126, N129, N132,
         N135, N138, N141, N144, N147, N150, N153, N156, N159, N162, N165,
         N168, N171, N174, N177, N180, N183, N186, N189, N192, N195, N198,
         N201, N204, N207, N210, N213, N216, N219, N222, N225, N228, N231,
         N234, N237, N240, N243, N246, N249, N252, N255, N258, N261, N264,
         N267, N270, N273, N276, N279, N282, N285, N288, n2, n3, n4, n5, n6,
         n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20,
         n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34,
         n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90,
         n91, n92, n93, n94, n95, n96, n97, n98, n99, net3554, net3552,
         net3550, net3558, net3556, net3576, net3574, net3572, net3570,
         net3564, net3562, n100, n101, n102, n103, n104, n105, n106, n107,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124;
  wire   [31:0] Result_B;
  wire   [31:0] Result_A;
  tri   [31:0] DFF_A;
  tri   [31:0] DFF_B;
  assign Result[39] = 1'b0;
  assign Result[38] = 1'b0;
  assign Result[37] = 1'b0;
  assign Result[36] = 1'b0;
  assign Result[35] = 1'b0;
  assign Result[34] = 1'b0;
  assign Result[33] = 1'b0;
  assign Result[32] = 1'b0;

  CSA_32bit_0 module_A ( .A(DFF_A), .B(DFF_B), .Cin(1'b0), .S(Result_A) );
  CSA_32bit_1 module_B ( .A(DFF_A), .B(DFF_B), .Cin(1'b0), .S(Result_B) );
  DFFX1_RVT \DFF_A_reg[31]  ( .D(A[31]), .CLK(clk), .Q(N99) );
  DFFX1_RVT \DFF_A_tri_enable_reg[31]  ( .D(net3576), .CLK(clk), .QN(n3) );
  DFFX1_RVT \DFF_A_reg[30]  ( .D(A[30]), .CLK(clk), .Q(N102) );
  DFFX1_RVT \DFF_A_tri_enable_reg[30]  ( .D(net3572), .CLK(clk), .QN(n4) );
  DFFX1_RVT \DFF_A_reg[29]  ( .D(A[29]), .CLK(clk), .Q(N105) );
  DFFX1_RVT \DFF_A_tri_enable_reg[29]  ( .D(net3576), .CLK(clk), .QN(n5) );
  DFFX1_RVT \DFF_A_reg[28]  ( .D(A[28]), .CLK(clk), .Q(N108) );
  DFFX1_RVT \DFF_A_tri_enable_reg[28]  ( .D(net3576), .CLK(clk), .QN(n6) );
  DFFX1_RVT \DFF_A_reg[27]  ( .D(A[27]), .CLK(clk), .Q(N111) );
  DFFX1_RVT \DFF_A_tri_enable_reg[27]  ( .D(net3574), .CLK(clk), .QN(n7) );
  DFFX1_RVT \DFF_A_reg[26]  ( .D(A[26]), .CLK(clk), .Q(N114) );
  DFFX1_RVT \DFF_A_tri_enable_reg[26]  ( .D(net3574), .CLK(clk), .QN(n8) );
  DFFX1_RVT \DFF_A_reg[25]  ( .D(A[25]), .CLK(clk), .Q(N117) );
  DFFX1_RVT \DFF_A_tri_enable_reg[25]  ( .D(net3574), .CLK(clk), .QN(n9) );
  DFFX1_RVT \DFF_A_reg[24]  ( .D(A[24]), .CLK(clk), .Q(N120) );
  DFFX1_RVT \DFF_A_tri_enable_reg[24]  ( .D(net3574), .CLK(clk), .QN(n10) );
  DFFX1_RVT \DFF_A_reg[23]  ( .D(A[23]), .CLK(clk), .Q(N123) );
  DFFX1_RVT \DFF_A_tri_enable_reg[23]  ( .D(net3574), .CLK(clk), .QN(n11) );
  DFFX1_RVT \DFF_A_reg[22]  ( .D(A[22]), .CLK(clk), .Q(N126) );
  DFFX1_RVT \DFF_A_tri_enable_reg[22]  ( .D(net3574), .CLK(clk), .QN(n12) );
  DFFX1_RVT \DFF_A_reg[21]  ( .D(A[21]), .CLK(clk), .Q(N129) );
  DFFX1_RVT \DFF_A_tri_enable_reg[21]  ( .D(net3574), .CLK(clk), .QN(n13) );
  DFFX1_RVT \DFF_A_reg[20]  ( .D(A[20]), .CLK(clk), .Q(N132) );
  DFFX1_RVT \DFF_A_tri_enable_reg[20]  ( .D(net3574), .CLK(clk), .QN(n14) );
  DFFX1_RVT \DFF_A_reg[19]  ( .D(A[19]), .CLK(clk), .Q(N135) );
  DFFX1_RVT \DFF_A_tri_enable_reg[19]  ( .D(net3574), .CLK(clk), .QN(n15) );
  DFFX1_RVT \DFF_A_reg[18]  ( .D(A[18]), .CLK(clk), .Q(N138) );
  DFFX1_RVT \DFF_A_tri_enable_reg[18]  ( .D(net3574), .CLK(clk), .QN(n16) );
  DFFX1_RVT \DFF_A_reg[17]  ( .D(A[17]), .CLK(clk), .Q(N141) );
  DFFX1_RVT \DFF_A_tri_enable_reg[17]  ( .D(net3574), .CLK(clk), .QN(n17) );
  DFFX1_RVT \DFF_A_reg[16]  ( .D(A[16]), .CLK(clk), .Q(N144) );
  DFFX1_RVT \DFF_A_tri_enable_reg[16]  ( .D(net3574), .CLK(clk), .QN(n18) );
  DFFX1_RVT \DFF_A_reg[15]  ( .D(A[15]), .CLK(clk), .Q(N147) );
  DFFX1_RVT \DFF_A_tri_enable_reg[15]  ( .D(net3574), .CLK(clk), .QN(n19) );
  DFFX1_RVT \DFF_A_reg[14]  ( .D(A[14]), .CLK(clk), .Q(N150) );
  DFFX1_RVT \DFF_A_tri_enable_reg[14]  ( .D(net3574), .CLK(clk), .QN(n20) );
  DFFX1_RVT \DFF_A_reg[13]  ( .D(A[13]), .CLK(clk), .Q(N153) );
  DFFX1_RVT \DFF_A_tri_enable_reg[13]  ( .D(net3572), .CLK(clk), .QN(n21) );
  DFFX1_RVT \DFF_A_reg[12]  ( .D(A[12]), .CLK(clk), .Q(N156) );
  DFFX1_RVT \DFF_A_tri_enable_reg[12]  ( .D(net3572), .CLK(clk), .QN(n22) );
  DFFX1_RVT \DFF_A_reg[11]  ( .D(A[11]), .CLK(clk), .Q(N159) );
  DFFX1_RVT \DFF_A_tri_enable_reg[11]  ( .D(net3572), .CLK(clk), .QN(n23) );
  DFFX1_RVT \DFF_A_reg[10]  ( .D(A[10]), .CLK(clk), .Q(N162) );
  DFFX1_RVT \DFF_A_tri_enable_reg[10]  ( .D(net3572), .CLK(clk), .QN(n24) );
  DFFX1_RVT \DFF_A_reg[9]  ( .D(A[9]), .CLK(clk), .Q(N165) );
  DFFX1_RVT \DFF_A_tri_enable_reg[9]  ( .D(net3572), .CLK(clk), .QN(n25) );
  DFFX1_RVT \DFF_A_reg[8]  ( .D(A[8]), .CLK(clk), .Q(N168) );
  DFFX1_RVT \DFF_A_tri_enable_reg[8]  ( .D(net3572), .CLK(clk), .QN(n26) );
  DFFX1_RVT \DFF_A_reg[7]  ( .D(A[7]), .CLK(clk), .Q(N171) );
  DFFX1_RVT \DFF_A_tri_enable_reg[7]  ( .D(net3572), .CLK(clk), .QN(n27) );
  DFFX1_RVT \DFF_A_reg[6]  ( .D(A[6]), .CLK(clk), .Q(N174) );
  DFFX1_RVT \DFF_A_tri_enable_reg[6]  ( .D(net3572), .CLK(clk), .QN(n28) );
  DFFX1_RVT \DFF_A_reg[5]  ( .D(A[5]), .CLK(clk), .Q(N177) );
  DFFX1_RVT \DFF_A_tri_enable_reg[5]  ( .D(net3572), .CLK(clk), .QN(n29) );
  DFFX1_RVT \DFF_A_reg[4]  ( .D(A[4]), .CLK(clk), .Q(N180) );
  DFFX1_RVT \DFF_A_tri_enable_reg[4]  ( .D(net3572), .CLK(clk), .QN(n30) );
  DFFX1_RVT \DFF_A_reg[3]  ( .D(A[3]), .CLK(clk), .Q(N183) );
  DFFX1_RVT \DFF_A_tri_enable_reg[3]  ( .D(net3572), .CLK(clk), .QN(n31) );
  DFFX1_RVT \DFF_A_reg[2]  ( .D(A[2]), .CLK(clk), .Q(N186) );
  DFFX1_RVT \DFF_A_tri_enable_reg[2]  ( .D(net3572), .CLK(clk), .QN(n32) );
  DFFX1_RVT \DFF_A_reg[1]  ( .D(A[1]), .CLK(clk), .Q(N189) );
  DFFX1_RVT \DFF_A_tri_enable_reg[1]  ( .D(net3572), .CLK(clk), .QN(n33) );
  DFFX1_RVT \DFF_A_reg[0]  ( .D(A[0]), .CLK(clk), .Q(N192) );
  DFFX1_RVT \DFF_A_tri_enable_reg[0]  ( .D(net3572), .CLK(clk), .QN(n34) );
  DFFX1_RVT \DFF_B_reg[31]  ( .D(B[31]), .CLK(clk), .Q(N195) );
  DFFX1_RVT \DFF_B_tri_enable_reg[31]  ( .D(net3570), .CLK(clk), .QN(n35) );
  DFFX1_RVT \DFF_B_reg[30]  ( .D(B[30]), .CLK(clk), .Q(N198) );
  DFFX1_RVT \DFF_B_tri_enable_reg[30]  ( .D(net3570), .CLK(clk), .QN(n36) );
  DFFX1_RVT \DFF_B_reg[29]  ( .D(B[29]), .CLK(clk), .Q(N201) );
  DFFX1_RVT \DFF_B_tri_enable_reg[29]  ( .D(net3570), .CLK(clk), .QN(n37) );
  DFFX1_RVT \DFF_B_reg[28]  ( .D(B[28]), .CLK(clk), .Q(N204) );
  DFFX1_RVT \DFF_B_tri_enable_reg[28]  ( .D(net3570), .CLK(clk), .QN(n38) );
  DFFX1_RVT \DFF_B_reg[27]  ( .D(B[27]), .CLK(clk), .Q(N207) );
  DFFX1_RVT \DFF_B_tri_enable_reg[27]  ( .D(net3570), .CLK(clk), .QN(n39) );
  DFFX1_RVT \DFF_B_reg[26]  ( .D(B[26]), .CLK(clk), .Q(N210) );
  DFFX1_RVT \DFF_B_tri_enable_reg[26]  ( .D(net3570), .CLK(clk), .QN(n40) );
  DFFX1_RVT \DFF_B_reg[25]  ( .D(B[25]), .CLK(clk), .Q(N213) );
  DFFX1_RVT \DFF_B_tri_enable_reg[25]  ( .D(net3570), .CLK(clk), .QN(n41) );
  DFFX1_RVT \DFF_B_reg[24]  ( .D(B[24]), .CLK(clk), .Q(N216) );
  DFFX1_RVT \DFF_B_tri_enable_reg[24]  ( .D(net3570), .CLK(clk), .QN(n42) );
  DFFX1_RVT \DFF_B_reg[23]  ( .D(B[23]), .CLK(clk), .Q(N219) );
  DFFX1_RVT \DFF_B_tri_enable_reg[23]  ( .D(net3570), .CLK(clk), .QN(n43) );
  DFFX1_RVT \DFF_B_reg[22]  ( .D(B[22]), .CLK(clk), .Q(N222) );
  DFFX1_RVT \DFF_B_tri_enable_reg[22]  ( .D(net3570), .CLK(clk), .QN(n44) );
  DFFX1_RVT \DFF_B_reg[21]  ( .D(B[21]), .CLK(clk), .Q(N225) );
  DFFX1_RVT \DFF_B_tri_enable_reg[21]  ( .D(net3570), .CLK(clk), .QN(n45) );
  DFFX1_RVT \DFF_B_reg[20]  ( .D(B[20]), .CLK(clk), .Q(N228) );
  DFFX1_RVT \DFF_B_tri_enable_reg[20]  ( .D(net3570), .CLK(clk), .QN(n46) );
  DFFX1_RVT \DFF_B_reg[19]  ( .D(B[19]), .CLK(clk), .Q(N231) );
  DFFX1_RVT \DFF_B_tri_enable_reg[19]  ( .D(net3570), .CLK(clk), .QN(n47) );
  DFFX1_RVT \DFF_B_reg[18]  ( .D(B[18]), .CLK(clk), .Q(N234) );
  DFFX1_RVT \DFF_B_tri_enable_reg[18]  ( .D(net3570), .CLK(clk), .QN(n48) );
  DFFX1_RVT \DFF_B_reg[17]  ( .D(B[17]), .CLK(clk), .Q(N237) );
  DFFX1_RVT \DFF_B_tri_enable_reg[17]  ( .D(net3576), .CLK(clk), .QN(n49) );
  DFFX1_RVT \DFF_B_reg[16]  ( .D(B[16]), .CLK(clk), .Q(N240) );
  DFFX1_RVT \DFF_B_tri_enable_reg[16]  ( .D(net3576), .CLK(clk), .QN(n50) );
  DFFX1_RVT \DFF_B_reg[15]  ( .D(B[15]), .CLK(clk), .Q(N243) );
  DFFX1_RVT \DFF_B_tri_enable_reg[15]  ( .D(n99), .CLK(clk), .QN(n51) );
  DFFX1_RVT \DFF_B_reg[14]  ( .D(B[14]), .CLK(clk), .Q(N246) );
  DFFX1_RVT \DFF_B_tri_enable_reg[14]  ( .D(n99), .CLK(clk), .QN(n52) );
  DFFX1_RVT \DFF_B_reg[13]  ( .D(B[13]), .CLK(clk), .Q(N249) );
  DFFX1_RVT \DFF_B_tri_enable_reg[13]  ( .D(net3576), .CLK(clk), .QN(n53) );
  DFFX1_RVT \DFF_B_reg[12]  ( .D(B[12]), .CLK(clk), .Q(N252) );
  DFFX1_RVT \DFF_B_tri_enable_reg[12]  ( .D(net3576), .CLK(clk), .QN(n54) );
  DFFX1_RVT \DFF_B_reg[11]  ( .D(B[11]), .CLK(clk), .Q(N255) );
  DFFX1_RVT \DFF_B_tri_enable_reg[11]  ( .D(n99), .CLK(clk), .QN(n55) );
  DFFX1_RVT \DFF_B_reg[10]  ( .D(B[10]), .CLK(clk), .Q(N258) );
  DFFX1_RVT \DFF_B_tri_enable_reg[10]  ( .D(n99), .CLK(clk), .QN(n56) );
  DFFX1_RVT \DFF_B_reg[9]  ( .D(B[9]), .CLK(clk), .Q(N261) );
  DFFX1_RVT \DFF_B_tri_enable_reg[9]  ( .D(net3576), .CLK(clk), .QN(n57) );
  DFFX1_RVT \DFF_B_reg[8]  ( .D(B[8]), .CLK(clk), .Q(N264) );
  DFFX1_RVT \DFF_B_tri_enable_reg[8]  ( .D(net3576), .CLK(clk), .QN(n58) );
  DFFX1_RVT \DFF_B_reg[7]  ( .D(B[7]), .CLK(clk), .Q(N267) );
  DFFX1_RVT \DFF_B_tri_enable_reg[7]  ( .D(n99), .CLK(clk), .QN(n59) );
  DFFX1_RVT \DFF_B_reg[6]  ( .D(B[6]), .CLK(clk), .Q(N270) );
  DFFX1_RVT \DFF_B_tri_enable_reg[6]  ( .D(n99), .CLK(clk), .QN(n60) );
  DFFX1_RVT \DFF_B_reg[5]  ( .D(B[5]), .CLK(clk), .Q(N273) );
  DFFX1_RVT \DFF_B_tri_enable_reg[5]  ( .D(net3576), .CLK(clk), .QN(n61) );
  DFFX1_RVT \DFF_B_reg[4]  ( .D(B[4]), .CLK(clk), .Q(N276) );
  DFFX1_RVT \DFF_B_tri_enable_reg[4]  ( .D(n99), .CLK(clk), .QN(n62) );
  DFFX1_RVT \DFF_B_reg[3]  ( .D(B[3]), .CLK(clk), .Q(N279) );
  DFFX1_RVT \DFF_B_reg[2]  ( .D(B[2]), .CLK(clk), .Q(N282) );
  DFFX1_RVT \DFF_B_reg[1]  ( .D(B[1]), .CLK(clk), .Q(N285) );
  DFFX1_RVT \DFF_B_tri_enable_reg[0]  ( .D(net3564), .CLK(clk), .QN(n66) );
  DFFX1_RVT \DFF_Result_reg[31]  ( .D(n98), .CLK(clk), .Q(Result[31]) );
  DFFX1_RVT \DFF_Result_reg[30]  ( .D(n97), .CLK(clk), .Q(Result[30]) );
  DFFX1_RVT \DFF_Result_reg[29]  ( .D(n96), .CLK(clk), .Q(Result[29]) );
  DFFX1_RVT \DFF_Result_reg[28]  ( .D(n95), .CLK(clk), .Q(Result[28]) );
  DFFX1_RVT \DFF_Result_reg[27]  ( .D(n94), .CLK(clk), .Q(Result[27]) );
  DFFX1_RVT \DFF_Result_reg[26]  ( .D(n93), .CLK(clk), .Q(Result[26]) );
  DFFX1_RVT \DFF_Result_reg[25]  ( .D(n92), .CLK(clk), .Q(Result[25]) );
  DFFX1_RVT \DFF_Result_reg[24]  ( .D(n91), .CLK(clk), .Q(Result[24]) );
  DFFX1_RVT \DFF_Result_reg[23]  ( .D(n90), .CLK(clk), .Q(Result[23]) );
  DFFX1_RVT \DFF_Result_reg[22]  ( .D(n89), .CLK(clk), .Q(Result[22]) );
  DFFX1_RVT \DFF_Result_reg[21]  ( .D(n88), .CLK(clk), .Q(Result[21]) );
  DFFX1_RVT \DFF_Result_reg[20]  ( .D(n87), .CLK(clk), .Q(Result[20]) );
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
  DFFX1_RVT \DFF_Result_reg[7]  ( .D(n101), .CLK(clk), .Q(Result[7]) );
  DFFX1_RVT \DFF_Result_reg[6]  ( .D(n103), .CLK(clk), .Q(Result[6]) );
  DFFX1_RVT \DFF_Result_reg[5]  ( .D(n105), .CLK(clk), .Q(Result[5]) );
  DFFX1_RVT \DFF_Result_reg[4]  ( .D(n107), .CLK(clk), .Q(Result[4]) );
  DFFX1_RVT \DFF_Result_reg[2]  ( .D(n69), .CLK(clk), .Q(Result[2]) );
  DFFX1_RVT \DFF_Result_reg[0]  ( .D(n67), .CLK(clk), .Q(Result[0]) );
  AO222X1_RVT U3 ( .A1(Result_B[0]), .A2(net3550), .A3(Result_A[0]), .A4(
        net3556), .A5(Result[0]), .A6(net3562), .Y(n67) );
  AO222X1_RVT U7 ( .A1(net3550), .A2(Result_B[4]), .A3(Result_A[4]), .A4(
        net3556), .A5(Result[4]), .A6(net3562), .Y(n71) );
  AO222X1_RVT U8 ( .A1(Result_B[5]), .A2(net3550), .A3(Result_A[5]), .A4(
        net3556), .A5(Result[5]), .A6(net3562), .Y(n72) );
  AO222X1_RVT U9 ( .A1(net3550), .A2(Result_B[6]), .A3(Result_A[6]), .A4(
        net3556), .A5(Result[6]), .A6(net3562), .Y(n73) );
  AO222X1_RVT U10 ( .A1(net3550), .A2(Result_B[7]), .A3(Result_A[7]), .A4(
        net3556), .A5(Result[7]), .A6(net3562), .Y(n74) );
  AO222X1_RVT U12 ( .A1(Result_B[9]), .A2(net3550), .A3(Result_A[9]), .A4(
        net3556), .A5(Result[9]), .A6(net3562), .Y(n76) );
  AO222X1_RVT U13 ( .A1(Result_B[10]), .A2(net3550), .A3(Result_A[10]), .A4(
        net3556), .A5(Result[10]), .A6(net3562), .Y(n77) );
  AO222X1_RVT U14 ( .A1(Result_B[11]), .A2(net3550), .A3(Result_A[11]), .A4(
        net3556), .A5(Result[11]), .A6(net3562), .Y(n78) );
  AO222X1_RVT U16 ( .A1(Result_B[13]), .A2(net3552), .A3(Result_A[13]), .A4(
        net3558), .A5(Result[13]), .A6(net3564), .Y(n80) );
  AO222X1_RVT U17 ( .A1(Result_B[14]), .A2(net3552), .A3(Result_A[14]), .A4(
        net3558), .A5(Result[14]), .A6(net3564), .Y(n81) );
  AO222X1_RVT U18 ( .A1(Result_B[15]), .A2(net3552), .A3(Result_A[15]), .A4(
        net3558), .A5(Result[15]), .A6(net3564), .Y(n82) );
  AO222X1_RVT U19 ( .A1(Result_B[16]), .A2(net3552), .A3(Result_A[16]), .A4(
        net3558), .A5(Result[16]), .A6(net3564), .Y(n83) );
  AO222X1_RVT U20 ( .A1(Result_B[17]), .A2(net3552), .A3(Result_A[17]), .A4(
        net3558), .A5(Result[17]), .A6(net3564), .Y(n84) );
  AO222X1_RVT U21 ( .A1(Result_B[18]), .A2(net3552), .A3(Result_A[18]), .A4(
        net3558), .A5(Result[18]), .A6(net3564), .Y(n85) );
  AO222X1_RVT U22 ( .A1(Result_B[19]), .A2(net3552), .A3(Result_A[19]), .A4(
        net3558), .A5(Result[19]), .A6(net3564), .Y(n86) );
  AO222X1_RVT U23 ( .A1(Result_B[20]), .A2(net3552), .A3(Result_A[20]), .A4(
        net3558), .A5(Result[20]), .A6(net3564), .Y(n87) );
  AO222X1_RVT U24 ( .A1(Result_B[21]), .A2(net3552), .A3(Result_A[21]), .A4(
        net3558), .A5(Result[21]), .A6(net3564), .Y(n88) );
  AO222X1_RVT U25 ( .A1(Result_B[22]), .A2(net3552), .A3(Result_A[22]), .A4(
        net3558), .A5(Result[22]), .A6(net3564), .Y(n89) );
  AO222X1_RVT U26 ( .A1(Result_B[23]), .A2(net3552), .A3(Result_A[23]), .A4(
        net3558), .A5(Result[23]), .A6(net3564), .Y(n90) );
  AO222X1_RVT U27 ( .A1(Result_B[24]), .A2(net3554), .A3(n2), .A4(Result_A[24]), .A5(Result[24]), .A6(net3564), .Y(n91) );
  AO222X1_RVT U28 ( .A1(Result_B[25]), .A2(net3554), .A3(Result_A[25]), .A4(n2), .A5(Result[25]), .A6(n99), .Y(n92) );
  AO222X1_RVT U29 ( .A1(Result_B[26]), .A2(net3554), .A3(Result_A[26]), .A4(n2), .A5(Result[26]), .A6(net3576), .Y(n93) );
  AO222X1_RVT U30 ( .A1(Result_B[27]), .A2(net3554), .A3(Result_A[27]), .A4(n2), .A5(Result[27]), .A6(net3576), .Y(n94) );
  AO222X1_RVT U31 ( .A1(Result_B[28]), .A2(net3554), .A3(Result_A[28]), .A4(n2), .A5(Result[28]), .A6(n99), .Y(n95) );
  AO222X1_RVT U32 ( .A1(Result_B[29]), .A2(net3554), .A3(Result_A[29]), .A4(n2), .A5(Result[29]), .A6(n99), .Y(n96) );
  AO222X1_RVT U33 ( .A1(Result_B[30]), .A2(net3554), .A3(Result_A[30]), .A4(n2), .A5(Result[30]), .A6(net3576), .Y(n97) );
  AO222X1_RVT U34 ( .A1(Result_B[31]), .A2(net3554), .A3(Result_A[31]), .A4(n2), .A5(Result[31]), .A6(n99), .Y(n98) );
  NOR2X0_RVT U35 ( .A1(net3562), .A2(Sel), .Y(n2) );
  INVX0_RVT U37 ( .A(nrst), .Y(n99) );
  TNBUFFX2_RVT \DFF_B_tri[7]  ( .A(N267), .EN(n59), .Y(DFF_B[7]) );
  TNBUFFX2_RVT \DFF_B_tri[11]  ( .A(N255), .EN(n55), .Y(DFF_B[11]) );
  TNBUFFX2_RVT \DFF_B_tri[6]  ( .A(N270), .EN(n60), .Y(DFF_B[6]) );
  TNBUFFX2_RVT \DFF_B_tri[5]  ( .A(N273), .EN(n61), .Y(DFF_B[5]) );
  TNBUFFX2_RVT \DFF_A_tri[4]  ( .A(N180), .EN(n30), .Y(DFF_A[4]) );
  TNBUFFX2_RVT \DFF_B_tri[8]  ( .A(N264), .EN(n58), .Y(DFF_B[8]) );
  TNBUFFX2_RVT \DFF_A_tri[7]  ( .A(N171), .EN(n27), .Y(DFF_A[7]) );
  TNBUFFX2_RVT \DFF_B_tri[15]  ( .A(N243), .EN(n51), .Y(DFF_B[15]) );
  TNBUFFX2_RVT \DFF_B_tri[19]  ( .A(N231), .EN(n47), .Y(DFF_B[19]) );
  TNBUFFX2_RVT \DFF_A_tri[14]  ( .A(N150), .EN(n20), .Y(DFF_A[14]) );
  TNBUFFX2_RVT \DFF_B_tri[18]  ( .A(N234), .EN(n48), .Y(DFF_B[18]) );
  TNBUFFX2_RVT \DFF_A_tri[18]  ( .A(N138), .EN(n16), .Y(DFF_A[18]) );
  TNBUFFX2_RVT \DFF_A_tri[16]  ( .A(N144), .EN(n18), .Y(DFF_A[16]) );
  TNBUFFX2_RVT \DFF_B_tri[12]  ( .A(N252), .EN(n54), .Y(DFF_B[12]) );
  TNBUFFX2_RVT \DFF_A_tri[15]  ( .A(N147), .EN(n19), .Y(DFF_A[15]) );
  TNBUFFX2_RVT \DFF_A_tri[19]  ( .A(N135), .EN(n15), .Y(DFF_A[19]) );
  TNBUFFX2_RVT \DFF_B_tri[23]  ( .A(N219), .EN(n43), .Y(DFF_B[23]) );
  TNBUFFX2_RVT \DFF_B_tri[27]  ( .A(N207), .EN(n39), .Y(DFF_B[27]) );
  TNBUFFX2_RVT \DFF_B_tri[22]  ( .A(N222), .EN(n44), .Y(DFF_B[22]) );
  TNBUFFX2_RVT \DFF_B_tri[25]  ( .A(N213), .EN(n41), .Y(DFF_B[25]) );
  TNBUFFX2_RVT \DFF_B_tri[29]  ( .A(N201), .EN(n37), .Y(DFF_B[29]) );
  TNBUFFX2_RVT \DFF_B_tri[30]  ( .A(N198), .EN(n36), .Y(DFF_B[30]) );
  TNBUFFX2_RVT \DFF_B_tri[31]  ( .A(N195), .EN(n35), .Y(DFF_B[31]) );
  TNBUFFX2_RVT \DFF_A_tri[13]  ( .A(N153), .EN(n21), .Y(DFF_A[13]) );
  TNBUFFX2_RVT \DFF_A_tri[27]  ( .A(N111), .EN(n7), .Y(DFF_A[27]) );
  TNBUFFX2_RVT \DFF_A_tri[31]  ( .A(N99), .EN(n3), .Y(DFF_A[31]) );
  TNBUFFX2_RVT \DFF_A_tri[29]  ( .A(N105), .EN(n5), .Y(DFF_A[29]) );
  TNBUFFX2_RVT \DFF_A_tri[30]  ( .A(N102), .EN(n4), .Y(DFF_A[30]) );
  TNBUFFX2_RVT \DFF_A_tri[28]  ( .A(N108), .EN(n6), .Y(DFF_A[28]) );
  TNBUFFX2_RVT \DFF_B_tri[28]  ( .A(N204), .EN(n38), .Y(DFF_B[28]) );
  TNBUFFX2_RVT \DFF_A_tri[23]  ( .A(N123), .EN(n11), .Y(DFF_A[23]) );
  TNBUFFX2_RVT \DFF_A_tri[25]  ( .A(N117), .EN(n9), .Y(DFF_A[25]) );
  TNBUFFX2_RVT \DFF_A_tri[22]  ( .A(N126), .EN(n12), .Y(DFF_A[22]) );
  TNBUFFX2_RVT \DFF_A_tri[21]  ( .A(N129), .EN(n13), .Y(DFF_A[21]) );
  TNBUFFX2_RVT \DFF_B_tri[21]  ( .A(N225), .EN(n45), .Y(DFF_B[21]) );
  TNBUFFX2_RVT \DFF_A_tri[26]  ( .A(N114), .EN(n8), .Y(DFF_A[26]) );
  TNBUFFX2_RVT \DFF_A_tri[17]  ( .A(N141), .EN(n17), .Y(DFF_A[17]) );
  TNBUFFX2_RVT \DFF_A_tri[20]  ( .A(N132), .EN(n14), .Y(DFF_A[20]) );
  TNBUFFX2_RVT \DFF_A_tri[24]  ( .A(N120), .EN(n10), .Y(DFF_A[24]) );
  TNBUFFX2_RVT \DFF_B_tri[20]  ( .A(N228), .EN(n46), .Y(DFF_B[20]) );
  TNBUFFX2_RVT \DFF_B_tri[17]  ( .A(N237), .EN(n49), .Y(DFF_B[17]) );
  TNBUFFX2_RVT \DFF_B_tri[24]  ( .A(N216), .EN(n42), .Y(DFF_B[24]) );
  TNBUFFX2_RVT \DFF_B_tri[16]  ( .A(N240), .EN(n50), .Y(DFF_B[16]) );
  TNBUFFX2_RVT \DFF_B_tri[14]  ( .A(N246), .EN(n52), .Y(DFF_B[14]) );
  TNBUFFX1_RVT \DFF_A_tri[3]  ( .A(N183), .EN(n31), .Y(DFF_A[3]) );
  TNBUFFX2_RVT \DFF_B_tri[26]  ( .A(N210), .EN(n40), .Y(DFF_B[26]) );
  TNBUFFX1_RVT \DFF_B_tri[3]  ( .A(N279), .EN(n63), .Y(DFF_B[3]) );
  TNBUFFX2_RVT \DFF_A_tri[11]  ( .A(N159), .EN(n23), .Y(DFF_A[11]) );
  TNBUFFX2_RVT \DFF_B_tri[13]  ( .A(N249), .EN(n53), .Y(DFF_B[13]) );
  TNBUFFX2_RVT \DFF_A_tri[10]  ( .A(N162), .EN(n24), .Y(DFF_A[10]) );
  TNBUFFX1_RVT \DFF_A_tri[2]  ( .A(N186), .EN(n32), .Y(DFF_A[2]) );
  TNBUFFX2_RVT \DFF_A_tri[12]  ( .A(N156), .EN(n22), .Y(DFF_A[12]) );
  TNBUFFX1_RVT \DFF_B_tri[1]  ( .A(N285), .EN(n65), .Y(DFF_B[1]) );
  TNBUFFX1_RVT \DFF_A_tri[1]  ( .A(N189), .EN(n33), .Y(DFF_A[1]) );
  TNBUFFX1_RVT \DFF_A_tri[0]  ( .A(N192), .EN(n34), .Y(DFF_A[0]) );
  TNBUFFX2_RVT \DFF_B_tri[10]  ( .A(N258), .EN(n56), .Y(DFF_B[10]) );
  TNBUFFX2_RVT \DFF_A_tri[9]  ( .A(N165), .EN(n25), .Y(DFF_A[9]) );
  TNBUFFX1_RVT \DFF_B_tri[0]  ( .A(N288), .EN(n66), .Y(DFF_B[0]) );
  TNBUFFX2_RVT \DFF_A_tri[6]  ( .A(N174), .EN(n28), .Y(DFF_A[6]) );
  TNBUFFX2_RVT \DFF_B_tri[9]  ( .A(N261), .EN(n57), .Y(DFF_B[9]) );
  TNBUFFX2_RVT \DFF_A_tri[8]  ( .A(N168), .EN(n26), .Y(DFF_A[8]) );
  TNBUFFX2_RVT \DFF_B_tri[4]  ( .A(N276), .EN(n62), .Y(DFF_B[4]) );
  TNBUFFX2_RVT \DFF_A_tri[5]  ( .A(N177), .EN(n29), .Y(DFF_A[5]) );
  DFFX1_RVT \DFF_Result_reg[8]  ( .D(n75), .CLK(clk), .Q(Result[8]) );
  DFFX1_RVT \DFF_B_reg[0]  ( .D(B[0]), .CLK(clk), .Q(N288) );
  AND2X1_RVT U36 ( .A1(Sel), .A2(nrst), .Y(net3550) );
  DFFX1_RVT \DFF_Result_reg[3]  ( .D(n70), .CLK(clk), .Q(Result[3]), .QN(n112)
         );
  DFFX1_RVT \DFF_Result_reg[1]  ( .D(n68), .CLK(clk), .Q(Result[1]) );
  DFFX1_RVT \DFF_B_tri_enable_reg[2]  ( .D(net3576), .CLK(clk), .QN(n64) );
  DFFX1_RVT \DFF_B_tri_enable_reg[1]  ( .D(n99), .CLK(clk), .QN(n65) );
  DFFX1_RVT \DFF_B_tri_enable_reg[3]  ( .D(n99), .CLK(clk), .QN(n63) );
  TNBUFFX1_RVT \DFF_B_tri[2]  ( .A(N282), .EN(n64), .Y(DFF_B[2]) );
  IBUFFX4_RVT U46 ( .A(n74), .Y(n100) );
  INVX1_RVT U47 ( .A(n100), .Y(n101) );
  IBUFFX4_RVT U48 ( .A(n73), .Y(n102) );
  INVX1_RVT U49 ( .A(n102), .Y(n103) );
  IBUFFX4_RVT U50 ( .A(n72), .Y(n104) );
  INVX1_RVT U51 ( .A(n104), .Y(n105) );
  IBUFFX4_RVT U52 ( .A(n71), .Y(n106) );
  INVX1_RVT U53 ( .A(n106), .Y(n107) );
  NAND3X0_RVT U54 ( .A1(n119), .A2(n120), .A3(n121), .Y(n79) );
  NBUFFX2_RVT U55 ( .A(n99), .Y(net3562) );
  NBUFFX2_RVT U56 ( .A(n2), .Y(net3556) );
  OAI222X1_RVT U57 ( .A1(n108), .A2(n109), .A3(n110), .A4(n111), .A5(n112), 
        .A6(nrst), .Y(n70) );
  INVX1_RVT U58 ( .A(net3550), .Y(n108) );
  INVX1_RVT U59 ( .A(Result_B[3]), .Y(n109) );
  INVX1_RVT U60 ( .A(n2), .Y(n110) );
  IBUFFX4_RVT U61 ( .A(Result_A[3]), .Y(n111) );
  NAND2X0_RVT U62 ( .A1(Result_B[1]), .A2(net3550), .Y(n113) );
  NAND2X0_RVT U63 ( .A1(Result_A[1]), .A2(net3556), .Y(n114) );
  NAND2X0_RVT U64 ( .A1(Result[1]), .A2(net3562), .Y(n115) );
  NAND3X1_RVT U65 ( .A1(n113), .A2(n114), .A3(n115), .Y(n68) );
  AND2X1_RVT U66 ( .A1(Result_B[2]), .A2(net3550), .Y(n116) );
  AND2X1_RVT U67 ( .A1(Result_A[2]), .A2(net3556), .Y(n117) );
  AND2X1_RVT U68 ( .A1(Result[2]), .A2(net3562), .Y(n118) );
  OR3X1_RVT U69 ( .A1(n116), .A2(n117), .A3(n118), .Y(n69) );
  NAND3X0_RVT U70 ( .A1(n122), .A2(n123), .A3(n124), .Y(n75) );
  NAND2X0_RVT U71 ( .A1(Result_B[12]), .A2(net3552), .Y(n119) );
  NAND2X0_RVT U72 ( .A1(Result_A[12]), .A2(net3558), .Y(n120) );
  NAND2X0_RVT U73 ( .A1(Result[12]), .A2(net3564), .Y(n121) );
  NAND2X0_RVT U74 ( .A1(Result_B[8]), .A2(net3550), .Y(n122) );
  NAND2X0_RVT U75 ( .A1(Result_A[8]), .A2(net3556), .Y(n123) );
  NAND2X0_RVT U76 ( .A1(Result[8]), .A2(net3562), .Y(n124) );
  NBUFFX2_RVT U77 ( .A(net3562), .Y(net3570) );
  NBUFFX2_RVT U78 ( .A(net3562), .Y(net3572) );
  NBUFFX2_RVT U79 ( .A(net3562), .Y(net3574) );
  NBUFFX2_RVT U80 ( .A(net3562), .Y(net3576) );
  NBUFFX2_RVT U81 ( .A(net3562), .Y(net3564) );
  NBUFFX2_RVT U82 ( .A(net3556), .Y(net3558) );
  NBUFFX2_RVT U83 ( .A(net3550), .Y(net3552) );
  NBUFFX2_RVT U84 ( .A(net3550), .Y(net3554) );
endmodule

