module Top_1 (    
    input   wire clk, nrst,
    input   wire[31:0] A, B,
    input   wire Sel,
    output  wire[39:0] Result
);

reg[31:0] DFF_A, DFF_B;
reg[39:0] DFF_Result;

wire[31:0]  Result_A, Result_B;

assign Result = DFF_Result;

always @(posedge clk or negedge nrst) begin
    if(nrst==0) begin
        DFF_A <= 32'bZ;
        DFF_B <= 32'bZ;
    end
    else begin
        DFF_A <= A;
        DFF_B <= B;
        DFF_Result <= Sel ? {8'b0, Result_B} : {8'b0, Result_A};
    end
end

RCA_32bit module_A (
    .A(DFF_A),
    .B(DFF_B),
    .Cin(1'b0),
    .S(Result_A),
    .Cout()
);

RCA_32bit module_B (
    .A(DFF_A),
    .B(DFF_B),
    .Cin(1'b0),
    .S(Result_B),
    .Cout()
);

endmodule


