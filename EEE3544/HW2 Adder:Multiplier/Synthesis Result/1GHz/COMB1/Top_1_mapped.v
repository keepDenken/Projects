/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun May 12 21:44:47 2024
/////////////////////////////////////////////////////////////


module FA_1bit_0 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_61 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  OA22X2_RVT U1 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_62 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n3, n4, n5, n6;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(n6), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n4), .Y(C) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U5 ( .A1(n5), .A2(B), .Y(n4) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n4), .Y(n6) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_63 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(n4), .Y(n1) );
  INVX1_RVT U2 ( .A(B), .Y(n4) );
  INVX1_RVT U3 ( .A(n5), .Y(n3) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  INVX0_RVT U5 ( .A(A), .Y(n5) );
  OA22X1_RVT U6 ( .A1(n2), .A2(n1), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(n1), .Y(C) );
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
  FA_1bit_63 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_62 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_61 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_33 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX1_RVT U3 ( .A(n3), .Y(n2) );
  INVX1_RVT U4 ( .A(A), .Y(n3) );
  AO22X1_RVT U5 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_34 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X2_RVT U2 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n1) );
  INVX0_RVT U5 ( .A(A), .Y(n3) );
endmodule


module FA_1bit_35 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;

  INVX0_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(n5), .A2(B), .Y(n4) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(n4), .Y(C) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_36 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  AND2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n2) );
  INVX0_RVT U3 ( .A(A), .Y(n3) );
  OA22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
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
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(B), .Y(n1) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  INVX0_RVT U3 ( .A(A), .Y(n3) );
  OA22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_38 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  OA22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n1) );
  INVX0_RVT U5 ( .A(A), .Y(n3) );
endmodule


module FA_1bit_39 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n3, n4, n5, n6;
  tri   A;
  tri   B;

  IBUFFX4_RVT U1 ( .A(n6), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(Cout) );
  XNOR2X1_RVT U3 ( .A1(n5), .A2(B), .Y(n4) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  INVX0_RVT U6 ( .A(A), .Y(n5) );
  OA22X1_RVT U7 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n4), .Y(n6) );
endmodule


module FA_1bit_40 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(n4), .A2(n2), .Y(n1) );
  IBUFFX8_RVT U2 ( .A(B), .Y(n2) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n1), .Y(Cout) );
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


module FA_1bit_41 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(B), .Y(n2) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_42 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(B), .Y(n1) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_43 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n4), .A2(n3), .Y(n2) );
  AND2X1_RVT U2 ( .A1(n3), .A2(A), .Y(n1) );
  OA22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
  NBUFFX2_RVT U5 ( .A(B), .Y(n3) );
  INVX0_RVT U6 ( .A(A), .Y(n4) );
endmodule


module FA_1bit_44 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;

  XOR2X1_RVT U1 ( .A1(n2), .A2(n4), .Y(C) );
  INVX1_RVT U2 ( .A(A), .Y(n5) );
  IBUFFX2_RVT U3 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(n1), .Y(n2) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n5), .A2(B), .Y(n4) );
  OA22X1_RVT U7 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
endmodule


module RCA_4bit_11 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;

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
  wire   n1, n2, n3, n4, n5, n6;
  tri   A;
  tri   B;

  INVX4_RVT U1 ( .A(Cin), .Y(n2) );
  INVX1_RVT U2 ( .A(n2), .Y(n1) );
  AOI22X2_RVT U3 ( .A1(n2), .A2(n6), .A3(n6), .A4(n3), .Y(Cout) );
  IBUFFX16_RVT U4 ( .A(n4), .Y(n3) );
  XOR2X1_RVT U5 ( .A1(n1), .A2(n4), .Y(C) );
  XNOR2X1_RVT U6 ( .A1(n5), .A2(B), .Y(n4) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
  NAND2X0_RVT U8 ( .A1(B), .A2(A), .Y(n6) );
endmodule


module FA_1bit_46 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  OA22X1_RVT U1 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(n4), .Y(n1) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  INVX1_RVT U4 ( .A(B), .Y(n4) );
  INVX1_RVT U5 ( .A(n5), .Y(n3) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_47 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(n4), .Y(n1) );
  OA22X1_RVT U2 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  INVX1_RVT U4 ( .A(B), .Y(n4) );
  INVX1_RVT U5 ( .A(n5), .Y(n3) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_48 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(B), .Y(n2) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  OA22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX0_RVT U5 ( .A(A), .Y(n3) );
endmodule


module RCA_4bit_12 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;

  FA_1bit_48 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_47 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_46 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_45 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_49 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n7;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(n3), .Y(n7) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  INVX1_RVT U3 ( .A(B), .Y(n4) );
  XNOR2X1_RVT U4 ( .A1(n5), .A2(n4), .Y(n3) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n7), .Y(C) );
  INVX0_RVT U6 ( .A(A), .Y(n5) );
  OA22X1_RVT U7 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n7), .Y(Cout) );
endmodule


module FA_1bit_50 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n11;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(n9), .Y(n11) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  NAND2X0_RVT U3 ( .A1(Cin), .A2(n9), .Y(n4) );
  INVX1_RVT U4 ( .A(Cin), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(n3), .A2(n11), .Y(n5) );
  INVX1_RVT U6 ( .A(B), .Y(n7) );
  INVX1_RVT U7 ( .A(n8), .Y(n6) );
  NAND2X0_RVT U8 ( .A1(n4), .A2(n5), .Y(C) );
  XOR2X1_RVT U9 ( .A1(n6), .A2(n7), .Y(n9) );
  INVX0_RVT U10 ( .A(A), .Y(n8) );
  OA22X1_RVT U11 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n11), .Y(Cout) );
endmodule


module FA_1bit_51 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n3, n4, n5;
  tri   A;
  tri   B;

  IBUFFX16_RVT U1 ( .A(n1), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n4), .Y(C) );
  OAI22X1_RVT U3 ( .A1(n3), .A2(Cin), .A3(n3), .A4(n4), .Y(n1) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U5 ( .A1(n5), .A2(B), .Y(n4) );
  INVX0_RVT U6 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_52 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  AOI22X2_RVT U1 ( .A1(n1), .A2(n5), .A3(n5), .A4(n2), .Y(Cout) );
  IBUFFX32_RVT U2 ( .A(Cin), .Y(n1) );
  NAND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n5) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n2) );
  XNOR2X1_RVT U6 ( .A1(n4), .A2(B), .Y(n3) );
  INVX0_RVT U7 ( .A(A), .Y(n4) );
endmodule


module RCA_4bit_13 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2, n3, n4;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_52 HA00 ( .A(A[0]), .B(B[0]), .Cin(n2), .C(C[0]), .Cout(Cout00) );
  FA_1bit_51 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_50 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_49 FA11 ( .A(A[3]), .B(B[3]), .Cin(n4), .C(C[3]), .Cout(Cout) );
  IBUFFX2_RVT U1 ( .A(Cout10), .Y(n3) );
  IBUFFX32_RVT U2 ( .A(Cin), .Y(n1) );
  INVX32_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(n3), .Y(n4) );
endmodule


