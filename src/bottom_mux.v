`timescale 1ns / 1ps
/*
5-bit mux selecting destination register: RegDst=1 -> Instr[15:11], 0 -> Instr[20:16].
*/
module bottom_mux(
    output wire [4:0] y,
    input  wire [4:0] a,    // input 1: Instr[15:11]
    input  wire [4:0] b,    // input 0: Instr[20:16]
    input  wire       sel   // RegDst
);
    assign y = sel ? a : b;
endmodule
