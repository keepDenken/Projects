
module Top_3 (
    input   wire clk, nrst,
    input   wire[31:0] A, B,
    input   wire Sel,
    output  wire[39:0] Result
);

reg[31:0] DFF_A, DFF_B;
reg[39:0] DFF_Result;

wire[39:0]  Result_A, Result_B;

assign Result = DFF_Result;

always @(posedge clk) begin
    if(nrst==0) begin
        DFF_A <= 32'bZ;
        DFF_B <= 32'bZ;
   end
   else begin
        DFF_A <= A;
        DFF_B <= B;
        DFF_Result <= Sel ? Result_B : Result_A;
   end
end

MUL_32bit module_A (
    .A(DFF_A),
    .B(DFF_B[7:0]),
    .Y(Result_A)
);

MUL_32bit module_B (
    .A(DFF_A),
    .B(DFF_B[7:0]),
    .Y(Result_B)
);

endmodule