module FA_1bit_53 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n108;
  tri   A;

  INVX1_RVT U1 ( .A(n86), .Y(n87) );
  INVX1_RVT U2 ( .A(n88), .Y(n89) );
  INVX1_RVT U3 ( .A(n75), .Y(n76) );
  INVX1_RVT U4 ( .A(n77), .Y(n78) );
  INVX1_RVT U5 ( .A(n67), .Y(n68) );
  INVX1_RVT U6 ( .A(n69), .Y(n70) );
  INVX1_RVT U7 ( .A(n45), .Y(n46) );
  INVX1_RVT U8 ( .A(n47), .Y(n48) );
  INVX1_RVT U9 ( .A(n27), .Y(n28) );
  INVX1_RVT U10 ( .A(n29), .Y(n30) );
  INVX1_RVT U11 ( .A(n17), .Y(n18) );
  IBUFFX16_RVT U12 ( .A(n19), .Y(n20) );
  INVX1_RVT U13 ( .A(n6), .Y(n7) );
  INVX1_RVT U14 ( .A(n4), .Y(n5) );
  INVX1_RVT U15 ( .A(n63), .Y(n6) );
  INVX1_RVT U16 ( .A(n39), .Y(n4) );
  NOR2X4_RVT U17 ( .A1(Cin), .A2(n73), .Y(n2) );
  NOR2X4_RVT U18 ( .A1(n73), .A2(n98), .Y(n3) );
  NOR2X0_RVT U19 ( .A1(n2), .A2(n3), .Y(Cout) );
  INVX2_RVT U20 ( .A(n97), .Y(n98) );
  IBUFFX16_RVT U21 ( .A(n38), .Y(n39) );
  IBUFFX16_RVT U22 ( .A(n62), .Y(n63) );
  INVX2_RVT U23 ( .A(n108), .Y(n8) );
  IBUFFX4_RVT U24 ( .A(n8), .Y(n9) );
  INVX2_RVT U25 ( .A(n9), .Y(n10) );
  IBUFFX4_RVT U26 ( .A(n10), .Y(n11) );
  INVX2_RVT U27 ( .A(n11), .Y(n12) );
  IBUFFX4_RVT U28 ( .A(n12), .Y(n13) );
  INVX2_RVT U29 ( .A(n13), .Y(n14) );
  IBUFFX4_RVT U30 ( .A(n14), .Y(n15) );
  INVX2_RVT U31 ( .A(n15), .Y(n16) );
  IBUFFX4_RVT U32 ( .A(n16), .Y(n17) );
  IBUFFX4_RVT U33 ( .A(n18), .Y(n19) );
  IBUFFX4_RVT U34 ( .A(n20), .Y(n21) );
  INVX2_RVT U35 ( .A(n21), .Y(n22) );
  IBUFFX4_RVT U36 ( .A(n22), .Y(n23) );
  INVX2_RVT U37 ( .A(n23), .Y(n24) );
  IBUFFX4_RVT U38 ( .A(n24), .Y(n25) );
  INVX2_RVT U39 ( .A(n25), .Y(n26) );
  IBUFFX4_RVT U40 ( .A(n26), .Y(n27) );
  IBUFFX4_RVT U41 ( .A(n28), .Y(n29) );
  IBUFFX4_RVT U42 ( .A(n30), .Y(n31) );
  INVX2_RVT U43 ( .A(n31), .Y(n32) );
  IBUFFX4_RVT U44 ( .A(n32), .Y(n33) );
  INVX2_RVT U45 ( .A(n33), .Y(n34) );
  IBUFFX4_RVT U46 ( .A(n34), .Y(n35) );
  INVX2_RVT U47 ( .A(n35), .Y(n36) );
  IBUFFX4_RVT U48 ( .A(n36), .Y(n37) );
  INVX2_RVT U49 ( .A(n37), .Y(n38) );
  INVX2_RVT U50 ( .A(n5), .Y(n40) );
  IBUFFX4_RVT U51 ( .A(n40), .Y(n41) );
  INVX2_RVT U52 ( .A(n41), .Y(n42) );
  IBUFFX4_RVT U53 ( .A(n42), .Y(n43) );
  INVX2_RVT U54 ( .A(n43), .Y(n44) );
  IBUFFX4_RVT U55 ( .A(n44), .Y(n45) );
  IBUFFX4_RVT U56 ( .A(n46), .Y(n47) );
  IBUFFX4_RVT U57 ( .A(n48), .Y(n49) );
  INVX2_RVT U58 ( .A(n49), .Y(n50) );
  IBUFFX4_RVT U59 ( .A(n50), .Y(n51) );
  INVX2_RVT U60 ( .A(n51), .Y(n52) );
  IBUFFX4_RVT U61 ( .A(n52), .Y(n53) );
  INVX2_RVT U62 ( .A(n53), .Y(n54) );
  IBUFFX4_RVT U63 ( .A(n54), .Y(n55) );
  INVX2_RVT U64 ( .A(n55), .Y(n56) );
  IBUFFX4_RVT U65 ( .A(n56), .Y(n57) );
  INVX2_RVT U66 ( .A(n57), .Y(n58) );
  IBUFFX4_RVT U67 ( .A(n58), .Y(n59) );
  INVX2_RVT U68 ( .A(n59), .Y(n60) );
  IBUFFX4_RVT U69 ( .A(n60), .Y(n61) );
  INVX2_RVT U70 ( .A(n61), .Y(n62) );
  INVX2_RVT U71 ( .A(n7), .Y(n64) );
  IBUFFX4_RVT U72 ( .A(n64), .Y(n65) );
  INVX2_RVT U73 ( .A(n65), .Y(n66) );
  IBUFFX4_RVT U74 ( .A(n66), .Y(n67) );
  IBUFFX4_RVT U75 ( .A(n68), .Y(n69) );
  IBUFFX4_RVT U76 ( .A(n70), .Y(n71) );
  INVX1_RVT U77 ( .A(n84), .Y(n72) );
  IBUFFX4_RVT U78 ( .A(n72), .Y(n73) );
  NBUFFX8_RVT U79 ( .A(n96), .Y(n84) );
  INVX2_RVT U80 ( .A(n71), .Y(n74) );
  IBUFFX4_RVT U81 ( .A(n74), .Y(n75) );
  IBUFFX4_RVT U82 ( .A(n76), .Y(n77) );
  IBUFFX16_RVT U83 ( .A(n102), .Y(n95) );
  IBUFFX4_RVT U84 ( .A(n78), .Y(n79) );
  INVX2_RVT U85 ( .A(n79), .Y(n80) );
  IBUFFX4_RVT U86 ( .A(n80), .Y(n81) );
  INVX2_RVT U87 ( .A(n81), .Y(n82) );
  IBUFFX4_RVT U88 ( .A(n82), .Y(n83) );
  INVX2_RVT U89 ( .A(n83), .Y(n85) );
  IBUFFX4_RVT U90 ( .A(n85), .Y(n86) );
  IBUFFX4_RVT U91 ( .A(n87), .Y(n88) );
  IBUFFX4_RVT U92 ( .A(n89), .Y(n90) );
  INVX2_RVT U93 ( .A(n90), .Y(n91) );
  IBUFFX4_RVT U94 ( .A(n91), .Y(n92) );
  INVX2_RVT U95 ( .A(n92), .Y(n93) );
  IBUFFX4_RVT U96 ( .A(n93), .Y(n94) );
  INVX2_RVT U97 ( .A(n94), .Y(n97) );
  IBUFFX4_RVT U98 ( .A(n106), .Y(n108) );
  XOR2X2_RVT U99 ( .A1(n103), .A2(n104), .Y(n106) );
  IBUFFX16_RVT U100 ( .A(n95), .Y(n96) );
  NAND2X0_RVT U101 ( .A1(n100), .A2(n101), .Y(C) );
  INVX2_RVT U102 ( .A(Cin), .Y(n99) );
  NAND2X0_RVT U103 ( .A1(Cin), .A2(n106), .Y(n100) );
  NAND2X0_RVT U104 ( .A1(n99), .A2(n98), .Y(n101) );
  AND2X1_RVT U105 ( .A1(B), .A2(A), .Y(n102) );
  INVX1_RVT U106 ( .A(B), .Y(n104) );
  INVX1_RVT U107 ( .A(n105), .Y(n103) );
  INVX0_RVT U108 ( .A(A), .Y(n105) );
endmodule


module FA_1bit_54 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(n2), .A2(n4), .Y(C) );
  OA22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
  XNOR2X1_RVT U6 ( .A1(n5), .A2(B), .Y(n4) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_55 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_56 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  AND2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XNOR2X1_RVT U4 ( .A1(n3), .A2(B), .Y(n2) );
  INVX0_RVT U5 ( .A(A), .Y(n3) );
endmodule


module RCA_4bit_14 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;
  tri   [3:0] A;
  tri   [3:0] B;

  FA_1bit_56 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_55 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_54 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_53 FA11 ( .A(A[3]), .B(B[3]), .Cin(n2), .C(C[3]), .Cout(Cout) );
  IBUFFX4_RVT U1 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U2 ( .A(Cout10), .Y(n1) );
endmodule


module FA_1bit_57 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  IBUFFX16_RVT U2 ( .A(n1), .Y(Cout) );
  OAI22X1_RVT U3 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n2), .Y(n1) );
  XNOR2X1_RVT U4 ( .A1(n4), .A2(B), .Y(n2) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
  INVX0_RVT U6 ( .A(A), .Y(n4) );
endmodule


module FA_1bit_58 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  AND2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  OA22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX0_RVT U5 ( .A(A), .Y(n3) );
endmodule


module FA_1bit_59 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U4 ( .A1(n5), .A2(B), .Y(n4) );
  INVX0_RVT U5 ( .A(A), .Y(n5) );
  OA22X1_RVT U6 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
  XOR2X1_RVT U7 ( .A1(n2), .A2(n4), .Y(C) );
endmodule


module FA_1bit_60 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;
  tri   A;
  tri   B;

  NAND2X0_RVT U1 ( .A1(Cin), .A2(n2), .Y(n3) );
  NAND2X0_RVT U2 ( .A1(n1), .A2(n6), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(n3), .A2(n4), .Y(C) );
  IBUFFX16_RVT U4 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U5 ( .A(n6), .Y(n2) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n5), .A3(n5), .A4(n6), .Y(Cout) );
  AND2X1_RVT U7 ( .A1(B), .A2(A), .Y(n5) );
  XNOR2X1_RVT U8 ( .A1(n7), .A2(B), .Y(n6) );
  INVX0_RVT U9 ( .A(A), .Y(n7) );
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


module RCA_32bit_0 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110, n1;
  tri   [31:0] A;
  tri   [31:0] B;

  RCA_4bit_0 RCA000 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .C(S[3:0]), .Cout(
        Cout000) );
  RCA_4bit_15 RCA001 ( .A(A[7:4]), .B(B[7:4]), .Cin(Cout000), .C(S[7:4]), 
        .Cout(Cout001) );
  RCA_4bit_14 RCA010 ( .A(A[11:8]), .B(B[11:8]), .Cin(Cout001), .C(S[11:8]), 
        .Cout(Cout010) );
  RCA_4bit_13 RCA011 ( .A(A[15:12]), .B(B[15:12]), .Cin(Cout010), .C(S[15:12]), 
        .Cout(Cout011) );
  RCA_4bit_12 RCA100 ( .A(A[19:16]), .B(B[19:16]), .Cin(Cout011), .C(S[19:16]), 
        .Cout(Cout100) );
  RCA_4bit_11 RCA101 ( .A(A[23:20]), .B(B[23:20]), .Cin(Cout100), .C(S[23:20]), 
        .Cout(Cout101) );
  RCA_4bit_10 RCA110 ( .A(A[27:24]), .B(B[27:24]), .Cin(Cout101), .C(S[27:24]), 
        .Cout(Cout110) );
  RCA_4bit_9 RCA111 ( .A(A[31:28]), .B({B[31:30], n1, B[28]}), .Cin(Cout110), 
        .C(S[31:28]), .Cout(Cout) );
  NBUFFX2_RVT U1 ( .A(B[29]), .Y(n1) );
