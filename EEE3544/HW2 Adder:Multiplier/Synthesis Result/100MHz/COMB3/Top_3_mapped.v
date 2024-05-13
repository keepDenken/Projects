/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : Q-2019.12-SP5-5
// Date      : Sun May 12 21:43:29 2024
/////////////////////////////////////////////////////////////


module FA_1bit_575 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_544 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_545 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_546 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_547 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_548 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_549 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_550 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_551 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_552 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_553 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_554 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_555 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_556 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_557 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_558 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_559 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_560 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_561 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_562 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_563 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_564 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_565 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_566 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_567 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_568 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_569 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_570 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_571 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_572 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_573 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_574 ( A, B, Cin, C, Cout );
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
  AND2X1_RVT U1 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U2 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U3 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U6 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U7 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U8 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U9 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U10 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U11 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U12 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U13 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U14 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U15 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U16 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U17 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U18 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U19 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U20 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U21 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U22 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U23 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U24 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U25 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U26 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U27 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U28 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U29 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U30 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U31 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U32 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
endmodule


module FA_1bit_61 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_62 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_63 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_64 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n3;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n3) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n3), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n3), .Y(C) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_34 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_35 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_36 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_38 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_39 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_40 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_10 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_42 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_43 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_44 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_11 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_46 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_47 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_48 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_50 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_51 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_52 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_54 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_55 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_56 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module RCA_4bit_14 ( A, B, Cin, C, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] C;
  input Cin;
  output Cout;
  wire   Cout00, Cout01, Cout10;

  FA_1bit_56 HA00 ( .A(A[0]), .B(B[0]), .Cin(Cin), .C(C[0]), .Cout(Cout00) );
  FA_1bit_55 FA01 ( .A(A[1]), .B(B[1]), .Cin(Cout00), .C(C[1]), .Cout(Cout01)
         );
  FA_1bit_54 FA10 ( .A(A[2]), .B(B[2]), .Cin(Cout01), .C(C[2]), .Cout(Cout10)
         );
  FA_1bit_53 FA11 ( .A(A[3]), .B(B[3]), .Cin(Cout10), .C(C[3]), .Cout(Cout) );
endmodule


module FA_1bit_57 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_58 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_59 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_60 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   Cout000, Cout001, Cout010, Cout011, Cout100, Cout101, Cout110;

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
  RCA_4bit_9 RCA111 ( .A(A[31:28]), .B(B[31:28]), .Cin(Cout110), .C(S[31:28]), 
        .Cout(Cout) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_339 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_340 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_341 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_342 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_343 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_344 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_345 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_346 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_347 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_348 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_349 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_350 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_351 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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


module ROW_MUL_9 ( A, B, Sin, Cin, Sout, Cout );
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

  FA_1bit_352 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
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
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_342 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_341 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_340 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_339 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_338 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_337 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_336 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_335 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
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
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_327 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
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
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U2 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U3 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U4 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U5 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U6 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U7 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U8 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U9 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U10 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U11 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U12 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U13 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U14 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U15 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U16 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U17 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U18 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U19 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U20 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U21 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U22 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U23 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U24 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U25 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U26 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U27 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U28 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U29 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U30 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U31 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U32 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_355 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_356 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_357 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_358 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_359 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_360 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_361 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_362 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_363 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_364 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_365 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_366 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_367 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_368 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_369 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_370 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_371 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_372 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_373 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_374 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_375 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_376 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_377 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_378 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_379 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_380 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_381 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_382 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_383 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_384 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module ROW_MUL_10 ( A, B, Sin, Cin, Sout, Cout );
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

  FA_1bit_384 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_383 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_382 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_381 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_380 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
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
  FA_1bit_369 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_368 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_367 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
        Sout[17]), .Cout(Cout[17]) );
  FA_1bit_366 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
        Sout[18]), .Cout(Cout[18]) );
  FA_1bit_365 \ROW[19]  ( .A(\_0_net_[19] ), .B(Sin[19]), .Cin(Cin[19]), .C(
        Sout[19]), .Cout(Cout[19]) );
  FA_1bit_364 \ROW[20]  ( .A(\_0_net_[20] ), .B(Sin[20]), .Cin(Cin[20]), .C(
        Sout[20]), .Cout(Cout[20]) );
  FA_1bit_363 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_362 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_361 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_360 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_359 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_358 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
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
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U2 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U3 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U4 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U6 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U7 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U8 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U9 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U10 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U11 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U12 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U13 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U14 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U15 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U16 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U17 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U18 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U19 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U20 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U21 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U22 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U23 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U24 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U25 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U28 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U29 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U30 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U31 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U32 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
endmodule


module FA_1bit_385 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_386 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_387 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_388 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_389 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_390 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_391 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_392 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_393 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_394 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_395 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_396 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_397 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_398 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_399 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_400 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_401 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_402 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_403 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_404 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_405 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_406 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_407 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_408 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_409 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_410 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_411 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_412 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_413 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_414 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_415 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_416 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_11 ( A, B, Sin, Cin, Sout, Cout );
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

  FA_1bit_416 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_415 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_414 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_413 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_412 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
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
  FA_1bit_402 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_401 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_400 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
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
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U2 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U3 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U4 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U6 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U7 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U8 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U9 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U10 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U11 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U12 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U13 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U14 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U15 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U16 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U17 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U18 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U19 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U20 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U21 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U22 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U23 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U24 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U25 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U28 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U29 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U30 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U31 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U32 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
endmodule


module FA_1bit_417 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_418 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_419 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_420 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_421 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_422 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_423 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_424 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_425 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_426 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_427 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_428 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_429 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_430 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_431 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_432 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_433 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_434 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_435 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_436 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_437 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_438 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_439 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_440 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_441 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_442 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_443 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_444 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_445 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_446 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_447 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_448 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
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
  FA_1bit_439 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_438 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_437 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_436 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_435 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
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
  FA_1bit_427 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_426 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_425 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_424 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_423 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_422 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_421 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_420 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_419 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_418 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_417 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U2 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U3 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U4 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U5 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U6 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U7 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U8 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U9 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U10 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U11 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U12 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U13 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U14 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U15 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U16 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U17 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U18 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U19 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U20 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U21 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U22 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U23 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U24 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U25 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U28 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U29 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U30 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U31 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U32 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
endmodule


module FA_1bit_449 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_450 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_451 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_452 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_453 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_454 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_455 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_456 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_457 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_458 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_459 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_460 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_461 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_462 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_463 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_464 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_465 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_466 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_467 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_468 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_469 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_470 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_471 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_472 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_473 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_474 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_475 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_476 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_477 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_478 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_479 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_480 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_13 ( A, B, Sin, Cin, Sout, Cout );
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

  FA_1bit_480 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_479 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
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
  FA_1bit_469 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_468 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_467 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
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
  FA_1bit_459 \ROW[21]  ( .A(\_0_net_[21] ), .B(Sin[21]), .Cin(Cin[21]), .C(
        Sout[21]), .Cout(Cout[21]) );
  FA_1bit_458 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_457 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_456 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_455 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_454 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
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
  AND2X1_RVT U1 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U2 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U3 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U4 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U5 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U6 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U7 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U8 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U9 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U10 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U11 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U12 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U13 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U14 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U15 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U16 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U17 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U18 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U19 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U20 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U21 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U22 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U23 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U24 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U25 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U26 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U27 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U28 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U31 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U32 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
endmodule


