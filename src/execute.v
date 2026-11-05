`timescale 1ns / 1ps
/*
Execute stage: branch adder, RegDst mux, ALUSrc mux,
ALU control, ALU, and EX/MEM latch.
*/
module execute (
    input  wire        clk,
    input  wire [ 1:0] wb_ctl,          // from ID/EX
    input  wire [ 2:0] m_ctl,           // {branch, memread, memwrite}
    input  wire        regdst,
    alusrc,
    input  wire [ 1:0] aluop,
    input  wire [ 5:0] funct,           // Instr[5:0]
    input  wire [31:0] npcout,
    rdata1,
    rdata2,
    s_extendout,
    input  wire [ 4:0] instrout_2016,
    instrout_1511,
    output wire [ 1:0] wb_ctlout,       // to MEM/WB
    output wire        branch,
    memread,
    memwrite,
    output wire [31:0] EX_MEM_NPC,      // branch target
    output wire        zero,
    output wire [31:0] alu_result,
    rdata2out,
    output wire [ 4:0] five_bit_muxout
);
    // internal
    wire [31:0] adder_out, b, aluout;
    wire [4:0] muxout;
    wire [2:0] control;
    wire       aluzero;
    wire [2:0] m_out;  // latched M ctl

    // split M ctl
    assign branch   = m_out[2];
    assign memread  = m_out[1];
    assign memwrite = m_out[0];

    adder adder3 (
        .add_in1(npcout),
        .add_in2(s_extendout),  // add << 2 if PC+4
        .add_out(adder_out)
    );

    bottom_mux bottom_mux3 (
        .y  (muxout),
        .a  (instrout_1511),  // regdst = 1
        .b  (instrout_2016),  // regdst = 0
        .sel(regdst)
    );

    top_mux top_mux3 (
        .y     (b),
        .a     (s_extendout),  // alusrc = 1
        .b     (rdata2),       // alusrc = 0
        .alusrc(alusrc)
    );

    alu_control alu_control3 (
        .funct (funct),
        .aluop (aluop),
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
        .ctlwb_in(wb_ctl),
        .ctlm_in(m_ctl),
        .adder_in(adder_out),
        .zero_in(aluzero),
        .alu_result_in(aluout),
        .rdata2_in(rdata2),
        .muxout_in(muxout),
        .ctlwb_out(wb_ctlout),
        .ctlm_out(m_out),
        .adder_out(EX_MEM_NPC),
        .zero_out(zero),
        .alu_result_out(alu_result),
        .rdata2_out(rdata2out),
        .muxout_out(five_bit_muxout)
    );
endmodule