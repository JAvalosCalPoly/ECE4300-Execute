`timescale 1ns / 1ps
/*
32-bit mux for ALU second operand: ALUSrc=1 -> sign-extended immediate, 0 -> ReadData2.
*/
module top_mux(
    output wire [31:0] y,
    input  wire [31:0] a,   // input 1: sign-extended immediate
    input  wire [31:0] b,   // input 0: ReadData2
    input  wire        alusrc
);
    assign y = alusrc ? a : b;
endmodule