module FA_1bit_481 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_482 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_483 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_484 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_485 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_486 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_487 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_488 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_489 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_490 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_491 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_492 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_493 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_494 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_495 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_496 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_497 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_498 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_499 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_500 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_501 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_502 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_503 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_504 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_505 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_506 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_507 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_508 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_509 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_510 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_511 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_512 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module ROW_MUL_14 ( A, B, Sin, Cin, Sout, Cout );
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
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_501 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_500 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_499 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_498 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_497 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_496 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
  FA_1bit_495 \ROW[17]  ( .A(\_0_net_[17] ), .B(Sin[17]), .Cin(Cin[17]), .C(
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
  FA_1bit_482 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_481 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U2 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U3 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U6 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U7 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U8 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U9 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U10 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U11 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U12 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U13 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U14 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U15 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U16 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U17 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U18 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U19 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U20 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U21 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U22 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U23 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U24 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U25 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U26 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U27 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U28 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U29 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U30 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U31 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U32 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
endmodule


module FA_1bit_0 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_513 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_514 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_515 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_516 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_517 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_518 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_519 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_520 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_521 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_522 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_523 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_524 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_525 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_526 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_527 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_528 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_529 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_530 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_531 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_532 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_533 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_534 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_535 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_536 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_537 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_538 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_539 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_540 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_541 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_542 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_543 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
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
  AND2X1_RVT U1 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U2 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U3 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U4 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U5 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U6 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U7 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U8 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U9 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U10 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U11 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U12 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U13 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U14 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U15 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U16 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U17 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U18 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U19 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U20 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U21 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U22 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U23 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U24 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U25 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U26 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U27 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U28 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U29 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U30 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U31 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U32 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
endmodule


module MUL_32bit_0 ( A, B, Y );
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
  ROW_MUL_15 ROW1 ( .A(A), .B(B[1]), .Sin({1'b0, Sout000}), .Cin(Cout000), 
        .Sout({Sout001, Y[1]}), .Cout(Cout001) );
  ROW_MUL_14 ROW2 ( .A(A), .B(B[2]), .Sin({1'b0, Sout001}), .Cin(Cout001), 
        .Sout({Sout010, Y[2]}), .Cout(Cout010) );
  ROW_MUL_13 ROW3 ( .A(A), .B(B[3]), .Sin({1'b0, Sout010}), .Cin(Cout010), 
        .Sout({Sout011, Y[3]}), .Cout(Cout011) );
  ROW_MUL_12 ROW4 ( .A(A), .B(B[4]), .Sin({1'b0, Sout011}), .Cin(Cout011), 
        .Sout({Sout100, Y[4]}), .Cout(Cout100) );
  ROW_MUL_11 ROW5 ( .A(A), .B(B[5]), .Sin({1'b0, Sout100}), .Cin(Cout100), 
        .Sout({Sout101, Y[5]}), .Cout(Cout101) );
  ROW_MUL_10 ROW6 ( .A(A), .B(B[6]), .Sin({1'b0, Sout101}), .Cin(Cout101), 
        .Sout({Sout110, Y[6]}), .Cout(Cout110) );
  ROW_MUL_9 ROW7 ( .A(A), .B(B[7]), .Sin({1'b0, Sout110}), .Cin(Cout110), 
        .Sout({Sout111, Y[7]}), .Cout(Cout111) );
  RCA_32bit_0 FINAL_SUM ( .A({1'b0, Sout111}), .B(Cout111), .Cin(1'b0), .S(
        Y[39:8]) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_67 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_68 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_69 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_70 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_71 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_72 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_73 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_74 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_75 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_76 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_77 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_78 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_79 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_80 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_81 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_82 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_83 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_84 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_85 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_86 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_87 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_88 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_89 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_90 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_91 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_92 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_93 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_94 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_95 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_96 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  FA_1bit_96 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(Sout[0]), .Cout(Cout[0]) );
  FA_1bit_95 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(Sout[1]), .Cout(Cout[1]) );
  FA_1bit_94 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(Sout[2]), .Cout(Cout[2]) );
  FA_1bit_93 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(Sout[3]), .Cout(Cout[3]) );
  FA_1bit_92 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(Sout[4]), .Cout(Cout[4]) );
  FA_1bit_91 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(Sout[5]), .Cout(Cout[5]) );
  FA_1bit_90 \ROW[6]  ( .A(\_0_net_[6] ), .B(Sin[6]), .Cin(Cin[6]), .C(Sout[6]), .Cout(Cout[6]) );
  FA_1bit_89 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(Sout[7]), .Cout(Cout[7]) );
  FA_1bit_88 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(Sout[8]), .Cout(Cout[8]) );
  FA_1bit_87 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(Sout[9]), .Cout(Cout[9]) );
  FA_1bit_86 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_85 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_84 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
  FA_1bit_83 \ROW[13]  ( .A(\_0_net_[13] ), .B(Sin[13]), .Cin(Cin[13]), .C(
        Sout[13]), .Cout(Cout[13]) );
  FA_1bit_82 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_81 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_80 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
        Sout[16]), .Cout(Cout[16]) );
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
  AND2X1_RVT U1 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U2 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U3 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U4 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U5 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U6 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U7 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U8 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U9 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U10 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U11 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U12 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U13 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U14 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U15 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U16 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U17 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U18 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U19 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U20 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U21 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U22 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U23 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U24 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U25 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U26 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U27 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U28 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U29 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U30 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U31 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U32 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_99 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_100 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_101 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_102 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_103 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_104 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_105 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_106 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_107 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_108 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_109 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_110 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_111 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_112 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_113 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_114 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_115 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_116 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_117 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_118 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_119 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_120 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_121 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_122 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_123 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_124 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_125 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_126 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_127 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_128 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
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

  FA_1bit_128 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
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
  FA_1bit_112 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
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
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_104 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
        Sout[24]), .Cout(Cout[24]) );
  FA_1bit_103 \ROW[25]  ( .A(\_0_net_[25] ), .B(Sin[25]), .Cin(Cin[25]), .C(
        Sout[25]), .Cout(Cout[25]) );
  FA_1bit_102 \ROW[26]  ( .A(\_0_net_[26] ), .B(Sin[26]), .Cin(Cin[26]), .C(
        Sout[26]), .Cout(Cout[26]) );
  FA_1bit_101 \ROW[27]  ( .A(\_0_net_[27] ), .B(Sin[27]), .Cin(Cin[27]), .C(
        Sout[27]), .Cout(Cout[27]) );
  FA_1bit_100 \ROW[28]  ( .A(\_0_net_[28] ), .B(Sin[28]), .Cin(Cin[28]), .C(
        Sout[28]), .Cout(Cout[28]) );
  FA_1bit_99 \ROW[29]  ( .A(\_0_net_[29] ), .B(Sin[29]), .Cin(Cin[29]), .C(
        Sout[29]), .Cout(Cout[29]) );
  FA_1bit_98 \ROW[30]  ( .A(\_0_net_[30] ), .B(Sin[30]), .Cin(Cin[30]), .C(
        Sout[30]), .Cout(Cout[30]) );
  FA_1bit_97 \ROW[31]  ( .A(\_0_net_[31] ), .B(Sin[31]), .Cin(Cin[31]), .C(
        Sout[31]), .Cout(Cout[31]) );
  AND2X1_RVT U1 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U2 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U3 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U4 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U5 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U6 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U7 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U8 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U9 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U10 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U11 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U12 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U13 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U14 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U15 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U16 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U17 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U18 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U19 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U20 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U21 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U22 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U23 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U24 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U25 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U28 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U29 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U30 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U31 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U32 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
endmodule


module FA_1bit_129 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_130 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_131 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_132 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_133 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_134 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_135 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_136 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_137 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_138 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_139 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_140 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_141 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_142 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_143 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_144 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_149 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_154 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_155 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_156 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_157 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_160 ( A, B, Cin, C, Cout );
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
         \_0_net_[2] , \_0_net_[1] , \_0_net_[0] ;
  tri   [31:0] A;
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
  FA_1bit_152 \ROW[8]  ( .A(\_0_net_[8] ), .B(Sin[8]), .Cin(Cin[8]), .C(
        Sout[8]), .Cout(Cout[8]) );
  FA_1bit_151 \ROW[9]  ( .A(\_0_net_[9] ), .B(Sin[9]), .Cin(Cin[9]), .C(
        Sout[9]), .Cout(Cout[9]) );
  FA_1bit_150 \ROW[10]  ( .A(\_0_net_[10] ), .B(Sin[10]), .Cin(Cin[10]), .C(
        Sout[10]), .Cout(Cout[10]) );
  FA_1bit_149 \ROW[11]  ( .A(\_0_net_[11] ), .B(Sin[11]), .Cin(Cin[11]), .C(
        Sout[11]), .Cout(Cout[11]) );
  FA_1bit_148 \ROW[12]  ( .A(\_0_net_[12] ), .B(Sin[12]), .Cin(Cin[12]), .C(
        Sout[12]), .Cout(Cout[12]) );
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
  AND2X1_RVT U1 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U2 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U3 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U4 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U6 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U7 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U8 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U9 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U10 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U11 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U12 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U13 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U14 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U15 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U16 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U17 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U18 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U19 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U20 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U21 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U22 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U23 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U24 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U25 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U26 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U27 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U28 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U29 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U30 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U31 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U32 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
endmodule


module FA_1bit_161 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_162 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_171 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_176 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  FA_1bit_192 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_191 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_190 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_189 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_188 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
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
  FA_1bit_178 \ROW[14]  ( .A(\_0_net_[14] ), .B(Sin[14]), .Cin(Cin[14]), .C(
        Sout[14]), .Cout(Cout[14]) );
  FA_1bit_177 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
        Sout[15]), .Cout(Cout[15]) );
  FA_1bit_176 \ROW[16]  ( .A(\_0_net_[16] ), .B(Sin[16]), .Cin(Cin[16]), .C(
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
  AND2X1_RVT U1 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U2 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U3 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U4 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U5 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U6 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U7 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U8 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U9 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U10 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U11 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U12 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U13 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U14 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U15 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U16 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U17 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U18 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U19 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U20 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U21 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U22 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U23 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U24 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U25 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U26 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U27 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U28 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U29 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U30 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U31 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U32 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
endmodule


module FA_1bit_193 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_194 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_195 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_200 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_203 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_204 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  XOR2X1_RVT U2 ( .A1(B), .A2(A), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_208 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_209 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_210 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1, n2;

  XNOR2X1_RVT U1 ( .A1(n2), .A2(B), .Y(n1) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n1), .Y(C) );
  INVX1_RVT U3 ( .A(A), .Y(n2) );
  AO22X1_RVT U4 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_218 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  FA_1bit_209 \ROW[15]  ( .A(\_0_net_[15] ), .B(Sin[15]), .Cin(Cin[15]), .C(
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
  FA_1bit_202 \ROW[22]  ( .A(\_0_net_[22] ), .B(Sin[22]), .Cin(Cin[22]), .C(
        Sout[22]), .Cout(Cout[22]) );
  FA_1bit_201 \ROW[23]  ( .A(\_0_net_[23] ), .B(Sin[23]), .Cin(Cin[23]), .C(
        Sout[23]), .Cout(Cout[23]) );
  FA_1bit_200 \ROW[24]  ( .A(\_0_net_[24] ), .B(Sin[24]), .Cin(Cin[24]), .C(
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
  AND2X1_RVT U1 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U2 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U3 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U4 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U5 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U6 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U7 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U8 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U9 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U10 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U11 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U12 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U13 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U14 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U15 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U16 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U17 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U18 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U19 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U20 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U21 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U22 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U23 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U24 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U25 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U26 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U27 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U28 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U29 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U30 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U31 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U32 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_237 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_238 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n1) );
endmodule


module FA_1bit_243 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
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
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_252 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_253 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_254 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_255 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(A), .A2(B), .Y(n2) );
endmodule


module FA_1bit_256 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
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
  FA_1bit_249 \ROW[7]  ( .A(\_0_net_[7] ), .B(Sin[7]), .Cin(Cin[7]), .C(
        Sout[7]), .Cout(Cout[7]) );
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
  FA_1bit_238 \ROW[18]  ( .A(\_0_net_[18] ), .B(Sin[18]), .Cin(Cin[18]), .C(
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
  AND2X1_RVT U1 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U2 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U3 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U6 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U7 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U8 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U9 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U10 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U11 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U12 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U13 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U14 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U15 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U16 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U17 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U18 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U19 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U20 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U21 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U22 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U23 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U24 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U25 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U26 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U27 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U28 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U29 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U30 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U31 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U32 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
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
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_259 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_260 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_261 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_262 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_263 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_264 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_265 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_266 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_267 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_268 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_269 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_270 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_271 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_272 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_273 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_274 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  AO22X1_RVT U1 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_275 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_276 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_277 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_278 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_279 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_280 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_281 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_282 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_283 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_284 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_285 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_286 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_287 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_288 ( A, B, Cin, C, Cout );
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

  FA_1bit_288 \ROW[0]  ( .A(\_0_net_[0] ), .B(Sin[0]), .Cin(Cin[0]), .C(
        Sout[0]), .Cout(Cout[0]) );
  FA_1bit_287 \ROW[1]  ( .A(\_0_net_[1] ), .B(Sin[1]), .Cin(Cin[1]), .C(
        Sout[1]), .Cout(Cout[1]) );
  FA_1bit_286 \ROW[2]  ( .A(\_0_net_[2] ), .B(Sin[2]), .Cin(Cin[2]), .C(
        Sout[2]), .Cout(Cout[2]) );
  FA_1bit_285 \ROW[3]  ( .A(\_0_net_[3] ), .B(Sin[3]), .Cin(Cin[3]), .C(
        Sout[3]), .Cout(Cout[3]) );
  FA_1bit_284 \ROW[4]  ( .A(\_0_net_[4] ), .B(Sin[4]), .Cin(Cin[4]), .C(
        Sout[4]), .Cout(Cout[4]) );
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
  AND2X1_RVT U1 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U2 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U3 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U6 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
  AND2X1_RVT U7 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U8 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U9 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U10 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U11 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U12 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U13 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U14 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U15 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U16 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U17 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U18 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U19 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U20 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U21 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U22 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U23 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U24 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U25 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U26 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U27 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U28 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U29 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U30 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U31 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U32 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
endmodule


module FA_1bit_289 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_290 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_291 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_294 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_295 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_296 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_297 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_298 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_299 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_300 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_301 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_302 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_303 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_304 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_305 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_306 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_307 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_308 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_309 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_310 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_311 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_312 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n1;

  XOR2X1_RVT U1 ( .A1(Cin), .A2(n1), .Y(C) );
  XOR2X1_RVT U2 ( .A1(A), .A2(B), .Y(n1) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n1), .Y(Cout) );
endmodule


module FA_1bit_313 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_314 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_315 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_316 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_317 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_318 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_319 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_320 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module ROW_MUL_8 ( A, B, Sin, Cin, Sout, Cout );
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
  FA_1bit_315 \ROW[5]  ( .A(\_0_net_[5] ), .B(Sin[5]), .Cin(Cin[5]), .C(
        Sout[5]), .Cout(Cout[5]) );
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
  AND2X1_RVT U1 ( .A1(B), .A2(A[9]), .Y(\_0_net_[9] ) );
  AND2X1_RVT U2 ( .A1(A[8]), .A2(B), .Y(\_0_net_[8] ) );
  AND2X1_RVT U3 ( .A1(A[7]), .A2(B), .Y(\_0_net_[7] ) );
  AND2X1_RVT U4 ( .A1(A[6]), .A2(B), .Y(\_0_net_[6] ) );
  AND2X1_RVT U5 ( .A1(A[11]), .A2(B), .Y(\_0_net_[11] ) );
  AND2X1_RVT U6 ( .A1(A[5]), .A2(B), .Y(\_0_net_[5] ) );
  AND2X1_RVT U7 ( .A1(A[4]), .A2(B), .Y(\_0_net_[4] ) );
  AND2X1_RVT U8 ( .A1(A[3]), .A2(B), .Y(\_0_net_[3] ) );
  AND2X1_RVT U9 ( .A1(A[2]), .A2(B), .Y(\_0_net_[2] ) );
  AND2X1_RVT U10 ( .A1(A[20]), .A2(B), .Y(\_0_net_[20] ) );
  AND2X1_RVT U11 ( .A1(A[21]), .A2(B), .Y(\_0_net_[21] ) );
  AND2X1_RVT U12 ( .A1(A[1]), .A2(B), .Y(\_0_net_[1] ) );
  AND2X1_RVT U13 ( .A1(A[24]), .A2(B), .Y(\_0_net_[24] ) );
  AND2X1_RVT U14 ( .A1(A[25]), .A2(B), .Y(\_0_net_[25] ) );
  AND2X1_RVT U15 ( .A1(A[28]), .A2(B), .Y(\_0_net_[28] ) );
  AND2X1_RVT U16 ( .A1(A[0]), .A2(B), .Y(\_0_net_[0] ) );
  AND2X1_RVT U17 ( .A1(A[27]), .A2(B), .Y(\_0_net_[27] ) );
  AND2X1_RVT U18 ( .A1(A[19]), .A2(B), .Y(\_0_net_[19] ) );
  AND2X1_RVT U19 ( .A1(A[29]), .A2(B), .Y(\_0_net_[29] ) );
  AND2X1_RVT U20 ( .A1(A[12]), .A2(B), .Y(\_0_net_[12] ) );
  AND2X1_RVT U21 ( .A1(A[30]), .A2(B), .Y(\_0_net_[30] ) );
  AND2X1_RVT U22 ( .A1(A[15]), .A2(B), .Y(\_0_net_[15] ) );
  AND2X1_RVT U23 ( .A1(A[31]), .A2(B), .Y(\_0_net_[31] ) );
  AND2X1_RVT U24 ( .A1(A[22]), .A2(B), .Y(\_0_net_[22] ) );
  AND2X1_RVT U25 ( .A1(A[23]), .A2(B), .Y(\_0_net_[23] ) );
  AND2X1_RVT U26 ( .A1(A[13]), .A2(B), .Y(\_0_net_[13] ) );
  AND2X1_RVT U27 ( .A1(A[14]), .A2(B), .Y(\_0_net_[14] ) );
  AND2X1_RVT U28 ( .A1(A[16]), .A2(B), .Y(\_0_net_[16] ) );
  AND2X1_RVT U29 ( .A1(A[17]), .A2(B), .Y(\_0_net_[17] ) );
  AND2X1_RVT U30 ( .A1(A[26]), .A2(B), .Y(\_0_net_[26] ) );
  AND2X1_RVT U31 ( .A1(A[18]), .A2(B), .Y(\_0_net_[18] ) );
  AND2X1_RVT U32 ( .A1(A[10]), .A2(B), .Y(\_0_net_[10] ) );
endmodule


module FA_1bit_1 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
endmodule


module FA_1bit_2 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  AO22X1_RVT U2 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
  XOR2X1_RVT U3 ( .A1(Cin), .A2(n2), .Y(C) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_16 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_18 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_19 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_20 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_22 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_23 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
endmodule


module FA_1bit_24 ( A, B, Cin, C, Cout );
  input A, B, Cin;
  output C, Cout;
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  wire   n2;

  XOR2X1_RVT U1 ( .A1(A), .A2(B), .Y(n2) );
  XOR2X1_RVT U2 ( .A1(Cin), .A2(n2), .Y(C) );
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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
  AO22X1_RVT U3 ( .A1(A), .A2(B), .A3(Cin), .A4(n2), .Y(Cout) );
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


module RCA_32bit_1 ( A, B, Cin, S, Cout );
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


module MUL_32bit_1 ( A, B, Y );
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

  ROW_MUL_8 ROW0 ( .A(A), .B(B[0]), .Sin({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
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
  RCA_32bit_1 FINAL_SUM ( .A({1'b0, Sout111}), .B(Cout111), .Cin(1'b0), .S(
        Y[39:8]) );
endmodule


module Top_3 ( clk, nrst, A, B, Sel, Result );
  input [31:0] A;
  input [31:0] B;
  output [39:0] Result;
  input clk, nrst, Sel;
  wire   N83, N86, N89, N92, N95, N98, N101, N104, N107, N110, N113, N116,
         N119, N122, N125, N128, N131, N134, N137, N140, N143, N146, N149,
         N152, N155, N158, N161, N164, N167, N170, N173, N176, N179, N182,
         N185, N188, N191, N194, N197, N200, n1, n2, n3, n4, n5, n6, n7, n8,
         n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22,
         n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36,
         n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50,
         n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64,
         n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78,
         n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92,
         n93, n94, n95;
  wire   [39:0] Result_B;
  wire   [39:0] Result_A;
  tri   [31:0] DFF_A;
  tri   [7:0] DFF_B;

  MUL_32bit_0 module_A ( .A(DFF_A), .B(DFF_B), .Y(Result_A) );
  MUL_32bit_1 module_B ( .A(DFF_A), .B(DFF_B), .Y(Result_B) );
  DFFX1_RVT \DFF_A_reg[31]  ( .D(A[31]), .CLK(clk), .Q(N83) );
  DFFX1_RVT \DFF_A_tri_enable_reg[31]  ( .D(n83), .CLK(clk), .QN(n3) );
  DFFX1_RVT \DFF_A_reg[30]  ( .D(A[30]), .CLK(clk), .Q(N86) );
  DFFX1_RVT \DFF_A_tri_enable_reg[30]  ( .D(n89), .CLK(clk), .QN(n4) );
  DFFX1_RVT \DFF_A_reg[29]  ( .D(A[29]), .CLK(clk), .Q(N89) );
  DFFX1_RVT \DFF_A_tri_enable_reg[29]  ( .D(n89), .CLK(clk), .QN(n5) );
  DFFX1_RVT \DFF_A_reg[28]  ( .D(A[28]), .CLK(clk), .Q(N92) );
  DFFX1_RVT \DFF_A_tri_enable_reg[28]  ( .D(n89), .CLK(clk), .QN(n6) );
  DFFX1_RVT \DFF_A_reg[27]  ( .D(A[27]), .CLK(clk), .Q(N95) );
  DFFX1_RVT \DFF_A_tri_enable_reg[27]  ( .D(n89), .CLK(clk), .QN(n7) );
  DFFX1_RVT \DFF_A_reg[26]  ( .D(A[26]), .CLK(clk), .Q(N98) );
  DFFX1_RVT \DFF_A_tri_enable_reg[26]  ( .D(n89), .CLK(clk), .QN(n8) );
  DFFX1_RVT \DFF_A_reg[25]  ( .D(A[25]), .CLK(clk), .Q(N101) );
  DFFX1_RVT \DFF_A_tri_enable_reg[25]  ( .D(n89), .CLK(clk), .QN(n9) );
  DFFX1_RVT \DFF_A_reg[24]  ( .D(A[24]), .CLK(clk), .Q(N104) );
  DFFX1_RVT \DFF_A_tri_enable_reg[24]  ( .D(n89), .CLK(clk), .QN(n10) );
  DFFX1_RVT \DFF_A_reg[23]  ( .D(A[23]), .CLK(clk), .Q(N107) );
  DFFX1_RVT \DFF_A_tri_enable_reg[23]  ( .D(n89), .CLK(clk), .QN(n11) );
  DFFX1_RVT \DFF_A_reg[22]  ( .D(A[22]), .CLK(clk), .Q(N110) );
  DFFX1_RVT \DFF_A_tri_enable_reg[22]  ( .D(n89), .CLK(clk), .QN(n12) );
  DFFX1_RVT \DFF_A_reg[21]  ( .D(A[21]), .CLK(clk), .Q(N113) );
  DFFX1_RVT \DFF_A_tri_enable_reg[21]  ( .D(n89), .CLK(clk), .QN(n13) );
  DFFX1_RVT \DFF_A_reg[20]  ( .D(A[20]), .CLK(clk), .Q(N116) );
  DFFX1_RVT \DFF_A_tri_enable_reg[20]  ( .D(n89), .CLK(clk), .QN(n14) );
  DFFX1_RVT \DFF_A_reg[19]  ( .D(A[19]), .CLK(clk), .Q(N119) );
  DFFX1_RVT \DFF_A_tri_enable_reg[19]  ( .D(n89), .CLK(clk), .QN(n15) );
  DFFX1_RVT \DFF_A_reg[18]  ( .D(A[18]), .CLK(clk), .Q(N122) );
  DFFX1_RVT \DFF_A_tri_enable_reg[18]  ( .D(n89), .CLK(clk), .QN(n16) );
  DFFX1_RVT \DFF_A_reg[17]  ( .D(A[17]), .CLK(clk), .Q(N125) );
  DFFX1_RVT \DFF_A_tri_enable_reg[17]  ( .D(n89), .CLK(clk), .QN(n17) );
  DFFX1_RVT \DFF_A_reg[16]  ( .D(A[16]), .CLK(clk), .Q(N128) );
  DFFX1_RVT \DFF_A_tri_enable_reg[16]  ( .D(n88), .CLK(clk), .QN(n18) );
  DFFX1_RVT \DFF_A_reg[15]  ( .D(A[15]), .CLK(clk), .Q(N131) );
  DFFX1_RVT \DFF_A_tri_enable_reg[15]  ( .D(n88), .CLK(clk), .QN(n19) );
  DFFX1_RVT \DFF_A_reg[14]  ( .D(A[14]), .CLK(clk), .Q(N134) );
  DFFX1_RVT \DFF_A_tri_enable_reg[14]  ( .D(n88), .CLK(clk), .QN(n20) );
  DFFX1_RVT \DFF_A_reg[13]  ( .D(A[13]), .CLK(clk), .Q(N137) );
  DFFX1_RVT \DFF_A_tri_enable_reg[13]  ( .D(n88), .CLK(clk), .QN(n21) );
  DFFX1_RVT \DFF_A_reg[12]  ( .D(A[12]), .CLK(clk), .Q(N140) );
  DFFX1_RVT \DFF_A_tri_enable_reg[12]  ( .D(n88), .CLK(clk), .QN(n22) );
  DFFX1_RVT \DFF_A_reg[11]  ( .D(A[11]), .CLK(clk), .Q(N143) );
  DFFX1_RVT \DFF_A_tri_enable_reg[11]  ( .D(n88), .CLK(clk), .QN(n23) );
  DFFX1_RVT \DFF_A_reg[10]  ( .D(A[10]), .CLK(clk), .Q(N146) );
  DFFX1_RVT \DFF_A_tri_enable_reg[10]  ( .D(n88), .CLK(clk), .QN(n24) );
  DFFX1_RVT \DFF_A_reg[9]  ( .D(A[9]), .CLK(clk), .Q(N149) );
  DFFX1_RVT \DFF_A_tri_enable_reg[9]  ( .D(n88), .CLK(clk), .QN(n25) );
  DFFX1_RVT \DFF_A_reg[8]  ( .D(A[8]), .CLK(clk), .Q(N152) );
  DFFX1_RVT \DFF_A_tri_enable_reg[8]  ( .D(n88), .CLK(clk), .QN(n26) );
  DFFX1_RVT \DFF_A_reg[7]  ( .D(A[7]), .CLK(clk), .Q(N155) );
  DFFX1_RVT \DFF_A_tri_enable_reg[7]  ( .D(n88), .CLK(clk), .QN(n27) );
  DFFX1_RVT \DFF_A_reg[6]  ( .D(A[6]), .CLK(clk), .Q(N158) );
  DFFX1_RVT \DFF_A_tri_enable_reg[6]  ( .D(n88), .CLK(clk), .QN(n28) );
  DFFX1_RVT \DFF_A_reg[5]  ( .D(A[5]), .CLK(clk), .Q(N161) );
  DFFX1_RVT \DFF_A_tri_enable_reg[5]  ( .D(n88), .CLK(clk), .QN(n29) );
  DFFX1_RVT \DFF_A_reg[4]  ( .D(A[4]), .CLK(clk), .Q(N164) );
  DFFX1_RVT \DFF_A_tri_enable_reg[4]  ( .D(n88), .CLK(clk), .QN(n30) );
  DFFX1_RVT \DFF_A_reg[3]  ( .D(A[3]), .CLK(clk), .Q(N167) );
  DFFX1_RVT \DFF_A_tri_enable_reg[3]  ( .D(n88), .CLK(clk), .QN(n31) );
  DFFX1_RVT \DFF_A_reg[2]  ( .D(A[2]), .CLK(clk), .Q(N170) );
  DFFX1_RVT \DFF_A_tri_enable_reg[2]  ( .D(n87), .CLK(clk), .QN(n32) );
  DFFX1_RVT \DFF_A_reg[1]  ( .D(A[1]), .CLK(clk), .Q(N173) );
  DFFX1_RVT \DFF_A_tri_enable_reg[1]  ( .D(n87), .CLK(clk), .QN(n33) );
  DFFX1_RVT \DFF_A_reg[0]  ( .D(A[0]), .CLK(clk), .Q(N176) );
  DFFX1_RVT \DFF_A_tri_enable_reg[0]  ( .D(n87), .CLK(clk), .QN(n34) );
  DFFX1_RVT \DFF_B_reg[7]  ( .D(B[7]), .CLK(clk), .Q(N179) );
  DFFX1_RVT \DFF_B_tri_enable_reg[7]  ( .D(n87), .CLK(clk), .QN(n35) );
  DFFX1_RVT \DFF_B_reg[6]  ( .D(B[6]), .CLK(clk), .Q(N182) );
  DFFX1_RVT \DFF_B_tri_enable_reg[6]  ( .D(n87), .CLK(clk), .QN(n36) );
  DFFX1_RVT \DFF_B_reg[5]  ( .D(B[5]), .CLK(clk), .Q(N185) );
  DFFX1_RVT \DFF_B_tri_enable_reg[5]  ( .D(n87), .CLK(clk), .QN(n37) );
  DFFX1_RVT \DFF_B_reg[4]  ( .D(B[4]), .CLK(clk), .Q(N188) );
  DFFX1_RVT \DFF_B_tri_enable_reg[4]  ( .D(n87), .CLK(clk), .QN(n38) );
  DFFX1_RVT \DFF_B_reg[3]  ( .D(B[3]), .CLK(clk), .Q(N191) );
  DFFX1_RVT \DFF_B_tri_enable_reg[3]  ( .D(n87), .CLK(clk), .QN(n39) );
  DFFX1_RVT \DFF_B_reg[2]  ( .D(B[2]), .CLK(clk), .Q(N194) );
  DFFX1_RVT \DFF_B_tri_enable_reg[2]  ( .D(n87), .CLK(clk), .QN(n40) );
  DFFX1_RVT \DFF_B_reg[1]  ( .D(B[1]), .CLK(clk), .Q(N197) );
  DFFX1_RVT \DFF_B_tri_enable_reg[1]  ( .D(n87), .CLK(clk), .QN(n41) );
  DFFX1_RVT \DFF_B_reg[0]  ( .D(B[0]), .CLK(clk), .Q(N200) );
  DFFX1_RVT \DFF_B_tri_enable_reg[0]  ( .D(n87), .CLK(clk), .QN(n42) );
  DFFX1_RVT \DFF_Result_reg[39]  ( .D(n82), .CLK(clk), .Q(Result[39]) );
  DFFX1_RVT \DFF_Result_reg[38]  ( .D(n81), .CLK(clk), .Q(Result[38]) );
  DFFX1_RVT \DFF_Result_reg[37]  ( .D(n80), .CLK(clk), .Q(Result[37]) );
  DFFX1_RVT \DFF_Result_reg[36]  ( .D(n79), .CLK(clk), .Q(Result[36]) );
  DFFX1_RVT \DFF_Result_reg[35]  ( .D(n78), .CLK(clk), .Q(Result[35]) );
  DFFX1_RVT \DFF_Result_reg[34]  ( .D(n77), .CLK(clk), .Q(Result[34]) );
  DFFX1_RVT \DFF_Result_reg[33]  ( .D(n76), .CLK(clk), .Q(Result[33]) );
  DFFX1_RVT \DFF_Result_reg[32]  ( .D(n75), .CLK(clk), .Q(Result[32]) );
  DFFX1_RVT \DFF_Result_reg[31]  ( .D(n74), .CLK(clk), .Q(Result[31]) );
  DFFX1_RVT \DFF_Result_reg[30]  ( .D(n73), .CLK(clk), .Q(Result[30]) );
  DFFX1_RVT \DFF_Result_reg[29]  ( .D(n72), .CLK(clk), .Q(Result[29]) );
  DFFX1_RVT \DFF_Result_reg[28]  ( .D(n71), .CLK(clk), .Q(Result[28]) );
  DFFX1_RVT \DFF_Result_reg[27]  ( .D(n70), .CLK(clk), .Q(Result[27]) );
  DFFX1_RVT \DFF_Result_reg[26]  ( .D(n69), .CLK(clk), .Q(Result[26]) );
  DFFX1_RVT \DFF_Result_reg[25]  ( .D(n68), .CLK(clk), .Q(Result[25]) );
  DFFX1_RVT \DFF_Result_reg[24]  ( .D(n67), .CLK(clk), .Q(Result[24]) );
  DFFX1_RVT \DFF_Result_reg[23]  ( .D(n66), .CLK(clk), .Q(Result[23]) );
  DFFX1_RVT \DFF_Result_reg[22]  ( .D(n65), .CLK(clk), .Q(Result[22]) );
  DFFX1_RVT \DFF_Result_reg[21]  ( .D(n64), .CLK(clk), .Q(Result[21]) );
  DFFX1_RVT \DFF_Result_reg[20]  ( .D(n63), .CLK(clk), .Q(Result[20]) );
  DFFX1_RVT \DFF_Result_reg[19]  ( .D(n62), .CLK(clk), .Q(Result[19]) );
  DFFX1_RVT \DFF_Result_reg[18]  ( .D(n61), .CLK(clk), .Q(Result[18]) );
  DFFX1_RVT \DFF_Result_reg[17]  ( .D(n60), .CLK(clk), .Q(Result[17]) );
  DFFX1_RVT \DFF_Result_reg[16]  ( .D(n59), .CLK(clk), .Q(Result[16]) );
  DFFX1_RVT \DFF_Result_reg[15]  ( .D(n58), .CLK(clk), .Q(Result[15]) );
  DFFX1_RVT \DFF_Result_reg[14]  ( .D(n57), .CLK(clk), .Q(Result[14]) );
  DFFX1_RVT \DFF_Result_reg[13]  ( .D(n56), .CLK(clk), .Q(Result[13]) );
  DFFX1_RVT \DFF_Result_reg[12]  ( .D(n55), .CLK(clk), .Q(Result[12]) );
  DFFX1_RVT \DFF_Result_reg[11]  ( .D(n54), .CLK(clk), .Q(Result[11]) );
  DFFX1_RVT \DFF_Result_reg[10]  ( .D(n53), .CLK(clk), .Q(Result[10]) );
  DFFX1_RVT \DFF_Result_reg[9]  ( .D(n52), .CLK(clk), .Q(Result[9]) );
  DFFX1_RVT \DFF_Result_reg[8]  ( .D(n51), .CLK(clk), .Q(Result[8]) );
  DFFX1_RVT \DFF_Result_reg[7]  ( .D(n50), .CLK(clk), .Q(Result[7]) );
  DFFX1_RVT \DFF_Result_reg[6]  ( .D(n49), .CLK(clk), .Q(Result[6]) );
  DFFX1_RVT \DFF_Result_reg[5]  ( .D(n48), .CLK(clk), .Q(Result[5]) );
  DFFX1_RVT \DFF_Result_reg[4]  ( .D(n47), .CLK(clk), .Q(Result[4]) );
  DFFX1_RVT \DFF_Result_reg[3]  ( .D(n46), .CLK(clk), .Q(Result[3]) );
  DFFX1_RVT \DFF_Result_reg[2]  ( .D(n45), .CLK(clk), .Q(Result[2]) );
  DFFX1_RVT \DFF_Result_reg[1]  ( .D(n44), .CLK(clk), .Q(Result[1]) );
  DFFX1_RVT \DFF_Result_reg[0]  ( .D(n43), .CLK(clk), .Q(Result[0]) );
  AO222X1_RVT U3 ( .A1(Result_B[0]), .A2(n95), .A3(Result_A[0]), .A4(n90), 
        .A5(Result[0]), .A6(n86), .Y(n43) );
  AO222X1_RVT U4 ( .A1(Result_B[1]), .A2(n1), .A3(Result_A[1]), .A4(n90), .A5(
        Result[1]), .A6(n84), .Y(n44) );
  AO222X1_RVT U5 ( .A1(Result_B[2]), .A2(n95), .A3(Result_A[2]), .A4(n90), 
        .A5(Result[2]), .A6(n84), .Y(n45) );
  AO222X1_RVT U6 ( .A1(Result_B[3]), .A2(n1), .A3(Result_A[3]), .A4(n90), .A5(
        Result[3]), .A6(n84), .Y(n46) );
  AO222X1_RVT U7 ( .A1(Result_B[4]), .A2(n95), .A3(Result_A[4]), .A4(n90), 
        .A5(Result[4]), .A6(n84), .Y(n47) );
  AO222X1_RVT U8 ( .A1(Result_B[5]), .A2(n1), .A3(Result_A[5]), .A4(n90), .A5(
        Result[5]), .A6(n84), .Y(n48) );
  AO222X1_RVT U9 ( .A1(Result_B[6]), .A2(n95), .A3(Result_A[6]), .A4(n90), 
        .A5(Result[6]), .A6(n85), .Y(n49) );
  AO222X1_RVT U10 ( .A1(Result_B[7]), .A2(n1), .A3(Result_A[7]), .A4(n90), 
        .A5(Result[7]), .A6(n84), .Y(n50) );
  AO222X1_RVT U11 ( .A1(Result_B[8]), .A2(n95), .A3(Result_A[8]), .A4(n90), 
        .A5(Result[8]), .A6(n84), .Y(n51) );
  AO222X1_RVT U12 ( .A1(Result_B[9]), .A2(n1), .A3(Result_A[9]), .A4(n90), 
        .A5(Result[9]), .A6(n84), .Y(n52) );
  AO222X1_RVT U13 ( .A1(Result_B[10]), .A2(n95), .A3(Result_A[10]), .A4(n90), 
        .A5(Result[10]), .A6(n84), .Y(n53) );
  AO222X1_RVT U14 ( .A1(Result_B[11]), .A2(n1), .A3(Result_A[11]), .A4(n90), 
        .A5(Result[11]), .A6(n84), .Y(n54) );
  AO222X1_RVT U15 ( .A1(Result_B[12]), .A2(n93), .A3(Result_A[12]), .A4(n92), 
        .A5(Result[12]), .A6(n84), .Y(n55) );
  AO222X1_RVT U16 ( .A1(Result_B[13]), .A2(n93), .A3(Result_A[13]), .A4(n2), 
        .A5(Result[13]), .A6(n84), .Y(n56) );
  AO222X1_RVT U17 ( .A1(Result_B[14]), .A2(n93), .A3(Result_A[14]), .A4(n92), 
        .A5(Result[14]), .A6(n85), .Y(n57) );
  AO222X1_RVT U18 ( .A1(Result_B[15]), .A2(n93), .A3(Result_A[15]), .A4(n2), 
        .A5(Result[15]), .A6(n85), .Y(n58) );
  AO222X1_RVT U19 ( .A1(Result_B[16]), .A2(n93), .A3(Result_A[16]), .A4(n92), 
        .A5(Result[16]), .A6(n85), .Y(n59) );
  AO222X1_RVT U20 ( .A1(Result_B[17]), .A2(n93), .A3(Result_A[17]), .A4(n2), 
        .A5(Result[17]), .A6(n85), .Y(n60) );
  AO222X1_RVT U21 ( .A1(Result_B[18]), .A2(n93), .A3(Result_A[18]), .A4(n92), 
        .A5(Result[18]), .A6(n85), .Y(n61) );
  AO222X1_RVT U22 ( .A1(Result_B[19]), .A2(n93), .A3(Result_A[19]), .A4(n2), 
        .A5(Result[19]), .A6(n85), .Y(n62) );
  AO222X1_RVT U23 ( .A1(Result_B[20]), .A2(n93), .A3(Result_A[20]), .A4(n92), 
        .A5(Result[20]), .A6(n85), .Y(n63) );
  AO222X1_RVT U24 ( .A1(Result_B[21]), .A2(n93), .A3(Result_A[21]), .A4(n2), 
        .A5(Result[21]), .A6(n85), .Y(n64) );
  AO222X1_RVT U25 ( .A1(Result_B[22]), .A2(n93), .A3(Result_A[22]), .A4(n92), 
        .A5(Result[22]), .A6(n85), .Y(n65) );
  AO222X1_RVT U26 ( .A1(Result_B[23]), .A2(n93), .A3(Result_A[23]), .A4(n2), 
        .A5(Result[23]), .A6(n87), .Y(n66) );
  AO222X1_RVT U27 ( .A1(Result_B[24]), .A2(n94), .A3(Result_A[24]), .A4(n91), 
        .A5(Result[24]), .A6(n85), .Y(n67) );
  AO222X1_RVT U28 ( .A1(Result_B[25]), .A2(n94), .A3(Result_A[25]), .A4(n91), 
        .A5(Result[25]), .A6(n85), .Y(n68) );
  AO222X1_RVT U29 ( .A1(Result_B[26]), .A2(n94), .A3(Result_A[26]), .A4(n91), 
        .A5(Result[26]), .A6(n85), .Y(n69) );
  AO222X1_RVT U30 ( .A1(Result_B[27]), .A2(n94), .A3(Result_A[27]), .A4(n91), 
        .A5(Result[27]), .A6(n86), .Y(n70) );
  AO222X1_RVT U31 ( .A1(Result_B[28]), .A2(n94), .A3(Result_A[28]), .A4(n91), 
        .A5(Result[28]), .A6(n86), .Y(n71) );
  AO222X1_RVT U32 ( .A1(Result_B[29]), .A2(n94), .A3(Result_A[29]), .A4(n91), 
        .A5(Result[29]), .A6(n86), .Y(n72) );
  AO222X1_RVT U33 ( .A1(Result_B[30]), .A2(n94), .A3(Result_A[30]), .A4(n91), 
        .A5(Result[30]), .A6(n87), .Y(n73) );
  AO222X1_RVT U34 ( .A1(Result_B[31]), .A2(n94), .A3(Result_A[31]), .A4(n91), 
        .A5(Result[31]), .A6(n86), .Y(n74) );
  AO222X1_RVT U35 ( .A1(Result_B[32]), .A2(n94), .A3(Result_A[32]), .A4(n91), 
        .A5(Result[32]), .A6(n86), .Y(n75) );
  AO222X1_RVT U36 ( .A1(Result_B[33]), .A2(n94), .A3(Result_A[33]), .A4(n91), 
        .A5(Result[33]), .A6(n86), .Y(n76) );
  AO222X1_RVT U37 ( .A1(Result_B[34]), .A2(n94), .A3(Result_A[34]), .A4(n91), 
        .A5(Result[34]), .A6(n86), .Y(n77) );
  AO222X1_RVT U38 ( .A1(Result_B[35]), .A2(n94), .A3(Result_A[35]), .A4(n91), 
        .A5(Result[35]), .A6(n86), .Y(n78) );
  AO222X1_RVT U39 ( .A1(Result_B[36]), .A2(n95), .A3(Result_A[36]), .A4(n92), 
        .A5(Result[36]), .A6(n86), .Y(n79) );
  AO222X1_RVT U40 ( .A1(Result_B[37]), .A2(n95), .A3(Result_A[37]), .A4(n92), 
        .A5(Result[37]), .A6(n86), .Y(n80) );
  AO222X1_RVT U41 ( .A1(Result_B[38]), .A2(n95), .A3(Result_A[38]), .A4(n92), 
        .A5(Result[38]), .A6(n86), .Y(n81) );
  AO222X1_RVT U42 ( .A1(Result_B[39]), .A2(n95), .A3(Result_A[39]), .A4(n92), 
        .A5(Result[39]), .A6(n86), .Y(n82) );
  NOR2X0_RVT U43 ( .A1(n84), .A2(Sel), .Y(n2) );
  AND2X1_RVT U44 ( .A1(Sel), .A2(nrst), .Y(n1) );
  INVX0_RVT U45 ( .A(nrst), .Y(n83) );
  TNBUFFX2_RVT \DFF_A_tri[10]  ( .A(N146), .EN(n24), .Y(DFF_A[10]) );
  TNBUFFX8_RVT \DFF_B_tri[2]  ( .A(N194), .EN(n40), .Y(DFF_B[2]) );
  TNBUFFX8_RVT \DFF_B_tri[3]  ( .A(N191), .EN(n39), .Y(DFF_B[3]) );
  TNBUFFX2_RVT \DFF_A_tri[6]  ( .A(N158), .EN(n28), .Y(DFF_A[6]) );
  TNBUFFX8_RVT \DFF_B_tri[4]  ( .A(N188), .EN(n38), .Y(DFF_B[4]) );
  TNBUFFX2_RVT \DFF_A_tri[5]  ( .A(N161), .EN(n29), .Y(DFF_A[5]) );
  TNBUFFX8_RVT \DFF_B_tri[5]  ( .A(N185), .EN(n37), .Y(DFF_B[5]) );
  TNBUFFX8_RVT \DFF_B_tri[6]  ( .A(N182), .EN(n36), .Y(DFF_B[6]) );
  TNBUFFX2_RVT \DFF_A_tri[3]  ( .A(N167), .EN(n31), .Y(DFF_A[3]) );
  TNBUFFX8_RVT \DFF_B_tri[7]  ( .A(N179), .EN(n35), .Y(DFF_B[7]) );
  TNBUFFX2_RVT \DFF_A_tri[2]  ( .A(N170), .EN(n32), .Y(DFF_A[2]) );
  TNBUFFX2_RVT \DFF_A_tri[9]  ( .A(N149), .EN(n25), .Y(DFF_A[9]) );
  TNBUFFX2_RVT \DFF_A_tri[26]  ( .A(N98), .EN(n8), .Y(DFF_A[26]) );
  TNBUFFX2_RVT \DFF_A_tri[13]  ( .A(N137), .EN(n21), .Y(DFF_A[13]) );
  TNBUFFX2_RVT \DFF_A_tri[23]  ( .A(N107), .EN(n11), .Y(DFF_A[23]) );
  TNBUFFX2_RVT \DFF_A_tri[22]  ( .A(N110), .EN(n12), .Y(DFF_A[22]) );
  TNBUFFX2_RVT \DFF_A_tri[31]  ( .A(N83), .EN(n3), .Y(DFF_A[31]) );
  TNBUFFX2_RVT \DFF_A_tri[30]  ( .A(N86), .EN(n4), .Y(DFF_A[30]) );
  TNBUFFX2_RVT \DFF_A_tri[12]  ( .A(N140), .EN(n22), .Y(DFF_A[12]) );
  TNBUFFX2_RVT \DFF_A_tri[29]  ( .A(N89), .EN(n5), .Y(DFF_A[29]) );
  TNBUFFX2_RVT \DFF_A_tri[28]  ( .A(N92), .EN(n6), .Y(DFF_A[28]) );
  TNBUFFX2_RVT \DFF_A_tri[19]  ( .A(N119), .EN(n15), .Y(DFF_A[19]) );
  TNBUFFX2_RVT \DFF_A_tri[27]  ( .A(N95), .EN(n7), .Y(DFF_A[27]) );
  TNBUFFX2_RVT \DFF_A_tri[25]  ( .A(N101), .EN(n9), .Y(DFF_A[25]) );
  TNBUFFX2_RVT \DFF_A_tri[24]  ( .A(N104), .EN(n10), .Y(DFF_A[24]) );
  TNBUFFX2_RVT \DFF_A_tri[21]  ( .A(N113), .EN(n13), .Y(DFF_A[21]) );
  TNBUFFX2_RVT \DFF_A_tri[20]  ( .A(N116), .EN(n14), .Y(DFF_A[20]) );
  TNBUFFX2_RVT \DFF_A_tri[18]  ( .A(N122), .EN(n16), .Y(DFF_A[18]) );
  TNBUFFX2_RVT \DFF_A_tri[0]  ( .A(N176), .EN(n34), .Y(DFF_A[0]) );
  TNBUFFX2_RVT \DFF_A_tri[1]  ( .A(N173), .EN(n33), .Y(DFF_A[1]) );
  TNBUFFX2_RVT \DFF_A_tri[11]  ( .A(N143), .EN(n23), .Y(DFF_A[11]) );
  TNBUFFX2_RVT \DFF_A_tri[7]  ( .A(N155), .EN(n27), .Y(DFF_A[7]) );
  TNBUFFX2_RVT \DFF_A_tri[8]  ( .A(N152), .EN(n26), .Y(DFF_A[8]) );
  TNBUFFX2_RVT \DFF_A_tri[15]  ( .A(N131), .EN(n19), .Y(DFF_A[15]) );
  TNBUFFX2_RVT \DFF_A_tri[4]  ( .A(N164), .EN(n30), .Y(DFF_A[4]) );
  TNBUFFX2_RVT \DFF_A_tri[16]  ( .A(N128), .EN(n18), .Y(DFF_A[16]) );
  TNBUFFX2_RVT \DFF_A_tri[17]  ( .A(N125), .EN(n17), .Y(DFF_A[17]) );
  TNBUFFX2_RVT \DFF_A_tri[14]  ( .A(N134), .EN(n20), .Y(DFF_A[14]) );
  TNBUFFX8_RVT \DFF_B_tri[1]  ( .A(N197), .EN(n41), .Y(DFF_B[1]) );
  TNBUFFX8_RVT \DFF_B_tri[0]  ( .A(N200), .EN(n42), .Y(DFF_B[0]) );
  NBUFFX2_RVT U46 ( .A(n1), .Y(n93) );
  NBUFFX2_RVT U47 ( .A(n1), .Y(n94) );
  NBUFFX2_RVT U48 ( .A(n2), .Y(n90) );
  NBUFFX2_RVT U49 ( .A(n2), .Y(n91) );
  NBUFFX2_RVT U50 ( .A(n83), .Y(n87) );
  NBUFFX2_RVT U51 ( .A(n2), .Y(n92) );
  NBUFFX2_RVT U52 ( .A(n1), .Y(n95) );
  NBUFFX2_RVT U53 ( .A(n83), .Y(n88) );
  NBUFFX2_RVT U54 ( .A(n83), .Y(n89) );
  NBUFFX2_RVT U55 ( .A(n83), .Y(n85) );
  NBUFFX2_RVT U56 ( .A(n83), .Y(n86) );
  NBUFFX2_RVT U57 ( .A(n83), .Y(n84) );
endmodule

