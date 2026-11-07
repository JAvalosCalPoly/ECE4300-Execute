`timescale 1ns / 1ps
/*
Execute stage testbench - for viewing in the waveform window.
Clock period = 10 ns (posedge at 5, 15, 25, ...).
Inputs change every 10 ns on the falling edge, so each step's results
appear in the EX/MEM latch outputs 5 ns later (at t + 5).
*/
`include "src/execute.v"
`include "src/alu.v"
`include "src/alu_control.v"
`include "src/adder.v"
`include "src/bottom_mux.v"
`include "src/top_mux.v"
`include "src/Ex_Mem_latch.v"
module executeTB;
    reg       clk;
    reg [1:0] wb_ctl;
    reg [2:0] m_ctl;
    reg [31:0] npcout, rdata1, rdata2, s_extendout;
    reg [4:0] instrout_2016, instrout_1511;
    reg [1:0] aluop;
    reg [5:0] funct;
    reg alusrc, regdst;

    wire [1:0] wb_ctlout;
    wire branch, memread, memwrite;
    wire [31:0] EX_MEM_NPC, alu_result, rdata2out;
    wire       zero;
    wire [4:0] five_bit_muxout;

    execute uut (
        .clk(clk),
        .ctlwb_in(wb_ctl),
        .ctlm_in(m_ctl),
        .regdst(regdst),
        .alusrc(alusrc),
        .alu_op(aluop),
        .funct(funct),
        .npc(npcout),
        .rdata1(rdata1),
        .rdata2(rdata2),
        .s_extend(s_extendout),
        .instr_2016(instrout_2016),
        .instr_1511(instrout_1511),
        .ctlwb_out(wb_ctlout),
        .ctlm_out({branch, memread, memwrite}),  // split M bus
        .adder_out(EX_MEM_NPC),
        .zero_out(zero),
        .alu_result_out(alu_result),
        .rdata2_out(rdata2out),
        .muxout_out(five_bit_muxout)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("execute_tb.vcd");
        $dumpvars(0, executeTB);
        $monitor(
            "t=%0t ALUOp=%b funct=%b alusrc=%b regdst=%b | adder=%0d alu=%h zero=%b mux=%0d rdata2=%h",
            $time, aluop, funct, alusrc, regdst, EX_MEM_NPC, alu_result, zero, five_bit_muxout,
            rdata2out);
        #10

        // t=10: R-type ADD 10 + 20, regdst=1 -> dest = rd
        wb_ctl = 2'b10;
        m_ctl = 3'b000;
        npcout = 32'd100;
        rdata1 = 32'd10;
        rdata2 = 32'd20;
        s_extendout = 32'd4;
        instrout_2016 = 5'd5;
        instrout_1511 = 5'd10;
        aluop = 2'b10;
        funct = 6'b100000;
        alusrc = 0;
        regdst = 1;
        // at t=15:  adder = 104, alu = 1e (30), zero = 0, mux = 10

        #10  // t=20: R-type SUB 20 - 20
        rdata1 = 32'd20;
        funct = 6'b100010;
        // at t=25: alu = 0, zero = 1

        #10  // t=30: R-type SLT 5 < 10
        rdata1 = 32'd5;
        rdata2 = 32'd10;
        funct  = 6'b101010;
        // at t=35: alu = 1, zero = 0

        #10  // t=40: LW -8 (sign extended), alusrc=1, regdst=0 -> dest = rt
        wb_ctl = 2'b11;
        m_ctl = 3'b010;
        rdata1 = 32'd1000;
        s_extendout = 32'hFFFFFFF8;
        aluop = 2'b00;
        alusrc = 1;
        regdst = 0;
        // at t=45: adder = 92, alu = 3e0 (992), mux = 5

        #10  // t=50: BEQ equal (subtract, check zero)
        wb_ctl = 2'b00;
        m_ctl = 3'b100;
        rdata1 = 32'd42;
        rdata2 = 32'd42;
        s_extendout = 32'd4;
        aluop = 2'b01;
        alusrc = 0;
        // at t=55: adder = 104, alu = 0, zero = 1

        #10 $finish;
    end
endmodule
