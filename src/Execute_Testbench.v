`timescale 1ns / 1ps

module executeTB;
    reg clk;
    reg [1:0]  ctlwb_in;
    reg [2:0]  ctlm_in;
    reg [31:0] npc, rdata1, rdata2, s_extend;
    reg [4:0]  instr_2016, instr_1511;
    reg [1:0]  alu_op;
    reg [5:0]  funct;
    reg        alusrc, regdst;

    wire [1:0]  ctlwb_out;
    wire [2:0]  ctlm_out;
    wire [31:0] adder_out, alu_result_out, rdata2_out;
    wire        zero;
    wire [4:0]  muxout_out;

    execute uut (
        .clk(clk),
        .ctlwb_in(ctlwb_in),
        .ctlm_in(ctlm_in),
        .npc(npc),
        .rdata1(rdata1),
        .rdata2(rdata2),
        .s_extend(s_extend),
        .instr_2016(instr_2016),
        .instr_1511(instr_1511),
        .alu_op(alu_op),
        .funct(funct),
        .alusrc(alusrc),
        .regdst(regdst),
        .ctlwb_out(ctlwb_out),
        .ctlm_out(ctlm_out),
        .adder_out(adder_out),
        .zero(zero),
        .alu_result_out(alu_result_out),
        .rdata2_out(rdata2_out),
        .muxout_out(muxout_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("execute_tb.vcd");
        $dumpvars(0, executeTB);
        $monitor("t=%0t ALUOp=%b funct=%b alusrc=%b regdst=%b | adder=%0d alu=%h zero=%b mux=%0d rdata2=%h",
                 $time, alu_op, funct, alusrc, regdst,
                 adder_out, alu_result_out, zero, muxout_out, rdata2_out);

        // t=0: R-type ADD 10 + 20, regdst=1 -> dest = rd
        ctlwb_in = 2'b10; ctlm_in = 3'b000;
        npc = 32'd100; rdata1 = 32'd10; rdata2 = 32'd20; s_extend = 32'd4;
        instr_2016 = 5'd5; instr_1511 = 5'd10;
        alu_op = 2'b10; funct = 6'b100000; alusrc = 0; regdst = 1;
        // at t=5:  adder = 104, alu = 30, zero = 0, mux = 10

        #10 // t=10: R-type SUB 20 - 20
        rdata1 = 32'd20; funct = 6'b100010;
        // at t=15: alu = 0, zero = 1

        #10 // t=20: R-type SLT 5 < 10
        rdata1 = 32'd5; rdata2 = 32'd10; funct = 6'b101010;
        // at t=25: alu = 1, zero = 0

        #10 // t=30: LW -8 (sign extended), alusrc=1, regdst=0 -> dest = rt
        ctlwb_in = 2'b11; ctlm_in = 3'b010;
        rdata1 = 32'd1000; s_extend = 32'hFFFFFFF8;
        alu_op = 2'b00; alusrc = 1; regdst = 0;
        // at t=35: adder = 92, alu = 3e0 (992), mux = 5

        #10 // t=40: BEQ equal (subtract, check zero)
        ctlwb_in = 2'b00; ctlm_in = 3'b100;
        rdata1 = 32'd42; rdata2 = 32'd42; s_extend = 32'd4;
        alu_op = 2'b01; alusrc = 0;
        // at t=45: adder = 104, alu = 0, zero = 1

        #10 // t=50: BEQ TAKEN, backward branch (7 == 7, offset -4)
        rdata1 = 32'd7; rdata2 = 32'd7; s_extend = 32'hFFFFFFFC;
        // at t=55: adder = 96 (100 - 4), alu = 0, zero = 1

        #10 // t=60: BEQ NOT TAKEN (7 != 9)
        rdata2 = 32'd9; s_extend = 32'd4;
        // at t=65: adder = 104, alu = fffffffe (7 - 9 = -2), zero = 0

        #10
        $finish;
    end
endmodule
