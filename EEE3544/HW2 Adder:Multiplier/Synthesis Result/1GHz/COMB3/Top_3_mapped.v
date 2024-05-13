/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun May 12 21:47:09 2024
/////////////////////////////////////////////////////////////


module FA_1bit_575 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_544 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX4_RVT U2 ( .A(n2), .Y(n3) );
  IBUFFX2_RVT U3 ( .A(A), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_545 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX4_RVT U1 ( .A(n3), .Y(n4) );
  IBUFFX2_RVT U2 ( .A(n2), .Y(n1) );
  INVX2_RVT U3 ( .A(A), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(B), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_546 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  IBUFFX16_RVT U2 ( .A(A), .Y(n1) );
  INVX1_RVT U3 ( .A(n2), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(n1), .A2(B), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_547 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX2_RVT U1 ( .A(n2), .Y(n3) );
  INVX0_RVT U2 ( .A(A), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(n1), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_548 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_549 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_550 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX16_RVT U1 ( .A(n2), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n4), .Y(n2) );
  INVX1_RVT U3 ( .A(A), .Y(n4) );
  XNOR2X2_RVT U4 ( .A1(n1), .A2(B), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_551 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX32_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XNOR2X2_RVT U3 ( .A1(n4), .A2(B), .Y(n3) );
  INVX2_RVT U4 ( .A(n2), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_552 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U2 ( .A(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_553 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_554 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_555 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX2_RVT U1 ( .A(A), .Y(n2) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X2_RVT U3 ( .A1(n2), .A2(B), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_556 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_557 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_558 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_559 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_560 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_561 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U2 ( .A(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_562 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_563 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  XNOR3X1_RVT U4 ( .A1(Cin), .A2(B), .A3(n2), .Y(C) );
endmodule


module FA_1bit_564 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  XNOR3X1_RVT U4 ( .A1(Cin), .A2(B), .A3(n2), .Y(C) );
endmodule


module FA_1bit_565 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_566 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR3X2_RVT U1 ( .A1(Cin), .A2(B), .A3(n2), .Y(C) );
  INVX1_RVT U2 ( .A(n4), .Y(n2) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n3), .Y(Cout) );
  OA21X1_RVT U4 ( .A1(B), .A2(A), .A3(Cin), .Y(n3) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
endmodule


module FA_1bit_567 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;

  XNOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(n3), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n2), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
endmodule


module FA_1bit_568 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_569 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_570 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_571 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_572 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_573 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_574 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n6;
  tri   B;

  FA_1bit_575 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_574 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_573 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_572 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_571 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_570 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_569 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_568 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_567 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_566 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_565 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_564 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_563 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_562 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_561 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_560 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_559 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_558 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_557 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_556 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_555 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_554 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_553 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_552 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_551 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_550 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_549 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_548 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_547 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_546 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_545 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_544 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X4_RVT U1 ( .A1(A[1]), .A2(n5), .Y(\_0_net_[1] ) );
  AND2X4_RVT U2 ( .A1(A[29]), .A2(n5), .Y(\_0_net_[29] ) );
  AND2X4_RVT U3 ( .A1(A[31]), .A2(n6), .Y(\_0_net_[31] ) );
  AND2X4_RVT U4 ( .A1(A[27]), .A2(n5), .Y(\_0_net_[27] ) );
  IBUFFX4_RVT U5 ( .A(A[20]), .Y(n1) );
  INVX2_RVT U6 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U7 ( .A(B), .Y(n3) );
  IBUFFX4_RVT U8 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U9 ( .A(n3), .Y(n5) );
  IBUFFX4_RVT U10 ( .A(n3), .Y(n6) );
  AND2X1_RVT U11 ( .A1(A[0]), .A2(n5), .Y(\_0_net_[0] ) );
  AND2X1_RVT U12 ( .A1(A[30]), .A2(n6), .Y(\_0_net_[30] ) );
  AND2X1_RVT U13 ( .A1(A[28]), .A2(n5), .Y(\_0_net_[28] ) );
  AND2X1_RVT U14 ( .A1(A[26]), .A2(n6), .Y(\_0_net_[26] ) );
  AND2X1_RVT U15 ( .A1(A[25]), .A2(n5), .Y(\_0_net_[25] ) );
  AND2X1_RVT U16 ( .A1(A[24]), .A2(n6), .Y(\_0_net_[24] ) );
  AND2X1_RVT U17 ( .A1(A[23]), .A2(n6), .Y(\_0_net_[23] ) );
  AND2X1_RVT U18 ( .A1(A[22]), .A2(n5), .Y(\_0_net_[22] ) );
  AND2X1_RVT U19 ( .A1(A[21]), .A2(n6), .Y(\_0_net_[21] ) );
  AND2X1_RVT U20 ( .A1(n2), .A2(n4), .Y(\_0_net_[20] ) );
  AND2X1_RVT U21 ( .A1(A[19]), .A2(n6), .Y(\_0_net_[19] ) );
  AND2X1_RVT U22 ( .A1(A[18]), .A2(n5), .Y(\_0_net_[18] ) );
  AND2X1_RVT U23 ( .A1(A[17]), .A2(n6), .Y(\_0_net_[17] ) );
  AND2X1_RVT U24 ( .A1(A[16]), .A2(n5), .Y(\_0_net_[16] ) );
  AND2X1_RVT U25 ( .A1(A[15]), .A2(n6), .Y(\_0_net_[15] ) );
  AND2X1_RVT U26 ( .A1(A[14]), .A2(n5), .Y(\_0_net_[14] ) );
  AND2X1_RVT U27 ( .A1(A[13]), .A2(n6), .Y(\_0_net_[13] ) );
  AND2X1_RVT U28 ( .A1(A[12]), .A2(n5), .Y(\_0_net_[12] ) );
  AND2X1_RVT U29 ( .A1(A[11]), .A2(n5), .Y(\_0_net_[11] ) );
  AND2X1_RVT U30 ( .A1(A[10]), .A2(n6), .Y(\_0_net_[10] ) );
  AND2X1_RVT U31 ( .A1(A[9]), .A2(n6), .Y(\_0_net_[9] ) );
  AND2X1_RVT U32 ( .A1(A[8]), .A2(n5), .Y(\_0_net_[8] ) );
  AND2X1_RVT U33 ( .A1(A[7]), .A2(n5), .Y(\_0_net_[7] ) );
  AND2X1_RVT U34 ( .A1(A[6]), .A2(n5), .Y(\_0_net_[6] ) );
  AND2X1_RVT U35 ( .A1(A[5]), .A2(n6), .Y(\_0_net_[5] ) );
  AND2X1_RVT U36 ( .A1(A[4]), .A2(n5), .Y(\_0_net_[4] ) );
  AND2X1_RVT U37 ( .A1(A[3]), .A2(n6), .Y(\_0_net_[3] ) );
  AND2X1_RVT U38 ( .A1(A[2]), .A2(n6), .Y(\_0_net_[2] ) );
endmodule


module FA_1bit_61 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;

  IBUFFX16_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  INVX0_RVT U3 ( .A(n5), .Y(n3) );
  IBUFFX4_RVT U4 ( .A(n3), .Y(n4) );
  IBUFFX16_RVT U5 ( .A(n10), .Y(n5) );
  INVX0_RVT U6 ( .A(n4), .Y(n6) );
  IBUFFX16_RVT U7 ( .A(A), .Y(n7) );
  IBUFFX8_RVT U8 ( .A(n7), .Y(n8) );
  INVX16_RVT U9 ( .A(n8), .Y(n11) );
  NBUFFX8_RVT U10 ( .A(n2), .Y(n9) );
  XOR2X2_RVT U11 ( .A1(n2), .A2(n6), .Y(C) );
  AO22X1_RVT U12 ( .A1(n9), .A2(n6), .A3(B), .A4(n8), .Y(Cout) );
  XNOR2X1_RVT U13 ( .A1(n11), .A2(B), .Y(n10) );
endmodule


module FA_1bit_62 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  OA22X2_RVT U1 ( .A1(n6), .A2(Cin), .A3(n6), .A4(n3), .Y(Cout) );
  IBUFFX16_RVT U2 ( .A(n5), .Y(n1) );
  INVX0_RVT U3 ( .A(n1), .Y(n2) );
  NBUFFX2_RVT U4 ( .A(Cin), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(A), .A2(B), .Y(n3) );
  INVX1_RVT U6 ( .A(n2), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(B), .A2(A), .Y(n5) );
  XOR2X1_RVT U8 ( .A1(n4), .A2(n3), .Y(C) );
endmodule


module FA_1bit_63 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  OA22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_64 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module RCA_4bit_0 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_64 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_63 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_62 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_61 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_33 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_34 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AND2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_35 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n4, n5;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  INVX32_RVT U2 ( .A(n5), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(n2), .Y(Cout) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n4) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n1), .Y(C) );
  OA22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(n4), .A4(n1), .Y(n5) );
endmodule


module FA_1bit_36 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX4_RVT U1 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n4) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n5) );
  XOR2X2_RVT U6 ( .A1(n2), .A2(n4), .Y(C) );
  OA22X1_RVT U7 ( .A1(n3), .A2(n5), .A3(n5), .A4(n4), .Y(Cout) );
endmodule


module RCA_4bit_9 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

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
  wire   n1, n2, n3, n4, n5;

  INVX1_RVT U1 ( .A(n5), .Y(n1) );
  XNOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n4) );
  IBUFFX16_RVT U3 ( .A(n4), .Y(n5) );
  IBUFFX16_RVT U4 ( .A(Cin), .Y(n2) );
  AOI22X1_RVT U5 ( .A1(n3), .A2(n2), .A3(n3), .A4(n1), .Y(Cout) );
  NAND2X0_RVT U6 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(n5), .Y(C) );
endmodule


module FA_1bit_38 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  OA22X1_RVT U3 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_39 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  DELLN3X2_RVT U1 ( .A(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  AND2X1_RVT U4 ( .A1(B), .A2(n1), .Y(n2) );
  OA22X1_RVT U5 ( .A1(n2), .A2(Cin), .A3(n2), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_40 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  INVX2_RVT U1 ( .A(n5), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(A), .A2(n2), .Y(n6) );
  AND2X4_RVT U4 ( .A1(n2), .A2(A), .Y(n3) );
  INVX4_RVT U5 ( .A(B), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(n4), .Y(n5) );
  OA22X1_RVT U7 ( .A1(n3), .A2(Cin), .A3(n3), .A4(n6), .Y(Cout) );
  XOR2X1_RVT U8 ( .A1(Cin), .A2(n6), .Y(C) );
endmodule


module RCA_4bit_10 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;

  FA_1bit_40 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_39 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_38 FA10 ( .A(A[2]), .B(B[2]), .Cin(n2), .C(C[2]), .Cout(Cout10) );
  FA_1bit_37 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  IBUFFX16_RVT U1 ( .A(Cout01), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
endmodule


module FA_1bit_41 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX1_RVT U1 ( .A(n5), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(A), .Y(n5) );
  INVX32_RVT U3 ( .A(Cin), .Y(n2) );
  IBUFFX16_RVT U4 ( .A(n2), .Y(n3) );
  IBUFFX16_RVT U5 ( .A(n6), .Y(n8) );
  NAND2X0_RVT U6 ( .A1(B), .A2(n1), .Y(n4) );
  IBUFFX16_RVT U7 ( .A(n4), .Y(n7) );
  XOR2X1_RVT U8 ( .A1(n5), .A2(B), .Y(n6) );
  OA22X1_RVT U9 ( .A1(n3), .A2(n7), .A3(n7), .A4(n8), .Y(Cout) );
  XOR2X1_RVT U10 ( .A1(n3), .A2(n8), .Y(C) );
endmodule


module FA_1bit_42 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  OA22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_43 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX32_RVT U1 ( .A(n3), .Y(n1) );
  IBUFFX16_RVT U2 ( .A(n3), .Y(n4) );
  XNOR2X2_RVT U3 ( .A1(n4), .A2(n2), .Y(C) );
  IBUFFX8_RVT U4 ( .A(n5), .Y(n2) );
  INVX1_RVT U5 ( .A(Cin), .Y(n3) );
  IBUFFX16_RVT U6 ( .A(A), .Y(n8) );
  INVX1_RVT U7 ( .A(B), .Y(n6) );
  XNOR2X1_RVT U8 ( .A1(n8), .A2(B), .Y(n5) );
  NOR2X0_RVT U9 ( .A1(n6), .A2(n8), .Y(n7) );
  OA22X1_RVT U10 ( .A1(n1), .A2(n7), .A3(n7), .A4(n5), .Y(Cout) );
endmodule


module FA_1bit_44 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX2_RVT U1 ( .A(Cin), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(n4), .Y(C) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n4) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
  OA22X1_RVT U6 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
endmodule


module RCA_4bit_11 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2, n3, n4, n5, n6;

  FA_1bit_44 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_43 FA01 ( .A(A[1]), .B(n4), .Cin(Cout00), .C(C[1]), .Cout(Cout01) );
  FA_1bit_42 FA10 ( .A(n2), .B(B[2]), .Cin(n6), .C(C[2]), .Cout(Cout10) );
  FA_1bit_41 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  IBUFFX4_RVT U1 ( .A(A[2]), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  INVX32_RVT U3 ( .A(B[1]), .Y(n3) );
  IBUFFX16_RVT U4 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U5 ( .A(Cout01), .Y(n5) );
  INVX2_RVT U6 ( .A(n5), .Y(n6) );
endmodule


module FA_1bit_45 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  XOR2X1_RVT U1 ( .A1(A), .A2(n3), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n2), .Y(n3) );
  AND2X2_RVT U3 ( .A1(n3), .A2(A), .Y(n6) );
  IBUFFX4_RVT U4 ( .A(B), .Y(n2) );
  IBUFFX4_RVT U5 ( .A(Cin), .Y(n4) );
  INVX2_RVT U6 ( .A(n4), .Y(n5) );
  XOR2X2_RVT U7 ( .A1(n5), .A2(n1), .Y(C) );
  OA22X1_RVT U8 ( .A1(n5), .A2(n6), .A3(n6), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_46 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX16_RVT U1 ( .A(A), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  INVX32_RVT U3 ( .A(B), .Y(n3) );
  IBUFFX16_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n6), .Y(C) );
  XOR2X2_RVT U6 ( .A1(n2), .A2(n4), .Y(n6) );
  AND2X1_RVT U7 ( .A1(n4), .A2(n2), .Y(n5) );
  OA22X1_RVT U8 ( .A1(Cin), .A2(n5), .A3(n5), .A4(n6), .Y(Cout) );
endmodule


module FA_1bit_47 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n5) );
  NAND2X0_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(n1), .Y(n4) );
  XOR2X2_RVT U4 ( .A1(n3), .A2(n5), .Y(C) );
  INVX32_RVT U5 ( .A(Cin), .Y(n2) );
  IBUFFX16_RVT U6 ( .A(n2), .Y(n3) );
  OA22X1_RVT U7 ( .A1(n4), .A2(n3), .A3(n4), .A4(n5), .Y(Cout) );
endmodule


module FA_1bit_48 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X2_RVT U2 ( .A1(n1), .A2(Cin), .A3(n1), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n1) );
endmodule


module RCA_4bit_12 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

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
  wire   n1, n2, n3, n4, n6, n7, n8;

  XNOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n8) );
  NAND2X4_RVT U2 ( .A1(B), .A2(A), .Y(n7) );
  IBUFFX16_RVT U3 ( .A(n8), .Y(n1) );
  INVX4_RVT U4 ( .A(n1), .Y(n2) );
  INVX32_RVT U5 ( .A(Cin), .Y(n3) );
  IBUFFX16_RVT U6 ( .A(n3), .Y(n4) );
  INVX1_RVT U7 ( .A(n4), .Y(n6) );
  AOI22X1_RVT U8 ( .A1(n7), .A2(n6), .A3(n7), .A4(n2), .Y(Cout) );
  XNOR2X1_RVT U9 ( .A1(n4), .A2(n2), .Y(C) );
endmodule


module FA_1bit_50 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX16_RVT U1 ( .A(n3), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  XNOR2X2_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_51 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  AND2X1_RVT U1 ( .A1(n3), .A2(A), .Y(n7) );
  IBUFFX16_RVT U2 ( .A(n4), .Y(n5) );
  INVX32_RVT U3 ( .A(Cin), .Y(n4) );
  INVX0_RVT U4 ( .A(n5), .Y(n1) );
  XNOR2X2_RVT U5 ( .A1(n1), .A2(n6), .Y(C) );
  INVX32_RVT U6 ( .A(B), .Y(n2) );
  IBUFFX16_RVT U7 ( .A(n2), .Y(n3) );
  XOR2X2_RVT U8 ( .A1(A), .A2(n3), .Y(n6) );
  OA22X1_RVT U9 ( .A1(n5), .A2(n7), .A3(n7), .A4(n6), .Y(Cout) );
endmodule


module FA_1bit_52 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  DELLN3X2_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX16_RVT U2 ( .A(A), .Y(n2) );
  INVX2_RVT U3 ( .A(n2), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n5), .Y(C) );
  OA22X2_RVT U5 ( .A1(n1), .A2(n4), .A3(n4), .A4(n5), .Y(Cout) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n5) );
  AND2X1_RVT U7 ( .A1(B), .A2(n3), .Y(n4) );
endmodule


module RCA_4bit_13 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2, n3, n4;

  FA_1bit_52 HA00 ( .A(A[0]), .B(n4), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_51 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_50 FA10 ( .A(A[2]), .B(B[2]), .Cin(n2), .C(C[2]), .Cout(Cout10) );
  FA_1bit_49 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  IBUFFX4_RVT U1 ( .A(Cout01), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  INVX8_RVT U3 ( .A(B[0]), .Y(n3) );
  IBUFFX16_RVT U4 ( .A(n3), .Y(n4) );
endmodule


module FA_1bit_53 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX2_RVT U1 ( .A(B), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(n2), .Y(n5) );
  XOR2X2_RVT U4 ( .A1(n3), .A2(n5), .Y(C) );
  AND2X1_RVT U5 ( .A1(n2), .A2(A), .Y(n4) );
  DELLN2X2_RVT U6 ( .A(Cin), .Y(n3) );
  OA22X1_RVT U7 ( .A1(n4), .A2(n3), .A3(n4), .A4(n5), .Y(Cout) );
endmodule


module FA_1bit_54 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX2_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(A), .Y(n3) );
  INVX2_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n4), .A2(B), .Y(n6) );
  XOR2X1_RVT U6 ( .A1(n2), .A2(n6), .Y(C) );
  AND2X1_RVT U7 ( .A1(B), .A2(n4), .Y(n5) );
  OA22X1_RVT U8 ( .A1(n2), .A2(n5), .A3(n5), .A4(n6), .Y(Cout) );
endmodule


module FA_1bit_55 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15;

  IBUFFX4_RVT U1 ( .A(n1), .Y(n15) );
  XOR2X2_RVT U2 ( .A1(n6), .A2(n2), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(B), .Y(n2) );
  INVX4_RVT U4 ( .A(A), .Y(n5) );
  NOR2X4_RVT U5 ( .A1(n14), .A2(n15), .Y(n11) );
  IBUFFX2_RVT U6 ( .A(n14), .Y(n9) );
  NOR2X1_RVT U7 ( .A1(n4), .A2(n11), .Y(Cout) );
  IBUFFX2_RVT U8 ( .A(n10), .Y(n3) );
  INVX1_RVT U9 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U10 ( .A(n5), .Y(n6) );
  IBUFFX32_RVT U11 ( .A(n7), .Y(n10) );
  NAND2X1_RVT U12 ( .A1(n8), .A2(n9), .Y(n7) );
  IBUFFX8_RVT U13 ( .A(n13), .Y(n8) );
  XNOR2X1_RVT U14 ( .A1(n13), .A2(n1), .Y(C) );
  IBUFFX2_RVT U15 ( .A(n12), .Y(n13) );
  IBUFFX16_RVT U16 ( .A(Cin), .Y(n12) );
  AND2X1_RVT U17 ( .A1(B), .A2(n6), .Y(n14) );
endmodule


module FA_1bit_56 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n1) );
endmodule


module RCA_4bit_14 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2, n3, n4, n5, n6, n7;

  FA_1bit_56 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_55 FA01 ( .A(A[1]), .B(B[1]), .Cin(n7), .C(C[1]), .Cout(Cout01) );
  FA_1bit_54 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_53 FA11 ( .A(n5), .B(n3), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  NBUFFX8_RVT U1 ( .A(B[3]), .Y(n1) );
  INVX32_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(n2), .Y(n3) );
  IBUFFX4_RVT U4 ( .A(A[3]), .Y(n4) );
  INVX2_RVT U5 ( .A(n4), .Y(n5) );
  IBUFFX16_RVT U6 ( .A(n6), .Y(n7) );
  INVX1_RVT U7 ( .A(Cout00), .Y(n6) );
endmodule


module FA_1bit_57 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX16_RVT U1 ( .A(Cin), .Y(n1) );
  INVX0_RVT U2 ( .A(n1), .Y(n2) );
  AND2X4_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n4) );
  OA22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
  XOR2X1_RVT U6 ( .A1(n2), .A2(n4), .Y(C) );
endmodule


module FA_1bit_58 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n3) );
  INVX0_RVT U2 ( .A(A), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_59 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX8_RVT U1 ( .A(A), .Y(n3) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n2) );
  AND2X1_RVT U3 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_60 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX32_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n6), .Y(C) );
  IBUFFX16_RVT U4 ( .A(A), .Y(n3) );
  INVX0_RVT U5 ( .A(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(n2), .A2(n4), .Y(n5) );
  OA22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(n5), .A4(n6), .Y(Cout) );
  XNOR2X1_RVT U8 ( .A1(n7), .A2(n2), .Y(n6) );
  INVX1_RVT U9 ( .A(n4), .Y(n7) );
endmodule


module RCA_4bit_15 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

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
  wire   Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110, n1, n2,
         n3, n4, n5, n6, n7, n8;

  RCA_4bit_0 RCA000 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .C(S[3:0]), .Cout(
        Cout000) );
  RCA_4bit_15 RCA001 ( .A(A[7:4]), .B({B[7:6], n8, B[4]}), .Cin(Cout000), .C(
        S[7:4]), .Cout(Cout001) );
  RCA_4bit_14 RCA010 ( .A(A[11:8]), .B({B[11], n4, n6, B[8]}), .Cin(Cout001), 
        .C(S[11:8]), .Cout(Cout010) );
  RCA_4bit_13 RCA011 ( .A(A[15:12]), .B({B[15:13], n2}), .Cin(Cout010), .C(
        S[15:12]), .Cout(Cout011) );
  RCA_4bit_12 RCA100 ( .A(A[19:16]), .B(B[19:16]), .Cin(Cout011), .C(S[19:16]), 
        .Cout(Cout100) );
  RCA_4bit_11 RCA101 ( .A(A[23:20]), .B(B[23:20]), .Cin(Cout100), .C(S[23:20]), 
        .Cout(Cout101) );
  RCA_4bit_10 RCA110 ( .A(A[27:24]), .B(B[27:24]), .Cin(Cout101), .C(S[27:24]), 
        .Cout(Cout110) );
  RCA_4bit_9 RCA111 ( .A(A[31:28]), .B(B[31:28]), .Cin(Cout110), .C(S[31:28]), 
        .Cout(Cout) );
  INVX4_RVT U1 ( .A(n1), .Y(n2) );
  INVX4_RVT U2 ( .A(n5), .Y(n6) );
  IBUFFX16_RVT U3 ( .A(B[12]), .Y(n1) );
  IBUFFX16_RVT U4 ( .A(B[10]), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  IBUFFX32_RVT U6 ( .A(B[9]), .Y(n5) );
  IBUFFX16_RVT U7 ( .A(B[5]), .Y(n7) );
  INVX0_RVT U8 ( .A(n7), .Y(n8) );
endmodule


module FA_1bit_321 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_322 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_323 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_324 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_325 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_326 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n4), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n4) );
  DELLN3X2_RVT U1 ( .A(n4), .Y(n2) );
  AO22X2_RVT U4 ( .A1(A), .A2(n3), .A3(Cin), .A4(n2), .Y(Cout) );
  DELLN3X2_RVT U5 ( .A(B), .Y(n3) );
endmodule


module FA_1bit_327 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(A), .A2(n2), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_328 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  INVX0_RVT U4 ( .A(A), .Y(n2) );
endmodule


module FA_1bit_329 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX1_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_330 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(n1), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
  INVX1_RVT U4 ( .A(A), .Y(n2) );
endmodule


module FA_1bit_331 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(A), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_332 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(n2), .A2(n4), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX1_RVT U5 ( .A(A), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_333 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U3 ( .A(Cin), .Y(n1) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_334 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  DELLN3X2_RVT U1 ( .A(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(n1), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_335 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_336 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(n2), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_337 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_338 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_339 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(n5), .Y(C) );
  IBUFFX4_RVT U4 ( .A(B), .Y(n3) );
  INVX2_RVT U5 ( .A(n3), .Y(n4) );
  XNOR2X1_RVT U6 ( .A1(n6), .A2(n4), .Y(n5) );
  INVX0_RVT U7 ( .A(A), .Y(n6) );
  AO22X1_RVT U8 ( .A1(n2), .A2(n5), .A3(n4), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_340 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(n1), .A2(Cin), .Y(C) );
endmodule


module FA_1bit_341 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_342 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_343 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_344 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_345 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_346 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  INVX1_RVT U2 ( .A(A), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_347 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XNOR3X1_RVT U2 ( .A1(Cin), .A2(A), .A3(n4), .Y(C) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  INVX0_RVT U4 ( .A(B), .Y(n4) );
  NAND2X0_RVT U5 ( .A1(n2), .A2(n4), .Y(n3) );
endmodule


module FA_1bit_348 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X1_RVT U3 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
endmodule


module FA_1bit_349 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  XNOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(n2), .Y(C) );
  IBUFFX2_RVT U2 ( .A(n1), .Y(n2) );
  INVX0_RVT U3 ( .A(n5), .Y(n1) );
  IBUFFX16_RVT U4 ( .A(B), .Y(n5) );
  AO22X2_RVT U5 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  INVX0_RVT U6 ( .A(A), .Y(n3) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n2), .Y(n4) );
endmodule


module FA_1bit_350 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO21X2_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X2_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X2_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
endmodule


module FA_1bit_351 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_352 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module ROW_MUL_9 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n17, n18, n19, n20, n21, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] ,
         \_0_net_[28] , \_0_net_[27] , \_0_net_[26] , \_0_net_[25] ,
         \_0_net_[24] , \_0_net_[23] , \_0_net_[22] , \_0_net_[21] ,
         \_0_net_[20] , \_0_net_[19] , \_0_net_[18] , \_0_net_[17] ,
         \_0_net_[16] , \_0_net_[15] , \_0_net_[14] , \_0_net_[13] ,
         \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , \_0_net_[9] ,
         \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] ,
         \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n3, n5,
         n6, n7, n9, n11, n12, n13, n14, n15;
  tri   B;

  FA_1bit_352 \ROW[0]  ( .A(\_0_net_[0] ), .B(n12), .Cin(Cin[0]), .C(Sout[0]), 
        .Cout(Cout[0]) );
  FA_1bit_351 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_350 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_349 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_348 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_347 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_346 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_345 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_344 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_343 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(n21) );
  FA_1bit_342 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        n17), .Cout(n20) );
  FA_1bit_341 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_340 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_339 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_338 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(n6), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_337 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_336 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_335 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(n19) );
  FA_1bit_334 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_333 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_332 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_331 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_330 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_329 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_328 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(n18) );
  FA_1bit_327 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(n14), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_326 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_325 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_324 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_323 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_322 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_321 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X4_RVT U1 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  INVX1_RVT U2 ( .A(n1), .Y(Cout[10]) );
  IBUFFX4_RVT U3 ( .A(n20), .Y(n1) );
  INVX2_RVT U4 ( .A(n13), .Y(n14) );
  IBUFFX4_RVT U5 ( .A(Cin[25]), .Y(n13) );
  INVX2_RVT U6 ( .A(n7), .Y(Cout[9]) );
  IBUFFX4_RVT U7 ( .A(n18), .Y(n15) );
  INVX2_RVT U8 ( .A(n19), .Y(n3) );
  IBUFFX16_RVT U9 ( .A(n3), .Y(Cout[17]) );
  IBUFFX16_RVT U10 ( .A(n21), .Y(n7) );
  INVX4_RVT U11 ( .A(n9), .Y(Sout[10]) );
  IBUFFX4_RVT U12 ( .A(Cin[14]), .Y(n5) );
  INVX2_RVT U13 ( .A(n5), .Y(n6) );
  IBUFFX32_RVT U14 ( .A(n17), .Y(n9) );
  IBUFFX4_RVT U15 ( .A(n15), .Y(Cout[24]) );
  IBUFFX4_RVT U16 ( .A(Sin[0]), .Y(n11) );
  INVX2_RVT U17 ( .A(n11), .Y(n12) );
  AND2X1_RVT U18 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U19 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U20 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U21 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U22 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U23 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U24 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U25 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U26 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U27 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U28 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U29 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U30 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U31 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U32 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U33 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U34 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U35 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U36 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U37 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U38 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U39 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U40 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U41 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U42 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U43 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U44 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U45 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U46 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U47 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U48 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_353 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_354 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_355 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(n2), .A2(Cin), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_356 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_357 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;

  INVX8_RVT U1 ( .A(n3), .Y(n2) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  XNOR2X2_RVT U3 ( .A1(n2), .A2(Cin), .Y(C) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_358 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO22X2_RVT U1 ( .A1(n2), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_359 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_360 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  INVX1_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_361 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_362 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_363 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX1_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(n2), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_364 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  DELLN3X2_RVT U1 ( .A(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(n1), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_365 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(Cin), .Y(n3) );
  INVX2_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n4), .A2(n5), .Y(C) );
  XOR2X2_RVT U6 ( .A1(n2), .A2(A), .Y(n5) );
  AO22X1_RVT U7 ( .A1(n4), .A2(n5), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_366 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(B), .Y(n3) );
  INVX2_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n2), .A2(n5), .Y(C) );
  XNOR2X2_RVT U6 ( .A1(n4), .A2(n6), .Y(n5) );
  INVX0_RVT U7 ( .A(A), .Y(n6) );
  AO22X1_RVT U8 ( .A1(n5), .A2(n2), .A3(n4), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_367 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_368 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(n3), .Y(C) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n1) );
  XNOR2X2_RVT U3 ( .A1(B), .A2(n2), .Y(n3) );
  IBUFFX8_RVT U4 ( .A(A), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_369 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_370 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_371 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_372 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX8_RVT U1 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_373 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX4_RVT U1 ( .A(n1), .Y(n3) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_374 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_375 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_376 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_377 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n7, n1, n3, n4, n5, n6;

  IBUFFX4_RVT U1 ( .A(n7), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(Cout) );
  INVX1_RVT U3 ( .A(A), .Y(n3) );
  INVX1_RVT U4 ( .A(n3), .Y(n4) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n5), .A3(B), .A4(n4), .Y(n7) );
  XNOR2X1_RVT U6 ( .A1(n4), .A2(n6), .Y(n5) );
  IBUFFX4_RVT U7 ( .A(B), .Y(n6) );
  XOR2X1_RVT U8 ( .A1(Cin), .A2(n5), .Y(C) );
endmodule


module FA_1bit_378 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(n3), .Y(C) );
  INVX0_RVT U2 ( .A(A), .Y(n1) );
  INVX0_RVT U3 ( .A(B), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n3), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_379 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  INVX0_RVT U2 ( .A(A), .Y(n1) );
  INVX0_RVT U3 ( .A(B), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n3), .Y(n2) );
  XNOR3X1_RVT U5 ( .A1(Cin), .A2(A), .A3(n3), .Y(C) );