endmodule


module FA_1bit_1 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;
  tri   A;

  XOR2X1_RVT U1 ( .A1(n2), .A2(n3), .Y(C) );
  INVX1_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U4 ( .A1(n4), .A2(B), .Y(n3) );
  INVX1_RVT U5 ( .A(A), .Y(n4) );
  AO22X1_RVT U6 ( .A1(A), .A2(B), .A3(n2), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_2 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(n4), .Y(C) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U5 ( .A1(n5), .A2(B), .Y(n4) );
  INVX0_RVT U6 ( .A(A), .Y(n5) );
  OA22X1_RVT U7 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_3 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net7479, net8542, net10228, n1, n2;
  tri   A;
  tri   B;
  assign C = net10228;

  XNOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(net10228) );
  IBUFFX8_RVT U2 ( .A(net8542), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(net7479), .A2(B), .Y(net8542) );
  OA22X2_RVT U4 ( .A1(Cin), .A2(n2), .A3(n2), .A4(net8542), .Y(Cout) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n2) );
  INVX0_RVT U6 ( .A(A), .Y(net7479) );
endmodule


module FA_1bit_4 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net4876, net7484, net8549, n1, n2, n3, n4, n5, n6, n7;
  tri   A;
  tri   B;
  assign Cout = net4876;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(n5), .Y(n3) );
  INVX1_RVT U4 ( .A(n3), .Y(n4) );
  AOI22X2_RVT U5 ( .A1(n6), .A2(n4), .A3(n4), .A4(n7), .Y(net4876) );
  IBUFFX4_RVT U6 ( .A(Cin), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(B), .A2(A), .Y(n5) );
  IBUFFX16_RVT U8 ( .A(net8549), .Y(n7) );
  XNOR2X1_RVT U9 ( .A1(net7484), .A2(B), .Y(net8549) );
  XOR2X1_RVT U10 ( .A1(n2), .A2(net8549), .Y(C) );
  INVX0_RVT U11 ( .A(A), .Y(net7484) );
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
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  OA22X2_RVT U1 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
  INVX0_RVT U2 ( .A(B), .Y(n4) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U5 ( .A1(n3), .A2(n4), .Y(n1) );
  INVX1_RVT U6 ( .A(n5), .Y(n3) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_6 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(n4), .Y(n1) );
  INVX1_RVT U2 ( .A(Cin), .Y(n5) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  INVX4_RVT U4 ( .A(B), .Y(n4) );
  INVX1_RVT U5 ( .A(n7), .Y(n3) );
  AOI22X1_RVT U6 ( .A1(n5), .A2(n6), .A3(n6), .A4(n2), .Y(Cout) );
  NAND2X0_RVT U7 ( .A1(B), .A2(A), .Y(n6) );
  INVX0_RVT U8 ( .A(A), .Y(n7) );
  XOR2X1_RVT U9 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_7 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7, n9;
  tri   A;
  tri   B;

  XOR2X2_RVT U1 ( .A1(n6), .A2(B), .Y(n7) );
  INVX1_RVT U2 ( .A(Cin), .Y(n5) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  INVX1_RVT U4 ( .A(n7), .Y(n9) );
  NAND2X0_RVT U5 ( .A1(Cin), .A2(n7), .Y(n3) );
  NAND2X0_RVT U6 ( .A1(n5), .A2(n9), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n4), .Y(C) );
  OA22X1_RVT U8 ( .A1(n2), .A2(Cin), .A3(n2), .A4(n9), .Y(Cout) );
  INVX1_RVT U9 ( .A(A), .Y(n6) );
endmodule


module FA_1bit_8 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  NOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(n3) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U4 ( .A1(n5), .A2(B), .Y(n2) );
  NOR2X1_RVT U5 ( .A1(n3), .A2(n4), .Y(Cout) );
  NOR2X2_RVT U6 ( .A1(n1), .A2(n2), .Y(n4) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
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


module FA_1bit_9 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7, n9;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(A), .Y(n6) );
  INVX1_RVT U2 ( .A(Cin), .Y(n5) );
  INVX1_RVT U3 ( .A(n4), .Y(n9) );
  XOR2X1_RVT U4 ( .A1(n6), .A2(B), .Y(n4) );
  NAND2X0_RVT U5 ( .A1(n5), .A2(n9), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(Cin), .A2(n4), .Y(n3) );
  NAND2X0_RVT U7 ( .A1(n2), .A2(n3), .Y(C) );
  AOI22X1_RVT U8 ( .A1(n5), .A2(n7), .A3(n7), .A4(n4), .Y(Cout) );
  NAND2X0_RVT U9 ( .A1(B), .A2(A), .Y(n7) );
endmodule


module FA_1bit_10 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3, n4, n5, n6, n7, n8, n9, n10, n12;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n3) );
  NAND2X0_RVT U2 ( .A1(n4), .A2(n5), .Y(C) );
  XOR2X1_RVT U3 ( .A1(n6), .A2(n7), .Y(n10) );
  NAND2X0_RVT U4 ( .A1(Cin), .A2(n10), .Y(n4) );
  NAND2X0_RVT U5 ( .A1(n3), .A2(n12), .Y(n5) );
  INVX1_RVT U6 ( .A(n10), .Y(n12) );
  INVX4_RVT U7 ( .A(B), .Y(n7) );
  INVX1_RVT U8 ( .A(n9), .Y(n6) );
  AND2X1_RVT U9 ( .A1(B), .A2(A), .Y(n8) );
  INVX0_RVT U10 ( .A(A), .Y(n9) );
  OA22X1_RVT U11 ( .A1(Cin), .A2(n8), .A3(n8), .A4(n12), .Y(Cout) );
endmodule


module FA_1bit_11 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7, n8, n9, n11;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n4) );
  NOR2X1_RVT U2 ( .A1(Cin), .A2(n7), .Y(n2) );
  NOR2X0_RVT U3 ( .A1(n7), .A2(n11), .Y(n3) );
  NOR2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(Cout) );
  INVX1_RVT U5 ( .A(n9), .Y(n11) );
  NAND2X0_RVT U6 ( .A1(Cin), .A2(n9), .Y(n5) );
  NAND2X0_RVT U7 ( .A1(n4), .A2(n11), .Y(n6) );
  NAND2X0_RVT U8 ( .A1(n5), .A2(n6), .Y(C) );
  XOR2X1_RVT U9 ( .A1(n8), .A2(B), .Y(n9) );
  INVX1_RVT U10 ( .A(A), .Y(n8) );
  AND2X1_RVT U11 ( .A1(B), .A2(A), .Y(n7) );
endmodule


module FA_1bit_12 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net8555, net8651, net9274, n1, n2, n3, n4, n5;
  tri   A;
  assign C = net8651;

  OR2X1_RVT U1 ( .A1(net8555), .A2(n3), .Y(net9274) );
  INVX1_RVT U2 ( .A(n5), .Y(n4) );
  XNOR2X1_RVT U3 ( .A1(n1), .A2(B), .Y(n3) );
  INVX1_RVT U4 ( .A(A), .Y(n1) );
  XNOR2X1_RVT U5 ( .A1(n2), .A2(n3), .Y(net8651) );
  INVX1_RVT U6 ( .A(Cin), .Y(n2) );
  AND2X1_RVT U7 ( .A1(n4), .A2(net9274), .Y(Cout) );
  NOR2X1_RVT U8 ( .A1(Cin), .A2(net8555), .Y(n5) );
  AND2X1_RVT U9 ( .A1(B), .A2(A), .Y(net8555) );
endmodule


module RCA_4bit_3 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;
  tri   [3:0] A;

  FA_1bit_12 HA00 ( .A(A[0]), .B(B[0]), .Cin(n2), .C(C[0]), .Cout(Cout00) );
  FA_1bit_11 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_10 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_9 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  INVX2_RVT U1 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U2 ( .A(Cin), .Y(n1) );
endmodule


module FA_1bit_13 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n3) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(n4), .A2(B), .Y(n2) );
  XNOR2X1_RVT U4 ( .A1(n3), .A2(n2), .Y(C) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_14 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  AOI22X1_RVT U1 ( .A1(n1), .A2(n5), .A3(n5), .A4(n2), .Y(Cout) );
  IBUFFX4_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(n3), .Y(n2) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  XNOR2X1_RVT U5 ( .A1(n4), .A2(B), .Y(n3) );
  INVX0_RVT U6 ( .A(A), .Y(n4) );
  NAND2X0_RVT U7 ( .A1(B), .A2(A), .Y(n5) );
endmodule


module FA_1bit_15 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  OA22X1_RVT U1 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
  INVX1_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(n4), .Y(C) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n5), .A2(B), .Y(n4) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_16 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;
  tri   A;

  INVX1_RVT U1 ( .A(n5), .Y(n4) );
  AOI22X1_RVT U2 ( .A1(n2), .A2(n7), .A3(n7), .A4(n4), .Y(Cout) );
  XOR2X2_RVT U3 ( .A1(n1), .A2(n5), .Y(C) );
  IBUFFX4_RVT U4 ( .A(n2), .Y(n1) );
  NBUFFX2_RVT U5 ( .A(n3), .Y(n2) );
  IBUFFX4_RVT U6 ( .A(Cin), .Y(n3) );
  XNOR2X1_RVT U7 ( .A1(n6), .A2(B), .Y(n5) );
  INVX0_RVT U8 ( .A(A), .Y(n6) );
  NAND2X0_RVT U9 ( .A1(B), .A2(A), .Y(n7) );
