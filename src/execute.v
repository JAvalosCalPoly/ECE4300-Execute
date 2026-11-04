`timescale 1ns / 1ps
/*
Execute stage: branch adder, RegDst mux, ALUSrc mux,
ALU control, ALU, and EX/MEM latch.
*/
module execute(
    input  wire        clk,
    input  wire [1:0]  wb_ctl,         // from ID/EX
    input  wire [2:0]  m_ctl,          // {branch, memread, memwrite}
    input  wire        regdst, alusrc,
    input  wire [1:0]  aluop,
    input  wire [31:0] npcout, rdata1, rdata2, s_extendout,
    input  wire [4:0]  instrout_2016, instrout_1511,
    output wire [1:0]  wb_ctlout,      // to MEM/WB
    output wire        branch, memread, memwrite,
    output wire [31:0] EX_MEM_NPC,     // branch target
    output wire        zero,
    output wire [31:0] alu_result, rdata2out,
    output wire [4:0]  five_bit_muxout
);
    // internal
    wire [31:0] adder_out, b, aluout;
    wire [4:0]  muxout;
    wire [2:0]  control;
    wire        aluzero;

    adder adder3(
        .add_in1(npcout),
        .add_in2(s_extendout << 2), // word offset
        .add_out(adder_out)
    );

    bottom_mux bottom_mux3(
        .a(instrout_1511), // rd
        .b(instrout_2016), // rt
        .sel(regdst),
        .y(muxout)
    );

    alu_control alu_control3(
        .funct(s_extendout[5:0]),
        .aluop(aluop),
        .select(control)
    );

    alu alu3(
        .a(rdata1),
        .b(b),
        .control(control),
        .result(aluout),
        .zero(aluzero)
    );

    top_mux top_mux3(
        .y(b),
        .a(s_extendout), // alusrc = 1
        .b(rdata2),      // alusrc = 0
        .alusrc(alusrc)
    );

    ex_mem ex_mem3(
        .clk(clk),
        .ctlwb_out(wb_ctl),
        .ctlm_out(m_ctl),
        .adder_out(adder_out),
        .aluzero(aluzero),
        .aluout(aluout),
        .readdat2(rdata2),
        .muxout(muxout),
        .wb_ctlout(wb_ctlout),
        .branch(branch),
        .memread(memread),
        .memwrite(memwrite),
        .add_result(EX_MEM_NPC),
        .zero(zero),
        .alu_result(alu_result),
        .rdata2out(rdata2out),
        .five_bit_muxout(five_bit_muxout)
    );
endmodule