endmodule


module FA_1bit_380 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  IBUFFX32_RVT U2 ( .A(B), .Y(n3) );
  INVX0_RVT U3 ( .A(A), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n3), .Y(n2) );
  XNOR3X1_RVT U5 ( .A1(Cin), .A2(A), .A3(n3), .Y(C) );
endmodule


module FA_1bit_381 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  OA21X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X2_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  XOR3X2_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
endmodule


module FA_1bit_382 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  AO21X2_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X2_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_383 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_384 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  INVX2_RVT U3 ( .A(n3), .Y(n6) );
  XNOR2X1_RVT U4 ( .A1(A), .A2(n2), .Y(n3) );
  IBUFFX32_RVT U5 ( .A(Cin), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(n4), .Y(n5) );
  XOR2X2_RVT U7 ( .A1(n5), .A2(n6), .Y(C) );
  AO22X1_RVT U8 ( .A1(n5), .A2(n6), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module ROW_MUL_10 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n17, n18, n19, n20, n21, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] ,
         \_0_net_[28] , \_0_net_[27] , \_0_net_[26] , \_0_net_[25] ,
         \_0_net_[24] , \_0_net_[23] , \_0_net_[22] , \_0_net_[21] ,
         \_0_net_[20] , \_0_net_[19] , \_0_net_[18] , \_0_net_[17] ,
         \_0_net_[16] , \_0_net_[15] , \_0_net_[14] , \_0_net_[13] ,
         \_0_net_[12] , \_0_net_[11] , \_0_net_[10] , \_0_net_[9] ,
         \_0_net_[8] , \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] ,
         \_0_net_[3] , \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n3, n4,
         n5, n6, n7, n9, n11, n13, n14, n15;
  tri   B;

  FA_1bit_384 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_383 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_382 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(n17), 
        .Cout(Cout[2]) );
  FA_1bit_381 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_380 \ROW[4]  ( .A(\_0_net_[4] ), .B(n14), .Cin(Cin[4]), .C(Sout[4]), 
        .Cout(Cout[4]) );
  FA_1bit_379 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_378 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_377 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_376 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_375 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_374 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_373 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_372 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_371 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_370 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_369 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(n4), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_368 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(n21) );
  FA_1bit_367 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(n20) );
  FA_1bit_366 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_365 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_364 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(n19) );
  FA_1bit_363 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_362 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_361 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_360 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(n6), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_359 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_358 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(n18) );
  FA_1bit_357 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_356 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_355 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_354 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_353 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  IBUFFX32_RVT U1 ( .A(n18), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(Cout[26]) );
  IBUFFX4_RVT U3 ( .A(Cin[15]), .Y(n3) );
  INVX1_RVT U4 ( .A(n3), .Y(n4) );
  IBUFFX32_RVT U5 ( .A(Cin[24]), .Y(n5) );
  INVX1_RVT U6 ( .A(n5), .Y(n6) );
  IBUFFX4_RVT U7 ( .A(n19), .Y(n7) );
  INVX2_RVT U8 ( .A(n7), .Y(Cout[20]) );
  IBUFFX4_RVT U9 ( .A(n20), .Y(n9) );
  INVX2_RVT U10 ( .A(n9), .Y(Cout[17]) );
  IBUFFX32_RVT U11 ( .A(n21), .Y(n11) );
  IBUFFX4_RVT U12 ( .A(n11), .Y(Cout[16]) );
  INVX1_RVT U13 ( .A(n15), .Y(Sout[2]) );
  INVX1_RVT U14 ( .A(n17), .Y(n15) );
  IBUFFX32_RVT U15 ( .A(Sin[4]), .Y(n13) );
  INVX8_RVT U16 ( .A(n13), .Y(n14) );
  AND2X1_RVT U17 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U18 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U19 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U20 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U21 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U22 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U23 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U24 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U25 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U26 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U27 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U28 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U29 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U30 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U31 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U32 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U33 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U34 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U35 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U36 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U37 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U38 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U39 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U40 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U41 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U42 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U43 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U44 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U45 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U46 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U47 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U48 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_385 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_386 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_387 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n4), .Y(C) );
  INVX1_RVT U1 ( .A(n3), .Y(n2) );
  INVX1_RVT U3 ( .A(A), .Y(n3) );
  XNOR2X2_RVT U4 ( .A1(n3), .A2(B), .Y(n4) );
  AO22X1_RVT U5 ( .A1(n2), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_388 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X2_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
  XNOR2X1_RVT U3 ( .A1(n2), .A2(B), .Y(n3) );
  IBUFFX8_RVT U4 ( .A(A), .Y(n2) );
endmodule


module FA_1bit_389 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  AO22X2_RVT U1 ( .A1(n2), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  IBUFFX4_RVT U2 ( .A(Cin), .Y(n1) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  INVX2_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n2), .A2(n4), .Y(C) );
  XNOR2X1_RVT U6 ( .A1(B), .A2(A), .Y(n3) );
endmodule


module FA_1bit_390 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_391 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX32_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U5 ( .A1(n2), .A2(n3), .Y(C) );
endmodule


module FA_1bit_392 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX4_RVT U1 ( .A(n5), .Y(n2) );
  IBUFFX2_RVT U2 ( .A(B), .Y(n5) );
  XOR2X2_RVT U3 ( .A1(n1), .A2(n2), .Y(n6) );
  IBUFFX8_RVT U4 ( .A(n4), .Y(n1) );
  XNOR2X1_RVT U5 ( .A1(n3), .A2(n6), .Y(C) );
  IBUFFX8_RVT U6 ( .A(Cin), .Y(n3) );
  IBUFFX8_RVT U7 ( .A(A), .Y(n4) );
  AO22X1_RVT U8 ( .A1(Cin), .A2(n6), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_393 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_394 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(B), .A2(n1), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_395 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_396 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_397 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_398 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  DELLN1X2_RVT U2 ( .A(Cin), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(n1), .A2(n2), .Y(C) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_399 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(B), .A2(n2), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_400 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX8_RVT U2 ( .A(n2), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_401 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X2_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_402 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_403 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_404 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(n4), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(n2), .Y(C) );
  IBUFFX4_RVT U4 ( .A(Cin), .Y(n3) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_405 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  OAI22X2_RVT U1 ( .A1(n1), .A2(n2), .A3(n3), .A4(n4), .Y(Cout) );
  IBUFFX4_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX32_RVT U3 ( .A(n5), .Y(n2) );
  IBUFFX8_RVT U4 ( .A(B), .Y(n3) );
  IBUFFX8_RVT U5 ( .A(A), .Y(n4) );
  XOR2X2_RVT U6 ( .A1(B), .A2(A), .Y(n5) );
  XOR2X2_RVT U7 ( .A1(Cin), .A2(n5), .Y(C) );
endmodule


module FA_1bit_406 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n3) );
  IBUFFX2_RVT U2 ( .A(Cin), .Y(n1) );
  INVX2_RVT U3 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_407 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_408 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_409 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR3X2_RVT U1 ( .A1(Cin), .A2(n2), .A3(B), .Y(C) );
  OA21X2_RVT U2 ( .A1(B), .A2(n2), .A3(Cin), .Y(n3) );
  INVX0_RVT U3 ( .A(A), .Y(n1) );
  INVX1_RVT U4 ( .A(n1), .Y(n2) );
  AO21X1_RVT U5 ( .A1(B), .A2(n2), .A3(n3), .Y(Cout) );
endmodule


module FA_1bit_410 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  NBUFFX32_RVT U1 ( .A(n4), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(B), .Y(n4) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n1), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XNOR3X1_RVT U6 ( .A1(Cin), .A2(A), .A3(n1), .Y(C) );
endmodule


module FA_1bit_411 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X2_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_412 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO21X2_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  XOR3X2_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  OA21X2_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_413 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_414 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  OR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR3X2_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
endmodule


module FA_1bit_415 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(n3), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(B), .Y(n2) );
  INVX2_RVT U4 ( .A(n2), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(n3), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_416 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n3) );
  XOR2X1_RVT U3 ( .A1(n2), .A2(B), .Y(n1) );
  INVX1_RVT U4 ( .A(A), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module ROW_MUL_11 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n13, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n7, n8,
         n9, n10, n11, n12;
  tri   B;

  FA_1bit_416 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_415 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_414 \ROW[2]  ( .A(\_0_net_[2] ), .B(n10), .Cin(Cin[2]), .C(Sout[2]), 
        .Cout(Cout[2]) );
  FA_1bit_413 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_412 \ROW[4]  ( .A(\_0_net_[4] ), .B(n12), .Cin(Cin[4]), .C(Sout[4]), 
        .Cout(Cout[4]) );
  FA_1bit_411 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_410 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_409 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_408 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_407 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_406 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_405 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_404 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_403 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_402 \ROW[14]  ( .A(\_0_net_[14] ), .B(n4), .Cin(n2), .C(Sout[14]), 
        .Cout(Cout[14]) );
  FA_1bit_401 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_400 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(n8), .C(n13), 
        .Cout(Cout[16]) );
  FA_1bit_399 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_398 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_397 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_396 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_395 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_394 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_393 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_392 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_391 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_390 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_389 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_388 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_387 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_386 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_385 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  IBUFFX4_RVT U1 ( .A(Cin[14]), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  AND2X4_RVT U3 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  IBUFFX4_RVT U4 ( .A(Sin[14]), .Y(n3) );
  INVX2_RVT U5 ( .A(n3), .Y(n4) );
  IBUFFX16_RVT U6 ( .A(n13), .Y(n5) );
  INVX8_RVT U7 ( .A(n5), .Y(Sout[16]) );
  IBUFFX4_RVT U8 ( .A(Cin[16]), .Y(n7) );
  INVX2_RVT U9 ( .A(n7), .Y(n8) );
  INVX0_RVT U10 ( .A(n11), .Y(n12) );
  IBUFFX16_RVT U11 ( .A(Sin[4]), .Y(n11) );
  IBUFFX4_RVT U12 ( .A(Sin[2]), .Y(n9) );
  INVX1_RVT U13 ( .A(n9), .Y(n10) );
  AND2X1_RVT U14 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U15 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U16 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U17 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U18 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U19 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U20 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U21 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U22 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U23 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U24 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U25 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U26 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U27 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U28 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U29 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U30 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U31 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U32 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U33 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U34 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U35 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U36 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U37 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U38 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U39 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U40 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U41 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U42 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U43 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U44 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_417 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_418 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_419 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_420 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_421 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_422 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_423 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_424 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX2_RVT U2 ( .A(n3), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n1), .A2(n2), .Y(C) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_425 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_426 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_427 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  OR2X1_RVT U1 ( .A1(B), .A2(n2), .Y(n4) );
  INVX4_RVT U2 ( .A(A), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(n1), .A2(n5), .Y(C) );
  IBUFFX8_RVT U4 ( .A(Cin), .Y(n1) );
  NAND2X2_RVT U5 ( .A1(n3), .A2(n4), .Y(n5) );
  NAND2X0_RVT U6 ( .A1(B), .A2(n2), .Y(n3) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_428 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_429 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(n1), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_430 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
endmodule


module FA_1bit_431 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n4) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  IBUFFX32_RVT U3 ( .A(Cin), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(n2), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(n3), .A2(n4), .Y(C) );
  AO22X1_RVT U6 ( .A1(n3), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_432 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_433 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_434 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  DELLN2X2_RVT U1 ( .A(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X2_RVT U3 ( .A1(Cin), .A2(n2), .A3(n1), .A4(A), .Y(Cout) );
  XOR2X2_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
endmodule


module FA_1bit_435 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_436 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_437 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX2_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX16_RVT U2 ( .A(n1), .Y(n2) );
  INVX4_RVT U3 ( .A(B), .Y(n4) );
  XOR2X2_RVT U4 ( .A1(n2), .A2(n3), .Y(C) );
  XNOR2X1_RVT U5 ( .A1(A), .A2(n4), .Y(n3) );
  AO22X1_RVT U6 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_438 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U2 ( .A(Cin), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(n2), .A2(n3), .Y(C) );
  XOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_439 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_440 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  INVX0_RVT U3 ( .A(B), .Y(n2) );
  XNOR3X1_RVT U4 ( .A1(Cin), .A2(A), .A3(n2), .Y(C) );
endmodule


module FA_1bit_441 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XNOR3X2_RVT U1 ( .A1(Cin), .A2(n2), .A3(n4), .Y(C) );
  OA21X2_RVT U2 ( .A1(B), .A2(n2), .A3(Cin), .Y(n3) );
  INVX1_RVT U3 ( .A(A), .Y(n1) );
  INVX1_RVT U4 ( .A(n1), .Y(n2) );
  AO21X1_RVT U5 ( .A1(B), .A2(n2), .A3(n3), .Y(Cout) );
  INVX0_RVT U6 ( .A(B), .Y(n4) );
endmodule


module FA_1bit_442 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(B), .Y(n3) );
  INVX0_RVT U2 ( .A(A), .Y(n1) );
  NAND2X0_RVT U3 ( .A1(n1), .A2(n3), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR3X1_RVT U5 ( .A1(Cin), .A2(A), .A3(n3), .Y(C) );
endmodule


module FA_1bit_443 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_444 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_445 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_446 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  IBUFFX4_RVT U1 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(n2), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_447 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_448 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module ROW_MUL_12 ( A, B, Sin, Cin, Sout, Cout );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11;
  tri   B;

  FA_1bit_448 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_447 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_446 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_445 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_444 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_443 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_442 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_441 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_440 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_439 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(n11), .C(Sout[9]), 
        .Cout(Cout[9]) );
  FA_1bit_438 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_437 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_436 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_435 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(n7), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_434 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_433 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_432 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_431 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_430 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_429 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_428 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_427 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(n5), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_426 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_425 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_424 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_423 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_422 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(n9), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_421 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_420 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(n3), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_419 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_418 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_417 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  NBUFFX8_RVT U1 ( .A(B), .Y(n1) );
  IBUFFX2_RVT U2 ( .A(Cin[26]), .Y(n8) );
  IBUFFX32_RVT U3 ( .A(Cin[28]), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(n2), .Y(n3) );
  IBUFFX32_RVT U5 ( .A(Cin[21]), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(n4), .Y(n5) );
  IBUFFX4_RVT U7 ( .A(Cin[13]), .Y(n6) );
  INVX2_RVT U8 ( .A(n6), .Y(n7) );
  IBUFFX4_RVT U9 ( .A(n8), .Y(n9) );
  INVX1_RVT U10 ( .A(Cin[9]), .Y(n10) );
  INVX2_RVT U11 ( .A(n10), .Y(n11) );
  AND2X1_RVT U12 ( .A1(A[23]), .A2(n1), .Y(\_0_net_[23] ) );
  AND2X1_RVT U13 ( .A1(A[24]), .A2(n1), .Y(\_0_net_[24] ) );
  AND2X1_RVT U14 ( .A1(A[25]), .A2(n1), .Y(\_0_net_[25] ) );
  AND2X1_RVT U15 ( .A1(A[22]), .A2(n1), .Y(\_0_net_[22] ) );
  AND2X1_RVT U16 ( .A1(A[21]), .A2(n1), .Y(\_0_net_[21] ) );
  AND2X1_RVT U17 ( .A1(A[30]), .A2(n1), .Y(\_0_net_[30] ) );
  AND2X1_RVT U18 ( .A1(A[31]), .A2(n1), .Y(\_0_net_[31] ) );
  AND2X1_RVT U19 ( .A1(A[29]), .A2(n1), .Y(\_0_net_[29] ) );
  AND2X1_RVT U20 ( .A1(A[26]), .A2(n1), .Y(\_0_net_[26] ) );
  AND2X1_RVT U21 ( .A1(A[27]), .A2(n1), .Y(\_0_net_[27] ) );
  AND2X1_RVT U22 ( .A1(A[28]), .A2(n1), .Y(\_0_net_[28] ) );
  AND2X1_RVT U23 ( .A1(A[20]), .A2(n1), .Y(\_0_net_[20] ) );
  AND2X1_RVT U24 ( .A1(A[19]), .A2(n1), .Y(\_0_net_[19] ) );
  AND2X1_RVT U25 ( .A1(A[18]), .A2(n1), .Y(\_0_net_[18] ) );
  AND2X1_RVT U26 ( .A1(A[17]), .A2(n1), .Y(\_0_net_[17] ) );
  AND2X1_RVT U27 ( .A1(A[16]), .A2(n1), .Y(\_0_net_[16] ) );
  AND2X1_RVT U28 ( .A1(A[15]), .A2(n1), .Y(\_0_net_[15] ) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(n1), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[13]), .A2(n1), .Y(\_0_net_[13] ) );
  AND2X1_RVT U31 ( .A1(A[12]), .A2(n1), .Y(\_0_net_[12] ) );
  AND2X1_RVT U32 ( .A1(A[11]), .A2(n1), .Y(\_0_net_[11] ) );
  AND2X1_RVT U33 ( .A1(A[10]), .A2(n1), .Y(\_0_net_[10] ) );
  AND2X1_RVT U34 ( .A1(A[9]), .A2(n1), .Y(\_0_net_[9] ) );
  AND2X1_RVT U35 ( .A1(A[8]), .A2(n1), .Y(\_0_net_[8] ) );
  AND2X1_RVT U36 ( .A1(A[7]), .A2(n1), .Y(\_0_net_[7] ) );
  AND2X1_RVT U37 ( .A1(A[6]), .A2(n1), .Y(\_0_net_[6] ) );
  AND2X1_RVT U38 ( .A1(A[5]), .A2(n1), .Y(\_0_net_[5] ) );
  AND2X1_RVT U39 ( .A1(A[4]), .A2(n1), .Y(\_0_net_[4] ) );
  AND2X1_RVT U40 ( .A1(A[3]), .A2(n1), .Y(\_0_net_[3] ) );
  AND2X1_RVT U41 ( .A1(A[2]), .A2(n1), .Y(\_0_net_[2] ) );
  AND2X1_RVT U42 ( .A1(A[1]), .A2(n1), .Y(\_0_net_[1] ) );
  AND2X1_RVT U43 ( .A1(A[0]), .A2(n1), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_449 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_450 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XNOR2X2_RVT U1 ( .A1(n2), .A2(n4), .Y(C) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n2) );
  XNOR2X2_RVT U3 ( .A1(n3), .A2(B), .Y(n4) );
  IBUFFX8_RVT U4 ( .A(A), .Y(n3) );
  AO22X1_RVT U5 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_451 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  XOR2X2_RVT U1 ( .A1(n6), .A2(n1), .Y(C) );
  INVX4_RVT U2 ( .A(Cin), .Y(n6) );
  XNOR2X1_RVT U3 ( .A1(n2), .A2(n5), .Y(n1) );
  OA22X2_RVT U4 ( .A1(n4), .A2(n5), .A3(n6), .A4(n1), .Y(n3) );
  INVX0_RVT U5 ( .A(n3), .Y(Cout) );
  IBUFFX8_RVT U6 ( .A(A), .Y(n2) );
  INVX4_RVT U7 ( .A(B), .Y(n5) );
  IBUFFX8_RVT U8 ( .A(A), .Y(n4) );
endmodule


module FA_1bit_452 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX4_RVT U1 ( .A(B), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(A), .A2(n3), .Y(n1) );
  INVX4_RVT U3 ( .A(n1), .Y(n5) );
  INVX1_RVT U4 ( .A(n2), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(n4), .A2(n1), .Y(C) );
  IBUFFX8_RVT U6 ( .A(Cin), .Y(n4) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(n3), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_453 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(B), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(A), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_454 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_455 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX16_RVT U1 ( .A(n3), .Y(n1) );
  INVX0_RVT U2 ( .A(n1), .Y(n2) );
  INVX2_RVT U3 ( .A(n2), .Y(n4) );
  XNOR2X1_RVT U4 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_456 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_457 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_458 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX2_RVT U1 ( .A(B), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(Cin), .Y(n3) );
  IBUFFX2_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n4), .A2(n5), .Y(C) );
  XOR2X2_RVT U6 ( .A1(n2), .A2(A), .Y(n5) );
  AO22X1_RVT U7 ( .A1(n4), .A2(n5), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_459 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  IBUFFX8_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_460 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_461 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_462 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(n1), .A2(Cin), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_463 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX16_RVT U1 ( .A(Cin), .Y(n3) );
  XOR2X1_RVT U2 ( .A1(n3), .A2(n2), .Y(C) );
  INVX1_RVT U3 ( .A(n4), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(n1), .Y(n2) );
  INVX0_RVT U5 ( .A(n5), .Y(n4) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n5) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_464 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_465 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX0_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U5 ( .A1(n2), .A2(n3), .Y(C) );
endmodule


module FA_1bit_466 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
  INVX1_RVT U2 ( .A(n4), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n2) );
  INVX1_RVT U4 ( .A(n5), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n3), .A2(n2), .Y(C) );
  IBUFFX8_RVT U6 ( .A(Cin), .Y(n3) );
  XOR2X2_RVT U7 ( .A1(A), .A2(B), .Y(n5) );
endmodule


module FA_1bit_467 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(B), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(n2), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_468 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_469 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_470 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_471 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_472 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_473 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX1_RVT U1 ( .A(B), .Y(n5) );
  XNOR3X1_RVT U2 ( .A1(Cin), .A2(n2), .A3(n5), .Y(C) );
  IBUFFX4_RVT U3 ( .A(A), .Y(n1) );
  INVX1_RVT U4 ( .A(n1), .Y(n2) );
  INVX0_RVT U5 ( .A(n2), .Y(n3) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n5), .Y(n4) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n4), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_474 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  OA21X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X2_RVT U2 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_475 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  NAND2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(n3) );
  IBUFFX16_RVT U2 ( .A(Cin), .Y(n1) );
  NAND2X0_RVT U3 ( .A1(n1), .A2(B), .Y(n4) );
  NAND2X1_RVT U4 ( .A1(n3), .A2(n4), .Y(n5) );
  IBUFFX2_RVT U5 ( .A(B), .Y(n2) );
  OA21X2_RVT U6 ( .A1(B), .A2(A), .A3(Cin), .Y(n6) );
  AO21X2_RVT U7 ( .A1(B), .A2(A), .A3(n6), .Y(Cout) );
  XOR2X2_RVT U8 ( .A1(A), .A2(n5), .Y(C) );
endmodule


module FA_1bit_476 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  OR2X1_RVT U1 ( .A1(n1), .A2(n4), .Y(Cout) );
  AND2X1_RVT U2 ( .A1(n3), .A2(A), .Y(n1) );
  IBUFFX2_RVT U3 ( .A(n2), .Y(n3) );
  XOR3X1_RVT U4 ( .A1(n3), .A2(A), .A3(Cin), .Y(C) );
  IBUFFX16_RVT U5 ( .A(B), .Y(n2) );
  OA21X1_RVT U6 ( .A1(n3), .A2(A), .A3(Cin), .Y(n4) );
endmodule


module FA_1bit_477 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_478 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n4), .Y(C) );
  INVX1_RVT U2 ( .A(n2), .Y(n4) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U4 ( .A(n3), .Y(n1) );
  XNOR2X1_RVT U5 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_479 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(n2), .A2(B), .Y(n3) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX1_RVT U3 ( .A(A), .Y(n1) );
  INVX1_RVT U4 ( .A(n1), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_480 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module ROW_MUL_13 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n17, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n13, n14, n15, n16;
  tri   B;

  FA_1bit_480 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_479 \ROW[1]  ( .A(\_0_net_[1] ), .B(n16), .Cin(Cin[1]), .C(Sout[1]), 
        .Cout(Cout[1]) );
  FA_1bit_478 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_477 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_476 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_475 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_474 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_473 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_472 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_471 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_470 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_469 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(n8), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_468 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        n17), .Cout(Cout[12]) );
  FA_1bit_467 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(n10), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_466 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_465 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_464 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_463 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_462 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_461 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_460 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_459 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(n6), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_458 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_457 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(n2), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_456 \ROW[24]  ( .A(\_0_net_[24] ), .B(n14), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_455 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_454 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(n4), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_453 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_452 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_451 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_450 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_449 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  IBUFFX4_RVT U2 ( .A(Cin[23]), .Y(n1) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX2_RVT U4 ( .A(Cin[26]), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(Cin[21]), .Y(n5) );
  IBUFFX4_RVT U7 ( .A(n5), .Y(n6) );
  IBUFFX8_RVT U8 ( .A(n9), .Y(n10) );
  IBUFFX32_RVT U9 ( .A(Cin[13]), .Y(n9) );
  IBUFFX32_RVT U10 ( .A(Cin[11]), .Y(n7) );
  IBUFFX4_RVT U11 ( .A(n7), .Y(n8) );
  INVX0_RVT U12 ( .A(n17), .Y(n11) );
  IBUFFX4_RVT U13 ( .A(n11), .Y(Sout[12]) );
  IBUFFX2_RVT U14 ( .A(Sin[24]), .Y(n13) );
  IBUFFX4_RVT U15 ( .A(n13), .Y(n14) );
  IBUFFX2_RVT U16 ( .A(Sin[1]), .Y(n15) );
  IBUFFX4_RVT U17 ( .A(n15), .Y(n16) );
  AND2X1_RVT U18 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U19 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U20 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U21 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U22 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U23 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U24 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U25 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U26 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U27 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U28 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U29 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U30 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U31 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U32 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U33 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U34 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U35 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U36 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U37 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U38 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U39 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U40 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U41 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U42 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U43 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U44 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U45 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U46 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U47 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U48 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_481 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n4), .Y(C) );
  XOR2X2_RVT U3 ( .A1(n3), .A2(B), .Y(n4) );
  IBUFFX16_RVT U1 ( .A(A), .Y(n2) );
  INVX1_RVT U4 ( .A(n2), .Y(n3) );
  AO22X1_RVT U5 ( .A1(n3), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_482 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX4_RVT U1 ( .A(n2), .Y(n1) );
  INVX1_RVT U2 ( .A(n4), .Y(n5) );
  INVX1_RVT U3 ( .A(Cin), .Y(n4) );
  XNOR2X1_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  IBUFFX4_RVT U5 ( .A(n2), .Y(n3) );
  XOR2X2_RVT U6 ( .A1(n5), .A2(n1), .Y(C) );
  AO22X1_RVT U7 ( .A1(A), .A2(B), .A3(n5), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_483 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n6, n1, n3, n4, n5;

  IBUFFX32_RVT U1 ( .A(n6), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(n4), .A2(n5), .Y(C) );
  IBUFFX32_RVT U4 ( .A(Cin), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n5) );
  AO22X1_RVT U7 ( .A1(n4), .A2(n5), .A3(B), .A4(A), .Y(n6) );
endmodule


module FA_1bit_484 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(n1), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_485 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n5, n1, n3, n4;

  INVX1_RVT U1 ( .A(n5), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(Cout) );
  XNOR2X2_RVT U3 ( .A1(A), .A2(n3), .Y(n4) );
  INVX8_RVT U4 ( .A(B), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(n5) );
endmodule


module FA_1bit_486 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n5), .A3(n4), .A4(A), .Y(Cout) );
  INVX2_RVT U2 ( .A(n1), .Y(n5) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(n2), .Y(n1) );
  IBUFFX8_RVT U4 ( .A(A), .Y(n2) );
  IBUFFX32_RVT U5 ( .A(B), .Y(n3) );
  INVX2_RVT U6 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U7 ( .A1(Cin), .A2(n5), .Y(C) );
endmodule


