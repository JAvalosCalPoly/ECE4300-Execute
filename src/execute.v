`timescale 1ns / 1ps
/*
Execute stage: branch adder, RegDst mux, ALUSrc mux,
ALU control, ALU, and EX/MEM latch.
*/
module execute (
    input  wire        clk,
    input  wire [ 1:0] ctlwb_in,        // from ID/EX
    input  wire [ 2:0] ctlm_in,         // {branch, memread, memwrite}
    input  wire [31:0] npc,
    input  wire [31:0] rdata1,
    input  wire [31:0] rdata2,
    input  wire [31:0] s_extend,
    input  wire [ 4:0] instr_2016,
    input  wire [ 4:0] instr_1511,
    input  wire [ 1:0] alu_op,
    input  wire [ 5:0] funct,           // Instr[5:0]
    input  wire        alusrc,
    input  wire        regdst,
    output wire [ 1:0] ctlwb_out,       // to MEM/WB
    output wire [ 2:0] ctlm_out,        // {branch, memread, memwrite}
    output wire [31:0] adder_out,       // branch target
    output wire        zero_out,
    output wire [31:0] alu_result_out,
    output wire [31:0] rdata2_out,
    output wire [ 4:0] muxout_out
);
    // internal
    wire [31:0] add_result, b, aluout;
    wire [4:0] muxout;
    wire [2:0] control;
    wire       aluzero;

    adder adder3 (
        .add_in1(npc),
        .add_in2(s_extend),  // add << 2 if PC+4
        .add_out(add_result)
    );

    bottom_mux bottom_mux3 (
        .y  (muxout),
        .a  (instr_1511),  // regdst = 1
        .b  (instr_2016),  // regdst = 0
        .sel(regdst)
    );

    top_mux top_mux3 (
        .y     (b),
        .a     (s_extend),  // alusrc = 1
        .b     (rdata2),    // alusrc = 0
        .alusrc(alusrc)
    );

    alu_control alu_control3 (
        .funct (funct),
        .aluop (alu_op),
        .select(control)
    );

    alu alu3 (
        .a(rdata1),
        .b(b),
        .control(control),
        .result(aluout),
        .zero(aluzero)
    );

    ex_mem ex_mem3 (
        .clk(clk),
        .ctlwb_in(ctlwb_in),
        .ctlm_in(ctlm_in),
        .adder_in(add_result),
        .zero_in(aluzero),
        .alu_result_in(aluout),
        .rdata2_in(rdata2),
        .muxout_in(muxout),
        .ctlwb_out(ctlwb_out),
        .ctlm_out(ctlm_out),
        .adder_out(adder_out),
        .zero_out(zero_out),
        .alu_result_out(alu_result_out),
        .rdata2_out(rdata2_out),
        .muxout_out(muxout_out)
    );
endmodule