endmodule


module RCA_4bit_4 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;
  tri   [3:0] A;

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
  wire   n2, n3, n4, n5, n6, n8;
  tri   A;
  tri   B;

  AND2X1_RVT U1 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(n5), .A2(B), .Y(n6) );
  IBUFFX16_RVT U3 ( .A(Cin), .Y(n3) );
  IBUFFX2_RVT U4 ( .A(n3), .Y(n4) );
  XNOR2X1_RVT U5 ( .A1(n4), .A2(n6), .Y(C) );
  INVX0_RVT U6 ( .A(n6), .Y(n8) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
  OA22X1_RVT U8 ( .A1(n4), .A2(n2), .A3(n8), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_18 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n6;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(Cin), .A2(n4), .Y(C) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  INVX0_RVT U3 ( .A(A), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(n3), .A2(B), .Y(n4) );
  IBUFFX16_RVT U5 ( .A(n4), .Y(n6) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n6), .Y(Cout) );
endmodule


module FA_1bit_19 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_20 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n3), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
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
  wire   n1, n2, n3;
  tri   A;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n1) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_22 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;
  tri   A;
  tri   B;

  IBUFFX16_RVT U1 ( .A(n1), .Y(n2) );
  INVX4_RVT U2 ( .A(Cin), .Y(n1) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U4 ( .A1(n5), .A2(B), .Y(n4) );
  XOR2X1_RVT U5 ( .A1(n2), .A2(n4), .Y(C) );
  INVX0_RVT U6 ( .A(A), .Y(n5) );
  OA22X1_RVT U7 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_23 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  OA22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n2) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX0_RVT U5 ( .A(A), .Y(n3) );
endmodule


module FA_1bit_24 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n2) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
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


module FA_1bit_25 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(n4), .A2(B), .Y(n3) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n2), .A3(n1), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_26 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_27 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  tri   A;
  tri   B;

  XOR2X2_RVT U1 ( .A1(n8), .A2(B), .Y(n9) );
  INVX1_RVT U2 ( .A(Cin), .Y(n2) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(Cin), .A2(n9), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(n7), .Y(n4) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n4), .Y(C) );
  OR2X1_RVT U7 ( .A1(n1), .A2(Cin), .Y(n5) );
  OR2X1_RVT U8 ( .A1(n1), .A2(n7), .Y(n6) );
  AND2X1_RVT U9 ( .A1(n5), .A2(n6), .Y(Cout) );
  INVX1_RVT U10 ( .A(n9), .Y(n7) );
  INVX0_RVT U11 ( .A(A), .Y(n8) );
endmodule