module FA_1bit_487 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_488 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  IBUFFX16_RVT U1 ( .A(A), .Y(n1) );
  XNOR2X2_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_489 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(n1), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_490 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  IBUFFX4_RVT U1 ( .A(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(n2), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_491 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  IBUFFX4_RVT U1 ( .A(A), .Y(n1) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(n2), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_492 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_493 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_494 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  AO22X2_RVT U3 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(n2), .A2(n3), .Y(C) );
endmodule


module FA_1bit_495 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_496 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  IBUFFX16_RVT U2 ( .A(A), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_497 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(B), .A2(n1), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  AO22X1_RVT U4 ( .A1(n2), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_498 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_499 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX0_RVT U1 ( .A(A), .Y(n1) );
  XNOR2X2_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_500 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_501 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_502 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  AO21X2_RVT U1 ( .A1(B), .A2(A), .A3(n6), .Y(Cout) );
  XNOR3X1_RVT U2 ( .A1(n1), .A2(A), .A3(B), .Y(C) );
  IBUFFX8_RVT U3 ( .A(Cin), .Y(n1) );
  IBUFFX16_RVT U4 ( .A(B), .Y(n3) );
  AO21X1_RVT U5 ( .A1(n3), .A2(n4), .A3(n5), .Y(n2) );
  IBUFFX8_RVT U6 ( .A(n2), .Y(n6) );
  IBUFFX8_RVT U7 ( .A(A), .Y(n4) );
  IBUFFX8_RVT U8 ( .A(Cin), .Y(n5) );
endmodule


module FA_1bit_503 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  INVX0_RVT U3 ( .A(B), .Y(n2) );
  XNOR3X1_RVT U4 ( .A1(Cin), .A2(A), .A3(n2), .Y(C) );
endmodule


module FA_1bit_504 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  INVX0_RVT U3 ( .A(B), .Y(n2) );
  XNOR3X1_RVT U4 ( .A1(Cin), .A2(A), .A3(n2), .Y(C) );
endmodule


module FA_1bit_505 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(A), .Y(n3) );
  XNOR3X2_RVT U2 ( .A1(Cin), .A2(B), .A3(n3), .Y(C) );
  INVX0_RVT U3 ( .A(B), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(n3), .A2(n1), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_506 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  XNOR2X1_RVT U1 ( .A1(Cin), .A2(A), .Y(n1) );
  XNOR2X2_RVT U2 ( .A1(n2), .A2(n5), .Y(C) );
  INVX0_RVT U3 ( .A(n1), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  NAND2X4_RVT U5 ( .A1(n3), .A2(n5), .Y(n4) );
  IBUFFX32_RVT U6 ( .A(B), .Y(n5) );
  INVX0_RVT U7 ( .A(A), .Y(n3) );
endmodule


module FA_1bit_507 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NAND2X0_RVT U1 ( .A1(Cin), .A2(n4), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  NAND2X4_RVT U3 ( .A1(n1), .A2(n2), .Y(Cout) );
  IBUFFX4_RVT U4 ( .A(B), .Y(n3) );
  INVX0_RVT U5 ( .A(A), .Y(n5) );
  NAND2X0_RVT U6 ( .A1(n5), .A2(n3), .Y(n4) );
  XNOR3X1_RVT U7 ( .A1(Cin), .A2(B), .A3(n5), .Y(C) );
endmodule


module FA_1bit_508 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX0_RVT U2 ( .A(A), .Y(n3) );
  NAND2X0_RVT U3 ( .A1(n3), .A2(n1), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR3X1_RVT U5 ( .A1(Cin), .A2(B), .A3(n3), .Y(C) );
endmodule


module FA_1bit_509 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  INVX1_RVT U2 ( .A(A), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_510 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  INVX16_RVT U1 ( .A(n7), .Y(n1) );
  IBUFFX16_RVT U2 ( .A(n1), .Y(n2) );
  OA22X1_RVT U3 ( .A1(n4), .A2(n5), .A3(n2), .A4(n6), .Y(n3) );
  IBUFFX8_RVT U4 ( .A(n3), .Y(Cout) );
  IBUFFX8_RVT U5 ( .A(Cin), .Y(n4) );
  IBUFFX8_RVT U6 ( .A(n9), .Y(n5) );
  IBUFFX8_RVT U7 ( .A(A), .Y(n6) );
  IBUFFX32_RVT U8 ( .A(B), .Y(n7) );
  XOR2X2_RVT U9 ( .A1(A), .A2(n8), .Y(n9) );
  XOR2X1_RVT U10 ( .A1(Cin), .A2(n9), .Y(C) );
  INVX2_RVT U11 ( .A(n2), .Y(n8) );
endmodule


module FA_1bit_511 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_512 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  OAI22X1_RVT U1 ( .A1(n1), .A2(n2), .A3(n4), .A4(n3), .Y(Cout) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(n7), .Y(n2) );
  IBUFFX8_RVT U4 ( .A(A), .Y(n3) );
  INVX2_RVT U5 ( .A(B), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(n4), .Y(n5) );
  XNOR2X1_RVT U7 ( .A1(n6), .A2(n5), .Y(n7) );
  INVX1_RVT U8 ( .A(A), .Y(n6) );
  XOR2X1_RVT U9 ( .A1(Cin), .A2(n7), .Y(C) );
endmodule


module ROW_MUL_14 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n11, n12, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n7, n8,
         n9;
  tri   B;

  FA_1bit_512 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_511 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_510 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_509 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_508 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_507 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_506 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_505 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_504 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_503 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_502 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(n12) );
  FA_1bit_501 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_500 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_499 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_498 \ROW[14]  ( .A(\_0_net_[14] ), .B(n8), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_497 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_496 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        n11), .Cout(Cout[16]) );
  FA_1bit_495 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(n4), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_494 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_493 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_492 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_491 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_490 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_489 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_488 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_487 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_486 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_485 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_484 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_483 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_482 \ROW[30]  ( .A(n2), .B(Sin[30]), .Cin(Cin[30]), .C(Sout[30]), 
        .Cout(Cout[30]) );
  FA_1bit_481 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  INVX4_RVT U1 ( .A(\_0_net_[30] ), .Y(n1) );
  IBUFFX8_RVT U2 ( .A(n1), .Y(n2) );
  AND2X2_RVT U3 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  IBUFFX2_RVT U4 ( .A(Cin[17]), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  INVX1_RVT U6 ( .A(n9), .Y(Sout[16]) );
  IBUFFX2_RVT U7 ( .A(n12), .Y(n5) );
  IBUFFX4_RVT U8 ( .A(n5), .Y(Cout[10]) );
  INVX0_RVT U9 ( .A(Sin[14]), .Y(n7) );
  IBUFFX4_RVT U10 ( .A(n7), .Y(n8) );
  IBUFFX2_RVT U11 ( .A(n11), .Y(n9) );
  AND2X1_RVT U12 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U13 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U14 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U15 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U16 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U17 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U18 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U19 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U20 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U21 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U22 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U23 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U24 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U25 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U26 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U27 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U28 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U29 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U30 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U31 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U33 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U34 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U35 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U36 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U37 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U38 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U39 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U40 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U41 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U42 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_0 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_513 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX2_RVT U1 ( .A(n2), .Y(n3) );
  IBUFFX2_RVT U2 ( .A(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X2_RVT U5 ( .A1(n1), .A2(B), .Y(n2) );
endmodule


module FA_1bit_514 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX0_RVT U1 ( .A(n2), .Y(n3) );
  XOR2X2_RVT U2 ( .A1(n1), .A2(B), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX0_RVT U4 ( .A(A), .Y(n1) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_515 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(B), .A2(n1), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(Cin), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_516 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_517 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX4_RVT U1 ( .A(n3), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U3 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U4 ( .A(n4), .Y(n3) );
  AO22X2_RVT U5 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n4) );
endmodule


module FA_1bit_518 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX2_RVT U1 ( .A(n4), .Y(n3) );
  IBUFFX4_RVT U2 ( .A(n3), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U4 ( .A(Cin), .Y(n1) );
  XOR2X2_RVT U5 ( .A1(A), .A2(B), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_519 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(B), .A2(n2), .Y(n1) );
  IBUFFX8_RVT U2 ( .A(n1), .Y(n3) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_520 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X2_RVT U2 ( .A1(B), .A2(n1), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_521 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  INVX2_RVT U1 ( .A(A), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  AO22X2_RVT U3 ( .A1(Cin), .A2(n6), .A3(B), .A4(n2), .Y(Cout) );
  IBUFFX16_RVT U4 ( .A(n6), .Y(n5) );
  XNOR2X2_RVT U5 ( .A1(n3), .A2(n4), .Y(C) );
  IBUFFX2_RVT U6 ( .A(n5), .Y(n4) );
  IBUFFX8_RVT U7 ( .A(Cin), .Y(n3) );
  XOR2X2_RVT U8 ( .A1(A), .A2(B), .Y(n6) );
endmodule


module FA_1bit_522 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  IBUFFX4_RVT U2 ( .A(n3), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U4 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U5 ( .A(n4), .Y(n3) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n4) );
endmodule


module FA_1bit_523 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_524 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n6), .Y(C) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(n4), .Y(n1) );
  NBUFFX2_RVT U4 ( .A(n2), .Y(n3) );
  IBUFFX16_RVT U5 ( .A(A), .Y(n4) );
  INVX1_RVT U6 ( .A(n5), .Y(n6) );
  XOR2X1_RVT U7 ( .A1(B), .A2(n3), .Y(n5) );
  AO22X1_RVT U8 ( .A1(Cin), .A2(n6), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_525 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX8_RVT U1 ( .A(n2), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_526 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX16_RVT U1 ( .A(n4), .Y(n3) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U3 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U4 ( .A(n3), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n4) );
endmodule


module FA_1bit_527 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  IBUFFX16_RVT U3 ( .A(n3), .Y(n2) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
  IBUFFX8_RVT U5 ( .A(n2), .Y(n1) );
endmodule


module FA_1bit_528 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX4_RVT U1 ( .A(n2), .Y(n1) );
  XNOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_529 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_530 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_531 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n3) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XNOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  IBUFFX8_RVT U4 ( .A(n3), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_532 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  OA21X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X2_RVT U2 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_533 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_534 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_535 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX0_RVT U1 ( .A(A), .Y(n3) );
  INVX0_RVT U2 ( .A(B), .Y(n1) );
  NAND2X0_RVT U3 ( .A1(n3), .A2(n1), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR3X1_RVT U5 ( .A1(Cin), .A2(B), .A3(n3), .Y(C) );
endmodule


module FA_1bit_536 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  OA21X2_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X2_RVT U2 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_537 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  OR2X2_RVT U1 ( .A1(n3), .A2(n4), .Y(Cout) );
  NOR2X0_RVT U2 ( .A1(n1), .A2(n2), .Y(n3) );
  IBUFFX8_RVT U3 ( .A(B), .Y(n1) );
  INVX1_RVT U4 ( .A(A), .Y(n2) );
  XOR3X2_RVT U5 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  OA21X1_RVT U6 ( .A1(B), .A2(A), .A3(Cin), .Y(n4) );
endmodule


module FA_1bit_538 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X1_RVT U3 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
endmodule


module FA_1bit_539 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X2_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_540 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X2_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_541 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX4_RVT U1 ( .A(n3), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  INVX1_RVT U3 ( .A(A), .Y(n4) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X1_RVT U5 ( .A1(n4), .A2(B), .Y(n3) );
  XOR2X2_RVT U6 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_542 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X2_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n1) );
endmodule


module FA_1bit_543 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module ROW_MUL_15 ( A, B, Sin, Cin, Sout, Cout );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21;
  tri   B;

  FA_1bit_543 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_542 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_541 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_540 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_539 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_538 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_537 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_536 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_535 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_534 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_533 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_532 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_531 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_530 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_529 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_528 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_527 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_526 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_525 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_524 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_523 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_522 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_521 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_520 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_519 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_518 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_517 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_516 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_515 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_514 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_513 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_0 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  NOR2X2_RVT U1 ( .A1(n12), .A2(n13), .Y(\_0_net_[24] ) );
  AND2X1_RVT U2 ( .A1(A[25]), .A2(n18), .Y(\_0_net_[25] ) );
  IBUFFX4_RVT U3 ( .A(A[24]), .Y(n12) );
  NOR2X0_RVT U4 ( .A1(n1), .A2(n2), .Y(\_0_net_[16] ) );
  IBUFFX8_RVT U5 ( .A(A[16]), .Y(n1) );
  IBUFFX8_RVT U6 ( .A(n18), .Y(n2) );
  NOR2X0_RVT U7 ( .A1(n3), .A2(n4), .Y(\_0_net_[21] ) );
  IBUFFX8_RVT U8 ( .A(A[21]), .Y(n3) );
  IBUFFX8_RVT U9 ( .A(n18), .Y(n4) );
  IBUFFX16_RVT U10 ( .A(A[18]), .Y(n5) );
  IBUFFX4_RVT U11 ( .A(n5), .Y(n6) );
  OR2X1_RVT U12 ( .A1(n8), .A2(n9), .Y(n7) );
  IBUFFX8_RVT U13 ( .A(n7), .Y(\_0_net_[1] ) );
  IBUFFX8_RVT U14 ( .A(A[1]), .Y(n8) );
  IBUFFX8_RVT U15 ( .A(n18), .Y(n9) );
  DELLN3X2_RVT U16 ( .A(A[26]), .Y(n10) );
  AND2X4_RVT U17 ( .A1(A[11]), .A2(n18), .Y(\_0_net_[11] ) );
  DELLN3X2_RVT U18 ( .A(A[27]), .Y(n11) );
  IBUFFX8_RVT U19 ( .A(n18), .Y(n13) );
  OR2X1_RVT U20 ( .A1(n15), .A2(n16), .Y(n14) );
  IBUFFX8_RVT U21 ( .A(n14), .Y(\_0_net_[20] ) );
  IBUFFX8_RVT U22 ( .A(A[20]), .Y(n15) );
  IBUFFX8_RVT U23 ( .A(n18), .Y(n16) );
  AND2X4_RVT U24 ( .A1(A[22]), .A2(n18), .Y(\_0_net_[22] ) );
  AND2X4_RVT U25 ( .A1(A[15]), .A2(n18), .Y(\_0_net_[15] ) );
  AND2X4_RVT U26 ( .A1(A[28]), .A2(n18), .Y(\_0_net_[28] ) );
  AND2X4_RVT U27 ( .A1(A[17]), .A2(n18), .Y(\_0_net_[17] ) );
  AND2X4_RVT U28 ( .A1(n6), .A2(n18), .Y(\_0_net_[18] ) );
  INVX32_RVT U29 ( .A(n19), .Y(\_0_net_[13] ) );
  AND2X4_RVT U30 ( .A1(A[12]), .A2(n18), .Y(\_0_net_[12] ) );
  AND2X4_RVT U31 ( .A1(n11), .A2(n18), .Y(\_0_net_[27] ) );
  AND2X4_RVT U32 ( .A1(A[23]), .A2(n18), .Y(\_0_net_[23] ) );
  AND2X4_RVT U33 ( .A1(n10), .A2(n18), .Y(\_0_net_[26] ) );
  AND2X4_RVT U34 ( .A1(A[3]), .A2(n18), .Y(\_0_net_[3] ) );
  INVX8_RVT U35 ( .A(n17), .Y(n18) );
  IBUFFX4_RVT U36 ( .A(B), .Y(n17) );
  AND2X4_RVT U37 ( .A1(A[7]), .A2(n18), .Y(\_0_net_[7] ) );
  INVX1_RVT U38 ( .A(A[31]), .Y(n20) );
  INVX1_RVT U39 ( .A(n18), .Y(n21) );
  NAND2X0_RVT U40 ( .A1(A[13]), .A2(n18), .Y(n19) );
  NOR2X0_RVT U41 ( .A1(n20), .A2(n21), .Y(\_0_net_[31] ) );
  AND2X1_RVT U42 ( .A1(A[30]), .A2(n18), .Y(\_0_net_[30] ) );
  AND2X1_RVT U43 ( .A1(A[29]), .A2(n18), .Y(\_0_net_[29] ) );
  AND2X1_RVT U44 ( .A1(A[19]), .A2(n18), .Y(\_0_net_[19] ) );
  AND2X1_RVT U45 ( .A1(A[14]), .A2(n18), .Y(\_0_net_[14] ) );
  AND2X1_RVT U46 ( .A1(A[10]), .A2(n18), .Y(\_0_net_[10] ) );
  AND2X1_RVT U47 ( .A1(A[9]), .A2(n18), .Y(\_0_net_[9] ) );
  AND2X1_RVT U48 ( .A1(A[8]), .A2(n18), .Y(\_0_net_[8] ) );
  AND2X1_RVT U49 ( .A1(A[6]), .A2(n18), .Y(\_0_net_[6] ) );
  AND2X1_RVT U50 ( .A1(A[5]), .A2(n18), .Y(\_0_net_[5] ) );
  AND2X1_RVT U51 ( .A1(A[4]), .A2(n18), .Y(\_0_net_[4] ) );
  AND2X1_RVT U52 ( .A1(A[2]), .A2(n18), .Y(\_0_net_[2] ) );
  AND2X1_RVT U53 ( .A1(A[0]), .A2(n18), .Y(\_0_net_[0] ) );
endmodule


module MUL_32bit_0 ( A, B, Y );
  input [31:0] A;
  input [7:0] B;
  output [39:0] Y;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24;
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
  tri   [7:0] B;

  ROW_MUL_0 ROW0 ( .A(A), .B(B[0]), .Sin({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0}), .Cin({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), .Sout({Sout000, Y[0]}), .Cout(Cout000) );
  ROW_MUL_15 ROW1 ( .A(A), .B(B[1]), .Sin({1'b0, Sout000}), .Cin(Cout000), 
        .Sout({Sout001, Y[1]}), .Cout(Cout001) );
  ROW_MUL_14 ROW2 ( .A(A), .B(B[2]), .Sin({1'b0, Sout001[31:14], n20, 
        Sout001[12:1]}), .Cin(Cout001), .Sout({Sout010, Y[2]}), .Cout(Cout010)
         );
  ROW_MUL_13 ROW3 ( .A(A), .B(B[3]), .Sin({1'b0, Sout010}), .Cin({
        Cout010[31:26], n12, Cout010[24:0]}), .Sout({Sout011, Y[3]}), .Cout(
        Cout011) );
  ROW_MUL_12 ROW4 ( .A(A), .B(B[4]), .Sin({1'b0, Sout011}), .Cin({
        Cout011[31:23], n4, Cout011[21], n14, n6, Cout011[18:15], n16, 
        Cout011[13], n10, Cout011[11:0]}), .Sout({Sout100, Y[4]}), .Cout(
        Cout100) );
  ROW_MUL_11 ROW5 ( .A(A), .B(B[5]), .Sin({1'b0, Sout100}), .Cin({
        Cout100[31:27], n8, Cout100[25:16], n18, Cout100[14:1], n24}), .Sout({
        Sout101, Y[5]}), .Cout(Cout101) );
  ROW_MUL_10 ROW6 ( .A(A), .B(B[6]), .Sin({1'b0, Sout101}), .Cin({
        Cout101[31:28], n2, Cout101[26:0]}), .Sout({Sout110, Y[6]}), .Cout(
        Cout110) );
  ROW_MUL_9 ROW7 ( .A(A), .B(B[7]), .Sin({1'b0, Sout110[31:6], n22, 
        Sout110[4:1]}), .Cin(Cout110), .Sout({Sout111, Y[7]}), .Cout(Cout111)
         );
  RCA_32bit_0 FINAL_SUM ( .A({1'b0, Sout111}), .B(Cout111), .Cin(1'b0), .S(
        Y[39:8]) );
  IBUFFX4_RVT U2 ( .A(Cout101[27]), .Y(n1) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(Cout011[22]), .Y(n3) );
  INVX1_RVT U5 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(Cout011[19]), .Y(n5) );
  INVX1_RVT U7 ( .A(n5), .Y(n6) );
  IBUFFX4_RVT U8 ( .A(Cout100[26]), .Y(n7) );
  INVX2_RVT U9 ( .A(n7), .Y(n8) );
  IBUFFX32_RVT U10 ( .A(Cout011[12]), .Y(n9) );
  IBUFFX4_RVT U11 ( .A(n9), .Y(n10) );
  IBUFFX16_RVT U12 ( .A(Cout010[25]), .Y(n11) );
  IBUFFX2_RVT U13 ( .A(n11), .Y(n12) );
  IBUFFX32_RVT U14 ( .A(Cout011[20]), .Y(n13) );
  IBUFFX4_RVT U15 ( .A(n13), .Y(n14) );
  IBUFFX32_RVT U16 ( .A(Cout011[14]), .Y(n15) );
  IBUFFX4_RVT U17 ( .A(n15), .Y(n16) );
  IBUFFX4_RVT U18 ( .A(Cout100[15]), .Y(n17) );
  INVX2_RVT U19 ( .A(n17), .Y(n18) );
  IBUFFX4_RVT U20 ( .A(Sout001[13]), .Y(n19) );
  IBUFFX4_RVT U21 ( .A(n19), .Y(n20) );
  IBUFFX32_RVT U22 ( .A(Sout110[5]), .Y(n21) );
  INVX8_RVT U23 ( .A(n21), .Y(n22) );
  IBUFFX4_RVT U24 ( .A(Cout100[0]), .Y(n23) );
  INVX1_RVT U25 ( .A(n23), .Y(n24) );
endmodule


module FA_1bit_65 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_66 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_67 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X2_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_68 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_69 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n4), .Y(C) );
  INVX1_RVT U1 ( .A(A), .Y(n2) );
  INVX1_RVT U3 ( .A(B), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(n2), .A2(n3), .Y(n4) );
  AO22X1_RVT U5 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_70 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_71 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX1_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_72 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n5;

  IBUFFX16_RVT U1 ( .A(B), .Y(n3) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(n2), .Y(n5) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  IBUFFX8_RVT U4 ( .A(n3), .Y(n2) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n5), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_73 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_74 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X2_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_75 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  INVX1_RVT U4 ( .A(A), .Y(n2) );
endmodule


module FA_1bit_76 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_77 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_78 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  AO22X1_RVT U3 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U4 ( .A1(n2), .A2(n3), .Y(C) );
  XOR2X2_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
endmodule


module FA_1bit_79 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n4, n1, n3;

  IBUFFX16_RVT U1 ( .A(n1), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX1_RVT U4 ( .A(n4), .Y(n1) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(n4) );
endmodule


module FA_1bit_80 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(n3), .Y(C) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_81 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XNOR2X1_RVT U1 ( .A1(n4), .A2(n2), .Y(n3) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(B), .Y(n1) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_82 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n4, n1, n3;

  IBUFFX4_RVT U1 ( .A(n4), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n3), .Y(n4) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_83 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX4_RVT U1 ( .A(n5), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX2_RVT U3 ( .A(Cin), .Y(n3) );
  IBUFFX4_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n4), .A2(n2), .Y(C) );
  XOR2X1_RVT U6 ( .A1(B), .A2(A), .Y(n5) );
  AO22X1_RVT U7 ( .A1(n4), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_84 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_85 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_86 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_87 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_88 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  INVX1_RVT U2 ( .A(Cin), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X1_RVT U4 ( .A1(n1), .A2(n2), .Y(C) );
endmodule


module FA_1bit_89 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX32_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX2_RVT U2 ( .A(B), .Y(n6) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  INVX1_RVT U4 ( .A(A), .Y(n3) );
  INVX1_RVT U5 ( .A(n3), .Y(n4) );
  XNOR2X1_RVT U6 ( .A1(n4), .A2(n6), .Y(n5) );
  XOR2X2_RVT U7 ( .A1(n2), .A2(n5), .Y(C) );
  AO22X1_RVT U8 ( .A1(n2), .A2(n5), .A3(B), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_90 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_91 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  XNOR3X1_RVT U2 ( .A1(Cin), .A2(A), .A3(n2), .Y(C) );
  IBUFFX4_RVT U3 ( .A(n5), .Y(n1) );
  INVX0_RVT U4 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U5 ( .A(B), .Y(n5) );
  INVX1_RVT U6 ( .A(A), .Y(n3) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n2), .Y(n4) );
endmodule


module FA_1bit_92 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  IBUFFX2_RVT U1 ( .A(Cin), .Y(n1) );
  XNOR3X2_RVT U2 ( .A1(n1), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n2), .Y(Cout) );
  OA21X1_RVT U4 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
endmodule


module FA_1bit_93 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net8874, n1, n2;

  XNOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(net8874), .Y(C) );
  OR2X1_RVT U2 ( .A1(A), .A2(n1), .Y(n2) );
  INVX1_RVT U3 ( .A(net8874), .Y(n1) );
  INVX1_RVT U4 ( .A(B), .Y(net8874) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(n1), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_94 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX2_RVT U1 ( .A(Cin), .Y(n4) );
  INVX1_RVT U2 ( .A(B), .Y(n6) );
  INVX1_RVT U3 ( .A(n8), .Y(n2) );
  NAND2X0_RVT U4 ( .A1(B), .A2(A), .Y(n1) );
  NAND2X0_RVT U5 ( .A1(n1), .A2(n2), .Y(Cout) );
  XOR2X1_RVT U6 ( .A1(A), .A2(n5), .Y(n3) );
  XOR2X2_RVT U7 ( .A1(n7), .A2(n3), .Y(C) );
  IBUFFX32_RVT U8 ( .A(n6), .Y(n7) );
  INVX2_RVT U9 ( .A(n4), .Y(n5) );
  OA21X1_RVT U10 ( .A1(n7), .A2(A), .A3(n5), .Y(n8) );
endmodule


module FA_1bit_95 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  IBUFFX16_RVT U1 ( .A(B), .Y(n1) );
  INVX0_RVT U2 ( .A(n1), .Y(n2) );
  NAND2X4_RVT U3 ( .A1(Cin), .A2(n4), .Y(n5) );
  IBUFFX4_RVT U4 ( .A(n7), .Y(n4) );
  IBUFFX16_RVT U5 ( .A(n7), .Y(n3) );
  OR2X2_RVT U6 ( .A1(Cin), .A2(n3), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n6), .Y(C) );
  AO22X1_RVT U8 ( .A1(Cin), .A2(n7), .A3(n2), .A4(A), .Y(Cout) );
  XOR2X2_RVT U9 ( .A1(A), .A2(n2), .Y(n7) );
endmodule


module FA_1bit_96 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module ROW_MUL_1 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n13, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[10] , \_0_net_[9] , \_0_net_[8] , \_0_net_[7] , \_0_net_[6] ,
         \_0_net_[5] , \_0_net_[4] , \_0_net_[3] , \_0_net_[2] , \_0_net_[1] ,
         \_0_net_[0] , n1, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;
  tri   B;

  FA_1bit_96 \ROW[0]  ( .A(\_0_net_[0] ), .B(n4), .Cin(Cin[0]), .C(Sout[0]), 
        .Cout(Cout[0]) );
  FA_1bit_95 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(Sout[1]), .Cout(Cout[1]) );
  FA_1bit_94 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(Sout[2]), .Cout(Cout[2]) );
  FA_1bit_93 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(Sout[3]), .Cout(Cout[3]) );
  FA_1bit_92 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(Sout[4]), .Cout(Cout[4]) );
  FA_1bit_91 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(Sout[5]), .Cout(Cout[5]) );
  FA_1bit_90 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(Sout[6]), .Cout(Cout[6]) );
  FA_1bit_89 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(Sout[7]), .Cout(Cout[7]) );
  FA_1bit_88 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(Sout[8]), .Cout(Cout[8]) );
  FA_1bit_87 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(Sout[9]), .Cout(Cout[9]) );
  FA_1bit_86 \ROW[10]  ( .A(\_0_net_[10] ), .B(n7), .Cin(Cin[10]), .C(Sout[10]), .Cout(Cout[10]) );
  FA_1bit_85 \ROW[11]  ( .A(n5), .B(Sin[11]), .Cin(Cin[11]), .C(Sout[11]), 
        .Cout(Cout[11]) );
  FA_1bit_84 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_83 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_82 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_81 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_80 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(n13) );
  FA_1bit_79 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_78 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_77 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_76 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_75 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_74 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_73 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_72 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_71 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_70 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_69 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_68 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_67 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_66 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_65 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X4_RVT U1 ( .A1(A[30]), .A2(n9), .Y(\_0_net_[30] ) );
  INVX16_RVT U2 ( .A(n13), .Y(n1) );
  IBUFFX16_RVT U3 ( .A(n1), .Y(Cout[16]) );
  INVX1_RVT U4 ( .A(n6), .Y(n7) );
  INVX0_RVT U5 ( .A(n3), .Y(n4) );
  IBUFFX16_RVT U6 ( .A(Sin[0]), .Y(n3) );
  AND2X1_RVT U7 ( .A1(A[11]), .A2(n10), .Y(n5) );
  IBUFFX16_RVT U8 ( .A(Sin[10]), .Y(n6) );
  INVX1_RVT U9 ( .A(n11), .Y(n12) );
  AND2X1_RVT U10 ( .A1(A[29]), .A2(n9), .Y(\_0_net_[29] ) );
  NBUFFX2_RVT U11 ( .A(n12), .Y(n9) );
  NBUFFX2_RVT U12 ( .A(n12), .Y(n8) );
  NBUFFX2_RVT U13 ( .A(n12), .Y(n10) );
  AND2X1_RVT U14 ( .A1(A[31]), .A2(n8), .Y(\_0_net_[31] ) );
  AND2X1_RVT U15 ( .A1(A[23]), .A2(n9), .Y(\_0_net_[23] ) );
  AND2X1_RVT U16 ( .A1(A[26]), .A2(n8), .Y(\_0_net_[26] ) );
  AND2X1_RVT U17 ( .A1(A[27]), .A2(n9), .Y(\_0_net_[27] ) );
  AND2X1_RVT U18 ( .A1(A[28]), .A2(n9), .Y(\_0_net_[28] ) );
  AND2X1_RVT U19 ( .A1(A[14]), .A2(n8), .Y(\_0_net_[14] ) );
  AND2X1_RVT U20 ( .A1(A[25]), .A2(n8), .Y(\_0_net_[25] ) );
  AND2X1_RVT U21 ( .A1(A[15]), .A2(n8), .Y(\_0_net_[15] ) );
  AND2X1_RVT U22 ( .A1(A[16]), .A2(n9), .Y(\_0_net_[16] ) );
  AND2X1_RVT U23 ( .A1(A[24]), .A2(n9), .Y(\_0_net_[24] ) );
  AND2X1_RVT U24 ( .A1(A[13]), .A2(n8), .Y(\_0_net_[13] ) );
  AND2X1_RVT U25 ( .A1(A[12]), .A2(n8), .Y(\_0_net_[12] ) );
  AND2X1_RVT U26 ( .A1(A[18]), .A2(n8), .Y(\_0_net_[18] ) );
  AND2X1_RVT U27 ( .A1(A[20]), .A2(n8), .Y(\_0_net_[20] ) );
  AND2X1_RVT U28 ( .A1(A[19]), .A2(n8), .Y(\_0_net_[19] ) );
  AND2X1_RVT U29 ( .A1(A[22]), .A2(n8), .Y(\_0_net_[22] ) );
  AND2X1_RVT U30 ( .A1(A[21]), .A2(n8), .Y(\_0_net_[21] ) );
  AND2X1_RVT U31 ( .A1(A[17]), .A2(n10), .Y(\_0_net_[17] ) );
  INVX1_RVT U32 ( .A(B), .Y(n11) );
  AND2X1_RVT U33 ( .A1(A[10]), .A2(n10), .Y(\_0_net_[10] ) );
  AND2X1_RVT U34 ( .A1(A[9]), .A2(n10), .Y(\_0_net_[9] ) );
  AND2X1_RVT U35 ( .A1(A[8]), .A2(n9), .Y(\_0_net_[8] ) );
  AND2X1_RVT U36 ( .A1(A[7]), .A2(n10), .Y(\_0_net_[7] ) );
  AND2X1_RVT U37 ( .A1(A[6]), .A2(n9), .Y(\_0_net_[6] ) );
  AND2X1_RVT U38 ( .A1(A[5]), .A2(n9), .Y(\_0_net_[5] ) );
  AND2X1_RVT U39 ( .A1(A[4]), .A2(n10), .Y(\_0_net_[4] ) );
  AND2X1_RVT U40 ( .A1(A[3]), .A2(n9), .Y(\_0_net_[3] ) );
  AND2X1_RVT U41 ( .A1(A[2]), .A2(n10), .Y(\_0_net_[2] ) );
  AND2X1_RVT U42 ( .A1(A[1]), .A2(n9), .Y(\_0_net_[1] ) );
  AND2X1_RVT U43 ( .A1(A[0]), .A2(n9), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_97 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_98 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_99 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n4), .Y(C) );
  INVX0_RVT U1 ( .A(A), .Y(n2) );
  INVX1_RVT U3 ( .A(B), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(n2), .A2(n3), .Y(n4) );
  AO22X1_RVT U5 ( .A1(A), .A2(B), .A3(Cin), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_100 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n6), .Y(C) );
  IBUFFX4_RVT U1 ( .A(B), .Y(n3) );
  NAND2X1_RVT U3 ( .A1(A), .A2(n3), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(B), .Y(n5) );
  NAND2X1_RVT U5 ( .A1(n4), .A2(n5), .Y(n6) );
  IBUFFX32_RVT U6 ( .A(A), .Y(n2) );
  AO22X1_RVT U7 ( .A1(A), .A2(B), .A3(Cin), .A4(n6), .Y(Cout) );
endmodule


module FA_1bit_101 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_102 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_103 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X2_RVT U3 ( .A1(n2), .A2(B), .Y(n1) );
  IBUFFX16_RVT U4 ( .A(A), .Y(n2) );
endmodule


module FA_1bit_104 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(n3), .Y(C) );
  IBUFFX4_RVT U4 ( .A(B), .Y(n4) );
  AO22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X1_RVT U6 ( .A1(A), .A2(n4), .Y(n3) );
endmodule


module FA_1bit_105 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n4, n1, n3;

  IBUFFX4_RVT U1 ( .A(n4), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(n4) );
endmodule


module FA_1bit_106 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  INVX4_RVT U2 ( .A(Cin), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U5 ( .A(n3), .Y(n2) );
endmodule


module FA_1bit_107 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  XOR2X2_RVT U1 ( .A1(n2), .A2(n4), .Y(C) );
  IBUFFX2_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(Cin), .Y(n1) );
  INVX2_RVT U4 ( .A(n6), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(n7), .Y(n5) );
  IBUFFX32_RVT U7 ( .A(n5), .Y(n6) );
  XOR2X2_RVT U8 ( .A1(A), .A2(B), .Y(n7) );
  AO22X1_RVT U9 ( .A1(n2), .A2(n4), .A3(A), .A4(B), .Y(Cout) );
endmodule


module FA_1bit_108 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  OAI22X1_RVT U1 ( .A1(n1), .A2(n2), .A3(n4), .A4(n3), .Y(Cout) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(n6), .Y(n2) );
  IBUFFX8_RVT U4 ( .A(A), .Y(n3) );
  INVX1_RVT U5 ( .A(n4), .Y(n5) );
  XOR2X2_RVT U6 ( .A1(Cin), .A2(n6), .Y(C) );
  IBUFFX16_RVT U7 ( .A(B), .Y(n4) );
  XOR2X1_RVT U8 ( .A1(A), .A2(n5), .Y(n6) );
endmodule


module FA_1bit_109 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X1_RVT U4 ( .A1(A), .A2(n2), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_110 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_111 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX0_RVT U1 ( .A(Cin), .Y(n1) );
  INVX8_RVT U2 ( .A(n3), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n1), .A2(n2), .Y(C) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_112 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(n1), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_113 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n4), .A3(n2), .A4(A), .Y(Cout) );
  INVX32_RVT U4 ( .A(n5), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U6 ( .A1(Cin), .A2(n4), .Y(C) );
  XNOR2X1_RVT U7 ( .A1(n6), .A2(n2), .Y(n5) );
  INVX1_RVT U8 ( .A(A), .Y(n6) );
endmodule


module FA_1bit_114 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  OAI22X1_RVT U1 ( .A1(n1), .A2(n2), .A3(n3), .A4(n4), .Y(Cout) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(n5), .Y(n2) );
  IBUFFX8_RVT U4 ( .A(B), .Y(n3) );
  IBUFFX8_RVT U5 ( .A(A), .Y(n4) );
  XOR2X2_RVT U6 ( .A1(Cin), .A2(n5), .Y(C) );
  XOR2X2_RVT U7 ( .A1(B), .A2(A), .Y(n5) );
endmodule


module FA_1bit_115 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_116 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_117 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n5), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n5) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n5), .Y(n4) );
  NAND2X0_RVT U5 ( .A1(n3), .A2(n4), .Y(C) );
  NAND2X0_RVT U6 ( .A1(Cin), .A2(n2), .Y(n3) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_118 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX2_RVT U1 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U2 ( .A(B), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(A), .A2(n2), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_119 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5;

  INVX1_RVT U1 ( .A(n4), .Y(n3) );
  INVX1_RVT U2 ( .A(Cin), .Y(n2) );
  INVX1_RVT U3 ( .A(B), .Y(n5) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  XNOR2X1_RVT U6 ( .A1(A), .A2(n5), .Y(n4) );
endmodule


module FA_1bit_120 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX2_RVT U2 ( .A(B), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n3), .A2(n2), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_121 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX2_RVT U1 ( .A(n1), .Y(n2) );
  INVX8_RVT U2 ( .A(n5), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(A), .A2(n3), .Y(n4) );
  INVX1_RVT U4 ( .A(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  IBUFFX32_RVT U6 ( .A(n4), .Y(n5) );
  XOR2X2_RVT U7 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_122 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX1_RVT U1 ( .A(B), .Y(n3) );
  XNOR3X1_RVT U2 ( .A1(Cin), .A2(A), .A3(n3), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  INVX0_RVT U4 ( .A(A), .Y(n1) );
  NAND2X0_RVT U5 ( .A1(n1), .A2(n3), .Y(n2) );
endmodule


module FA_1bit_123 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  INVX4_RVT U1 ( .A(n5), .Y(n1) );
  IBUFFX32_RVT U2 ( .A(Cin), .Y(n5) );
  INVX0_RVT U3 ( .A(n9), .Y(n2) );
  INVX1_RVT U4 ( .A(n2), .Y(n3) );
  IBUFFX16_RVT U5 ( .A(B), .Y(n9) );
  IBUFFX2_RVT U6 ( .A(n6), .Y(n4) );
  NBUFFX32_RVT U7 ( .A(n3), .Y(n6) );
  AO22X2_RVT U8 ( .A1(n1), .A2(n8), .A3(n4), .A4(A), .Y(Cout) );
  XOR3X1_RVT U9 ( .A1(n5), .A2(A), .A3(n6), .Y(C) );
  NAND2X0_RVT U10 ( .A1(n7), .A2(n6), .Y(n8) );
  INVX0_RVT U11 ( .A(A), .Y(n7) );
endmodule


module FA_1bit_124 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net8952, net8953, net19713, net19712, n1, n2;

  XNOR3X2_RVT U1 ( .A1(A), .A2(n1), .A3(n2), .Y(C) );
  IBUFFX4_RVT U2 ( .A(Cin), .Y(net19712) );
  NBUFFX32_RVT U3 ( .A(net19713), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(net19712), .Y(net19713) );
  INVX1_RVT U5 ( .A(B), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(net8953), .A2(n2), .Y(net8952) );
  INVX0_RVT U7 ( .A(A), .Y(net8953) );
  AO22X1_RVT U8 ( .A1(n1), .A2(net8952), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_125 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  IBUFFX4_RVT U1 ( .A(n10), .Y(n2) );
  INVX1_RVT U2 ( .A(Cin), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n2), .Y(Cout) );
  NAND2X0_RVT U5 ( .A1(n8), .A2(Cin), .Y(n5) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n4), .Y(n6) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n6), .Y(C) );
  IBUFFX32_RVT U8 ( .A(n8), .Y(n3) );
  XNOR2X1_RVT U9 ( .A1(A), .A2(n9), .Y(n7) );
  INVX0_RVT U10 ( .A(n7), .Y(n8) );
  INVX0_RVT U11 ( .A(B), .Y(n9) );
  OA21X1_RVT U12 ( .A1(B), .A2(A), .A3(Cin), .Y(n10) );
endmodule


module FA_1bit_126 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX0_RVT U1 ( .A(Cin), .Y(n2) );
  OA21X2_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  XNOR3X1_RVT U4 ( .A1(B), .A2(A), .A3(n2), .Y(C) );
endmodule


module FA_1bit_127 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n7), .Y(Cout) );
  NOR2X1_RVT U2 ( .A1(n1), .A2(n2), .Y(n7) );
  INVX1_RVT U3 ( .A(A), .Y(n5) );
  NOR2X0_RVT U4 ( .A1(B), .A2(A), .Y(n1) );
  INVX1_RVT U5 ( .A(n4), .Y(n2) );
  IBUFFX4_RVT U6 ( .A(Cin), .Y(n3) );
  IBUFFX4_RVT U7 ( .A(n3), .Y(n4) );
  INVX1_RVT U8 ( .A(B), .Y(n6) );
  XOR3X1_RVT U9 ( .A1(n6), .A2(n5), .A3(n4), .Y(C) );
endmodule


module FA_1bit_128 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX1_RVT U1 ( .A(n1), .Y(n2) );
  INVX1_RVT U2 ( .A(Cin), .Y(n4) );
  AO22X1_RVT U3 ( .A1(n5), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(n5), .A2(n3), .Y(C) );
  INVX0_RVT U5 ( .A(n4), .Y(n1) );
  XOR2X1_RVT U6 ( .A1(A), .A2(B), .Y(n3) );
  INVX0_RVT U7 ( .A(n2), .Y(n5) );
endmodule


module ROW_MUL_2 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n11, n12, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n3, n5, n6, n7, n8, n9,
         n10;
  tri   B;

  FA_1bit_128 \ROW[0]  ( .A(\_0_net_[0] ), .B(n10), .Cin(Cin[0]), .C(Sout[0]), 
        .Cout(Cout[0]) );
  FA_1bit_127 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_126 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_125 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_124 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_123 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_122 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_121 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_120 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_119 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_118 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_117 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_116 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_115 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_114 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_113 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_112 \ROW[16]  ( .A(\_0_net_[16] ), .B(n6), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_111 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_110 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_109 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_108 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_107 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_106 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_105 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        n11), .Cout(Cout[23]) );
  FA_1bit_104 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_103 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(n12) );
  FA_1bit_102 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_101 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_100 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_99 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(n8), .C(Sout[29]), .Cout(Cout[29]) );
  FA_1bit_98 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_97 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  IBUFFX4_RVT U1 ( .A(n11), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(Sout[23]) );
  IBUFFX4_RVT U3 ( .A(Sin[0]), .Y(n9) );
  IBUFFX2_RVT U4 ( .A(n12), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(Cout[25]) );
  IBUFFX16_RVT U6 ( .A(Sin[16]), .Y(n5) );
  INVX2_RVT U7 ( .A(n5), .Y(n6) );
  AND2X4_RVT U8 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U9 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  INVX1_RVT U10 ( .A(n9), .Y(n10) );
  AND2X1_RVT U11 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  IBUFFX4_RVT U12 ( .A(Cin[29]), .Y(n7) );
  IBUFFX4_RVT U13 ( .A(n7), .Y(n8) );
  AND2X1_RVT U14 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U15 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U16 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U17 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U18 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U19 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U20 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U21 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U22 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U23 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U24 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U25 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U26 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U27 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U28 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U29 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U30 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U31 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U32 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U33 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U34 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U35 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U36 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U37 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U38 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U39 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U40 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U41 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U42 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_129 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_130 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n5, n6, n7;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n7) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n2) );
  NAND2X2_RVT U3 ( .A1(Cin), .A2(n7), .Y(n3) );
  OR2X2_RVT U4 ( .A1(n5), .A2(n6), .Y(Cout) );
  AND2X1_RVT U5 ( .A1(A), .A2(B), .Y(n5) );
  IBUFFX32_RVT U6 ( .A(n3), .Y(n6) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(n7), .Y(C) );
