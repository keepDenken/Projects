`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/12 01:28:49
// Design Name: 
// Module Name: tbTop
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tbTop(

    );
    
    reg clk, nrst, Sel;
    reg [31:0] A, B;
    wire[39:0] Result1, Result2, Result3, Result4, Result5, Result6;
    
    always #5 clk <= ~clk;
    
    initial begin
    
    clk <= 1'b1;
    nrst <=1'b1;
    Sel <= 1'b0;
    
    #5
    nrst <= 1'b0;
    #5
    nrst <= 1'b1;
    A <= 32'b0;
    B <= 32'b0;
    
    #10
    A <= 32'd10;
    B <= 32'd0;
    
    #10
    A <= 32'd0;
    B <= 32'd0;
    
    #10
    A <= 32'd10;
    B <= 32'd10;
    
    #10 
    A <= 32'd150;
    B <= 32'd120;
    
    #10
    A <= {32{1'b1}};
    B <= 32'b1;
    
    #10
    A <= 32'd10;
    B <= 32'd0;
    
    #10
    Sel <= 1'b1;
    A <= 32'd0;
    B <= 32'd0;
    
    #10
    A <= 32'd10;
    B <= 32'd10;
    
    #10 
    A <= 32'd150;
    B <= 32'd120;
    
    #10
    A <= {32{1'b1}};
    B <= 32'b1;
    
    #20
    $stop;

    end
    
    
    Top_1 COMB1 (
        .clk(clk),
        .Sel(Sel),
        .nrst(nrst),
        .A(A),
        .B(B),
        .Result(Result1)
    );

    Top_2 COMB2 (
        .clk(clk),
        .Sel(Sel),
        .nrst(nrst),
        .A(A),
        .B(B),
        .Result(Result2)
    );
    
    Top_3 COMB3 (
        .clk(clk),
        .Sel(Sel),
        .nrst(nrst),
        .A(A),
        .B(B),
        .Result(Result3)
    );
    
    Top_4 COMB4 (
        .clk(clk),
        .Sel(Sel),        
        .nrst(nrst),
        .A(A),
        .B(B),
        .Result(Result4)
    );
    
    Top_5 COMB5 (
        .clk(clk),
        .Sel(Sel),
        .nrst(nrst),
        .A(A),
        .B(B),
        .Result(Result5)
    );
    
    Top_6 COMB6 (
        .clk(clk),
        .Sel(Sel),
        .nrst(nrst),
        .A(A),
        .B(B),
        .Result(Result6)
    );

endmodule