module FA_1bit_28 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n5, n6, n7, n8;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(Cin), .Y(n5) );
  AOI22X1_RVT U2 ( .A1(n5), .A2(n2), .A3(n2), .A4(n6), .Y(n1) );
  INVX1_RVT U3 ( .A(n7), .Y(Cout) );
  NAND2X0_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X1_RVT U5 ( .A1(n5), .A2(n6), .Y(C) );
  INVX2_RVT U6 ( .A(n3), .Y(n6) );
  IBUFFX16_RVT U7 ( .A(n1), .Y(n7) );
  XNOR2X1_RVT U8 ( .A1(n8), .A2(B), .Y(n3) );
  INVX0_RVT U9 ( .A(A), .Y(n8) );
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
  wire   n1, n2, n3, n4, n5, n6, n7, n8;
  tri   A;
  tri   B;

  OA22X1_RVT U1 ( .A1(Cin), .A2(n5), .A3(n5), .A4(n3), .Y(Cout) );
  INVX1_RVT U2 ( .A(n4), .Y(n5) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX1_RVT U5 ( .A(n2), .Y(n3) );
  IBUFFX4_RVT U6 ( .A(n8), .Y(n2) );
  INVX1_RVT U7 ( .A(n1), .Y(n4) );
  INVX1_RVT U8 ( .A(A), .Y(n6) );
  INVX1_RVT U9 ( .A(n7), .Y(n8) );
  XOR2X1_RVT U10 ( .A1(n6), .A2(B), .Y(n7) );
endmodule


module FA_1bit_30 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n5, n6;
  tri   A;
  tri   B;

  INVX1_RVT U1 ( .A(n3), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U3 ( .A1(n5), .A2(B), .Y(n1) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  IBUFFX16_RVT U5 ( .A(n6), .Y(n3) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(n6) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
endmodule


module FA_1bit_31 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;
  tri   A;
  tri   B;

  AND2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n2) );
  INVX0_RVT U3 ( .A(A), .Y(n3) );
  OA22X1_RVT U4 ( .A1(n1), .A2(n2), .A3(Cin), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_32 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;
  tri   A;
  tri   B;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
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


module RCA_32bit_1 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110;
  tri   [31:0] A;
  tri   [31:0] B;

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


module Top_1 ( clk, nrst, A, B, Sel, Result );
  input [31:0] A;
  input [31:0] B;
  output [39:0] Result;
  input clk, nrst, Sel;
  wire   N99, N102, N105, N108, N111, N114, N117, N120, N123, N126, N129, N132,
         N135, N138, N141, N144, N147, N150, N153, N156, N159, N162, N165,
         N168, N171, N174, N177, N180, N183, N186, N189, N192, N195, N198,
         N201, N204, N207, N210, N213, N216, N219, N222, N225, N228, N231,
         N234, N237, N240, N243, N246, N249, N252, N255, N258, N261, N264,
         N267, N270, N273, N276, N279, N282, N285, N288, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n75, n76, n77, n78, n82,
         n83, n84, n87, n90, n93, n94, n95, n96, n97, net4534, net7739,
         net7741, net7785, net7783, net7781, net7779, net7777, net7775,
         net7773, net7767, net7765, net7763, net7761, net7759, net7757,
         net7755, net7753, net7751, net7749, net7747, net7745, net7743,
         net7801, net7799, net7797, net7795, net7793, net7791, net7789,
         net7807, net7805, net7815, net7813, net7811, net8870, net9038,
         net9065, net9061, net10325, net10323, net10321, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n220, n221, n222, n223, n224, n225,
         n226;
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

  RCA_32bit_0 module_A ( .A(DFF_A), .B({n210, DFF_B[30:21], n159, DFF_B[19:17], 
        n153, DFF_B[15:12], n106, DFF_B[10:0]}), .Cin(1'b0), .S(Result_A) );
  RCA_32bit_1 module_B ( .A(DFF_A), .B({n210, DFF_B[30:21], n159, DFF_B[19:17], 
        n153, DFF_B[15:12], n106, DFF_B[10:0]}), .Cin(1'b0), .S(Result_B) );
  DFFX1_RVT \DFF_A_reg[31]  ( .D(A[31]), .CLK(clk), .Q(N99) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[31]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n4) );
  DFFX1_RVT \DFF_A_reg[30]  ( .D(A[30]), .CLK(clk), .Q(N102) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[30]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n5) );
  DFFX1_RVT \DFF_A_reg[29]  ( .D(A[29]), .CLK(clk), .Q(N105) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[29]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n6) );
  DFFX1_RVT \DFF_A_reg[28]  ( .D(A[28]), .CLK(clk), .Q(N108) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[28]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n7) );
  DFFX1_RVT \DFF_A_reg[27]  ( .D(A[27]), .CLK(clk), .Q(N111) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[27]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n8) );
  DFFX1_RVT \DFF_A_reg[26]  ( .D(A[26]), .CLK(clk), .Q(N114) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[26]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n9) );
  DFFX1_RVT \DFF_A_reg[25]  ( .D(A[25]), .CLK(clk), .Q(N117) );
  DFFX1_RVT \DFF_A_reg[24]  ( .D(A[24]), .CLK(clk), .Q(N120) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[24]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n11) );
  DFFX1_RVT \DFF_A_reg[23]  ( .D(A[23]), .CLK(clk), .Q(N123) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[23]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n12) );
  DFFX1_RVT \DFF_A_reg[22]  ( .D(A[22]), .CLK(clk), .Q(N126) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[22]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n13) );
  DFFX1_RVT \DFF_A_reg[21]  ( .D(A[21]), .CLK(clk), .Q(N129) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[21]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n14) );
  DFFX1_RVT \DFF_A_reg[20]  ( .D(A[20]), .CLK(clk), .Q(N132) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[20]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n15) );
  DFFX1_RVT \DFF_A_reg[19]  ( .D(A[19]), .CLK(clk), .Q(N135) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[19]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n16) );
  DFFX1_RVT \DFF_A_reg[18]  ( .D(A[18]), .CLK(clk), .Q(N138) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[18]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n17) );
  DFFX1_RVT \DFF_A_reg[17]  ( .D(A[17]), .CLK(clk), .Q(N141) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[17]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n18) );
  DFFX1_RVT \DFF_A_reg[16]  ( .D(A[16]), .CLK(clk), .Q(N144) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[16]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n19) );
  DFFX1_RVT \DFF_A_reg[15]  ( .D(A[15]), .CLK(clk), .Q(N147) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[15]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n20) );
  DFFX1_RVT \DFF_A_reg[14]  ( .D(A[14]), .CLK(clk), .Q(N150) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[14]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n21) );
  DFFX1_RVT \DFF_A_reg[13]  ( .D(A[13]), .CLK(clk), .Q(N153) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[13]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n22) );
  DFFX1_RVT \DFF_A_reg[12]  ( .D(A[12]), .CLK(clk), .Q(N156) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[12]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n23) );
  DFFX1_RVT \DFF_A_reg[11]  ( .D(A[11]), .CLK(clk), .Q(N159) );
  DFFX1_RVT \DFF_A_reg[10]  ( .D(A[10]), .CLK(clk), .Q(N162) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[10]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n25) );
  DFFX1_RVT \DFF_A_reg[9]  ( .D(A[9]), .CLK(clk), .Q(N165) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[9]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n26) );
  DFFX1_RVT \DFF_A_reg[8]  ( .D(A[8]), .CLK(clk), .Q(N168) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[8]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n27) );
  DFFX1_RVT \DFF_A_reg[7]  ( .D(A[7]), .CLK(clk), .Q(N171) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[7]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n28) );
  DFFX1_RVT \DFF_A_reg[6]  ( .D(A[6]), .CLK(clk), .Q(N174) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[6]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n29) );
  DFFX1_RVT \DFF_A_reg[5]  ( .D(A[5]), .CLK(clk), .Q(N177) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[5]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n30) );
  DFFX1_RVT \DFF_A_reg[4]  ( .D(A[4]), .CLK(clk), .Q(N180) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[4]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n31) );
  DFFX1_RVT \DFF_A_reg[3]  ( .D(A[3]), .CLK(clk), .Q(N183) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[3]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n32) );
  DFFX1_RVT \DFF_A_reg[2]  ( .D(A[2]), .CLK(clk), .Q(N186) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[2]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n33) );
  DFFX1_RVT \DFF_A_reg[1]  ( .D(A[1]), .CLK(clk), .Q(N189) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[1]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n34) );
  DFFX1_RVT \DFF_A_reg[0]  ( .D(A[0]), .CLK(clk), .Q(N192) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[0]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n35) );
  DFFX1_RVT \DFF_B_reg[31]  ( .D(B[31]), .CLK(clk), .Q(N195) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[31]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n36) );
  DFFX1_RVT \DFF_B_reg[30]  ( .D(B[30]), .CLK(clk), .Q(N198) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[30]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n37) );
  DFFX1_RVT \DFF_B_reg[29]  ( .D(B[29]), .CLK(clk), .Q(N201) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[29]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n38) );
  DFFX1_RVT \DFF_B_reg[28]  ( .D(B[28]), .CLK(clk), .Q(N204) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[28]  ( .D(1'b0), .CLK(clk), .SETB(net7747), 
        .QN(n39) );
  DFFX1_RVT \DFF_B_reg[27]  ( .D(B[27]), .CLK(clk), .Q(N207) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[27]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n40) );
  DFFX1_RVT \DFF_B_reg[26]  ( .D(B[26]), .CLK(clk), .Q(N210) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[26]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n41) );
  DFFX1_RVT \DFF_B_reg[25]  ( .D(B[25]), .CLK(clk), .Q(N213) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[25]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n42) );
  DFFX1_RVT \DFF_B_reg[24]  ( .D(B[24]), .CLK(clk), .Q(N216) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[24]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n43) );
  DFFX1_RVT \DFF_B_reg[23]  ( .D(B[23]), .CLK(clk), .Q(N219) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[23]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n44) );
  DFFX1_RVT \DFF_B_reg[22]  ( .D(B[22]), .CLK(clk), .Q(N222) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[22]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n45) );
  DFFX1_RVT \DFF_B_reg[21]  ( .D(B[21]), .CLK(clk), .Q(N225) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[21]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n46) );
  DFFX1_RVT \DFF_B_reg[20]  ( .D(B[20]), .CLK(clk), .Q(N228) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[20]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n47) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[19]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n48) );
  DFFX1_RVT \DFF_B_reg[18]  ( .D(B[18]), .CLK(clk), .Q(N234) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[18]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n49) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[17]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n50) );
  DFFX1_RVT \DFF_B_reg[16]  ( .D(B[16]), .CLK(clk), .Q(N240) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[16]  ( .D(1'b0), .CLK(clk), .SETB(net7749), 
        .QN(n51) );
  DFFX1_RVT \DFF_B_reg[15]  ( .D(B[15]), .CLK(clk), .Q(N243) );
  DFFX1_RVT \DFF_B_reg[14]  ( .D(B[14]), .CLK(clk), .Q(N246) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[14]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n53) );
  DFFX1_RVT \DFF_B_reg[13]  ( .D(B[13]), .CLK(clk), .Q(N249) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[13]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n54) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[12]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n55) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[11]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n56) );
  DFFX1_RVT \DFF_B_reg[10]  ( .D(B[10]), .CLK(clk), .Q(N258) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[10]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n57) );
  DFFX1_RVT \DFF_B_reg[9]  ( .D(B[9]), .CLK(clk), .Q(N261) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[9]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n58) );
  DFFX1_RVT \DFF_B_reg[8]  ( .D(B[8]), .CLK(clk), .Q(N264) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[8]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n59) );
  DFFX1_RVT \DFF_B_reg[7]  ( .D(B[7]), .CLK(clk), .Q(N267) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[7]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n60) );
  DFFX1_RVT \DFF_B_reg[6]  ( .D(B[6]), .CLK(clk), .Q(N270) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[6]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n61) );
  DFFX1_RVT \DFF_B_reg[5]  ( .D(B[5]), .CLK(clk), .Q(N273) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[5]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n62) );
  DFFX1_RVT \DFF_B_reg[4]  ( .D(B[4]), .CLK(clk), .Q(N276) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[4]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n63) );
  DFFX1_RVT \DFF_B_reg[3]  ( .D(B[3]), .CLK(clk), .Q(N279) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[3]  ( .D(1'b0), .CLK(clk), .SETB(net7753), 
        .QN(n64) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[2]  ( .D(1'b0), .CLK(clk), .SETB(net7753), 
        .QN(n65) );
  DFFX1_RVT \DFF_B_reg[1]  ( .D(B[1]), .CLK(clk), .Q(N285) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[1]  ( .D(1'b0), .CLK(clk), .SETB(net7753), 
        .QN(n66) );
  DFFX1_RVT \DFF_B_reg[0]  ( .D(B[0]), .CLK(clk), .Q(N288) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[0]  ( .D(1'b0), .CLK(clk), .SETB(net7753), 
        .QN(n67) );
  DFFX1_RVT \DFF_Result_reg[31]  ( .D(n200), .CLK(clk), .Q(Result[31]), .QN(
        n104) );
  DFFX1_RVT \DFF_Result_reg[30]  ( .D(n207), .CLK(clk), .Q(Result[30]) );
  DFFX1_RVT \DFF_Result_reg[29]  ( .D(n97), .CLK(clk), .Q(Result[29]) );
  DFFX1_RVT \DFF_Result_reg[28]  ( .D(n96), .CLK(clk), .Q(Result[28]) );
  DFFX1_RVT \DFF_Result_reg[27]  ( .D(n108), .CLK(clk), .Q(Result[27]) );
  DFFX1_RVT \DFF_Result_reg[26]  ( .D(n94), .CLK(clk), .Q(Result[26]) );
  DFFX1_RVT \DFF_Result_reg[25]  ( .D(n212), .CLK(clk), .Q(Result[25]) );
  DFFX1_RVT \DFF_Result_reg[24]  ( .D(n187), .CLK(clk), .Q(Result[24]) );
  DFFX1_RVT \DFF_Result_reg[23]  ( .D(n120), .CLK(clk), .Q(Result[23]), .QN(
        n135) );
  DFFX1_RVT \DFF_Result_reg[17]  ( .D(n143), .CLK(clk), .Q(Result[17]) );
  DFFX1_RVT \DFF_Result_reg[14]  ( .D(n149), .CLK(clk), .Q(Result[14]) );
  DFFX1_RVT \DFF_Result_reg[13]  ( .D(n127), .CLK(clk), .Q(Result[13]), .QN(
        n219) );
  DFFX1_RVT \DFF_Result_reg[12]  ( .D(n125), .CLK(clk), .Q(Result[12]), .QN(
        n216) );
  DFFX1_RVT \DFF_Result_reg[11]  ( .D(n126), .CLK(clk), .Q(Result[11]) );
  DFFX1_RVT \DFF_Result_reg[10]  ( .D(n178), .CLK(clk), .Q(Result[10]) );
  DFFX1_RVT \DFF_Result_reg[9]  ( .D(n180), .CLK(clk), .Q(Result[9]) );
  DFFX1_RVT \DFF_Result_reg[8]  ( .D(n76), .CLK(clk), .Q(Result[8]) );
  DFFX1_RVT \DFF_Result_reg[7]  ( .D(n75), .CLK(clk), .Q(Result[7]) );
  DFFX1_RVT \DFF_Result_reg[2]  ( .D(n140), .CLK(clk), .Q(Result[2]) );
  DFFX1_RVT \DFF_Result_reg[1]  ( .D(n69), .CLK(clk), .Q(Result[1]) );
  DFFX1_RVT \DFF_Result_reg[0]  ( .D(n68), .CLK(clk), .Q(Result[0]) );
  AO222X1_RVT U3 ( .A1(Result_B[0]), .A2(net4534), .A3(Result_A[0]), .A4(
        net7811), .A5(Result[0]), .A6(net7783), .Y(n68) );
  AO222X1_RVT U4 ( .A1(Result_B[1]), .A2(net7807), .A3(Result_A[1]), .A4(
        net7811), .A5(Result[1]), .A6(net7783), .Y(n69) );
  AO222X1_RVT U5 ( .A1(net7807), .A2(Result_B[2]), .A3(Result_A[2]), .A4(
        net7811), .A5(Result[2]), .A6(net7783), .Y(n70) );
  AO222X1_RVT U10 ( .A1(Result_B[7]), .A2(net7805), .A3(Result_A[7]), .A4(
        net7811), .A5(Result[7]), .A6(net7779), .Y(n75) );
  AO222X1_RVT U12 ( .A1(Result_B[9]), .A2(net7805), .A3(Result_A[9]), .A4(
        net7811), .A5(Result[9]), .A6(net7777), .Y(n77) );
  AO222X1_RVT U13 ( .A1(Result_B[10]), .A2(net7805), .A3(Result_A[10]), .A4(
        net7811), .A5(Result[10]), .A6(net7777), .Y(n78) );
  AO222X1_RVT U22 ( .A1(Result_B[19]), .A2(net7805), .A3(Result_A[19]), .A4(
        net7813), .A5(Result[19]), .A6(net7765), .Y(n87) );
  TNBUFFX1_RVT \DFF_B_tri[1]  ( .A(N285), .EN(n66), .Y(DFF_B[1]) );
  TNBUFFX1_RVT \DFF_B_tri[2]  ( .A(N282), .EN(n65), .Y(DFF_B[2]) );
  TNBUFFX1_RVT \DFF_B_tri[24]  ( .A(N216), .EN(n43), .Y(DFF_B[24]) );
  TNBUFFX1_RVT \DFF_B_tri[22]  ( .A(N222), .EN(n45), .Y(DFF_B[22]) );
  DFFX1_RVT \DFF_B_reg[17]  ( .D(B[17]), .CLK(clk), .Q(N237) );
  TNBUFFX1_RVT \DFF_B_tri[17]  ( .A(N237), .EN(n50), .Y(DFF_B[17]) );
  TNBUFFX1_RVT \DFF_B_tri[18]  ( .A(N234), .EN(n49), .Y(DFF_B[18]) );
  TNBUFFX1_RVT \DFF_B_tri[14]  ( .A(N246), .EN(n53), .Y(DFF_B[14]) );
  TNBUFFX1_RVT \DFF_B_tri[21]  ( .A(N225), .EN(n46), .Y(DFF_B[21]) );
  TNBUFFX1_RVT \DFF_B_tri[26]  ( .A(N210), .EN(n41), .Y(DFF_B[26]) );
  TNBUFFX1_RVT \DFF_B_tri[29]  ( .A(N201), .EN(n38), .Y(DFF_B[29]) );
  TNBUFFX1_RVT \DFF_B_tri[0]  ( .A(N288), .EN(n67), .Y(DFF_B[0]) );
  DFFX1_RVT \DFF_B_reg[11]  ( .D(B[11]), .CLK(clk), .Q(N255) );
  TNBUFFX1_RVT \DFF_B_tri[11]  ( .A(N255), .EN(n56), .Y(DFF_B[11]) );
  DFFX1_RVT \DFF_Result_reg[19]  ( .D(n87), .CLK(clk), .Q(Result[19]) );
  DFFX1_RVT \DFF_Result_reg[15]  ( .D(n83), .CLK(clk), .Q(Result[15]), .QN(
        n134) );
  TNBUFFX1_RVT \DFF_B_tri[13]  ( .A(N249), .EN(n54), .Y(DFF_B[13]) );
  TNBUFFX1_RVT \DFF_A_tri[19]  ( .A(N135), .EN(n16), .Y(DFF_A[19]) );
  TNBUFFX1_RVT \DFF_A_tri[13]  ( .A(N153), .EN(n22), .Y(DFF_A[13]) );
  TNBUFFX1_RVT \DFF_A_tri[29]  ( .A(N105), .EN(n6), .Y(DFF_A[29]) );
  TNBUFFX1_RVT \DFF_B_tri[19]  ( .A(N231), .EN(n48), .Y(DFF_B[19]) );
  TNBUFFX1_RVT \DFF_A_tri[28]  ( .A(N108), .EN(n7), .Y(DFF_A[28]) );
  TNBUFFX1_RVT \DFF_B_tri[4]  ( .A(N276), .EN(n63), .Y(DFF_B[4]) );
  TNBUFFX1_RVT \DFF_A_tri[12]  ( .A(N156), .EN(n23), .Y(DFF_A[12]) );
  TNBUFFX1_RVT \DFF_A_tri[4]  ( .A(N180), .EN(n31), .Y(DFF_A[4]) );
  TNBUFFX1_RVT \DFF_A_tri[14]  ( .A(N150), .EN(n21), .Y(DFF_A[14]) );
  TNBUFFX1_RVT \DFF_A_tri[2]  ( .A(N186), .EN(n33), .Y(DFF_A[2]) );
  TNBUFFX1_RVT \DFF_A_tri[27]  ( .A(N111), .EN(n8), .Y(DFF_A[27]) );
  TNBUFFX1_RVT \DFF_A_tri[3]  ( .A(N183), .EN(n32), .Y(DFF_A[3]) );
  TNBUFFX1_RVT \DFF_A_tri[18]  ( .A(N138), .EN(n17), .Y(DFF_A[18]) );
  TNBUFFX1_RVT \DFF_A_tri[24]  ( .A(N120), .EN(n11), .Y(DFF_A[24]) );
  TNBUFFX1_RVT \DFF_A_tri[21]  ( .A(N129), .EN(n14), .Y(DFF_A[21]) );
  TNBUFFX1_RVT \DFF_A_tri[30]  ( .A(N102), .EN(n5), .Y(DFF_A[30]) );
  TNBUFFX1_RVT \DFF_A_tri[5]  ( .A(N177), .EN(n30), .Y(DFF_A[5]) );
  TNBUFFX1_RVT \DFF_B_tri[30]  ( .A(N198), .EN(n37), .Y(DFF_B[30]) );
  TNBUFFX1_RVT \DFF_A_tri[10]  ( .A(N162), .EN(n25), .Y(DFF_A[10]) );
  TNBUFFX1_RVT \DFF_A_tri[9]  ( .A(N165), .EN(n26), .Y(DFF_A[9]) );
  TNBUFFX1_RVT \DFF_A_tri[8]  ( .A(N168), .EN(n27), .Y(DFF_A[8]) );
  TNBUFFX1_RVT \DFF_A_tri[11]  ( .A(N159), .EN(n24), .Y(DFF_A[11]) );
  TNBUFFX1_RVT \DFF_B_tri[7]  ( .A(N267), .EN(n60), .Y(DFF_B[7]) );
  TNBUFFX1_RVT \DFF_A_tri[7]  ( .A(N171), .EN(n28), .Y(DFF_A[7]) );
  TNBUFFX1_RVT \DFF_A_tri[6]  ( .A(N174), .EN(n29), .Y(DFF_A[6]) );
  TNBUFFX1_RVT \DFF_A_tri[0]  ( .A(N192), .EN(n35), .Y(DFF_A[0]) );
  TNBUFFX1_RVT \DFF_A_tri[22]  ( .A(N126), .EN(n13), .Y(DFF_A[22]) );
  TNBUFFX1_RVT \DFF_A_tri[23]  ( .A(N123), .EN(n12), .Y(DFF_A[23]) );
  TNBUFFX1_RVT \DFF_A_tri[1]  ( .A(N189), .EN(n34), .Y(DFF_A[1]) );
  TNBUFFX1_RVT \DFF_A_tri[26]  ( .A(N114), .EN(n9), .Y(DFF_A[26]) );
  TNBUFFX1_RVT \DFF_A_tri[17]  ( .A(N141), .EN(n18), .Y(DFF_A[17]) );
  TNBUFFX1_RVT \DFF_B_tri[16]  ( .A(N240), .EN(n51), .Y(DFF_B[16]) );
  TNBUFFX1_RVT \DFF_A_tri[16]  ( .A(N144), .EN(n19), .Y(DFF_A[16]) );
  TNBUFFX1_RVT \DFF_B_tri[31]  ( .A(N195), .EN(n36), .Y(DFF_B[31]) );
  TNBUFFX1_RVT \DFF_A_tri[25]  ( .A(N117), .EN(n10), .Y(DFF_A[25]) );
  TNBUFFX1_RVT \DFF_A_tri[15]  ( .A(N147), .EN(n20), .Y(DFF_A[15]) );
  TNBUFFX1_RVT \DFF_B_tri[15]  ( .A(N243), .EN(n52), .Y(DFF_B[15]) );
  DFFASX1_RVT \DFF_A_tri_enable_reg[25]  ( .D(1'b0), .CLK(clk), .SETB(net7743), 
        .QN(n10) );
  DFFX1_RVT \DFF_B_reg[2]  ( .D(B[2]), .CLK(clk), .Q(N282) );
  DFFX1_RVT \DFF_B_reg[19]  ( .D(B[19]), .CLK(clk), .Q(N231) );
  DFFX1_RVT \DFF_B_reg[12]  ( .D(B[12]), .CLK(clk), .Q(N252) );
  TNBUFFX4_RVT \DFF_A_tri[20]  ( .A(N132), .EN(n15), .Y(DFF_A[20]) );
  DFFSSRX1_RVT \DFF_Result_reg[18]  ( .D(1'b0), .SETB(n138), .RSTB(1'b1), 
        .CLK(clk), .Q(Result[18]), .QN(n225) );
  DFFX1_RVT \DFF_Result_reg[20]  ( .D(n123), .CLK(clk), .Q(Result[20]), .QN(
        n132) );
  DFFX1_RVT \DFF_Result_reg[21]  ( .D(n122), .CLK(clk), .Q(Result[21]), .QN(
        n124) );
  TNBUFFX8_RVT \DFF_B_tri[10]  ( .A(N258), .EN(n57), .Y(DFF_B[10]) );
  TNBUFFX8_RVT \DFF_B_tri[8]  ( .A(N264), .EN(n59), .Y(DFF_B[8]) );
  DFFX1_RVT \DFF_Result_reg[5]  ( .D(n73), .CLK(clk), .Q(Result[5]) );
  DFFX1_RVT \DFF_Result_reg[6]  ( .D(n208), .CLK(clk), .Q(Result[6]) );
  DFFX1_RVT \DFF_Result_reg[3]  ( .D(n194), .CLK(clk), .Q(Result[3]) );
  DFFX1_RVT \DFF_Result_reg[4]  ( .D(n72), .CLK(clk), .Q(Result[4]) );
  DFFX1_RVT \DFF_Result_reg[22]  ( .D(n90), .CLK(clk), .Q(Result[22]) );
  DFFX1_RVT \DFF_Result_reg[16]  ( .D(n84), .CLK(clk), .Q(Result[16]), .QN(
        n157) );
  DFFASX1_RVT \DFF_B_tri_enable_reg[15]  ( .D(1'b0), .CLK(clk), .SETB(net7751), 
        .QN(n52) );
  TNBUFFX1_RVT \DFF_A_tri[31]  ( .A(N99), .EN(n4), .Y(DFF_A[31]) );
  TNBUFFX1_RVT \DFF_B_tri[27]  ( .A(N207), .EN(n40), .Y(DFF_B[27]) );
  TNBUFFX1_RVT \DFF_B_tri[25]  ( .A(N213), .EN(n42), .Y(DFF_B[25]) );
  TNBUFFX1_RVT \DFF_B_tri[9]  ( .A(N261), .EN(n58), .Y(DFF_B[9]) );
  TNBUFFX1_RVT \DFF_B_tri[20]  ( .A(N228), .EN(n47), .Y(DFF_B[20]) );
  TNBUFFX1_RVT \DFF_B_tri[5]  ( .A(N273), .EN(n62), .Y(DFF_B[5]) );
  TNBUFFX1_RVT \DFF_B_tri[3]  ( .A(N279), .EN(n64), .Y(DFF_B[3]) );
  DFFASX2_RVT \DFF_A_tri_enable_reg[11]  ( .D(1'b0), .CLK(clk), .SETB(net7745), 
        .QN(n24) );
  TNBUFFX2_RVT \DFF_B_tri[12]  ( .A(N252), .EN(n55), .Y(DFF_B[12]) );
  TNBUFFX2_RVT \DFF_B_tri[23]  ( .A(N219), .EN(n44), .Y(DFF_B[23]) );
  TNBUFFX2_RVT \DFF_B_tri[6]  ( .A(N270), .EN(n61), .Y(DFF_B[6]) );
  TNBUFFX2_RVT \DFF_B_tri[28]  ( .A(N204), .EN(n39), .Y(DFF_B[28]) );
  IBUFFX32_RVT U46 ( .A(n78), .Y(n177) );
  IBUFFX16_RVT U47 ( .A(n77), .Y(n179) );
  IBUFFX16_RVT U48 ( .A(Result_A[31]), .Y(n102) );
  OA222X1_RVT U49 ( .A1(n101), .A2(net7741), .A3(n104), .A4(net7789), .A5(n102), .A6(n103), .Y(n100) );
  IBUFFX8_RVT U50 ( .A(Result_B[31]), .Y(n101) );
  IBUFFX8_RVT U51 ( .A(net7811), .Y(n103) );
  AO222X1_RVT U52 ( .A1(Result_A[29]), .A2(net7815), .A3(Result_B[29]), .A4(
        net7807), .A5(Result[29]), .A6(net7785), .Y(n97) );
  NBUFFX2_RVT U53 ( .A(net8870), .Y(net7815) );
  NBUFFX2_RVT U54 ( .A(net4534), .Y(net7807) );
  INVX1_RVT U55 ( .A(net7799), .Y(net7785) );
  IBUFFX4_RVT U56 ( .A(n100), .Y(n200) );
  NOR2X4_RVT U57 ( .A1(net9065), .A2(n190), .Y(n193) );
  IBUFFX32_RVT U58 ( .A(Result_B[15]), .Y(n190) );
  IBUFFX4_RVT U59 ( .A(Result_B[13]), .Y(n217) );
  INVX1_RVT U60 ( .A(DFF_B[11]), .Y(n105) );
  INVX8_RVT U61 ( .A(Result_A[12]), .Y(n215) );
  IBUFFX4_RVT U62 ( .A(n105), .Y(n106) );
  IBUFFX4_RVT U63 ( .A(n95), .Y(n107) );
  IBUFFX4_RVT U64 ( .A(n107), .Y(n108) );
  AO222X2_RVT U65 ( .A1(Result_A[27]), .A2(net7815), .A3(Result_B[27]), .A4(
        net7807), .A5(Result[27]), .A6(net7785), .Y(n95) );
  INVX1_RVT U66 ( .A(n109), .Y(n126) );
  INVX0_RVT U67 ( .A(net7775), .Y(net10321) );
  INVX0_RVT U68 ( .A(Result[11]), .Y(n110) );
  INVX0_RVT U69 ( .A(net7811), .Y(net10323) );
  IBUFFX32_RVT U70 ( .A(Result_A[11]), .Y(n111) );
  INVX0_RVT U71 ( .A(net7805), .Y(net10325) );
  IBUFFX4_RVT U72 ( .A(Result_B[11]), .Y(n112) );
  NOR2X0_RVT U73 ( .A1(net10321), .A2(n110), .Y(n113) );
  NOR2X1_RVT U74 ( .A1(net10323), .A2(n111), .Y(n114) );
  NOR2X0_RVT U75 ( .A1(net10325), .A2(n112), .Y(n115) );
  NOR2X0_RVT U76 ( .A1(n115), .A2(n116), .Y(n109) );
  NOR2X0_RVT U77 ( .A1(n113), .A2(n114), .Y(n117) );
  IBUFFX32_RVT U78 ( .A(n117), .Y(n116) );
  IBUFFX8_RVT U79 ( .A(n188), .Y(n83) );
  INVX1_RVT U80 ( .A(Result_B[21]), .Y(n202) );
  INVX1_RVT U81 ( .A(Result_A[18]), .Y(n224) );
  INVX1_RVT U82 ( .A(Result_B[20]), .Y(n160) );
  INVX1_RVT U83 ( .A(n146), .Y(n72) );
  INVX1_RVT U84 ( .A(n71), .Y(n194) );
  INVX1_RVT U85 ( .A(n139), .Y(n140) );
  INVX1_RVT U86 ( .A(n184), .Y(n185) );
  INVX1_RVT U87 ( .A(n70), .Y(n184) );
  INVX1_RVT U88 ( .A(n147), .Y(n180) );
  INVX1_RVT U89 ( .A(n151), .Y(n178) );
  INVX1_RVT U90 ( .A(n177), .Y(n150) );
  IBUFFX4_RVT U91 ( .A(Result_A[13]), .Y(n218) );
  INVX1_RVT U92 ( .A(n82), .Y(n148) );
  INVX1_RVT U93 ( .A(Result_B[23]), .Y(n196) );
  INVX1_RVT U94 ( .A(n186), .Y(n187) );
  INVX1_RVT U95 ( .A(n137), .Y(n186) );
  NAND3X0_RVT U96 ( .A1(n168), .A2(n169), .A3(n170), .Y(n137) );
  INVX1_RVT U97 ( .A(n211), .Y(n212) );
  INVX1_RVT U98 ( .A(n93), .Y(n211) );
  INVX1_RVT U99 ( .A(n213), .Y(n93) );
  AND3X1_RVT U100 ( .A1(n165), .A2(n166), .A3(n167), .Y(n213) );
  INVX1_RVT U101 ( .A(n154), .Y(n84) );
  IBUFFX16_RVT U102 ( .A(n181), .Y(n118) );
  INVX2_RVT U103 ( .A(n118), .Y(n119) );
  OR2X1_RVT U104 ( .A1(n199), .A2(n129), .Y(n120) );
  AND2X1_RVT U105 ( .A1(n173), .A2(n172), .Y(n121) );
  OR2X1_RVT U106 ( .A1(n205), .A2(n130), .Y(n122) );
  OR2X1_RVT U107 ( .A1(n161), .A2(n131), .Y(n123) );
  OAI222X1_RVT U108 ( .A1(n214), .A2(net7741), .A3(n215), .A4(net7739), .A5(
        n216), .A6(net7795), .Y(n125) );
  OAI222X1_RVT U109 ( .A1(net7741), .A2(n217), .A3(n218), .A4(net7739), .A5(
        n219), .A6(net7795), .Y(n127) );
  OR3X4_RVT U110 ( .A1(n220), .A2(n221), .A3(n222), .Y(n128) );
  NAND3X0_RVT U111 ( .A1(n174), .A2(n175), .A3(n176), .Y(n73) );
  OR2X1_RVT U112 ( .A1(n197), .A2(n198), .Y(n129) );
  OR2X1_RVT U113 ( .A1(n203), .A2(n204), .Y(n130) );
  OR2X1_RVT U114 ( .A1(n163), .A2(n164), .Y(n131) );
  OR2X1_RVT U115 ( .A1(n191), .A2(n192), .Y(n133) );
  INVX0_RVT U116 ( .A(n158), .Y(n159) );
  AND2X1_RVT U117 ( .A1(n182), .A2(n183), .Y(n136) );
  IBUFFX2_RVT U118 ( .A(n128), .Y(n138) );
  INVX1_RVT U119 ( .A(n185), .Y(n139) );
  AO222X1_RVT U122 ( .A1(net7805), .A2(Result_B[17]), .A3(Result_A[17]), .A4(
        net7813), .A5(Result[17]), .A6(net7755), .Y(n143) );
  INVX0_RVT U123 ( .A(Result_A[16]), .Y(n156) );
  INVX1_RVT U124 ( .A(Result_B[16]), .Y(n155) );
  INVX2_RVT U125 ( .A(n223), .Y(n144) );
  INVX1_RVT U126 ( .A(n144), .Y(n145) );
  AOI222X1_RVT U127 ( .A1(net4534), .A2(Result_B[4]), .A3(Result_A[4]), .A4(
        net7811), .A5(Result[4]), .A6(net7781), .Y(n146) );
  NBUFFX4_RVT U128 ( .A(n179), .Y(n147) );
  INVX1_RVT U129 ( .A(n148), .Y(n149) );
  INVX1_RVT U130 ( .A(n150), .Y(n151) );
  IBUFFX4_RVT U131 ( .A(DFF_B[16]), .Y(n152) );
  INVX4_RVT U132 ( .A(n152), .Y(n153) );
  OA222X1_RVT U133 ( .A1(n155), .A2(net7741), .A3(net7739), .A4(n156), .A5(
        n157), .A6(net7795), .Y(n154) );
  IBUFFX16_RVT U134 ( .A(DFF_B[20]), .Y(n158) );
  NOR2X1_RVT U135 ( .A1(net9065), .A2(n160), .Y(n161) );
  NOR2X0_RVT U136 ( .A1(net9038), .A2(n132), .Y(n163) );
  NOR2X0_RVT U137 ( .A1(net7739), .A2(n162), .Y(n164) );
  NBUFFX2_RVT U138 ( .A(net8870), .Y(net7813) );
  INVX0_RVT U139 ( .A(Result_A[20]), .Y(n162) );
  NAND2X0_RVT U140 ( .A1(Result_B[25]), .A2(net7807), .Y(n165) );
  NAND2X0_RVT U141 ( .A1(Result_A[25]), .A2(net7813), .Y(n166) );
  NAND2X0_RVT U142 ( .A1(Result[25]), .A2(net7777), .Y(n167) );
  NAND2X0_RVT U143 ( .A1(n121), .A2(n171), .Y(n90) );
  NAND2X0_RVT U144 ( .A1(net7807), .A2(Result_B[24]), .Y(n168) );
  NAND2X0_RVT U145 ( .A1(Result_A[24]), .A2(net7815), .Y(n169) );
  NAND2X0_RVT U146 ( .A1(Result[24]), .A2(net7767), .Y(n170) );
  NAND2X0_RVT U147 ( .A1(Result_B[22]), .A2(net7807), .Y(n171) );
  NAND2X0_RVT U148 ( .A1(Result_A[22]), .A2(net7813), .Y(n172) );
  NAND2X0_RVT U149 ( .A1(Result[22]), .A2(net7775), .Y(n173) );
  NAND2X0_RVT U150 ( .A1(Result_B[5]), .A2(net4534), .Y(n174) );
  NAND2X0_RVT U151 ( .A1(Result_A[5]), .A2(net7811), .Y(n175) );
  NAND2X0_RVT U152 ( .A1(Result[5]), .A2(net7781), .Y(n176) );
  AO222X1_RVT U153 ( .A1(Result_B[8]), .A2(net7805), .A3(net7811), .A4(
        Result_A[8]), .A5(Result[8]), .A6(net7779), .Y(n76) );
  NAND2X0_RVT U154 ( .A1(n119), .A2(n136), .Y(n82) );
  NAND2X0_RVT U155 ( .A1(Result[14]), .A2(net7773), .Y(n182) );
  NAND2X0_RVT U156 ( .A1(Result_A[14]), .A2(net7813), .Y(n183) );
  NAND2X0_RVT U157 ( .A1(net7805), .A2(Result_B[14]), .Y(n181) );
  INVX0_RVT U158 ( .A(net7773), .Y(net9061) );
  INVX0_RVT U159 ( .A(Result_A[15]), .Y(n189) );
  INVX0_RVT U160 ( .A(net7805), .Y(net9065) );
  NOR2X0_RVT U161 ( .A1(net9061), .A2(n134), .Y(n191) );
  NOR2X0_RVT U162 ( .A1(net7739), .A2(n189), .Y(n192) );
  NOR2X0_RVT U163 ( .A1(n193), .A2(n133), .Y(n188) );
  AOI222X1_RVT U164 ( .A1(net7807), .A2(Result_B[3]), .A3(Result_A[3]), .A4(
        net7811), .A5(Result[3]), .A6(net7781), .Y(n71) );
  INVX0_RVT U165 ( .A(net7767), .Y(net9038) );
  INVX0_RVT U166 ( .A(Result_A[23]), .Y(n195) );
  NOR2X0_RVT U167 ( .A1(net9038), .A2(n135), .Y(n197) );
  NOR2X0_RVT U168 ( .A1(net7739), .A2(n195), .Y(n198) );
  NOR2X1_RVT U169 ( .A1(net9065), .A2(n196), .Y(n199) );
  INVX0_RVT U170 ( .A(Result_A[21]), .Y(n201) );
  NOR2X0_RVT U171 ( .A1(net9061), .A2(n124), .Y(n203) );
  NOR2X0_RVT U172 ( .A1(net7739), .A2(n201), .Y(n204) );
  NOR2X1_RVT U173 ( .A1(net9065), .A2(n202), .Y(n205) );
  IBUFFX16_RVT U174 ( .A(n224), .Y(n206) );
  INVX1_RVT U175 ( .A(net7739), .Y(net8870) );
  AND2X1_RVT U176 ( .A1(n206), .A2(net8870), .Y(n221) );
  NBUFFX2_RVT U177 ( .A(net8870), .Y(net7811) );
  NBUFFX2_RVT U178 ( .A(net4534), .Y(net7805) );
  INVX1_RVT U179 ( .A(net7757), .Y(net7751) );
  INVX1_RVT U180 ( .A(net7789), .Y(net7757) );
  INVX1_RVT U181 ( .A(net7765), .Y(net7743) );
  INVX1_RVT U182 ( .A(net7791), .Y(net7765) );
  INVX1_RVT U183 ( .A(net7759), .Y(net7749) );
  INVX1_RVT U184 ( .A(net7789), .Y(net7759) );
  INVX1_RVT U185 ( .A(net7761), .Y(net7747) );
  INVX1_RVT U186 ( .A(net7791), .Y(net7761) );
  INVX1_RVT U187 ( .A(net7763), .Y(net7745) );
  INVX1_RVT U188 ( .A(net7791), .Y(net7763) );
  INVX1_RVT U189 ( .A(net7755), .Y(net7753) );
  INVX1_RVT U190 ( .A(net7789), .Y(net7755) );
  INVX1_RVT U191 ( .A(net7797), .Y(net7783) );
  INVX1_RVT U192 ( .A(net7797), .Y(net7781) );
  INVX1_RVT U193 ( .A(net7797), .Y(net7779) );
  INVX1_RVT U194 ( .A(net7793), .Y(net7767) );
  INVX1_RVT U195 ( .A(net7795), .Y(net7773) );
  INVX1_RVT U196 ( .A(net7795), .Y(net7777) );
  INVX1_RVT U197 ( .A(net7741), .Y(net4534) );
  INVX1_RVT U198 ( .A(net7801), .Y(net7797) );
  INVX1_RVT U199 ( .A(net7801), .Y(net7789) );
  INVX1_RVT U200 ( .A(net7801), .Y(net7791) );
  INVX1_RVT U201 ( .A(net7801), .Y(net7799) );
  INVX1_RVT U202 ( .A(net7801), .Y(net7793) );
  INVX1_RVT U203 ( .A(net7801), .Y(net7795) );
  INVX1_RVT U204 ( .A(n209), .Y(n210) );
  INVX1_RVT U205 ( .A(DFF_B[31]), .Y(n209) );
  AO222X1_RVT U206 ( .A1(net7815), .A2(Result_A[30]), .A3(Result_B[30]), .A4(
        net4534), .A5(Result[30]), .A6(net7785), .Y(n207) );
  AO222X1_RVT U207 ( .A1(Result_B[6]), .A2(net7807), .A3(Result_A[6]), .A4(
        net7811), .A5(Result[6]), .A6(net7779), .Y(n208) );
  INVX1_RVT U208 ( .A(Result_B[12]), .Y(n214) );
  INVX1_RVT U209 ( .A(net7795), .Y(net7775) );
  INVX1_RVT U210 ( .A(nrst), .Y(net7801) );
  NOR2X0_RVT U211 ( .A1(net7741), .A2(n145), .Y(n220) );
  NOR2X0_RVT U212 ( .A1(n225), .A2(net7793), .Y(n222) );
  IBUFFX16_RVT U213 ( .A(Result_B[18]), .Y(n223) );
  NAND2X0_RVT U214 ( .A1(Sel), .A2(net7753), .Y(net7741) );
  INVX0_RVT U215 ( .A(Sel), .Y(n226) );
  NAND2X0_RVT U216 ( .A1(net7753), .A2(n226), .Y(net7739) );
  AO222X1_RVT U217 ( .A1(Result_A[26]), .A2(net7815), .A3(Result_B[26]), .A4(
        net4534), .A5(Result[26]), .A6(net7767), .Y(n94) );
  AO222X1_RVT U218 ( .A1(Result_A[28]), .A2(net7815), .A3(net4534), .A4(
        Result_B[28]), .A5(Result[28]), .A6(net7757), .Y(n96) );
endmodule