endmodule


module FA_1bit_131 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_132 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_133 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_134 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX0_RVT U1 ( .A(n3), .Y(n1) );
  INVX1_RVT U2 ( .A(n2), .Y(n4) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U4 ( .A(Cin), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(n4), .A2(n5), .Y(C) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n5) );
  AO22X1_RVT U7 ( .A1(n4), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_135 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_136 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_137 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX0_RVT U1 ( .A(n3), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_138 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(n3), .Y(n1) );
  IBUFFX16_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_139 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_140 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_141 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX4_RVT U1 ( .A(n2), .Y(n1) );
  XNOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_142 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(B), .A2(n1), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_143 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_144 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n4) );
  XOR2X1_RVT U2 ( .A1(n3), .A2(n2), .Y(C) );
  IBUFFX4_RVT U3 ( .A(Cin), .Y(n2) );
  INVX1_RVT U4 ( .A(n4), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_145 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_146 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(A), .Y(n3) );
  INVX2_RVT U2 ( .A(B), .Y(n1) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_147 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(n1), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_148 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NAND2X0_RVT U1 ( .A1(Cin), .A2(n4), .Y(n2) );
  INVX1_RVT U2 ( .A(Cin), .Y(n1) );
  NAND2X0_RVT U3 ( .A1(n2), .A2(n3), .Y(C) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n5), .Y(n3) );
  XNOR2X1_RVT U5 ( .A1(A), .A2(B), .Y(n4) );
  INVX1_RVT U6 ( .A(n4), .Y(n5) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_149 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XNOR2X2_RVT U3 ( .A1(B), .A2(A), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_150 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n5), .Y(C) );
  INVX0_RVT U2 ( .A(B), .Y(n4) );
  IBUFFX4_RVT U3 ( .A(Cin), .Y(n2) );
  OAI22X1_RVT U4 ( .A1(n2), .A2(n3), .A3(n4), .A4(n6), .Y(Cout) );
  IBUFFX8_RVT U5 ( .A(n5), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n6), .A2(B), .Y(n5) );
  INVX0_RVT U7 ( .A(A), .Y(n6) );
endmodule


module FA_1bit_151 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_152 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X1_RVT U2 ( .A1(n2), .A2(n3), .Y(C) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(Cin), .Y(n1) );
  AO22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_153 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  OA21X2_RVT U1 ( .A1(B), .A2(n2), .A3(Cin), .Y(n3) );
  INVX0_RVT U2 ( .A(A), .Y(n1) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  XOR3X2_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .Y(C) );
  AO21X1_RVT U5 ( .A1(B), .A2(n2), .A3(n3), .Y(Cout) );
endmodule


module FA_1bit_154 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  XNOR3X2_RVT U1 ( .A1(Cin), .A2(A), .A3(n5), .Y(C) );
  INVX8_RVT U2 ( .A(n2), .Y(Cout) );
  AOI22X1_RVT U3 ( .A1(Cin), .A2(n4), .A3(A), .A4(n1), .Y(n2) );
  NBUFFX2_RVT U4 ( .A(B), .Y(n1) );
  INVX2_RVT U5 ( .A(B), .Y(n5) );
  INVX0_RVT U6 ( .A(A), .Y(n3) );
  NAND2X0_RVT U7 ( .A1(n3), .A2(n5), .Y(n4) );
endmodule


module FA_1bit_155 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_156 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n6, n1, n3, n4, n5;

  INVX1_RVT U1 ( .A(Cin), .Y(n4) );
  XOR3X1_RVT U2 ( .A1(n4), .A2(A), .A3(n3), .Y(n6) );
  INVX0_RVT U3 ( .A(B), .Y(n3) );
  IBUFFX16_RVT U4 ( .A(n6), .Y(n1) );
  INVX0_RVT U5 ( .A(n1), .Y(C) );
  AO21X1_RVT U6 ( .A1(B), .A2(A), .A3(n5), .Y(Cout) );
  OA21X1_RVT U7 ( .A1(B), .A2(A), .A3(Cin), .Y(n5) );
endmodule


module FA_1bit_157 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX1_RVT U1 ( .A(n4), .Y(n3) );
  NAND2X0_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  NAND2X0_RVT U3 ( .A1(n2), .A2(n3), .Y(Cout) );
  XOR3X2_RVT U4 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  AND2X4_RVT U5 ( .A1(n1), .A2(Cin), .Y(n4) );
  OR2X1_RVT U6 ( .A1(B), .A2(A), .Y(n1) );
endmodule


module FA_1bit_158 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  INVX1_RVT U1 ( .A(Cin), .Y(n6) );
  NAND2X0_RVT U2 ( .A1(n1), .A2(n2), .Y(Cout) );
  NAND2X0_RVT U3 ( .A1(Cin), .A2(n5), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  INVX0_RVT U6 ( .A(B), .Y(n3) );
  NAND2X0_RVT U7 ( .A1(n4), .A2(n3), .Y(n5) );
  XNOR3X1_RVT U8 ( .A1(B), .A2(A), .A3(n6), .Y(C) );
endmodule


module FA_1bit_159 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_160 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  INVX1_RVT U1 ( .A(n4), .Y(n1) );
  INVX1_RVT U2 ( .A(n5), .Y(n6) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(Cin), .Y(n4) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(C) );
  XNOR2X1_RVT U6 ( .A1(n2), .A2(n5), .Y(n3) );
  XNOR2X1_RVT U7 ( .A1(A), .A2(B), .Y(n5) );
  AO22X1_RVT U8 ( .A1(Cin), .A2(n6), .A3(B), .A4(A), .Y(Cout) );
endmodule


module ROW_MUL_3 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n5, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n3, n4;
  tri   B;

  FA_1bit_160 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_159 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_158 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_157 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_156 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_155 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_154 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_153 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_152 \ROW[8]  ( .A(\_0_net_[8] ), .B(n4), .Cin(Cin[8]), .C(Sout[8]), 
        .Cout(Cout[8]) );
  FA_1bit_151 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_150 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_149 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_148 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(n5) );
  FA_1bit_147 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_146 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_145 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_144 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_143 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_142 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_141 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_140 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_139 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_138 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_137 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_136 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_135 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_134 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_133 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_132 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_131 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_130 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_129 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  IBUFFX4_RVT U1 ( .A(n5), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(Cout[12]) );
  IBUFFX4_RVT U3 ( .A(Sin[8]), .Y(n3) );
  INVX2_RVT U4 ( .A(n3), .Y(n4) );
  AND2X1_RVT U5 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U6 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U7 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U8 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U9 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U10 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U11 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U12 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U13 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U14 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U15 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U16 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U17 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U18 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U19 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U20 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U21 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U22 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U23 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U24 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U25 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U26 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U27 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U28 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U29 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U30 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U31 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U32 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U33 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U34 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U35 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U36 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_161 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_162 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n8, n3, n4, n5, n7;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n7) );
  INVX1_RVT U1 ( .A(n7), .Y(n4) );
  INVX0_RVT U2 ( .A(Cin), .Y(n3) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n7), .Y(n8) );
  XOR2X2_RVT U5 ( .A1(n3), .A2(n4), .Y(C) );
  IBUFFX16_RVT U6 ( .A(n8), .Y(n5) );
  INVX1_RVT U7 ( .A(n5), .Y(Cout) );
endmodule


module FA_1bit_163 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_164 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(A), .A2(n1), .Y(n2) );
  INVX1_RVT U2 ( .A(n3), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_165 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_166 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_167 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_168 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_169 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_170 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_171 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n2), .A2(n3), .Y(C) );
  XOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_172 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(B), .Y(n2) );
  INVX1_RVT U2 ( .A(A), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(n1), .A2(n2), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_173 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_174 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_175 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n3), .A2(B), .Y(n2) );
  INVX0_RVT U3 ( .A(A), .Y(n3) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_176 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(n3), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_177 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX16_RVT U1 ( .A(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(n2), .A2(n3), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(Cin), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_178 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_179 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(n1), .A2(Cin), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_180 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_181 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX1_RVT U1 ( .A(A), .Y(n2) );
  INVX1_RVT U2 ( .A(B), .Y(n3) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(n3), .Y(n1) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_182 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U3 ( .A1(n3), .A2(n2), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_183 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
  NAND2X2_RVT U2 ( .A1(n2), .A2(n3), .Y(n4) );
  NAND2X1_RVT U3 ( .A1(A), .A2(n5), .Y(n2) );
  INVX1_RVT U4 ( .A(B), .Y(n5) );
  INVX1_RVT U5 ( .A(A), .Y(n1) );
  NAND2X0_RVT U6 ( .A1(n1), .A2(B), .Y(n3) );
  XOR2X1_RVT U7 ( .A1(Cin), .A2(n4), .Y(C) );
endmodule


module FA_1bit_184 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  IBUFFX4_RVT U2 ( .A(B), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n2) );
  AO21X1_RVT U4 ( .A1(n2), .A2(A), .A3(n3), .Y(Cout) );
  OA21X1_RVT U5 ( .A1(n2), .A2(A), .A3(Cin), .Y(n3) );
endmodule


module FA_1bit_185 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  XOR3X2_RVT U1 ( .A1(Cin), .A2(n6), .A3(B), .Y(C) );
  INVX0_RVT U2 ( .A(B), .Y(n2) );
  AO21X1_RVT U3 ( .A1(n2), .A2(n3), .A3(n4), .Y(n1) );
  IBUFFX8_RVT U4 ( .A(n1), .Y(n7) );
  IBUFFX8_RVT U5 ( .A(n6), .Y(n3) );
  IBUFFX8_RVT U6 ( .A(Cin), .Y(n4) );
  INVX0_RVT U7 ( .A(A), .Y(n5) );
  INVX1_RVT U8 ( .A(n5), .Y(n6) );
  AO21X1_RVT U9 ( .A1(B), .A2(n6), .A3(n7), .Y(Cout) );
endmodule


module FA_1bit_186 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n3), .A3(A), .A4(B), .Y(Cout) );
  IBUFFX32_RVT U2 ( .A(n1), .Y(C) );
  XOR3X1_RVT U3 ( .A1(Cin), .A2(A), .A3(n4), .Y(n1) );
  INVX2_RVT U4 ( .A(B), .Y(n4) );
  INVX0_RVT U5 ( .A(A), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(n2), .A2(n4), .Y(n3) );
endmodule


module FA_1bit_187 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX16_RVT U1 ( .A(B), .Y(n2) );
  INVX1_RVT U2 ( .A(n1), .Y(n5) );
  INVX1_RVT U3 ( .A(A), .Y(n3) );
  INVX1_RVT U4 ( .A(Cin), .Y(n4) );
  AO21X1_RVT U5 ( .A1(B), .A2(A), .A3(n5), .Y(Cout) );
  AO21X1_RVT U6 ( .A1(n2), .A2(n3), .A3(n4), .Y(n1) );
  XOR3X2_RVT U7 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
endmodule


module FA_1bit_188 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n6, n7, n8, n9;

  XNOR3X2_RVT U1 ( .A1(n7), .A2(n8), .A3(n6), .Y(C) );
  IBUFFX2_RVT U2 ( .A(Cin), .Y(n4) );
  IBUFFX2_RVT U3 ( .A(Cin), .Y(n6) );
  INVX1_RVT U4 ( .A(A), .Y(n8) );
  INVX1_RVT U5 ( .A(n9), .Y(n2) );
  NAND2X0_RVT U6 ( .A1(B), .A2(A), .Y(n1) );
  NAND2X0_RVT U7 ( .A1(n1), .A2(n2), .Y(Cout) );
  NOR2X0_RVT U8 ( .A1(B), .A2(A), .Y(n3) );
  NOR2X0_RVT U9 ( .A1(n3), .A2(n4), .Y(n9) );
  INVX0_RVT U10 ( .A(B), .Y(n7) );
endmodule


module FA_1bit_189 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n7, n1, n3, n4, n5, n6;

  INVX0_RVT U1 ( .A(n1), .Y(C) );
  INVX1_RVT U2 ( .A(B), .Y(n4) );
  INVX1_RVT U3 ( .A(A), .Y(n5) );
  AOI21X2_RVT U4 ( .A1(n4), .A2(n5), .A3(n6), .Y(n3) );
  AO21X1_RVT U5 ( .A1(B), .A2(A), .A3(n3), .Y(Cout) );
  IBUFFX16_RVT U6 ( .A(n7), .Y(n1) );
  XOR3X1_RVT U7 ( .A1(B), .A2(A), .A3(Cin), .Y(n7) );
  IBUFFX16_RVT U8 ( .A(Cin), .Y(n6) );
endmodule


module FA_1bit_190 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NAND2X0_RVT U1 ( .A1(A), .A2(n2), .Y(n3) );
  NAND2X0_RVT U2 ( .A1(n1), .A2(B), .Y(n4) );
  NAND2X0_RVT U3 ( .A1(n3), .A2(n4), .Y(n5) );
  INVX1_RVT U4 ( .A(A), .Y(n1) );
  IBUFFX16_RVT U5 ( .A(B), .Y(n2) );
  XOR3X1_RVT U6 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_191 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX2_RVT U1 ( .A(n1), .Y(n2) );
  INVX1_RVT U2 ( .A(Cin), .Y(n3) );
  XOR3X1_RVT U3 ( .A1(n4), .A2(A), .A3(B), .Y(n5) );
  XNOR2X1_RVT U4 ( .A1(n8), .A2(B), .Y(n7) );
  INVX1_RVT U5 ( .A(n6), .Y(C) );
  INVX1_RVT U6 ( .A(n2), .Y(n6) );
  IBUFFX16_RVT U7 ( .A(n5), .Y(n1) );
  INVX1_RVT U8 ( .A(n3), .Y(n4) );
  INVX0_RVT U9 ( .A(A), .Y(n8) );
  AO22X1_RVT U10 ( .A1(n4), .A2(n7), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_192 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX1_RVT U1 ( .A(n3), .Y(n4) );
  XNOR2X1_RVT U2 ( .A1(n1), .A2(B), .Y(n3) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n4), .Y(C) );
  INVX1_RVT U4 ( .A(n2), .Y(n1) );
  INVX1_RVT U5 ( .A(A), .Y(n2) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(n1), .Y(Cout) );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9;

  FA_1bit_192 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_191 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_190 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_189 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_188 \ROW[4]  ( .A(\_0_net_[4] ), .B(n6), .Cin(Cin[4]), .C(Sout[4]), 
        .Cout(Cout[4]) );
  FA_1bit_187 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_186 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_185 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_184 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_183 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_182 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_181 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_180 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_179 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_178 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(n2), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_177 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_176 \ROW[16]  ( .A(\_0_net_[16] ), .B(n4), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_175 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_174 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_173 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_172 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_171 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_170 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_169 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_168 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_167 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_166 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_165 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_164 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_163 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_162 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_161 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  IBUFFX4_RVT U1 ( .A(Cin[14]), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(Sin[16]), .Y(n3) );
  INVX2_RVT U4 ( .A(n3), .Y(n4) );
  IBUFFX32_RVT U5 ( .A(Sin[4]), .Y(n5) );
  IBUFFX2_RVT U6 ( .A(n5), .Y(n6) );
  INVX1_RVT U7 ( .A(n7), .Y(\_0_net_[29] ) );
  INVX1_RVT U8 ( .A(B), .Y(n9) );
  INVX1_RVT U9 ( .A(A[29]), .Y(n8) );
  OR2X1_RVT U10 ( .A1(n8), .A2(n9), .Y(n7) );
  AND2X1_RVT U11 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U12 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U13 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U14 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U15 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U16 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U17 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U18 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U19 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U20 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U21 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U22 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U23 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U24 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U25 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U26 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U27 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U28 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U29 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U30 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U31 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U32 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U33 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U34 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U35 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U36 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U37 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U38 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U39 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U40 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U41 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_193 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_194 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7;

  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n7) );
  IBUFFX4_RVT U1 ( .A(n3), .Y(C) );
  INVX1_RVT U2 ( .A(n2), .Y(n3) );
  INVX1_RVT U4 ( .A(n7), .Y(n6) );
  INVX0_RVT U5 ( .A(Cin), .Y(n5) );
  IBUFFX4_RVT U6 ( .A(n4), .Y(n2) );
  XNOR2X1_RVT U7 ( .A1(n5), .A2(n6), .Y(n4) );
  AO22X1_RVT U8 ( .A1(A), .A2(B), .A3(Cin), .A4(n7), .Y(Cout) );
endmodule


module FA_1bit_195 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n5, n1, n2, n4;

  IBUFFX4_RVT U1 ( .A(n5), .Y(n2) );
  XNOR2X2_RVT U2 ( .A1(n4), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(n5) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX1_RVT U5 ( .A(n2), .Y(Cout) );
  INVX0_RVT U6 ( .A(A), .Y(n4) );
endmodule


module FA_1bit_196 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX8_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX8_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX2_RVT U3 ( .A(Cin), .Y(n3) );
  IBUFFX4_RVT U4 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U5 ( .A(B), .Y(n6) );
  XOR2X2_RVT U6 ( .A1(n4), .A2(n5), .Y(C) );
  XNOR2X1_RVT U7 ( .A1(n2), .A2(n6), .Y(n5) );
  AO22X1_RVT U8 ( .A1(Cin), .A2(n5), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_197 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n4) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(n3), .A2(n4), .Y(C) );
  IBUFFX4_RVT U4 ( .A(Cin), .Y(n2) );
  IBUFFX4_RVT U5 ( .A(n2), .Y(n3) );
  AO22X1_RVT U6 ( .A1(n3), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_198 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_199 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  IBUFFX32_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(B), .Y(n3) );
  INVX2_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(n2), .A2(n4), .Y(n7) );
  IBUFFX4_RVT U6 ( .A(Cin), .Y(n5) );
  IBUFFX4_RVT U7 ( .A(n5), .Y(n6) );
  XOR2X2_RVT U8 ( .A1(n6), .A2(n7), .Y(C) );
  AO22X1_RVT U9 ( .A1(n6), .A2(n7), .A3(n4), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_200 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX1_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(n2), .A2(B), .Y(n5) );
  XOR2X1_RVT U4 ( .A1(n4), .A2(n5), .Y(C) );
  IBUFFX4_RVT U5 ( .A(Cin), .Y(n3) );
  IBUFFX4_RVT U6 ( .A(n3), .Y(n4) );
  AO22X1_RVT U7 ( .A1(n4), .A2(n5), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_201 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(n2), .A2(n3), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n3) );
  IBUFFX4_RVT U3 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(n1), .Y(n2) );
  AO22X1_RVT U5 ( .A1(n2), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_202 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  NBUFFX8_RVT U1 ( .A(A), .Y(n1) );
  INVX32_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(n2), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n4), .Y(C) );
  XOR2X1_RVT U5 ( .A1(n3), .A2(B), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_203 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_204 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX1_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XNOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  IBUFFX8_RVT U4 ( .A(n4), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(B), .A2(n2), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_205 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n4) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  NAND2X1_RVT U3 ( .A1(B), .A2(A), .Y(n3) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n3), .Y(Cout) );
  NAND2X0_RVT U5 ( .A1(Cin), .A2(n4), .Y(n2) );
  XOR2X2_RVT U6 ( .A1(Cin), .A2(n4), .Y(C) );
endmodule


module FA_1bit_206 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n5, n1, n3, n4;

  IBUFFX4_RVT U1 ( .A(n5), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(Cout) );
  XNOR2X2_RVT U3 ( .A1(n4), .A2(B), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(n5) );
endmodule


module FA_1bit_207 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  OR2X1_RVT U1 ( .A1(n1), .A2(n2), .Y(n10) );
  IBUFFX8_RVT U2 ( .A(B), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n2) );
  IBUFFX16_RVT U4 ( .A(n6), .Y(n3) );
  XOR2X1_RVT U5 ( .A1(A), .A2(B), .Y(n4) );
  IBUFFX2_RVT U6 ( .A(Cin), .Y(n5) );
  NAND2X0_RVT U7 ( .A1(n7), .A2(n8), .Y(C) );
  INVX1_RVT U8 ( .A(n4), .Y(n6) );
  NAND2X0_RVT U9 ( .A1(Cin), .A2(n6), .Y(n7) );
  NAND2X0_RVT U10 ( .A1(Cin), .A2(n3), .Y(n9) );
  NAND2X0_RVT U11 ( .A1(n5), .A2(n4), .Y(n8) );
  NAND2X0_RVT U12 ( .A1(n9), .A2(n10), .Y(Cout) );
endmodule


module FA_1bit_208 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX32_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(B), .Y(n5) );
  IBUFFX4_RVT U4 ( .A(Cin), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U6 ( .A1(n4), .A2(n6), .Y(C) );
  XNOR2X1_RVT U7 ( .A1(n2), .A2(n5), .Y(n6) );
  AO22X1_RVT U8 ( .A1(n4), .A2(n6), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_209 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  INVX1_RVT U1 ( .A(n5), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(n3), .Y(n4) );
  INVX32_RVT U4 ( .A(Cin), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(n4), .A2(n2), .Y(C) );
  XNOR2X1_RVT U6 ( .A1(n6), .A2(B), .Y(n5) );
  INVX0_RVT U7 ( .A(A), .Y(n6) );
  AO22X1_RVT U8 ( .A1(n4), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_210 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_211 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX16_RVT U1 ( .A(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  NBUFFX2_RVT U3 ( .A(B), .Y(n3) );
  XNOR2X1_RVT U4 ( .A1(n1), .A2(A), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(n3), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_212 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  NAND2X0_RVT U1 ( .A1(n4), .A2(n5), .Y(C) );
  INVX1_RVT U2 ( .A(Cin), .Y(n3) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U5 ( .A1(n6), .A2(B), .Y(n7) );
  INVX1_RVT U6 ( .A(n8), .Y(n1) );
  INVX0_RVT U7 ( .A(n7), .Y(n8) );
  NAND2X0_RVT U8 ( .A1(Cin), .A2(n7), .Y(n4) );
  NAND2X0_RVT U9 ( .A1(n3), .A2(n2), .Y(n5) );
  INVX1_RVT U10 ( .A(A), .Y(n6) );
endmodule


module FA_1bit_213 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_214 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(A), .A2(n2), .Y(n1) );
  INVX1_RVT U2 ( .A(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_215 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_216 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX8_RVT U1 ( .A(B), .Y(n1) );
  XNOR3X1_RVT U2 ( .A1(n3), .A2(n4), .A3(n5), .Y(C) );
  INVX1_RVT U3 ( .A(n2), .Y(n5) );
  INVX1_RVT U4 ( .A(A), .Y(n4) );
  INVX1_RVT U5 ( .A(Cin), .Y(n3) );
  IBUFFX2_RVT U6 ( .A(n1), .Y(n2) );
  AO21X1_RVT U7 ( .A1(n2), .A2(A), .A3(n6), .Y(Cout) );
  OA21X1_RVT U8 ( .A1(n2), .A2(A), .A3(Cin), .Y(n6) );
endmodule


module FA_1bit_217 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n4, n5, n6, n7, n8;

  INVX8_RVT U1 ( .A(n5), .Y(Cout) );
  AOI22X2_RVT U2 ( .A1(Cin), .A2(n7), .A3(B), .A4(n2), .Y(n5) );
  IBUFFX2_RVT U3 ( .A(Cin), .Y(n4) );
  IBUFFX2_RVT U4 ( .A(A), .Y(n1) );
  INVX1_RVT U5 ( .A(n1), .Y(n2) );
  XOR3X1_RVT U6 ( .A1(n4), .A2(n2), .A3(n8), .Y(C) );
  NAND2X0_RVT U7 ( .A1(n6), .A2(n8), .Y(n7) );
  INVX0_RVT U8 ( .A(B), .Y(n8) );
  INVX0_RVT U9 ( .A(n2), .Y(n6) );
endmodule


module FA_1bit_218 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR3X1_RVT U1 ( .A1(n2), .A2(A), .A3(B), .Y(C) );
  INVX0_RVT U2 ( .A(n3), .Y(n4) );
  IBUFFX2_RVT U3 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(n1), .Y(n2) );
  OAI21X1_RVT U5 ( .A1(B), .A2(A), .A3(Cin), .Y(n3) );
  AO21X1_RVT U6 ( .A1(B), .A2(A), .A3(n4), .Y(Cout) );
endmodule


module FA_1bit_219 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NOR2X0_RVT U1 ( .A1(n4), .A2(A), .Y(n1) );
  INVX32_RVT U2 ( .A(Cin), .Y(n2) );
  NOR2X0_RVT U3 ( .A1(n1), .A2(n2), .Y(n5) );
  INVX1_RVT U4 ( .A(n3), .Y(n4) );
  XOR3X2_RVT U5 ( .A1(n4), .A2(A), .A3(Cin), .Y(C) );
  IBUFFX4_RVT U6 ( .A(B), .Y(n3) );
  AO21X1_RVT U7 ( .A1(n4), .A2(A), .A3(n5), .Y(Cout) );
endmodule


module FA_1bit_220 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n6) );
  AND2X4_RVT U2 ( .A1(B), .A2(A), .Y(n5) );
  OR2X2_RVT U3 ( .A1(n5), .A2(n9), .Y(Cout) );
  NOR2X4_RVT U4 ( .A1(n7), .A2(n8), .Y(n9) );
  NAND2X0_RVT U5 ( .A1(n3), .A2(n4), .Y(C) );
  NAND2X0_RVT U6 ( .A1(n1), .A2(n6), .Y(n4) );
  INVX0_RVT U7 ( .A(Cin), .Y(n8) );
  NAND2X0_RVT U8 ( .A1(Cin), .A2(n2), .Y(n3) );
  INVX1_RVT U9 ( .A(Cin), .Y(n1) );
  INVX1_RVT U10 ( .A(n6), .Y(n2) );
  NOR2X0_RVT U11 ( .A1(B), .A2(A), .Y(n7) );
endmodule


module FA_1bit_221 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(C) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_222 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  IBUFFX2_RVT U1 ( .A(n8), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n5) );
  NAND2X0_RVT U4 ( .A1(n7), .A2(n2), .Y(Cout) );
  INVX1_RVT U5 ( .A(n3), .Y(n4) );
  INVX1_RVT U6 ( .A(Cin), .Y(n3) );
  XNOR2X1_RVT U7 ( .A1(n4), .A2(n5), .Y(n6) );
  INVX1_RVT U8 ( .A(n6), .Y(C) );
  NAND2X0_RVT U9 ( .A1(n4), .A2(n5), .Y(n7) );
  NAND2X0_RVT U10 ( .A1(B), .A2(A), .Y(n8) );
endmodule


module FA_1bit_223 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  INVX1_RVT U1 ( .A(n10), .Y(n1) );
  INVX1_RVT U2 ( .A(n9), .Y(n10) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX1_RVT U4 ( .A(n5), .Y(n4) );
  INVX1_RVT U5 ( .A(n8), .Y(n5) );
  INVX1_RVT U6 ( .A(n7), .Y(n8) );
  NBUFFX2_RVT U7 ( .A(n3), .Y(n7) );
  AO22X1_RVT U8 ( .A1(Cin), .A2(n2), .A3(B), .A4(n6), .Y(Cout) );
  INVX1_RVT U9 ( .A(n1), .Y(n2) );
  INVX1_RVT U10 ( .A(A), .Y(n3) );
  INVX1_RVT U11 ( .A(n3), .Y(n6) );
  XNOR2X1_RVT U12 ( .A1(n4), .A2(B), .Y(n9) );
endmodule


module FA_1bit_224 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7;

  INVX1_RVT U1 ( .A(n7), .Y(n3) );
  OAI22X1_RVT U2 ( .A1(n3), .A2(n4), .A3(n5), .A4(n2), .Y(Cout) );
  INVX1_RVT U3 ( .A(Cin), .Y(n4) );
  INVX1_RVT U4 ( .A(B), .Y(n5) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n6), .Y(C) );
  INVX0_RVT U6 ( .A(A), .Y(n2) );
  XOR2X1_RVT U7 ( .A1(A), .A2(B), .Y(n7) );
  XOR2X1_RVT U8 ( .A1(A), .A2(B), .Y(n6) );
endmodule


module ROW_MUL_5 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n11, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n6, n7,
         n8, n9;
  tri   B;

  FA_1bit_224 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_223 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_222 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_221 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_220 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_219 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_218 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_217 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_216 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_215 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_214 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_213 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_212 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_211 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_210 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_209 \ROW[15]  ( .A(\_0_net_[15] ), .B(n4), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_208 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_207 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_206 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_205 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_204 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_203 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_202 \ROW[22]  ( .A(\_0_net_[22] ), .B(n2), .Cin(Cin[22]), .C(n11), 
        .Cout(Cout[22]) );
  FA_1bit_201 \ROW[23]  ( .A(\_0_net_[23] ), .B(n8), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_200 \ROW[24]  ( .A(\_0_net_[24] ), .B(n6), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_199 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_198 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_197 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_196 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_195 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_194 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_193 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X4_RVT U1 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  INVX1_RVT U2 ( .A(n11), .Y(n9) );
  IBUFFX4_RVT U3 ( .A(Sin[22]), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U5 ( .A(Sin[15]), .Y(n3) );
  IBUFFX4_RVT U6 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U7 ( .A(Sin[24]), .Y(n5) );
  IBUFFX4_RVT U8 ( .A(n5), .Y(n6) );
  IBUFFX4_RVT U9 ( .A(Sin[23]), .Y(n7) );
  IBUFFX4_RVT U10 ( .A(n7), .Y(n8) );
  INVX0_RVT U11 ( .A(n9), .Y(Sout[22]) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U13 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U14 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U15 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U16 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U17 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U18 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U19 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U20 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U21 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U22 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U23 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U24 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U25 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U26 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U27 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U28 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U31 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U32 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U33 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U34 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U35 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U36 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U37 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U38 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U39 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U40 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U41 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U42 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_225 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_226 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6;

  XOR2X2_RVT U1 ( .A1(n2), .A2(n6), .Y(C) );
  INVX4_RVT U2 ( .A(Cin), .Y(n2) );
  INVX1_RVT U3 ( .A(n3), .Y(n6) );
  INVX1_RVT U4 ( .A(B), .Y(n4) );
  XOR2X1_RVT U5 ( .A1(n5), .A2(n4), .Y(n3) );
  INVX0_RVT U6 ( .A(A), .Y(n5) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_227 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX1_RVT U2 ( .A(B), .Y(n2) );
  INVX1_RVT U3 ( .A(n4), .Y(n1) );
  XNOR2X1_RVT U4 ( .A1(n1), .A2(n2), .Y(n3) );
  INVX0_RVT U5 ( .A(A), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_228 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n3, n4, n5, n6, n7, n8, n9, n10;

  INVX1_RVT U1 ( .A(n3), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(Cin), .Y(n3) );
  OAI22X1_RVT U3 ( .A1(n3), .A2(n4), .A3(n5), .A4(n6), .Y(Cout) );
  XOR2X2_RVT U4 ( .A1(n1), .A2(n9), .Y(C) );
  IBUFFX4_RVT U5 ( .A(n9), .Y(n4) );
  IBUFFX4_RVT U6 ( .A(B), .Y(n5) );
  INVX2_RVT U7 ( .A(n10), .Y(n8) );
  IBUFFX4_RVT U8 ( .A(B), .Y(n10) );
  INVX1_RVT U9 ( .A(A), .Y(n7) );
  IBUFFX8_RVT U10 ( .A(A), .Y(n6) );
  XNOR2X2_RVT U11 ( .A1(n7), .A2(n8), .Y(n9) );
endmodule


module FA_1bit_229 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_230 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U2 ( .A(Cin), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_231 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_232 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_233 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_234 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NAND2X2_RVT U1 ( .A1(n3), .A2(n4), .Y(C) );
  NAND2X0_RVT U2 ( .A1(Cin), .A2(n2), .Y(n3) );
  INVX1_RVT U3 ( .A(Cin), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(n1), .A2(n5), .Y(n4) );
  INVX1_RVT U5 ( .A(n5), .Y(n2) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n5) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_235 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(B), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X2_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_236 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  INVX0_RVT U1 ( .A(n4), .Y(n3) );
  INVX1_RVT U2 ( .A(Cin), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(n2), .A2(n3), .Y(C) );
  XOR2X2_RVT U4 ( .A1(A), .A2(B), .Y(n4) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_237 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_238 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(A), .A2(n1), .Y(n2) );
  INVX4_RVT U2 ( .A(n3), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX1_RVT U4 ( .A(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_239 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  INVX1_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  NBUFFX8_RVT U3 ( .A(n6), .Y(n5) );
  NAND2X0_RVT U4 ( .A1(n3), .A2(n4), .Y(Cout) );
  NAND2X0_RVT U5 ( .A1(B), .A2(n2), .Y(n4) );
  NAND2X0_RVT U6 ( .A1(Cin), .A2(n7), .Y(n3) );
  XOR2X2_RVT U7 ( .A1(Cin), .A2(n7), .Y(C) );
  INVX32_RVT U8 ( .A(n5), .Y(n7) );
  XNOR2X1_RVT U9 ( .A1(n2), .A2(B), .Y(n6) );
endmodule


module FA_1bit_240 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_241 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX4_RVT U1 ( .A(n3), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_242 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n6, n1, n3, n4, n5;

  IBUFFX4_RVT U1 ( .A(n6), .Y(n1) );
  INVX4_RVT U2 ( .A(n1), .Y(Cout) );
  OR2X1_RVT U3 ( .A1(n4), .A2(n5), .Y(n6) );
  AND2X1_RVT U4 ( .A1(Cin), .A2(n3), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(A), .A2(B), .Y(n3) );
  XOR2X2_RVT U6 ( .A1(Cin), .A2(n3), .Y(C) );
  AND2X2_RVT U7 ( .A1(B), .A2(A), .Y(n5) );
endmodule


module FA_1bit_243 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(A), .A2(n2), .Y(n1) );
  INVX1_RVT U3 ( .A(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_244 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX1_RVT U2 ( .A(n2), .Y(n4) );
  IBUFFX4_RVT U3 ( .A(B), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U5 ( .A1(A), .A2(n4), .Y(n3) );
  AO22X1_RVT U6 ( .A1(n2), .A2(A), .A3(Cin), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_245 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_246 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_247 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X2_RVT U3 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
endmodule


module FA_1bit_248 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_249 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR3X2_RVT U1 ( .A1(B), .A2(n2), .A3(Cin), .Y(C) );
  OR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_250 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  OR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  AO22X2_RVT U2 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR3X2_RVT U3 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
endmodule


module FA_1bit_251 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;

  INVX4_RVT U1 ( .A(n1), .Y(C) );
  XOR3X2_RVT U2 ( .A1(n2), .A2(n6), .A3(A), .Y(n1) );
  IBUFFX8_RVT U3 ( .A(Cin), .Y(n2) );
  INVX32_RVT U4 ( .A(n8), .Y(n3) );
  IBUFFX4_RVT U5 ( .A(n3), .Y(n4) );
  INVX1_RVT U6 ( .A(n6), .Y(n7) );
  IBUFFX4_RVT U7 ( .A(B), .Y(n5) );
  IBUFFX4_RVT U8 ( .A(n5), .Y(n6) );
  INVX0_RVT U9 ( .A(A), .Y(n9) );
  NAND2X0_RVT U10 ( .A1(n9), .A2(n7), .Y(n8) );
  AO22X1_RVT U11 ( .A1(Cin), .A2(n4), .A3(n6), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_252 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  INVX0_RVT U2 ( .A(A), .Y(n3) );
  INVX0_RVT U3 ( .A(B), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(n3), .A2(n1), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_253 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n7), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n5) );
  INVX1_RVT U3 ( .A(n6), .Y(n7) );
  INVX0_RVT U4 ( .A(B), .Y(n3) );
  INVX1_RVT U5 ( .A(n5), .Y(n6) );
  OAI22X1_RVT U6 ( .A1(n2), .A2(n6), .A3(n3), .A4(n4), .Y(Cout) );
  INVX0_RVT U7 ( .A(Cin), .Y(n2) );
  INVX1_RVT U8 ( .A(A), .Y(n4) );
endmodule


module FA_1bit_254 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n4, n5, n6, n7, n8, n9;

  XOR2X1_RVT U1 ( .A1(n2), .A2(n5), .Y(C) );
  INVX0_RVT U2 ( .A(B), .Y(n6) );
  INVX1_RVT U3 ( .A(n4), .Y(n1) );
  INVX1_RVT U4 ( .A(n8), .Y(Cout) );
  INVX0_RVT U5 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U6 ( .A(Cin), .Y(n4) );
  INVX1_RVT U7 ( .A(n9), .Y(n5) );
  OA22X1_RVT U8 ( .A1(n2), .A2(n5), .A3(n6), .A4(n7), .Y(n8) );
  INVX1_RVT U9 ( .A(A), .Y(n7) );
  XOR2X2_RVT U10 ( .A1(A), .A2(B), .Y(n9) );
endmodule


module FA_1bit_255 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  INVX1_RVT U1 ( .A(n3), .Y(C) );
  INVX1_RVT U2 ( .A(n2), .Y(n4) );
  INVX1_RVT U3 ( .A(n6), .Y(n5) );
  INVX0_RVT U4 ( .A(n1), .Y(n2) );
  INVX32_RVT U5 ( .A(Cin), .Y(n1) );
  XNOR2X1_RVT U6 ( .A1(n4), .A2(n5), .Y(n3) );
  IBUFFX16_RVT U7 ( .A(A), .Y(n7) );
  XNOR2X1_RVT U8 ( .A1(n7), .A2(B), .Y(n6) );
  AO22X1_RVT U9 ( .A1(n2), .A2(n6), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_256 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX1_RVT U1 ( .A(n1), .Y(n4) );
  INVX1_RVT U2 ( .A(n2), .Y(C) );
  INVX0_RVT U3 ( .A(Cin), .Y(n3) );
  XNOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n1) );
  XNOR2X1_RVT U5 ( .A1(n3), .A2(n1), .Y(n2) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(A), .Y(Cout) );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n2, n3, n4, n5, n6;
  tri   B;

  FA_1bit_256 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_255 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_254 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_253 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_252 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_251 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_250 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_249 \ROW[7]  ( .A(n2), .B(Sin[7]), .Cin(Cin[7]), .C(Sout[7]), .Cout(
        Cout[7]) );
  FA_1bit_248 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_247 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_246 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_245 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_244 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_243 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_242 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_241 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_240 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_239 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_238 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(n4), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_237 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_236 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_235 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_234 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_233 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_232 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_231 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_230 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_229 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_228 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_227 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_226 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_225 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X4_RVT U1 ( .A1(A[17]), .A2(n6), .Y(\_0_net_[17] ) );
  IBUFFX4_RVT U2 ( .A(\_0_net_[7] ), .Y(n1) );
  INVX1_RVT U3 ( .A(n1), .Y(n2) );
  INVX1_RVT U4 ( .A(n3), .Y(n4) );
  INVX1_RVT U5 ( .A(Cin[18]), .Y(n3) );
  IBUFFX16_RVT U6 ( .A(B), .Y(n5) );
  IBUFFX4_RVT U7 ( .A(n5), .Y(n6) );
  AND2X1_RVT U8 ( .A1(A[1]), .A2(n6), .Y(\_0_net_[1] ) );
  AND2X1_RVT U9 ( .A1(A[30]), .A2(n6), .Y(\_0_net_[30] ) );
  AND2X1_RVT U10 ( .A1(A[31]), .A2(n6), .Y(\_0_net_[31] ) );
  AND2X1_RVT U11 ( .A1(A[28]), .A2(n6), .Y(\_0_net_[28] ) );
  AND2X1_RVT U12 ( .A1(A[29]), .A2(n6), .Y(\_0_net_[29] ) );
  AND2X1_RVT U13 ( .A1(A[27]), .A2(n6), .Y(\_0_net_[27] ) );
  AND2X1_RVT U14 ( .A1(A[26]), .A2(n6), .Y(\_0_net_[26] ) );
  AND2X1_RVT U15 ( .A1(A[25]), .A2(n6), .Y(\_0_net_[25] ) );
  AND2X1_RVT U16 ( .A1(A[24]), .A2(n6), .Y(\_0_net_[24] ) );
  AND2X1_RVT U17 ( .A1(A[23]), .A2(n6), .Y(\_0_net_[23] ) );
  AND2X1_RVT U18 ( .A1(A[22]), .A2(n6), .Y(\_0_net_[22] ) );
  AND2X1_RVT U19 ( .A1(A[21]), .A2(n6), .Y(\_0_net_[21] ) );
  AND2X1_RVT U20 ( .A1(A[20]), .A2(n6), .Y(\_0_net_[20] ) );
  AND2X1_RVT U21 ( .A1(A[19]), .A2(n6), .Y(\_0_net_[19] ) );
  AND2X1_RVT U22 ( .A1(A[18]), .A2(n6), .Y(\_0_net_[18] ) );
  AND2X1_RVT U23 ( .A1(A[16]), .A2(n6), .Y(\_0_net_[16] ) );
  AND2X1_RVT U24 ( .A1(A[15]), .A2(n6), .Y(\_0_net_[15] ) );
  AND2X1_RVT U25 ( .A1(A[14]), .A2(n6), .Y(\_0_net_[14] ) );
  AND2X1_RVT U26 ( .A1(A[13]), .A2(n6), .Y(\_0_net_[13] ) );
  AND2X1_RVT U27 ( .A1(A[12]), .A2(n6), .Y(\_0_net_[12] ) );
  AND2X1_RVT U28 ( .A1(A[11]), .A2(n6), .Y(\_0_net_[11] ) );
  AND2X1_RVT U29 ( .A1(A[10]), .A2(n6), .Y(\_0_net_[10] ) );
  AND2X1_RVT U30 ( .A1(A[9]), .A2(n6), .Y(\_0_net_[9] ) );
  AND2X1_RVT U31 ( .A1(A[8]), .A2(n6), .Y(\_0_net_[8] ) );
  AND2X1_RVT U32 ( .A1(A[7]), .A2(n6), .Y(\_0_net_[7] ) );
  AND2X1_RVT U33 ( .A1(A[6]), .A2(n6), .Y(\_0_net_[6] ) );
  AND2X1_RVT U34 ( .A1(A[5]), .A2(n6), .Y(\_0_net_[5] ) );
  AND2X1_RVT U35 ( .A1(A[4]), .A2(n6), .Y(\_0_net_[4] ) );
  AND2X1_RVT U36 ( .A1(A[3]), .A2(n6), .Y(\_0_net_[3] ) );
  AND2X1_RVT U37 ( .A1(A[2]), .A2(n6), .Y(\_0_net_[2] ) );
  AND2X1_RVT U38 ( .A1(A[0]), .A2(n6), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_257 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  IBUFFX4_RVT U1 ( .A(n6), .Y(n1) );
  INVX16_RVT U2 ( .A(n1), .Y(n2) );
  INVX1_RVT U3 ( .A(n7), .Y(n8) );
  NAND2X0_RVT U4 ( .A1(Cin), .A2(n7), .Y(n4) );
  NAND2X0_RVT U5 ( .A1(n3), .A2(n8), .Y(n5) );
  NAND2X0_RVT U6 ( .A1(n4), .A2(n5), .Y(C) );
  INVX1_RVT U7 ( .A(Cin), .Y(n3) );
  IBUFFX16_RVT U8 ( .A(A), .Y(n6) );
  XOR2X1_RVT U9 ( .A1(n2), .A2(B), .Y(n7) );
  AO22X1_RVT U10 ( .A1(Cin), .A2(n8), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_258 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  IBUFFX4_RVT U1 ( .A(n1), .Y(Cout) );
  IBUFFX16_RVT U2 ( .A(B), .Y(n4) );
  AOI22X1_RVT U3 ( .A1(Cin), .A2(n3), .A3(n2), .A4(A), .Y(n1) );
  INVX1_RVT U4 ( .A(n4), .Y(n2) );
  XOR2X1_RVT U5 ( .A1(A), .A2(n4), .Y(n5) );
  NBUFFX2_RVT U6 ( .A(n6), .Y(n3) );
  IBUFFX16_RVT U7 ( .A(n5), .Y(n6) );
  XOR2X1_RVT U8 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_259 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX16_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_260 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NAND2X2_RVT U1 ( .A1(n3), .A2(n4), .Y(n5) );
  NAND2X1_RVT U2 ( .A1(A), .A2(n2), .Y(n3) );
  NAND2X1_RVT U3 ( .A1(n1), .A2(B), .Y(n4) );
  IBUFFX32_RVT U4 ( .A(A), .Y(n1) );
  IBUFFX16_RVT U5 ( .A(B), .Y(n2) );
  XOR2X2_RVT U6 ( .A1(Cin), .A2(n5), .Y(C) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n5), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_261 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX0_RVT U1 ( .A(n3), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  XNOR2X2_RVT U4 ( .A1(B), .A2(n4), .Y(n3) );
  INVX16_RVT U5 ( .A(A), .Y(n4) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_262 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO22X1_RVT U1 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_263 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U2 ( .A(A), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_264 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_265 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  IBUFFX4_RVT U1 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_266 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  INVX2_RVT U1 ( .A(n4), .Y(n2) );
  OR2X1_RVT U2 ( .A1(n1), .A2(n2), .Y(n5) );
  IBUFFX8_RVT U3 ( .A(A), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(n3), .A2(n2), .Y(n6) );
  NAND2X2_RVT U5 ( .A1(n5), .A2(n6), .Y(n7) );
  XOR2X2_RVT U6 ( .A1(n7), .A2(Cin), .Y(C) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n7), .A3(n2), .A4(A), .Y(Cout) );
  IBUFFX32_RVT U8 ( .A(A), .Y(n3) );
  IBUFFX16_RVT U9 ( .A(B), .Y(n4) );
endmodule


module FA_1bit_267 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_268 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_269 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  XNOR2X2_RVT U1 ( .A1(n5), .A2(B), .Y(n2) );
  INVX1_RVT U2 ( .A(n1), .Y(n5) );
  NAND2X0_RVT U3 ( .A1(n3), .A2(n4), .Y(Cout) );
  NAND2X0_RVT U4 ( .A1(Cin), .A2(n2), .Y(n3) );
  NAND2X0_RVT U5 ( .A1(B), .A2(n1), .Y(n4) );
  NBUFFX16_RVT U6 ( .A(A), .Y(n1) );
  XOR2X2_RVT U7 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_270 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  OR2X1_RVT U1 ( .A1(n1), .A2(n2), .Y(Cout) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n4) );
  AND2X1_RVT U4 ( .A1(Cin), .A2(n3), .Y(n1) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n3), .Y(C) );
  NBUFFX2_RVT U6 ( .A(n5), .Y(n3) );
  IBUFFX16_RVT U7 ( .A(n4), .Y(n5) );
endmodule


module FA_1bit_271 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_272 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NAND2X2_RVT U1 ( .A1(n3), .A2(n4), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  NAND2X0_RVT U4 ( .A1(n2), .A2(n1), .Y(n4) );
  INVX1_RVT U5 ( .A(n1), .Y(n5) );
  NAND2X0_RVT U6 ( .A1(Cin), .A2(n5), .Y(n3) );
  INVX1_RVT U7 ( .A(Cin), .Y(n2) );
endmodule


module FA_1bit_273 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_274 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX4_RVT U2 ( .A(A), .Y(n1) );
  INVX2_RVT U3 ( .A(n1), .Y(n2) );
  AO22X2_RVT U4 ( .A1(Cin), .A2(n3), .A3(B), .A4(n2), .Y(Cout) );
  INVX16_RVT U5 ( .A(n2), .Y(n4) );
  XNOR2X1_RVT U6 ( .A1(n4), .A2(B), .Y(n3) );
endmodule


module FA_1bit_275 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_276 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X1_RVT U1 ( .A1(A), .A2(n2), .Y(n3) );
  NBUFFX2_RVT U2 ( .A(n4), .Y(n1) );
  INVX1_RVT U3 ( .A(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  IBUFFX16_RVT U5 ( .A(n3), .Y(n4) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_277 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX1_RVT U1 ( .A(n1), .Y(n2) );
  INVX1_RVT U2 ( .A(A), .Y(n1) );
  XOR3X1_RVT U3 ( .A1(Cin), .A2(n2), .A3(B), .Y(C) );
  AO21X1_RVT U4 ( .A1(B), .A2(n2), .A3(n3), .Y(Cout) );
  OA21X1_RVT U5 ( .A1(B), .A2(n2), .A3(Cin), .Y(n3) );
endmodule


module FA_1bit_278 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(B), .A2(Cin), .Y(n1) );
  XOR2X2_RVT U2 ( .A1(A), .A2(n1), .Y(C) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n2), .Y(Cout) );
  OA21X1_RVT U4 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
endmodule


module FA_1bit_279 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  OA21X1_RVT U1 ( .A1(B), .A2(A), .A3(Cin), .Y(n3) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n2), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n3), .Y(Cout) );
  INVX0_RVT U4 ( .A(A), .Y(n2) );
  XNOR2X1_RVT U5 ( .A1(n1), .A2(B), .Y(C) );
endmodule


module FA_1bit_280 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(n3), .Y(C) );
  INVX1_RVT U2 ( .A(A), .Y(n3) );
  INVX0_RVT U3 ( .A(B), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(n3), .A2(n1), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_281 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX0_RVT U1 ( .A(A), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR3X1_RVT U3 ( .A1(Cin), .A2(n2), .A3(B), .Y(C) );
  OA21X2_RVT U4 ( .A1(n2), .A2(B), .A3(Cin), .Y(n3) );
  AO21X1_RVT U5 ( .A1(B), .A2(n2), .A3(n3), .Y(Cout) );
endmodule


module FA_1bit_282 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  OAI21X2_RVT U2 ( .A1(n3), .A2(n4), .A3(n2), .Y(Cout) );
  OAI21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
  INVX4_RVT U4 ( .A(B), .Y(n3) );
  IBUFFX8_RVT U5 ( .A(A), .Y(n4) );
endmodule


module FA_1bit_283 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_284 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  OA21X2_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n2), .Y(Cout) );
endmodule


module FA_1bit_285 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(A), .A3(B), .Y(C) );
  OA21X2_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
endmodule


module FA_1bit_286 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  NAND2X0_RVT U1 ( .A1(Cin), .A2(n2), .Y(n3) );
  NAND2X0_RVT U2 ( .A1(n3), .A2(n4), .Y(Cout) );
  IBUFFX4_RVT U3 ( .A(n7), .Y(n1) );
  INVX1_RVT U4 ( .A(n1), .Y(n2) );
  NAND2X0_RVT U5 ( .A1(B), .A2(A), .Y(n4) );
  INVX0_RVT U6 ( .A(A), .Y(n5) );
  INVX0_RVT U7 ( .A(n6), .Y(n7) );
  XOR2X1_RVT U8 ( .A1(n5), .A2(B), .Y(n6) );
  XOR2X1_RVT U9 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_287 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX1_RVT U1 ( .A(n2), .Y(C) );
  OAI22X1_RVT U2 ( .A1(n3), .A2(n4), .A3(n5), .A4(n7), .Y(n1) );
  INVX1_RVT U3 ( .A(n8), .Y(n4) );
  INVX1_RVT U4 ( .A(B), .Y(n5) );
  INVX1_RVT U5 ( .A(A), .Y(n7) );
  INVX2_RVT U6 ( .A(n6), .Y(Cout) );
  XNOR2X1_RVT U7 ( .A1(Cin), .A2(n8), .Y(n2) );
  IBUFFX4_RVT U8 ( .A(n1), .Y(n6) );
  INVX1_RVT U9 ( .A(Cin), .Y(n3) );
  XNOR2X1_RVT U10 ( .A1(n7), .A2(B), .Y(n8) );
endmodule


module FA_1bit_288 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX0_RVT U1 ( .A(A), .Y(n1) );
  INVX1_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(n2), .Y(Cout) );
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
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[2] , \_0_net_[1] ,
         \_0_net_[0] , net11074, net11072, net12606, net16725, net19972, n1,
         n2, n3, n4, n5, n6, n7, n8, n9, n10, n11;
  tri   B;

  FA_1bit_288 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_287 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_286 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_285 \ROW[3]  ( .A(n6), .B(Sin[3]), .Cin(Cin[3]), .C(Sout[3]), .Cout(
        Cout[3]) );
  FA_1bit_284 \ROW[4]  ( .A(n7), .B(Sin[4]), .Cin(Cin[4]), .C(Sout[4]), .Cout(
        Cout[4]) );
  FA_1bit_283 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
  FA_1bit_282 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_281 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_280 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_279 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_278 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_277 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_276 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_275 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_274 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_273 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_272 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_271 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_270 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_269 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_268 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_267 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_266 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_265 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_264 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_263 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_262 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_261 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_260 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_259 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_258 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_257 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X4_RVT U1 ( .A1(n5), .A2(net11074), .Y(\_0_net_[20] ) );
  INVX1_RVT U2 ( .A(n4), .Y(n5) );
  INVX1_RVT U3 ( .A(A[20]), .Y(n4) );
  AND2X2_RVT U4 ( .A1(A[27]), .A2(net11074), .Y(\_0_net_[27] ) );
  AND2X1_RVT U5 ( .A1(A[18]), .A2(net11074), .Y(\_0_net_[18] ) );
  INVX2_RVT U6 ( .A(A[17]), .Y(n1) );
  AND2X1_RVT U7 ( .A1(A[25]), .A2(net11074), .Y(\_0_net_[25] ) );
  IBUFFX4_RVT U8 ( .A(net11072), .Y(net11074) );
  IBUFFX16_RVT U9 ( .A(B), .Y(net11072) );
  INVX1_RVT U10 ( .A(B), .Y(net16725) );
  INVX1_RVT U11 ( .A(A[4]), .Y(n8) );
  AND2X1_RVT U12 ( .A1(n3), .A2(net11074), .Y(\_0_net_[5] ) );
  INVX1_RVT U13 ( .A(A[5]), .Y(n2) );
  NOR2X1_RVT U14 ( .A1(n10), .A2(net12606), .Y(\_0_net_[21] ) );
  NOR2X1_RVT U15 ( .A1(n1), .A2(net19972), .Y(\_0_net_[17] ) );
  INVX1_RVT U16 ( .A(net11074), .Y(net19972) );
  AND2X1_RVT U17 ( .A1(A[26]), .A2(net11074), .Y(\_0_net_[26] ) );
  AND2X1_RVT U18 ( .A1(A[23]), .A2(net11074), .Y(\_0_net_[23] ) );
  AND2X1_RVT U19 ( .A1(A[13]), .A2(net11074), .Y(\_0_net_[13] ) );
  AND2X1_RVT U20 ( .A1(A[7]), .A2(net11074), .Y(\_0_net_[7] ) );
  AND2X1_RVT U21 ( .A1(A[8]), .A2(net11074), .Y(\_0_net_[8] ) );
  AND2X1_RVT U22 ( .A1(A[16]), .A2(net11074), .Y(\_0_net_[16] ) );
  AND2X1_RVT U23 ( .A1(A[22]), .A2(net11074), .Y(\_0_net_[22] ) );
  AND2X1_RVT U24 ( .A1(A[24]), .A2(net11074), .Y(\_0_net_[24] ) );
  AND2X1_RVT U25 ( .A1(A[28]), .A2(net11074), .Y(\_0_net_[28] ) );
  NOR2X1_RVT U26 ( .A1(n9), .A2(net12606), .Y(\_0_net_[15] ) );
  AND2X1_RVT U27 ( .A1(A[19]), .A2(net11074), .Y(\_0_net_[19] ) );
  INVX1_RVT U28 ( .A(A[1]), .Y(n11) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(net11074), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[10]), .A2(net11074), .Y(\_0_net_[10] ) );
  IBUFFX4_RVT U31 ( .A(A[21]), .Y(n10) );
  IBUFFX4_RVT U32 ( .A(A[15]), .Y(n9) );
  INVX4_RVT U33 ( .A(n2), .Y(n3) );
  AND2X1_RVT U34 ( .A1(A[3]), .A2(B), .Y(n6) );
  NOR2X1_RVT U35 ( .A1(n8), .A2(net16725), .Y(n7) );
  INVX1_RVT U36 ( .A(net11074), .Y(net12606) );
  NOR2X1_RVT U37 ( .A1(n11), .A2(net12606), .Y(\_0_net_[1] ) );
  AND2X4_RVT U38 ( .A1(A[2]), .A2(net11074), .Y(\_0_net_[2] ) );
  AND2X1_RVT U39 ( .A1(A[31]), .A2(net11074), .Y(\_0_net_[31] ) );
  AND2X1_RVT U40 ( .A1(A[30]), .A2(net11074), .Y(\_0_net_[30] ) );
  AND2X1_RVT U41 ( .A1(A[29]), .A2(net11074), .Y(\_0_net_[29] ) );
  AND2X1_RVT U42 ( .A1(A[12]), .A2(net11074), .Y(\_0_net_[12] ) );
  AND2X1_RVT U43 ( .A1(A[11]), .A2(net11074), .Y(\_0_net_[11] ) );
  AND2X1_RVT U44 ( .A1(A[9]), .A2(net11074), .Y(\_0_net_[9] ) );
  AND2X1_RVT U45 ( .A1(A[6]), .A2(net11074), .Y(\_0_net_[6] ) );
  AND2X1_RVT U46 ( .A1(A[0]), .A2(net11074), .Y(\_0_net_[0] ) );
endmodule


module FA_1bit_289 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX1_RVT U2 ( .A(B), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(A), .A2(n2), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_290 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX32_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  INVX2_RVT U3 ( .A(n2), .Y(n4) );
  XNOR2X2_RVT U4 ( .A1(n4), .A2(B), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(n3), .A2(Cin), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n3), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_291 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(n3), .Y(n1) );
  INVX2_RVT U2 ( .A(A), .Y(n3) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X1_RVT U4 ( .A1(n3), .A2(B), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_292 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX8_RVT U2 ( .A(A), .Y(n2) );
  XNOR2X1_RVT U3 ( .A1(n2), .A2(B), .Y(n1) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_293 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(n3), .Y(n1) );
  INVX2_RVT U2 ( .A(A), .Y(n3) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_294 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX4_RVT U1 ( .A(n4), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  INVX1_RVT U3 ( .A(A), .Y(n4) );
  XNOR2X1_RVT U4 ( .A1(n2), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_295 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(n3), .Y(n1) );
  INVX2_RVT U2 ( .A(A), .Y(n3) );
  XNOR2X2_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_296 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X2_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U2 ( .A(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_297 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX16_RVT U1 ( .A(A), .Y(n2) );
  NBUFFX8_RVT U2 ( .A(n2), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n3) );
  INVX2_RVT U4 ( .A(n3), .Y(n5) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  XNOR2X2_RVT U6 ( .A1(n5), .A2(B), .Y(n4) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n4), .A3(B), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_298 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NBUFFX8_RVT U1 ( .A(n2), .Y(n1) );
  INVX0_RVT U2 ( .A(A), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n3) );
  XNOR2X2_RVT U4 ( .A1(n5), .A2(B), .Y(n4) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  INVX2_RVT U6 ( .A(n3), .Y(n5) );
  AO22X1_RVT U7 ( .A1(Cin), .A2(n4), .A3(B), .A4(n3), .Y(Cout) );
endmodule


module FA_1bit_299 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  INVX1_RVT U1 ( .A(A), .Y(n4) );
  IBUFFX4_RVT U2 ( .A(n4), .Y(n1) );
  INVX2_RVT U3 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U4 ( .A1(n2), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_300 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(n3), .Y(n1) );
  INVX2_RVT U2 ( .A(A), .Y(n3) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  XNOR2X1_RVT U4 ( .A1(n3), .A2(B), .Y(n2) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(B), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_301 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_302 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX4_RVT U1 ( .A(n4), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX32_RVT U3 ( .A(A), .Y(n4) );
  XNOR2X1_RVT U4 ( .A1(n2), .A2(B), .Y(n3) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U6 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_303 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X2_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_304 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX32_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XNOR2X2_RVT U3 ( .A1(n2), .A2(n3), .Y(n4) );
  IBUFFX8_RVT U4 ( .A(B), .Y(n3) );
  XOR2X2_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  AO22X1_RVT U6 ( .A1(Cin), .A2(n4), .A3(B), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_305 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX2_RVT U1 ( .A(n3), .Y(n1) );
  INVX2_RVT U2 ( .A(A), .Y(n3) );
  XNOR2X1_RVT U3 ( .A1(n3), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n2), .A3(B), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_306 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U2 ( .A(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
endmodule


module FA_1bit_307 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U2 ( .A1(n2), .A2(B), .Y(n1) );
  INVX0_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_308 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  AO21X1_RVT U1 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U2 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XOR3X1_RVT U3 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
endmodule


module FA_1bit_309 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n2), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
endmodule


module FA_1bit_310 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(n2), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  INVX0_RVT U4 ( .A(A), .Y(n2) );
endmodule


module FA_1bit_311 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n2), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
endmodule


module FA_1bit_312 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4;

  INVX1_RVT U1 ( .A(n2), .Y(n3) );
  INVX1_RVT U2 ( .A(A), .Y(n2) );
  XOR3X2_RVT U3 ( .A1(Cin), .A2(B), .A3(n3), .Y(C) );
  AO21X1_RVT U4 ( .A1(B), .A2(A), .A3(n4), .Y(Cout) );
  OA21X1_RVT U5 ( .A1(B), .A2(A), .A3(Cin), .Y(n4) );
endmodule


module FA_1bit_313 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR3X1_RVT U1 ( .A1(Cin), .A2(B), .A3(A), .Y(C) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
endmodule


module FA_1bit_314 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX1_RVT U1 ( .A(A), .Y(n2) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XNOR3X1_RVT U4 ( .A1(Cin), .A2(B), .A3(n2), .Y(C) );
endmodule


module FA_1bit_315 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX1_RVT U1 ( .A(A), .Y(n1) );
  XNOR3X2_RVT U2 ( .A1(Cin), .A2(B), .A3(n1), .Y(C) );
  AO21X1_RVT U3 ( .A1(B), .A2(A), .A3(n2), .Y(Cout) );
  OA21X1_RVT U4 ( .A1(B), .A2(A), .A3(Cin), .Y(n2) );
endmodule


module FA_1bit_316 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  INVX1_RVT U1 ( .A(A), .Y(n2) );
  AO21X1_RVT U2 ( .A1(B), .A2(A), .A3(n1), .Y(Cout) );
  OA21X1_RVT U3 ( .A1(B), .A2(A), .A3(Cin), .Y(n1) );
  XNOR3X1_RVT U4 ( .A1(Cin), .A2(B), .A3(n2), .Y(C) );
endmodule


module FA_1bit_317 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  IBUFFX16_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX16_RVT U2 ( .A(n2), .Y(n3) );
  XOR2X1_RVT U3 ( .A1(n1), .A2(B), .Y(n2) );
  AO22X1_RVT U4 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n3), .Y(C) );
endmodule


module FA_1bit_318 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(Cin), .A2(n1), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_319 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n3), .Y(C) );
  IBUFFX16_RVT U2 ( .A(n2), .Y(n3) );
  XOR2X2_RVT U3 ( .A1(n1), .A2(B), .Y(n2) );
  IBUFFX8_RVT U4 ( .A(A), .Y(n1) );
  AO22X1_RVT U5 ( .A1(Cin), .A2(n3), .A3(B), .A4(A), .Y(Cout) );
endmodule


module FA_1bit_320 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module ROW_MUL_8 ( A, B, Sin, Cin, Sout, Cout );
  input [31:0] A;
  input [31:0] Sin;
  input [31:0] Cin;
  output [31:0] Sout;
  output [31:0] Cout;
  input B;
  wire   n5, \_0_net_[31] , \_0_net_[30] , \_0_net_[29] , \_0_net_[28] ,
         \_0_net_[27] , \_0_net_[26] , \_0_net_[25] , \_0_net_[24] ,
         \_0_net_[23] , \_0_net_[22] , \_0_net_[21] , \_0_net_[20] ,
         \_0_net_[19] , \_0_net_[18] , \_0_net_[17] , \_0_net_[16] ,
         \_0_net_[15] , \_0_net_[14] , \_0_net_[13] , \_0_net_[12] ,
         \_0_net_[11] , \_0_net_[10] , \_0_net_[9] , \_0_net_[8] ,
         \_0_net_[7] , \_0_net_[6] , \_0_net_[5] , \_0_net_[4] , \_0_net_[3] ,
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] , n1, n3, n4;
  tri   B;

  FA_1bit_320 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_319 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_318 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_317 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_316 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
  FA_1bit_315 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(n5), 
        .Cout(Cout[5]) );
  FA_1bit_314 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(
        Sout[6]), .Cout(Cout[6]) );
  FA_1bit_313 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
  FA_1bit_312 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_311 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_310 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_309 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_308 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_307 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_306 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_305 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_304 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_303 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_302 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_301 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_300 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_299 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_298 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_297 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_296 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_295 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_294 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_293 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_292 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_291 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_290 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_289 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X2_RVT U1 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  IBUFFX2_RVT U2 ( .A(n1), .Y(Sout[5]) );
  INVX1_RVT U3 ( .A(A[7]), .Y(n3) );
  IBUFFX16_RVT U4 ( .A(n5), .Y(n1) );
  INVX0_RVT U5 ( .A(n3), .Y(n4) );
  AND2X1_RVT U6 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U7 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U8 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U9 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U10 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U11 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U12 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U13 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U14 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U15 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U16 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U17 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U18 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U19 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U20 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U21 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U22 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U23 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U24 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U25 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U26 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U27 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U28 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U29 ( .A1(A[9]), .A2(B), .Y(\_0_net_[9] ) );
  AND2X1_RVT U30 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U31 ( .A1(n4), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U32 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U33 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U34 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U35 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U36 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
endmodule


module FA_1bit_1 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n1) );
endmodule


module FA_1bit_2 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  AND2X1_RVT U1 ( .A1(B), .A2(A), .Y(n1) );
  OA22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_3 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  NOR2X2_RVT U1 ( .A1(n4), .A2(n5), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  INVX1_RVT U3 ( .A(Cin), .Y(n3) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n2) );
  XNOR2X1_RVT U5 ( .A1(n3), .A2(n1), .Y(C) );
  NOR2X1_RVT U6 ( .A1(Cin), .A2(n2), .Y(n4) );
  NOR2X0_RVT U7 ( .A1(n2), .A2(n1), .Y(n5) );
endmodule


module FA_1bit_4 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X1_RVT U2 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n2), .Y(Cout) );
  XOR2X2_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n3) );
endmodule


module RCA_4bit_1 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2, n3, n4, n5, n6, n7, n8;

  FA_1bit_4 HA00 ( .A(A[0]), .B(B[0]), .Cin(n4), .C(C[0]), .Cout(Cout00) );
  FA_1bit_3 FA01 ( .A(A[1]), .B(B[1]), .Cin(n8), .C(C[1]), .Cout(Cout01) );
  FA_1bit_2 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_1 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  IBUFFX32_RVT U1 ( .A(n6), .Y(n8) );
  IBUFFX16_RVT U2 ( .A(n7), .Y(n5) );
  IBUFFX16_RVT U3 ( .A(Cin), .Y(n3) );
  INVX4_RVT U4 ( .A(n3), .Y(n1) );
  IBUFFX4_RVT U5 ( .A(n1), .Y(n2) );
  INVX2_RVT U6 ( .A(n2), .Y(n4) );
  IBUFFX16_RVT U7 ( .A(n5), .Y(n6) );
  IBUFFX4_RVT U8 ( .A(Cout00), .Y(n7) );
endmodule


module FA_1bit_5 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  OA22X2_RVT U1 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n3), .Y(Cout) );
  XNOR2X2_RVT U2 ( .A1(n2), .A2(B), .Y(n3) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  IBUFFX4_RVT U4 ( .A(A), .Y(n2) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n1) );
endmodule


module FA_1bit_6 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  INVX2_RVT U1 ( .A(n2), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(n1), .A2(n4), .Y(C) );
  IBUFFX4_RVT U3 ( .A(A), .Y(n5) );
  IBUFFX16_RVT U4 ( .A(Cin), .Y(n2) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
  XNOR2X1_RVT U6 ( .A1(n5), .A2(B), .Y(n4) );
  OA22X1_RVT U7 ( .A1(n1), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_7 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XNOR2X2_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  IBUFFX8_RVT U2 ( .A(n2), .Y(n1) );
  OA22X1_RVT U3 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U4 ( .A1(A), .A2(B), .Y(n2) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
endmodule


module FA_1bit_8 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n1) );
  NAND2X0_RVT U2 ( .A1(B), .A2(A), .Y(n4) );
  INVX2_RVT U3 ( .A(Cin), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n1), .Y(C) );
  IBUFFX16_RVT U5 ( .A(n1), .Y(n3) );
  AOI22X1_RVT U6 ( .A1(n2), .A2(n4), .A3(n4), .A4(n3), .Y(Cout) );
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
  wire   n1, n2, n3, n4;

  AND2X1_RVT U1 ( .A1(n1), .A2(n2), .Y(Cout) );
  OR2X1_RVT U2 ( .A1(Cin), .A2(n4), .Y(n1) );
  OR2X1_RVT U3 ( .A1(n4), .A2(n3), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n3), .Y(C) );
  XOR2X2_RVT U5 ( .A1(A), .A2(B), .Y(n3) );
  AND2X1_RVT U6 ( .A1(B), .A2(A), .Y(n4) );
endmodule


module FA_1bit_10 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  XOR2X2_RVT U1 ( .A1(A), .A2(B), .Y(n3) );
  NBUFFX2_RVT U2 ( .A(Cin), .Y(n1) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  OA22X1_RVT U4 ( .A1(n1), .A2(n2), .A3(n2), .A4(n3), .Y(Cout) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n2) );
endmodule


module FA_1bit_11 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  OA22X2_RVT U1 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n4), .Y(Cout) );
  XOR2X2_RVT U2 ( .A1(Cin), .A2(n4), .Y(C) );
  XOR2X1_RVT U3 ( .A1(n2), .A2(B), .Y(n4) );
  IBUFFX4_RVT U4 ( .A(A), .Y(n1) );
  INVX2_RVT U5 ( .A(n1), .Y(n2) );
  AND2X1_RVT U6 ( .A1(B), .A2(n2), .Y(n3) );
endmodule


module FA_1bit_12 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  IBUFFX2_RVT U1 ( .A(A), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n4), .Y(C) );
  XOR2X2_RVT U4 ( .A1(n2), .A2(B), .Y(n4) );
  AND2X1_RVT U5 ( .A1(B), .A2(A), .Y(n3) );
  OA22X1_RVT U6 ( .A1(n3), .A2(Cin), .A3(n3), .A4(n4), .Y(Cout) );
endmodule


module RCA_4bit_3 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;

  FA_1bit_12 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_11 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_10 FA10 ( .A(A[2]), .B(n2), .Cin(Cout01), .C(C[2]), .Cout(Cout10) );
  FA_1bit_9 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  IBUFFX4_RVT U1 ( .A(B[2]), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
endmodule


module FA_1bit_13 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5;

  OA22X1_RVT U1 ( .A1(Cin), .A2(n4), .A3(n4), .A4(n5), .Y(Cout) );
  IBUFFX16_RVT U2 ( .A(Cin), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(n2), .Y(n3) );
  AND2X1_RVT U4 ( .A1(B), .A2(A), .Y(n4) );
  XOR2X1_RVT U5 ( .A1(A), .A2(B), .Y(n5) );
  XOR2X1_RVT U6 ( .A1(n3), .A2(n5), .Y(C) );
endmodule


module FA_1bit_14 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  IBUFFX4_RVT U1 ( .A(Cin), .Y(n1) );
  IBUFFX8_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U3 ( .A(B), .Y(n3) );
  INVX1_RVT U4 ( .A(n3), .Y(n4) );
  XOR2X1_RVT U5 ( .A1(n2), .A2(n5), .Y(C) );
  IBUFFX4_RVT U6 ( .A(A), .Y(n7) );
  XNOR2X1_RVT U7 ( .A1(n7), .A2(n4), .Y(n5) );
  AND2X1_RVT U8 ( .A1(n4), .A2(A), .Y(n6) );
  OA22X1_RVT U9 ( .A1(Cin), .A2(n6), .A3(n6), .A4(n5), .Y(Cout) );
endmodule


module FA_1bit_15 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n4) );
  INVX2_RVT U2 ( .A(Cin), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(n1), .Y(n2) );
  XOR2X1_RVT U4 ( .A1(n2), .A2(n4), .Y(C) );
  AND2X1_RVT U5 ( .A1(A), .A2(B), .Y(n3) );
  OA22X1_RVT U6 ( .A1(n3), .A2(Cin), .A3(n3), .A4(n4), .Y(Cout) );
endmodule


module FA_1bit_16 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  INVX1_RVT U1 ( .A(n6), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(Cin), .Y(n2) );
  INVX2_RVT U3 ( .A(n2), .Y(n3) );
  IBUFFX4_RVT U4 ( .A(A), .Y(n6) );
  XOR2X2_RVT U5 ( .A1(n3), .A2(n5), .Y(C) );
  XNOR2X2_RVT U6 ( .A1(n6), .A2(B), .Y(n5) );
  AND2X1_RVT U7 ( .A1(B), .A2(n1), .Y(n4) );
  OA22X1_RVT U8 ( .A1(n3), .A2(n4), .A3(n4), .A4(n5), .Y(Cout) );
endmodule


module RCA_4bit_4 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;

  FA_1bit_16 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_15 FA01 ( .A(A[1]), .B(B[1]), .Cin(n2), .C(C[1]), .Cout(Cout01) );
  FA_1bit_14 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_13 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  IBUFFX4_RVT U1 ( .A(Cout00), .Y(n1) );
  INVX2_RVT U2 ( .A(n1), .Y(n2) );
endmodule


module FA_1bit_17 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5;

  IBUFFX4_RVT U1 ( .A(n4), .Y(n1) );
  XNOR2X2_RVT U2 ( .A1(A), .A2(n5), .Y(n4) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX1_RVT U4 ( .A(n1), .Y(n2) );
  INVX1_RVT U5 ( .A(B), .Y(n5) );
  AND2X1_RVT U6 ( .A1(B), .A2(A), .Y(n3) );
  OA22X1_RVT U7 ( .A1(Cin), .A2(n3), .A3(n3), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_18 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  INVX4_RVT U1 ( .A(n1), .Y(n2) );
  INVX2_RVT U2 ( .A(Cin), .Y(n1) );
  INVX0_RVT U3 ( .A(n7), .Y(n4) );
  NAND2X0_RVT U4 ( .A1(n3), .A2(n7), .Y(n6) );
  XOR2X1_RVT U5 ( .A1(A), .A2(B), .Y(n7) );
  NAND2X0_RVT U6 ( .A1(n2), .A2(n4), .Y(n5) );
  NAND2X0_RVT U7 ( .A1(n5), .A2(n6), .Y(C) );
  INVX4_RVT U8 ( .A(n2), .Y(n3) );
  AND2X1_RVT U9 ( .A1(B), .A2(A), .Y(n8) );
  OA22X1_RVT U10 ( .A1(n2), .A2(n8), .A3(n8), .A4(n7), .Y(Cout) );
endmodule


module FA_1bit_19 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  IBUFFX4_RVT U1 ( .A(B), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  INVX4_RVT U3 ( .A(n8), .Y(n10) );
  OA22X1_RVT U4 ( .A1(n7), .A2(Cin), .A3(n7), .A4(n10), .Y(Cout) );
  INVX0_RVT U5 ( .A(n10), .Y(n4) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(n10), .Y(n6) );
  INVX0_RVT U7 ( .A(Cin), .Y(n3) );
  NAND2X0_RVT U8 ( .A1(Cin), .A2(n4), .Y(n5) );
  XNOR2X1_RVT U9 ( .A1(A), .A2(n2), .Y(n8) );
  NAND2X0_RVT U10 ( .A1(n5), .A2(n6), .Y(C) );
  INVX1_RVT U11 ( .A(n9), .Y(n7) );
  NAND2X0_RVT U12 ( .A1(n2), .A2(A), .Y(n9) );
endmodule


module FA_1bit_20 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7;

  XOR2X2_RVT U1 ( .A1(n1), .A2(n6), .Y(C) );
  IBUFFX8_RVT U2 ( .A(n5), .Y(n1) );
  OA22X2_RVT U3 ( .A1(n4), .A2(n7), .A3(n7), .A4(n6), .Y(Cout) );
  DELLN3X2_RVT U4 ( .A(A), .Y(n2) );
  INVX4_RVT U5 ( .A(n3), .Y(n4) );
  XOR2X2_RVT U6 ( .A1(A), .A2(B), .Y(n6) );
  INVX16_RVT U7 ( .A(n4), .Y(n5) );
  INVX1_RVT U8 ( .A(Cin), .Y(n3) );
  AND2X1_RVT U9 ( .A1(B), .A2(n2), .Y(n7) );
endmodule


module RCA_4bit_5 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2, n3, n4;

  FA_1bit_20 HA00 ( .A(A[0]), .B(B[0]), .Cin(n4), .C(C[0]), .Cout(Cout00) );
  FA_1bit_19 FA01 ( .A(A[1]), .B(B[1]), .Cin(n2), .C(C[1]), .Cout(Cout01) );
  FA_1bit_18 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_17 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  INVX32_RVT U1 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U2 ( .A(Cout00), .Y(n1) );
  INVX2_RVT U3 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(Cin), .Y(n3) );
endmodule


module FA_1bit_21 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n5, n6;

  INVX4_RVT U1 ( .A(n3), .Y(Cout) );
  IBUFFX4_RVT U2 ( .A(A), .Y(n5) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
  OA22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(n1), .A4(n2), .Y(n6) );
  IBUFFX4_RVT U5 ( .A(n6), .Y(n3) );
  AND2X1_RVT U6 ( .A1(B), .A2(A), .Y(n1) );
  XNOR2X1_RVT U7 ( .A1(n5), .A2(B), .Y(n2) );
endmodule


module FA_1bit_22 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10;

  NAND2X0_RVT U1 ( .A1(n5), .A2(n10), .Y(n3) );
  NAND2X0_RVT U2 ( .A1(n1), .A2(n2), .Y(n4) );
  NAND2X2_RVT U3 ( .A1(n3), .A2(n4), .Y(n8) );
  IBUFFX4_RVT U4 ( .A(A), .Y(n1) );
  INVX1_RVT U5 ( .A(n10), .Y(n2) );
  INVX1_RVT U6 ( .A(n1), .Y(n5) );
  INVX1_RVT U7 ( .A(B), .Y(n10) );
  OA22X1_RVT U8 ( .A1(Cin), .A2(n9), .A3(n9), .A4(n8), .Y(Cout) );
  IBUFFX2_RVT U9 ( .A(Cin), .Y(n6) );
  IBUFFX16_RVT U10 ( .A(n6), .Y(n7) );
  XOR2X1_RVT U11 ( .A1(n7), .A2(n8), .Y(C) );
  AND2X1_RVT U12 ( .A1(B), .A2(A), .Y(n9) );
endmodule


module FA_1bit_23 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12;

  OA22X1_RVT U1 ( .A1(n4), .A2(n5), .A3(n5), .A4(n11), .Y(Cout) );
  IBUFFX4_RVT U2 ( .A(n3), .Y(n1) );
  IBUFFX4_RVT U3 ( .A(Cin), .Y(n3) );
  INVX1_RVT U4 ( .A(n2), .Y(n4) );
  INVX0_RVT U5 ( .A(n11), .Y(n7) );
  INVX1_RVT U6 ( .A(n1), .Y(n2) );
  INVX1_RVT U7 ( .A(n12), .Y(n10) );
  NAND2X0_RVT U8 ( .A1(n8), .A2(n9), .Y(C) );
  NAND2X0_RVT U9 ( .A1(n6), .A2(n11), .Y(n9) );
  INVX1_RVT U10 ( .A(n4), .Y(n6) );
  AND2X1_RVT U11 ( .A1(B), .A2(A), .Y(n5) );
  XOR2X1_RVT U12 ( .A1(A), .A2(B), .Y(n12) );
  NAND2X0_RVT U13 ( .A1(n4), .A2(n7), .Y(n8) );
  INVX0_RVT U14 ( .A(n10), .Y(n11) );
endmodule


module FA_1bit_24 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  XOR2X2_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  INVX1_RVT U2 ( .A(A), .Y(n6) );
  INVX1_RVT U3 ( .A(B), .Y(n4) );
  OA22X1_RVT U4 ( .A1(Cin), .A2(n1), .A3(n5), .A4(n2), .Y(Cout) );
  XNOR2X2_RVT U5 ( .A1(n6), .A2(n3), .Y(n2) );
  IBUFFX16_RVT U6 ( .A(n4), .Y(n3) );
  AND2X1_RVT U7 ( .A1(A), .A2(B), .Y(n1) );
  NOR2X1_RVT U8 ( .A1(n4), .A2(n6), .Y(n5) );
endmodule


module RCA_4bit_6 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;

  FA_1bit_24 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_23 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_22 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_21 FA11 ( .A(A[3]), .B(B[3]), .Cin(n2), .C(C[3]), .Cout(Cout) );
  IBUFFX32_RVT U1 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U2 ( .A(Cout10), .Y(n1) );
endmodule


module FA_1bit_25 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6;

  OAI22X1_RVT U1 ( .A1(Cin), .A2(n5), .A3(n5), .A4(n6), .Y(n3) );
  INVX0_RVT U2 ( .A(n3), .Y(Cout) );
  INVX2_RVT U3 ( .A(B), .Y(n1) );
  IBUFFX4_RVT U4 ( .A(n1), .Y(n2) );
  XNOR2X1_RVT U5 ( .A1(n4), .A2(n2), .Y(n6) );
  INVX1_RVT U6 ( .A(A), .Y(n4) );
  AND2X1_RVT U7 ( .A1(n2), .A2(A), .Y(n5) );
  XOR2X1_RVT U8 ( .A1(Cin), .A2(n6), .Y(C) );
endmodule


module FA_1bit_26 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3;

  INVX4_RVT U1 ( .A(A), .Y(n3) );
  AND2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n1), .Y(C) );
  XNOR2X1_RVT U4 ( .A1(n3), .A2(B), .Y(n1) );
  OA22X1_RVT U5 ( .A1(Cin), .A2(n2), .A3(n2), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_27 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net8785, net18543, n1, n2, n3;

  INVX1_RVT U1 ( .A(A), .Y(net8785) );
  INVX1_RVT U2 ( .A(net18543), .Y(n2) );
  XOR2X2_RVT U3 ( .A1(n1), .A2(n2), .Y(C) );
  IBUFFX8_RVT U4 ( .A(Cin), .Y(n1) );
  XNOR2X1_RVT U5 ( .A1(net8785), .A2(B), .Y(net18543) );
  AND2X1_RVT U6 ( .A1(B), .A2(A), .Y(n3) );
  OA22X1_RVT U7 ( .A1(Cin), .A2(n3), .A3(n3), .A4(net18543), .Y(Cout) );
endmodule


module FA_1bit_28 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net5030, net12149, net14999, net14998, n1, n2;
  assign Cout = net5030;

  INVX0_RVT U1 ( .A(net14998), .Y(net14999) );
  OA22X1_RVT U2 ( .A1(Cin), .A2(n1), .A3(n1), .A4(net12149), .Y(net5030) );
  AND2X1_RVT U3 ( .A1(net14999), .A2(A), .Y(n1) );
  XOR2X2_RVT U4 ( .A1(net14999), .A2(A), .Y(net12149) );
  IBUFFX4_RVT U5 ( .A(n2), .Y(C) );
  XNOR2X1_RVT U6 ( .A1(Cin), .A2(net12149), .Y(n2) );
  IBUFFX16_RVT U7 ( .A(B), .Y(net14998) );
endmodule


module RCA_4bit_7 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2, n3, n4, n5, n6;

  FA_1bit_28 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_27 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_26 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_25 FA11 ( .A(A[3]), .B(n2), .Cin(n6), .C(C[3]), .Cout(Cout) );
  INVX2_RVT U1 ( .A(n4), .Y(n1) );
  IBUFFX4_RVT U2 ( .A(n1), .Y(n2) );
  IBUFFX16_RVT U3 ( .A(B[3]), .Y(n3) );
  IBUFFX4_RVT U4 ( .A(n3), .Y(n4) );
  IBUFFX16_RVT U5 ( .A(Cout10), .Y(n5) );
  INVX0_RVT U6 ( .A(n5), .Y(n6) );
endmodule


module FA_1bit_29 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   net5025, net12179, net16570, net16584, net18614, net19234, n1, n2, n3
;
  assign Cout = net5025;

  IBUFFX32_RVT U1 ( .A(net18614), .Y(n2) );
  IBUFFX16_RVT U2 ( .A(Cin), .Y(net18614) );
  OA22X1_RVT U3 ( .A1(n2), .A2(n3), .A3(n3), .A4(n1), .Y(net5025) );
  IBUFFX4_RVT U4 ( .A(net19234), .Y(n3) );
  XOR2X1_RVT U5 ( .A1(A), .A2(B), .Y(n1) );
  XOR2X2_RVT U6 ( .A1(n2), .A2(n1), .Y(net16584) );
  IBUFFX4_RVT U7 ( .A(net12179), .Y(net19234) );
  IBUFFX16_RVT U8 ( .A(net16584), .Y(net16570) );
  IBUFFX16_RVT U9 ( .A(net16570), .Y(C) );
  AND2X1_RVT U10 ( .A1(B), .A2(A), .Y(net12179) );
endmodule


module FA_1bit_30 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2, n3, n4, n5, n6, n7;

  IBUFFX16_RVT U1 ( .A(n4), .Y(C) );
  INVX4_RVT U2 ( .A(n2), .Y(n4) );
  INVX1_RVT U3 ( .A(n6), .Y(n3) );
  XOR2X1_RVT U4 ( .A1(Cin), .A2(n6), .Y(n2) );
  XOR2X2_RVT U5 ( .A1(A), .A2(B), .Y(n6) );
  AOI22X1_RVT U6 ( .A1(n5), .A2(n7), .A3(n7), .A4(n3), .Y(Cout) );
  INVX1_RVT U7 ( .A(Cin), .Y(n5) );
  NAND2X0_RVT U8 ( .A1(B), .A2(A), .Y(n7) );
endmodule


module FA_1bit_31 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2, n3, n4, n5, n6, n7, n8;

  NBUFFX32_RVT U1 ( .A(n5), .Y(n3) );
  IBUFFX4_RVT U2 ( .A(B), .Y(n5) );
  INVX1_RVT U3 ( .A(n3), .Y(n6) );
  INVX1_RVT U4 ( .A(A), .Y(n8) );
  XOR2X1_RVT U5 ( .A1(Cin), .A2(n4), .Y(C) );
  OR2X1_RVT U6 ( .A1(Cin), .A2(n7), .Y(n1) );
  OR2X1_RVT U7 ( .A1(n7), .A2(n4), .Y(n2) );
  AND2X1_RVT U8 ( .A1(n1), .A2(n2), .Y(Cout) );
  XNOR2X1_RVT U9 ( .A1(n8), .A2(n6), .Y(n4) );
  AND2X1_RVT U10 ( .A1(n6), .A2(A), .Y(n7) );
endmodule


module FA_1bit_32 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n6, n1, n3, n4, n5;

  INVX2_RVT U1 ( .A(A), .Y(n4) );
  XOR2X2_RVT U2 ( .A1(n5), .A2(n4), .Y(n3) );
  XOR2X2_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
  INVX1_RVT U4 ( .A(n1), .Y(Cout) );
  INVX1_RVT U5 ( .A(n6), .Y(n1) );
  AO22X1_RVT U6 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(n6) );
  INVX0_RVT U7 ( .A(B), .Y(n5) );
endmodule


module RCA_4bit_8 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10, n1, n2;

  FA_1bit_32 HA00 ( .A(n2), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_31 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_30 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_29 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
  IBUFFX16_RVT U1 ( .A(A[0]), .Y(n1) );
  INVX0_RVT U2 ( .A(n1), .Y(n2) );
endmodule


module RCA_32bit_1 ( A, B, Cin, S, Cout );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout;
  wire   Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110, n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10;

  RCA_4bit_8 RCA000 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .C(S[3:0]), .Cout(
        Cout000) );
  RCA_4bit_7 RCA001 ( .A(A[7:4]), .B({n8, B[6], n6, B[4]}), .Cin(Cout000), .C(
        S[7:4]), .Cout(Cout001) );
  RCA_4bit_6 RCA010 ( .A(A[11:8]), .B({B[11], n10, B[9:8]}), .Cin(Cout001), 
        .C(S[11:8]), .Cout(Cout010) );
  RCA_4bit_5 RCA011 ( .A(A[15:12]), .B(B[15:12]), .Cin(Cout010), .C(S[15:12]), 
        .Cout(Cout011) );
  RCA_4bit_4 RCA100 ( .A(A[19:16]), .B(B[19:16]), .Cin(Cout011), .C(S[19:16]), 
        .Cout(Cout100) );
  RCA_4bit_3 RCA101 ( .A(A[23:20]), .B(B[23:20]), .Cin(Cout100), .C(S[23:20]), 
        .Cout(Cout101) );
  RCA_4bit_2 RCA110 ( .A(A[27:24]), .B({B[27:25], n3}), .Cin(n1), .C(S[27:24]), 
        .Cout(Cout110) );
  RCA_4bit_1 RCA111 ( .A(A[31:28]), .B(B[31:28]), .Cin(Cout110), .C(S[31:28]), 
        .Cout(Cout) );
  IBUFFX16_RVT U1 ( .A(n4), .Y(n1) );
  INVX32_RVT U2 ( .A(Cout101), .Y(n4) );
  INVX0_RVT U3 ( .A(B[24]), .Y(n2) );
  IBUFFX4_RVT U4 ( .A(n2), .Y(n3) );
  IBUFFX16_RVT U5 ( .A(B[7]), .Y(n7) );
  IBUFFX4_RVT U6 ( .A(n7), .Y(n8) );
  IBUFFX32_RVT U7 ( .A(B[5]), .Y(n5) );
  INVX8_RVT U8 ( .A(n5), .Y(n6) );
  INVX1_RVT U9 ( .A(n9), .Y(n10) );
  INVX1_RVT U10 ( .A(B[10]), .Y(n9) );
endmodule


module MUL_32bit_1 ( A, B, Y );
  input [31:0] A;
  input [7:0] B;
  output [39:0] Y;
  wire   net15165, net15164, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19;
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
  tri   [7:0] B;

  ROW_MUL_8 ROW0 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(B[0]), .Sin({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0}), .Cin({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .Sout({Sout000, Y[0]}), .Cout(Cout000) );
  ROW_MUL_7 ROW1 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(B[1]), .Sin({1'b0, Sout000}), .Cin(Cout000), .Sout({
        Sout001, Y[1]}), .Cout(Cout001) );
  ROW_MUL_6 ROW2 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(B[2]), .Sin({1'b0, Sout001}), .Cin(Cout001), .Sout({
        Sout010, Y[2]}), .Cout(Cout010) );
  ROW_MUL_5 ROW3 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(B[3]), .Sin({1'b0, Sout010}), .Cin(Cout010), .Sout({
        Sout011, Y[3]}), .Cout(Cout011) );
  ROW_MUL_4 ROW4 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(n12), .Sin({1'b0, Sout011}), .Cin(Cout011), .Sout({
        Sout100, Y[4]}), .Cout(Cout100) );
  ROW_MUL_3 ROW5 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(B[5]), .Sin({1'b0, Sout100[31:12], n17, Sout100[10:1]}), .Cin(Cout100), .Sout({Sout101, Y[5]}), .Cout(Cout101) );
  ROW_MUL_2 ROW6 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(B[6]), .Sin({1'b0, Sout101[31:5], n13, Sout101[3:1]}), 
        .Cin(Cout101), .Sout({Sout110, Y[6]}), .Cout(Cout110) );
  ROW_MUL_1 ROW7 ( .A({A[31:30], n19, A[28:24], n8, A[22:21], n15, A[19:2], 
        n10, A[0]}), .B(B[7]), .Sin({1'b0, Sout110}), .Cin({Cout110[31:13], n4, 
        Cout110[11:0]}), .Sout({Sout111, Y[7]}), .Cout(Cout111) );
  RCA_32bit_1 FINAL_SUM ( .A({1'b0, Sout111}), .B({Cout111[31:4], net15165, 
        Cout111[2:0]}), .Cin(1'b0), .S(Y[39:8]) );
  INVX4_RVT U2 ( .A(n11), .Y(n12) );
  IBUFFX4_RVT U3 ( .A(B[4]), .Y(n1) );
  INVX2_RVT U4 ( .A(n1), .Y(n2) );
  IBUFFX4_RVT U5 ( .A(Cout110[12]), .Y(n3) );
  INVX1_RVT U6 ( .A(n3), .Y(n4) );
  IBUFFX4_RVT U7 ( .A(n18), .Y(n19) );
  IBUFFX16_RVT U8 ( .A(A[29]), .Y(n18) );
  IBUFFX16_RVT U9 ( .A(n14), .Y(n15) );
  INVX1_RVT U10 ( .A(A[20]), .Y(n14) );
  INVX1_RVT U11 ( .A(n7), .Y(n8) );
  INVX1_RVT U12 ( .A(A[23]), .Y(n7) );
  NBUFFX2_RVT U13 ( .A(Sout101[4]), .Y(n13) );
  INVX1_RVT U14 ( .A(n2), .Y(n11) );
  INVX4_RVT U15 ( .A(net15164), .Y(net15165) );
  INVX2_RVT U16 ( .A(n6), .Y(net15164) );
  INVX4_RVT U17 ( .A(n5), .Y(n6) );
  IBUFFX32_RVT U18 ( .A(Cout111[3]), .Y(n5) );
  IBUFFX4_RVT U19 ( .A(A[1]), .Y(n9) );
  INVX2_RVT U20 ( .A(n9), .Y(n10) );
  IBUFFX16_RVT U21 ( .A(Sout100[11]), .Y(n16) );
  INVX1_RVT U22 ( .A(n16), .Y(n17) );
endmodule


module Top_3 ( clk, nrst, A, B, Sel, Result );
  input [31:0] A;
  input [31:0] B;
  output [39:0] Result;
  input clk, nrst, Sel;
  wire   N83, N86, N89, N92, N95, N98, N101, N104, N107, N110, N113, N116,
         N119, N122, N125, N128, N131, N134, N137, N140, N143, N146, N149,
         N152, N155, N158, N161, N164, N167, N170, N176, N179, N182, N185,
         N188, N191, N194, N200, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12,
         n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26,
         n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40,
         n41, n42, n43, n44, n46, n47, n50, n51, n53, n57, n58, n59, n61, n64,
         n65, n66, n69, n73, n74, n75, n77, n78, n80, n81, n82, net4548,
         net10296, net10294, net10292, net10290, net10288, net10286, net10284,
         net10302, net10300, net10298, net10310, net10308, net10306, net11473,
         net11475, net12658, net12834, net12832, net12859, net12857, net12891,
         net12889, net12915, net16561, net16575, net16572, net16597, net16594,
         net19353, net20033, net18354, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104,
         n105, n106, n107, n108, n109, n110, n111, n112, n113, n114, n115,
         n116, n117, n118, n119, n120, n121, n122, n123, n124, n125, n126,
         n127, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205, n206, n207, n208, n209, n210, n211, n212, n213, n214,
         n215, n216, n217, n218, n219, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248, n249,
         n250, n251, n252, n253, n254, n255, n256, n257, n258, n259, n260,
         n261, n262, n263, n264, n265, n266, n267, n268, n269, n270, n271,
         n272, n273, n274, n275, n276, n277, n278, n279, n280, n281, n282,
         n283, n284, n285, n286, n287, n288, n289, n290, n291, n292, n293,
         n294, n295, n296, n297, n298, n299, n300, n301, n302, n303, n304,
         n305, n306, n307;
  wire   [39:0] Result_B;
  wire   [39:0] Result_A;
  tri   [31:0] DFF_A;
  tri   [7:0] DFF_B;

  MUL_32bit_0 module_A ( .A({DFF_A[31:29], n166, DFF_A[27:24], n164, n162, n91, 
        DFF_A[20:11], n154, DFF_A[9], n105, net19353, DFF_A[6:5], n239, 
        DFF_A[3], n169, DFF_A[1], n197}), .B(DFF_B), .Y(Result_A) );
  MUL_32bit_1 module_B ( .A({DFF_A[31:29], n166, DFF_A[27:24], n164, n162, n91, 
        DFF_A[20:11], n154, DFF_A[9:8], net19353, DFF_A[6:5], n239, DFF_A[3], 
        n169, DFF_A[1], n197}), .B(DFF_B), .Y(Result_B) );
  DFFX1_RVT \DFF_A_reg[31]  ( .D(A[31]), .CLK(clk), .Q(N83) );
  DFFX1_RVT \DFF_A_tri_enable_reg[31]  ( .D(net10294), .CLK(clk), .QN(n3) );
  DFFX1_RVT \DFF_A_reg[30]  ( .D(A[30]), .CLK(clk), .Q(N86) );
  DFFX1_RVT \DFF_A_tri_enable_reg[30]  ( .D(net10294), .CLK(clk), .QN(n4) );
  DFFX1_RVT \DFF_A_reg[29]  ( .D(A[29]), .CLK(clk), .Q(N89) );
  DFFX1_RVT \DFF_A_tri_enable_reg[29]  ( .D(net10294), .CLK(clk), .QN(n5) );
  DFFX1_RVT \DFF_A_reg[28]  ( .D(A[28]), .CLK(clk), .Q(N92) );
  DFFX1_RVT \DFF_A_tri_enable_reg[28]  ( .D(net10296), .CLK(clk), .QN(n6) );
  DFFX1_RVT \DFF_A_reg[27]  ( .D(A[27]), .CLK(clk), .Q(N95) );
  DFFX1_RVT \DFF_A_tri_enable_reg[27]  ( .D(net10294), .CLK(clk), .QN(n7) );
  DFFX1_RVT \DFF_A_reg[26]  ( .D(A[26]), .CLK(clk), .Q(N98) );
  DFFX1_RVT \DFF_A_tri_enable_reg[26]  ( .D(net10294), .CLK(clk), .QN(n8) );
  DFFX1_RVT \DFF_A_reg[25]  ( .D(A[25]), .CLK(clk), .Q(N101) );
  DFFX1_RVT \DFF_A_tri_enable_reg[25]  ( .D(net10294), .CLK(clk), .QN(n9) );
  DFFX1_RVT \DFF_A_reg[24]  ( .D(A[24]), .CLK(clk), .Q(N104) );
  DFFX1_RVT \DFF_A_tri_enable_reg[24]  ( .D(net10296), .CLK(clk), .QN(n10) );
  DFFX1_RVT \DFF_A_reg[23]  ( .D(A[23]), .CLK(clk), .Q(N107) );
  DFFX1_RVT \DFF_A_tri_enable_reg[23]  ( .D(net10294), .CLK(clk), .QN(n11) );
  DFFX1_RVT \DFF_A_reg[22]  ( .D(A[22]), .CLK(clk), .Q(N110) );
  DFFX1_RVT \DFF_A_tri_enable_reg[22]  ( .D(net10294), .CLK(clk), .QN(n12) );
  DFFX1_RVT \DFF_A_reg[21]  ( .D(A[21]), .CLK(clk), .Q(N113) );
  DFFX1_RVT \DFF_A_reg[20]  ( .D(A[20]), .CLK(clk), .Q(N116) );
  DFFX1_RVT \DFF_A_tri_enable_reg[20]  ( .D(net10296), .CLK(clk), .QN(n14) );
  DFFX1_RVT \DFF_A_reg[19]  ( .D(A[19]), .CLK(clk), .Q(N119) );
  DFFX1_RVT \DFF_A_tri_enable_reg[19]  ( .D(net10290), .CLK(clk), .QN(n15) );
  DFFX1_RVT \DFF_A_reg[18]  ( .D(A[18]), .CLK(clk), .Q(N122) );
  DFFX1_RVT \DFF_A_reg[17]  ( .D(A[17]), .CLK(clk), .Q(N125) );
  DFFX1_RVT \DFF_A_reg[16]  ( .D(A[16]), .CLK(clk), .Q(N128) );
  DFFX1_RVT \DFF_A_reg[15]  ( .D(A[15]), .CLK(clk), .Q(N131) );
  DFFX1_RVT \DFF_A_tri_enable_reg[15]  ( .D(net10290), .CLK(clk), .QN(n19) );
  DFFX1_RVT \DFF_A_reg[14]  ( .D(A[14]), .CLK(clk), .Q(N134) );
  DFFX1_RVT \DFF_A_tri_enable_reg[14]  ( .D(net10296), .CLK(clk), .QN(n20) );
  DFFX1_RVT \DFF_A_reg[13]  ( .D(A[13]), .CLK(clk), .Q(N137) );
  DFFX1_RVT \DFF_A_tri_enable_reg[13]  ( .D(net10290), .CLK(clk), .QN(n21) );
  DFFX1_RVT \DFF_A_reg[12]  ( .D(A[12]), .CLK(clk), .Q(N140) );
  DFFX1_RVT \DFF_A_tri_enable_reg[12]  ( .D(net10290), .CLK(clk), .QN(n22) );
  DFFX1_RVT \DFF_A_reg[11]  ( .D(A[11]), .CLK(clk), .Q(N143) );
  DFFX1_RVT \DFF_A_tri_enable_reg[11]  ( .D(net10290), .CLK(clk), .QN(n23) );
  DFFX1_RVT \DFF_A_reg[10]  ( .D(A[10]), .CLK(clk), .Q(N146) );
  DFFX1_RVT \DFF_A_tri_enable_reg[10]  ( .D(net10292), .CLK(clk), .QN(n24) );
  DFFX1_RVT \DFF_A_reg[9]  ( .D(A[9]), .CLK(clk), .Q(N149) );
  DFFX1_RVT \DFF_A_tri_enable_reg[9]  ( .D(net10290), .CLK(clk), .QN(n25) );
  DFFX1_RVT \DFF_A_reg[8]  ( .D(A[8]), .CLK(clk), .Q(N152) );
  DFFX1_RVT \DFF_A_tri_enable_reg[8]  ( .D(net10290), .CLK(clk), .QN(n26) );
  DFFX1_RVT \DFF_A_reg[7]  ( .D(A[7]), .CLK(clk), .Q(N155) );
  DFFX1_RVT \DFF_A_tri_enable_reg[7]  ( .D(net10290), .CLK(clk), .QN(n27) );
  DFFX1_RVT \DFF_A_reg[6]  ( .D(A[6]), .CLK(clk), .Q(N158) );
  DFFX1_RVT \DFF_A_tri_enable_reg[6]  ( .D(net10292), .CLK(clk), .QN(n28) );
  DFFX1_RVT \DFF_A_reg[5]  ( .D(A[5]), .CLK(clk), .Q(N161) );
  DFFX1_RVT \DFF_A_tri_enable_reg[5]  ( .D(net10292), .CLK(clk), .QN(n29) );
  DFFX1_RVT \DFF_A_reg[4]  ( .D(A[4]), .CLK(clk), .Q(N164) );
  DFFX1_RVT \DFF_A_tri_enable_reg[4]  ( .D(net10292), .CLK(clk), .QN(n30) );
  DFFX1_RVT \DFF_A_reg[3]  ( .D(A[3]), .CLK(clk), .Q(N167) );
  DFFX1_RVT \DFF_A_tri_enable_reg[3]  ( .D(net10292), .CLK(clk), .QN(n31) );
  DFFX1_RVT \DFF_A_reg[2]  ( .D(A[2]), .CLK(clk), .Q(N170) );
  DFFX1_RVT \DFF_A_tri_enable_reg[2]  ( .D(net10294), .CLK(clk), .QN(n32) );
  DFFX1_RVT \DFF_A_reg[1]  ( .D(A[1]), .CLK(clk), .Q(n176) );
  DFFX1_RVT \DFF_A_tri_enable_reg[1]  ( .D(net10292), .CLK(clk), .QN(n33) );
  DFFX1_RVT \DFF_A_reg[0]  ( .D(A[0]), .CLK(clk), .Q(N176) );
  DFFX1_RVT \DFF_A_tri_enable_reg[0]  ( .D(net10292), .CLK(clk), .QN(n34) );
  DFFX1_RVT \DFF_B_reg[7]  ( .D(B[7]), .CLK(clk), .Q(N179) );
  DFFX1_RVT \DFF_B_tri_enable_reg[7]  ( .D(net10292), .CLK(clk), .QN(n35) );
  DFFX1_RVT \DFF_B_reg[6]  ( .D(B[6]), .CLK(clk), .Q(N182) );
  DFFX1_RVT \DFF_B_tri_enable_reg[6]  ( .D(net10294), .CLK(clk), .QN(n36) );
  DFFX1_RVT \DFF_B_reg[5]  ( .D(B[5]), .CLK(clk), .Q(N185) );
  DFFX1_RVT \DFF_B_tri_enable_reg[5]  ( .D(net10292), .CLK(clk), .QN(n37) );
  DFFX1_RVT \DFF_B_reg[4]  ( .D(B[4]), .CLK(clk), .Q(N188) );
  DFFX1_RVT \DFF_B_tri_enable_reg[4]  ( .D(net10296), .CLK(clk), .QN(n38) );
  DFFX1_RVT \DFF_B_reg[3]  ( .D(B[3]), .CLK(clk), .Q(N191) );
  DFFX1_RVT \DFF_B_tri_enable_reg[3]  ( .D(net10292), .CLK(clk), .QN(n39) );
  DFFX1_RVT \DFF_B_reg[2]  ( .D(B[2]), .CLK(clk), .Q(N194) );
  DFFX1_RVT \DFF_B_tri_enable_reg[2]  ( .D(net10294), .CLK(clk), .QN(n40) );
  DFFX1_RVT \DFF_B_tri_enable_reg[1]  ( .D(net10292), .CLK(clk), .QN(n41) );
  DFFX1_RVT \DFF_B_reg[0]  ( .D(B[0]), .CLK(clk), .Q(N200) );
  DFFX1_RVT \DFF_B_tri_enable_reg[0]  ( .D(net10294), .CLK(clk), .QN(n42) );
  DFFX1_RVT \DFF_Result_reg[38]  ( .D(n278), .CLK(clk), .Q(Result[38]) );
  DFFX1_RVT \DFF_Result_reg[35]  ( .D(n216), .CLK(clk), .Q(Result[35]) );
  DFFX1_RVT \DFF_Result_reg[34]  ( .D(n217), .CLK(clk), .Q(Result[34]) );
  DFFX1_RVT \DFF_Result_reg[33]  ( .D(n111), .CLK(clk), .Q(Result[33]) );
  DFFX1_RVT \DFF_Result_reg[32]  ( .D(n167), .CLK(clk), .Q(Result[32]) );
  DFFX1_RVT \DFF_Result_reg[31]  ( .D(n302), .CLK(clk), .Q(Result[31]) );
  DFFX1_RVT \DFF_Result_reg[28]  ( .D(n101), .CLK(clk), .Q(Result[28]), .QN(
        n181) );
  DFFX1_RVT \DFF_Result_reg[27]  ( .D(n112), .CLK(clk), .Q(Result[27]), .QN(
        n223) );
  DFFX1_RVT \DFF_Result_reg[26]  ( .D(n69), .CLK(clk), .Q(Result[26]) );
  DFFX1_RVT \DFF_Result_reg[25]  ( .D(n113), .CLK(clk), .Q(Result[25]) );
  DFFX1_RVT \DFF_Result_reg[23]  ( .D(n66), .CLK(clk), .Q(Result[23]) );
  DFFX1_RVT \DFF_Result_reg[22]  ( .D(n65), .CLK(clk), .Q(Result[22]) );
  DFFX1_RVT \DFF_Result_reg[21]  ( .D(n219), .CLK(clk), .Q(Result[21]) );
  DFFX1_RVT \DFF_Result_reg[18]  ( .D(n295), .CLK(clk), .Q(Result[18]) );
  DFFX1_RVT \DFF_Result_reg[16]  ( .D(n284), .CLK(clk), .Q(Result[16]) );
  DFFX1_RVT \DFF_Result_reg[15]  ( .D(n280), .CLK(clk), .Q(Result[15]) );
  DFFX1_RVT \DFF_Result_reg[14]  ( .D(n212), .CLK(clk), .Q(Result[14]) );
  DFFX1_RVT \DFF_Result_reg[10]  ( .D(n199), .CLK(clk), .Q(Result[10]), .QN(
        n226) );
  DFFX1_RVT \DFF_Result_reg[9]  ( .D(n203), .CLK(clk), .Q(Result[9]), .QN(n246) );
  DFFX1_RVT \DFF_Result_reg[3]  ( .D(n267), .CLK(clk), .Q(Result[3]) );
  DFFX1_RVT \DFF_Result_reg[1]  ( .D(n44), .CLK(clk), .Q(Result[1]) );
  DFFX1_RVT \DFF_Result_reg[0]  ( .D(n43), .CLK(clk), .Q(Result[0]) );
  AO222X1_RVT U3 ( .A1(Result_B[0]), .A2(net10302), .A3(Result_A[0]), .A4(
        net10308), .A5(Result[0]), .A6(net10288), .Y(n43) );
  AO222X1_RVT U4 ( .A1(Result_B[1]), .A2(net10302), .A3(Result_A[1]), .A4(
        net10308), .A5(Result[1]), .A6(net10288), .Y(n44) );
  TNBUFFX8_RVT \DFF_B_tri[0]  ( .A(N200), .EN(n42), .Y(DFF_B[0]) );
  TNBUFFX2_RVT \DFF_A_tri[5]  ( .A(N161), .EN(n29), .Y(DFF_A[5]) );
  DFFX1_RVT \DFF_Result_reg[37]  ( .D(n80), .CLK(clk), .Q(Result[37]), .QN(
        n306) );
  DFFX1_RVT \DFF_Result_reg[36]  ( .D(n109), .CLK(clk), .Q(Result[36]), .QN(
        n182) );
  DFFX1_RVT \DFF_Result_reg[24]  ( .D(n100), .CLK(clk), .Q(Result[24]) );
  DFFX1_RVT \DFF_Result_reg[29]  ( .D(n106), .CLK(clk), .Q(Result[29]), .QN(
        n86) );
  TNBUFFX4_RVT \DFF_B_tri[7]  ( .A(N179), .EN(n35), .Y(DFF_B[7]) );
  TNBUFFX8_RVT \DFF_B_tri[6]  ( .A(N182), .EN(n36), .Y(DFF_B[6]) );
  TNBUFFX8_RVT \DFF_B_tri[5]  ( .A(N185), .EN(n37), .Y(DFF_B[5]) );
  TNBUFFX8_RVT \DFF_B_tri[3]  ( .A(N191), .EN(n39), .Y(DFF_B[3]) );
  DFFX1_RVT \DFF_Result_reg[39]  ( .D(n82), .CLK(clk), .Q(Result[39]), .QN(
        n242) );
  DFFX2_RVT \DFF_Result_reg[12]  ( .D(n208), .CLK(clk), .Q(Result[12]), .QN(
        n230) );
  DFFX1_RVT \DFF_Result_reg[19]  ( .D(n136), .CLK(clk), .Q(Result[19]), .QN(
        n270) );
  DFFX1_RVT \DFF_Result_reg[7]  ( .D(n282), .CLK(clk), .Q(Result[7]) );
  DFFX1_RVT \DFF_Result_reg[5]  ( .D(n189), .CLK(clk), .Q(Result[5]) );
  TNBUFFX4_RVT \DFF_A_tri[1]  ( .A(n176), .EN(n33), .Y(DFF_A[1]) );
  DFFX1_RVT \DFF_Result_reg[4]  ( .D(n47), .CLK(clk), .Q(Result[4]), .QN(n195)
         );
  TNBUFFX16_RVT \DFF_A_tri[4]  ( .A(N164), .EN(n30), .Y(DFF_A[4]) );
  DFFX1_RVT \DFF_Result_reg[6]  ( .D(n205), .CLK(clk), .Q(Result[6]) );
  DFFX1_RVT \DFF_Result_reg[2]  ( .D(n175), .CLK(clk), .Q(Result[2]), .QN(n178) );
  DFFX1_RVT \DFF_Result_reg[13]  ( .D(n140), .CLK(clk), .Q(Result[13]) );
  DFFX1_RVT \DFF_Result_reg[8]  ( .D(n214), .CLK(clk), .Q(Result[8]) );
  TNBUFFX4_RVT \DFF_B_tri[2]  ( .A(n93), .EN(n40), .Y(DFF_B[2]) );
  TNBUFFX1_RVT \DFF_A_tri[23]  ( .A(N107), .EN(n11), .Y(DFF_A[23]) );
  TNBUFFX4_RVT \DFF_A_tri[22]  ( .A(N110), .EN(n12), .Y(DFF_A[22]) );
  TNBUFFX1_RVT \DFF_A_tri[2]  ( .A(N170), .EN(n32), .Y(DFF_A[2]) );
  TNBUFFX1_RVT \DFF_A_tri[10]  ( .A(N146), .EN(n24), .Y(DFF_A[10]) );
  TNBUFFX2_RVT \DFF_A_tri[6]  ( .A(N158), .EN(n28), .Y(DFF_A[6]) );
  TNBUFFX1_RVT \DFF_A_tri[7]  ( .A(N155), .EN(n27), .Y(DFF_A[7]) );
  DFFSSRX2_RVT \DFF_Result_reg[11]  ( .D(1'b0), .SETB(n138), .RSTB(1'b1), 
        .CLK(clk), .Q(Result[11]), .QN(n233) );
  TNBUFFX8_RVT \DFF_B_tri[1]  ( .A(n188), .EN(n41), .Y(DFF_B[1]) );
  DFFX2_RVT \DFF_Result_reg[17]  ( .D(n201), .CLK(clk), .Q(Result[17]) );
  TNBUFFX2_RVT \DFF_A_tri[9]  ( .A(N149), .EN(n25), .Y(DFF_A[9]) );
  DFFX1_RVT \DFF_Result_reg[20]  ( .D(n114), .CLK(clk), .Q(Result[20]) );
  TNBUFFX1_RVT \DFF_A_tri[8]  ( .A(N152), .EN(n26), .Y(DFF_A[8]) );
  TNBUFFX8_RVT \DFF_A_tri[24]  ( .A(N104), .EN(n10), .Y(DFF_A[24]) );
  TNBUFFX8_RVT \DFF_A_tri[0]  ( .A(N176), .EN(n34), .Y(DFF_A[0]) );
  TNBUFFX8_RVT \DFF_A_tri[12]  ( .A(N140), .EN(n22), .Y(DFF_A[12]) );
  TNBUFFX8_RVT \DFF_A_tri[16]  ( .A(N128), .EN(n18), .Y(DFF_A[16]) );
  TNBUFFX8_RVT \DFF_A_tri[18]  ( .A(N122), .EN(n16), .Y(DFF_A[18]) );
  TNBUFFX8_RVT \DFF_A_tri[21]  ( .A(N113), .EN(n13), .Y(DFF_A[21]) );
  TNBUFFX4_RVT \DFF_A_tri[20]  ( .A(N116), .EN(n14), .Y(DFF_A[20]) );
  TNBUFFX8_RVT \DFF_A_tri[15]  ( .A(N131), .EN(n19), .Y(DFF_A[15]) );
  TNBUFFX32_RVT \DFF_A_tri[28]  ( .A(N92), .EN(n6), .Y(DFF_A[28]) );
  TNBUFFX8_RVT \DFF_A_tri[27]  ( .A(N95), .EN(n7), .Y(DFF_A[27]) );
  TNBUFFX8_RVT \DFF_A_tri[17]  ( .A(N125), .EN(n17), .Y(DFF_A[17]) );
  DFFX2_RVT \DFF_A_tri_enable_reg[18]  ( .D(net10292), .CLK(clk), .QN(n16) );
  TNBUFFX8_RVT \DFF_A_tri[11]  ( .A(N143), .EN(n23), .Y(DFF_A[11]) );
  DFFX2_RVT \DFF_A_tri_enable_reg[17]  ( .D(net10290), .CLK(clk), .QN(n17) );
  TNBUFFX8_RVT \DFF_A_tri[3]  ( .A(N167), .EN(n31), .Y(DFF_A[3]) );
  DFFX2_RVT \DFF_A_tri_enable_reg[21]  ( .D(net10294), .CLK(clk), .QN(n13) );
  DFFX2_RVT \DFF_Result_reg[30]  ( .D(n73), .CLK(clk), .Q(Result[30]) );
  TNBUFFX8_RVT \DFF_A_tri[26]  ( .A(N98), .EN(n8), .Y(DFF_A[26]) );
  DFFX2_RVT \DFF_A_tri_enable_reg[16]  ( .D(net10292), .CLK(clk), .QN(n18) );
  TNBUFFX8_RVT \DFF_A_tri[19]  ( .A(N119), .EN(n15), .Y(DFF_A[19]) );
  TNBUFFX4_RVT \DFF_A_tri[13]  ( .A(N137), .EN(n21), .Y(DFF_A[13]) );
  TNBUFFX4_RVT \DFF_A_tri[29]  ( .A(N89), .EN(n5), .Y(DFF_A[29]) );
  TNBUFFX2_RVT \DFF_A_tri[25]  ( .A(N101), .EN(n9), .Y(DFF_A[25]) );
  DFFX2_RVT \DFF_B_reg[1]  ( .D(B[1]), .CLK(clk), .QN(n187) );
  TNBUFFX2_RVT \DFF_A_tri[31]  ( .A(N83), .EN(n3), .Y(DFF_A[31]) );
  TNBUFFX8_RVT \DFF_A_tri[30]  ( .A(N86), .EN(n4), .Y(DFF_A[30]) );
  TNBUFFX1_RVT \DFF_B_tri[4]  ( .A(N188), .EN(n38), .Y(DFF_B[4]) );
  TNBUFFX8_RVT \DFF_A_tri[14]  ( .A(N134), .EN(n20), .Y(DFF_A[14]) );
  INVX2_RVT U46 ( .A(n165), .Y(n166) );
  OAI222X1_RVT U47 ( .A1(n84), .A2(net16597), .A3(n85), .A4(net16572), .A5(n86), .A6(net12857), .Y(n106) );
  IBUFFX8_RVT U48 ( .A(Result_A[29]), .Y(n84) );
  IBUFFX8_RVT U49 ( .A(Result_B[29]), .Y(n85) );
  OR3X1_RVT U50 ( .A1(n87), .A2(n88), .A3(n89), .Y(n100) );
  IBUFFX8_RVT U51 ( .A(n98), .Y(n87) );
  AND2X1_RVT U52 ( .A1(Result_B[24]), .A2(net10298), .Y(n88) );
  AND2X1_RVT U53 ( .A1(Result[24]), .A2(net10284), .Y(n89) );
  IBUFFX16_RVT U54 ( .A(DFF_A[21]), .Y(n90) );
  INVX1_RVT U55 ( .A(n90), .Y(n91) );
  INVX0_RVT U56 ( .A(N194), .Y(n92) );
  IBUFFX4_RVT U57 ( .A(n92), .Y(n93) );
  INVX1_RVT U58 ( .A(n184), .Y(n167) );
  AND2X1_RVT U59 ( .A1(n286), .A2(n287), .Y(n94) );
  IBUFFX4_RVT U60 ( .A(n77), .Y(n288) );
  IBUFFX4_RVT U61 ( .A(n277), .Y(n278) );
  IBUFFX16_RVT U62 ( .A(Result_A[2]), .Y(n296) );
  AND2X1_RVT U63 ( .A1(n95), .A2(n96), .Y(n299) );
  IBUFFX8_RVT U64 ( .A(net16597), .Y(n95) );
  IBUFFX8_RVT U65 ( .A(n296), .Y(n96) );
  INVX4_RVT U66 ( .A(n187), .Y(n188) );
  INVX2_RVT U67 ( .A(Result_B[39]), .Y(n240) );
  IBUFFX2_RVT U68 ( .A(Result_B[37]), .Y(n305) );
  INVX1_RVT U69 ( .A(Result_A[37]), .Y(n304) );
  AO222X1_RVT U70 ( .A1(Result_A[30]), .A2(net10310), .A3(Result_B[30]), .A4(
        net10300), .A5(Result[30]), .A6(net10286), .Y(n73) );
  IBUFFX16_RVT U71 ( .A(n99), .Y(n97) );
  INVX4_RVT U72 ( .A(n97), .Y(n98) );
  INVX4_RVT U73 ( .A(n161), .Y(n162) );
  NAND2X0_RVT U74 ( .A1(Result_A[24]), .A2(net10308), .Y(n99) );
  IBUFFX16_RVT U75 ( .A(DFF_A[22]), .Y(n161) );
  IBUFFX16_RVT U76 ( .A(DFF_A[28]), .Y(n165) );
  IBUFFX32_RVT U77 ( .A(n163), .Y(n164) );
  INVX4_RVT U78 ( .A(n289), .Y(n290) );
  NAND2X0_RVT U79 ( .A1(Result_A[23]), .A2(net10308), .Y(n247) );
  NAND3X2_RVT U80 ( .A1(n247), .A2(n248), .A3(n249), .Y(n66) );
  INVX1_RVT U81 ( .A(n196), .Y(n197) );
  INVX2_RVT U82 ( .A(n238), .Y(n239) );
  IBUFFX4_RVT U83 ( .A(n303), .Y(n80) );
  OR2X2_RVT U84 ( .A1(n272), .A2(net12834), .Y(n104) );
  IBUFFX16_RVT U85 ( .A(Result_A[19]), .Y(n272) );
  INVX0_RVT U86 ( .A(n227), .Y(n53) );
  NAND2X0_RVT U87 ( .A1(n141), .A2(n265), .Y(n101) );
  NAND2X0_RVT U88 ( .A1(Result_A[28]), .A2(net10306), .Y(n141) );
  IBUFFX32_RVT U89 ( .A(n158), .Y(n257) );
  IBUFFX4_RVT U90 ( .A(n102), .Y(n116) );
  NAND2X0_RVT U91 ( .A1(n103), .A2(n104), .Y(n102) );
  IBUFFX8_RVT U92 ( .A(n273), .Y(n103) );
  NBUFFX2_RVT U93 ( .A(DFF_A[8]), .Y(n105) );
  IBUFFX4_RVT U94 ( .A(n75), .Y(n184) );
  NAND2X0_RVT U95 ( .A1(net20033), .A2(Result_B[36]), .Y(n108) );
  NAND2X0_RVT U96 ( .A1(n107), .A2(n108), .Y(n110) );
  OR2X1_RVT U97 ( .A1(net12857), .A2(n182), .Y(n107) );
  OR2X1_RVT U98 ( .A1(n276), .A2(n110), .Y(n109) );
  AO222X1_RVT U99 ( .A1(net10310), .A2(Result_A[33]), .A3(net10300), .A4(
        Result_B[33]), .A5(Result[33]), .A6(net10286), .Y(n111) );
  NAND2X0_RVT U100 ( .A1(n173), .A2(n186), .Y(n112) );
  NAND2X0_RVT U101 ( .A1(net20033), .A2(Result_B[27]), .Y(n183) );
  AO222X1_RVT U102 ( .A1(net10310), .A2(Result_A[25]), .A3(Result_B[25]), .A4(
        net10298), .A5(Result[25]), .A6(net10284), .Y(n113) );
  AO222X1_RVT U103 ( .A1(net10308), .A2(Result_A[20]), .A3(net10298), .A4(
        Result_B[20]), .A5(Result[20]), .A6(net10284), .Y(n114) );
  AND2X1_RVT U104 ( .A1(n115), .A2(n116), .Y(n174) );
  OR2X1_RVT U105 ( .A1(net12857), .A2(n270), .Y(n115) );
  NOR2X4_RVT U106 ( .A1(net12859), .A2(n257), .Y(n273) );
  AO222X2_RVT U107 ( .A1(Result_A[16]), .A2(net10308), .A3(Result_B[16]), .A4(
        net10298), .A5(Result[16]), .A6(net10284), .Y(n59) );
  IBUFFX2_RVT U108 ( .A(n271), .Y(n256) );
  INVX8_RVT U109 ( .A(Result_B[12]), .Y(n228) );
  IBUFFX16_RVT U110 ( .A(Result_A[17]), .Y(n117) );
  OR2X2_RVT U111 ( .A1(n117), .A2(net12658), .Y(n123) );
  INVX1_RVT U112 ( .A(n121), .Y(n122) );
  NAND2X0_RVT U113 ( .A1(net10302), .A2(Result_B[8]), .Y(n118) );
  NAND2X0_RVT U114 ( .A1(Result_A[8]), .A2(net10306), .Y(n119) );
  NAND2X0_RVT U115 ( .A1(Result[8]), .A2(net10288), .Y(n120) );
  NAND3X0_RVT U116 ( .A1(n118), .A2(n119), .A3(n120), .Y(n51) );
  IBUFFX16_RVT U117 ( .A(n51), .Y(n261) );
  IBUFFX32_RVT U118 ( .A(n261), .Y(n258) );
  IBUFFX2_RVT U119 ( .A(n258), .Y(n259) );
  NAND2X0_RVT U120 ( .A1(n125), .A2(n124), .Y(n121) );
  NAND2X0_RVT U121 ( .A1(n122), .A2(n123), .Y(n180) );
  IBUFFX16_RVT U122 ( .A(Result_B[19]), .Y(n271) );
  INVX2_RVT U123 ( .A(n157), .Y(n158) );
  INVX1_RVT U124 ( .A(n256), .Y(n157) );
  NAND2X0_RVT U125 ( .A1(Result_B[17]), .A2(net11473), .Y(n124) );
  NAND2X0_RVT U126 ( .A1(Result[17]), .A2(net4548), .Y(n125) );
  IBUFFX16_RVT U127 ( .A(n142), .Y(n143) );
  IBUFFX16_RVT U128 ( .A(n279), .Y(n126) );
  INVX1_RVT U129 ( .A(n126), .Y(n127) );
  IBUFFX16_RVT U130 ( .A(n225), .Y(n128) );
  INVX1_RVT U131 ( .A(n128), .Y(n129) );
  IBUFFX16_RVT U132 ( .A(n245), .Y(n130) );
  IBUFFX16_RVT U133 ( .A(n130), .Y(n131) );
  INVX1_RVT U134 ( .A(n202), .Y(n203) );
  INVX16_RVT U135 ( .A(n210), .Y(n202) );
  IBUFFX4_RVT U136 ( .A(n243), .Y(n209) );
  OAI222X2_RVT U137 ( .A1(n235), .A2(net16572), .A3(n131), .A4(net12658), .A5(
        n246), .A6(net12857), .Y(n243) );
  IBUFFX16_RVT U138 ( .A(Result_A[9]), .Y(n245) );
  IBUFFX16_RVT U139 ( .A(Result_A[10]), .Y(n225) );
  IBUFFX16_RVT U140 ( .A(n144), .Y(n132) );
  INVX1_RVT U141 ( .A(n132), .Y(n133) );
  IBUFFX16_RVT U142 ( .A(n61), .Y(n294) );
  AO222X2_RVT U143 ( .A1(Result_A[18]), .A2(net10308), .A3(Result_B[18]), .A4(
        net10298), .A5(Result[18]), .A6(net10284), .Y(n61) );
  IBUFFX16_RVT U144 ( .A(n251), .Y(n134) );
  IBUFFX16_RVT U145 ( .A(n134), .Y(n135) );
  INVX32_RVT U146 ( .A(n283), .Y(n250) );
  IBUFFX16_RVT U147 ( .A(n268), .Y(n269) );
  IBUFFX16_RVT U148 ( .A(Result_A[12]), .Y(n229) );
  IBUFFX4_RVT U149 ( .A(n213), .Y(n214) );
  INVX1_RVT U150 ( .A(n174), .Y(n136) );
  IBUFFX4_RVT U151 ( .A(n206), .Y(n137) );
  INVX16_RVT U152 ( .A(n137), .Y(n138) );
  IBUFFX32_RVT U153 ( .A(net16561), .Y(n139) );
  INVX32_RVT U154 ( .A(n139), .Y(n140) );
  NAND2X4_RVT U155 ( .A1(net18354), .A2(n148), .Y(net16561) );
  IBUFFX4_RVT U156 ( .A(n200), .Y(n201) );
  IBUFFX4_RVT U157 ( .A(n135), .Y(n284) );
  IBUFFX16_RVT U158 ( .A(n172), .Y(n251) );
  IBUFFX4_RVT U159 ( .A(n198), .Y(n199) );
  IBUFFX4_RVT U160 ( .A(n53), .Y(n198) );
  IBUFFX4_RVT U161 ( .A(n185), .Y(n206) );
  IBUFFX4_RVT U162 ( .A(n147), .Y(n148) );
  INVX1_RVT U163 ( .A(DFF_A[4]), .Y(n238) );
  INVX1_RVT U164 ( .A(n153), .Y(n154) );
  INVX1_RVT U165 ( .A(DFF_A[10]), .Y(n153) );
  INVX0_RVT U166 ( .A(n168), .Y(n169) );
  IBUFFX4_RVT U167 ( .A(DFF_A[2]), .Y(n168) );
  IBUFFX4_RVT U168 ( .A(DFF_A[0]), .Y(n196) );
  INVX1_RVT U169 ( .A(Result_B[9]), .Y(n244) );
  INVX1_RVT U170 ( .A(net16594), .Y(net20033) );
  AO222X1_RVT U171 ( .A1(Result_B[7]), .A2(net10302), .A3(Result_A[7]), .A4(
        net10306), .A5(Result[7]), .A6(net10288), .Y(n50) );
  INVX1_RVT U172 ( .A(net10310), .Y(net12658) );
  INVX1_RVT U173 ( .A(n234), .Y(n235) );
  INVX1_RVT U174 ( .A(n294), .Y(n254) );
  AO222X1_RVT U175 ( .A1(Result_A[21]), .A2(net10308), .A3(Result_B[21]), .A4(
        net10298), .A5(Result[21]), .A6(net10284), .Y(n64) );
  AO222X1_RVT U176 ( .A1(net10308), .A2(Result_A[22]), .A3(Result_B[22]), .A4(
        net10298), .A5(Result[22]), .A6(net10284), .Y(n65) );
  NAND2X0_RVT U177 ( .A1(Result_A[32]), .A2(net10310), .Y(n285) );
  AO222X1_RVT U178 ( .A1(Result_A[34]), .A2(net10310), .A3(Result_B[34]), .A4(
        net10300), .A5(Result[34]), .A6(net10286), .Y(n77) );
  INVX1_RVT U179 ( .A(Result_B[2]), .Y(n297) );
  INVX8_RVT U180 ( .A(n222), .Y(n291) );
  IBUFFX4_RVT U181 ( .A(Result_A[4]), .Y(n194) );
  INVX1_RVT U182 ( .A(n191), .Y(n190) );
  INVX1_RVT U183 ( .A(Result_B[5]), .Y(n191) );
  OAI222X1_RVT U184 ( .A1(n242), .A2(nrst), .A3(n240), .A4(net12859), .A5(n241), .A6(net12915), .Y(n82) );
  IBUFFX2_RVT U185 ( .A(n262), .Y(n213) );
  INVX1_RVT U186 ( .A(n259), .Y(n262) );
  INVX1_RVT U187 ( .A(n266), .Y(n267) );
  INVX0_RVT U188 ( .A(n274), .Y(n266) );
  NBUFFX4_RVT U189 ( .A(n46), .Y(n274) );
  INVX1_RVT U190 ( .A(n253), .Y(n280) );
  INVX1_RVT U191 ( .A(n171), .Y(n253) );
  INVX1_RVT U192 ( .A(n255), .Y(n295) );
  INVX1_RVT U193 ( .A(n156), .Y(n255) );
  NOR2X1_RVT U194 ( .A1(n263), .A2(n264), .Y(n265) );
  IBUFFX16_RVT U195 ( .A(n81), .Y(n277) );
  IBUFFX16_RVT U196 ( .A(Result_B[13]), .Y(n142) );
  NAND2X0_RVT U197 ( .A1(net20033), .A2(n143), .Y(net18354) );
  NAND2X0_RVT U198 ( .A1(n145), .A2(n146), .Y(n147) );
  NAND2X0_RVT U199 ( .A1(net10296), .A2(Result[13]), .Y(n145) );
  NBUFFX2_RVT U200 ( .A(net4548), .Y(net10296) );
  OR2X1_RVT U201 ( .A1(net12891), .A2(n133), .Y(n146) );
  INVX0_RVT U202 ( .A(net10310), .Y(net12891) );
  IBUFFX16_RVT U203 ( .A(Result_A[13]), .Y(n144) );
  INVX1_RVT U204 ( .A(net11473), .Y(net16594) );
  IBUFFX4_RVT U205 ( .A(n149), .Y(net19353) );
  IBUFFX16_RVT U206 ( .A(DFF_A[7]), .Y(n149) );
  INVX1_RVT U207 ( .A(n160), .Y(n224) );
  IBUFFX4_RVT U208 ( .A(n159), .Y(n160) );
  IBUFFX4_RVT U209 ( .A(n59), .Y(n283) );
  IBUFFX4_RVT U210 ( .A(n215), .Y(n216) );
  INVX2_RVT U211 ( .A(n292), .Y(n293) );
  NAND2X0_RVT U212 ( .A1(Result_A[14]), .A2(net10310), .Y(n150) );
  NAND2X0_RVT U213 ( .A1(Result_B[14]), .A2(net10298), .Y(n151) );
  NAND2X0_RVT U214 ( .A1(Result[14]), .A2(net10288), .Y(n152) );
  NAND3X0_RVT U215 ( .A1(n150), .A2(n151), .A3(n152), .Y(n57) );
  IBUFFX4_RVT U216 ( .A(n254), .Y(n155) );
  IBUFFX4_RVT U217 ( .A(n155), .Y(n156) );
  IBUFFX4_RVT U218 ( .A(Result_B[10]), .Y(n159) );
  IBUFFX16_RVT U219 ( .A(DFF_A[23]), .Y(n163) );
  IBUFFX4_RVT U220 ( .A(n252), .Y(n170) );
  INVX1_RVT U221 ( .A(n170), .Y(n171) );
  IBUFFX4_RVT U222 ( .A(n127), .Y(n252) );
  NBUFFX8_RVT U223 ( .A(n250), .Y(n172) );
  IBUFFX4_RVT U224 ( .A(n192), .Y(n47) );
  IBUFFX4_RVT U225 ( .A(Result_B[4]), .Y(n193) );
  OA21X1_RVT U226 ( .A1(nrst), .A2(n223), .A3(n183), .Y(n173) );
  OR2X1_RVT U227 ( .A1(n300), .A2(n177), .Y(n175) );
  OR2X1_RVT U228 ( .A1(n298), .A2(n299), .Y(n177) );
  OAI222X1_RVT U229 ( .A1(n230), .A2(nrst), .A3(net16572), .A4(n228), .A5(n229), .A6(net16575), .Y(n179) );
  NAND2X0_RVT U230 ( .A1(n285), .A2(n94), .Y(n75) );
  OAI222X1_RVT U231 ( .A1(n233), .A2(nrst), .A3(n231), .A4(net12889), .A5(
        net12891), .A6(n232), .Y(n185) );
  INVX2_RVT U232 ( .A(Result_A[11]), .Y(n232) );
  IBUFFX4_RVT U233 ( .A(n207), .Y(n208) );
  IBUFFX4_RVT U234 ( .A(n204), .Y(n205) );
  IBUFFX32_RVT U235 ( .A(Result_A[39]), .Y(n241) );
  NAND2X0_RVT U236 ( .A1(Result_A[27]), .A2(net10306), .Y(n186) );
  INVX2_RVT U237 ( .A(Result_A[36]), .Y(n275) );
  AO222X1_RVT U238 ( .A1(n190), .A2(net11473), .A3(Result_A[5]), .A4(net11475), 
        .A5(net10284), .A6(Result[5]), .Y(n189) );
  AO222X1_RVT U239 ( .A1(Result_B[3]), .A2(net10302), .A3(net10306), .A4(
        Result_A[3]), .A5(Result[3]), .A6(net10288), .Y(n46) );
  OA222X1_RVT U240 ( .A1(net16572), .A2(n193), .A3(n194), .A4(net16575), .A5(
        n195), .A6(net12857), .Y(n192) );
  AOI222X1_RVT U241 ( .A1(Result_B[6]), .A2(net11473), .A3(net11475), .A4(
        Result_A[6]), .A5(Result[6]), .A6(net4548), .Y(n222) );
  IBUFFX4_RVT U242 ( .A(n179), .Y(n207) );
  IBUFFX4_RVT U243 ( .A(n180), .Y(n200) );
  IBUFFX4_RVT U244 ( .A(n291), .Y(n204) );
  IBUFFX4_RVT U245 ( .A(n209), .Y(n210) );
  IBUFFX4_RVT U246 ( .A(n269), .Y(n211) );
  IBUFFX4_RVT U247 ( .A(n211), .Y(n212) );
  IBUFFX4_RVT U248 ( .A(n293), .Y(n215) );
  INVX1_RVT U249 ( .A(n288), .Y(n217) );
  IBUFFX4_RVT U250 ( .A(n290), .Y(n218) );
  INVX1_RVT U251 ( .A(n218), .Y(n219) );
  INVX8_RVT U252 ( .A(n237), .Y(n282) );
  IBUFFX4_RVT U255 ( .A(Result_B[11]), .Y(n231) );
  OA222X1_RVT U256 ( .A1(net16594), .A2(n224), .A3(n129), .A4(net16597), .A5(
        n226), .A6(nrst), .Y(n227) );
  INVX1_RVT U257 ( .A(net11475), .Y(net16597) );
  INVX1_RVT U258 ( .A(net11473), .Y(net16572) );
  INVX1_RVT U259 ( .A(net11475), .Y(net16575) );
  NBUFFX2_RVT U260 ( .A(net11475), .Y(net10306) );
  IBUFFX16_RVT U261 ( .A(n244), .Y(n234) );
  IBUFFX16_RVT U262 ( .A(n281), .Y(n236) );
  IBUFFX16_RVT U263 ( .A(n236), .Y(n237) );
  IBUFFX16_RVT U264 ( .A(n50), .Y(n281) );
  NAND2X0_RVT U265 ( .A1(Result_B[23]), .A2(net10298), .Y(n248) );
  NAND2X0_RVT U266 ( .A1(Result[23]), .A2(net10284), .Y(n249) );
  IBUFFX16_RVT U267 ( .A(n57), .Y(n268) );
  IBUFFX16_RVT U268 ( .A(n64), .Y(n289) );
  IBUFFX16_RVT U269 ( .A(n58), .Y(n279) );
  AO222X2_RVT U270 ( .A1(Result_A[15]), .A2(net10308), .A3(Result_B[15]), .A4(
        net10298), .A5(Result[15]), .A6(net10284), .Y(n58) );
  NAND2X0_RVT U271 ( .A1(Result_B[32]), .A2(net10300), .Y(n287) );
  IBUFFX16_RVT U272 ( .A(n74), .Y(n301) );
  INVX1_RVT U273 ( .A(Result_B[28]), .Y(n260) );
  IBUFFX16_RVT U274 ( .A(n78), .Y(n292) );
  INVX0_RVT U275 ( .A(net10310), .Y(net12915) );
  NOR2X0_RVT U276 ( .A1(net12857), .A2(n181), .Y(n263) );
  NOR2X0_RVT U277 ( .A1(net16594), .A2(n260), .Y(n264) );
  INVX0_RVT U278 ( .A(net10300), .Y(net12889) );
  INVX0_RVT U279 ( .A(net10284), .Y(net12857) );
  INVX0_RVT U280 ( .A(net10298), .Y(net12859) );
  INVX0_RVT U281 ( .A(net10300), .Y(net12832) );
  INVX0_RVT U282 ( .A(net10310), .Y(net12834) );
  NOR2X0_RVT U283 ( .A1(net12834), .A2(n275), .Y(n276) );
  NAND2X0_RVT U284 ( .A1(Result[32]), .A2(net10286), .Y(n286) );
  NOR2X0_RVT U285 ( .A1(net12857), .A2(n178), .Y(n298) );
  NOR2X1_RVT U286 ( .A1(net12832), .A2(n297), .Y(n300) );
  IBUFFX4_RVT U287 ( .A(n301), .Y(n302) );
  OA222X1_RVT U288 ( .A1(n304), .A2(net12658), .A3(n305), .A4(net12889), .A5(
        n306), .A6(net12857), .Y(n303) );
  NBUFFX2_RVT U289 ( .A(net4548), .Y(net10292) );
  NBUFFX2_RVT U290 ( .A(net4548), .Y(net10294) );
  NBUFFX2_RVT U291 ( .A(net4548), .Y(net10284) );
  NBUFFX2_RVT U292 ( .A(net4548), .Y(net10286) );
  NBUFFX2_RVT U293 ( .A(net4548), .Y(net10288) );
  NBUFFX2_RVT U294 ( .A(net4548), .Y(net10290) );
  NBUFFX2_RVT U295 ( .A(net11473), .Y(net10298) );
  NBUFFX2_RVT U296 ( .A(net11473), .Y(net10300) );
  NBUFFX2_RVT U297 ( .A(net11473), .Y(net10302) );
  NBUFFX2_RVT U298 ( .A(net11475), .Y(net10308) );
  NBUFFX2_RVT U299 ( .A(net11475), .Y(net10310) );
  AND2X1_RVT U300 ( .A1(nrst), .A2(n307), .Y(net11475) );
  AND2X1_RVT U301 ( .A1(Sel), .A2(nrst), .Y(net11473) );
  INVX0_RVT U302 ( .A(Sel), .Y(n307) );
  INVX0_RVT U303 ( .A(nrst), .Y(net4548) );
  AO222X1_RVT U304 ( .A1(net10310), .A2(Result_A[26]), .A3(Result_B[26]), .A4(
        net10300), .A5(Result[26]), .A6(net10286), .Y(n69) );
  AO222X1_RVT U305 ( .A1(Result_A[31]), .A2(net10310), .A3(Result_B[31]), .A4(
        net10300), .A5(Result[31]), .A6(net10286), .Y(n74) );
  AO222X1_RVT U306 ( .A1(Result_A[35]), .A2(net10310), .A3(Result_B[35]), .A4(
        net10300), .A5(Result[35]), .A6(net10286), .Y(n78) );
  AO222X1_RVT U307 ( .A1(Result_A[38]), .A2(net10308), .A3(Result_B[38]), .A4(
        net10302), .A5(Result[38]), .A6(net10288), .Y(n81) );
endmodule

