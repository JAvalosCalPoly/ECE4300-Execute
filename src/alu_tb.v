`timescale 1ns / 1ps
// ALU testbench
module alu_test;
    reg [31:0] a, b;
    reg  [ 2:0] control;
    wire [31:0] result;
    wire        zero;

    alu uut (
        .a(a),
        .b(b),
        .control(control),
        .result(result),
        .zero(zero)
    );

    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, alu_test);
        a = 'b1010;  // 10
        b = 'b0111;  // 7
        control = 'b011;
        $display("A = %b\t B = %b", a, b);
        $monitor("ALUop = %b\t result = %d\t zero = %b", control, result, zero);
        #1 control = 'b100;  // invalid -> x
        #1 control = 'b010;  // add -> 17
        #1 control = 'b111;  // slt -> 0
        #1 control = 'b011;  // invalid -> x
        #1 control = 'b110;  // sub -> 3
        #1 control = 'b001;  // or  -> 1111
        #1 control = 'b000;  // and -> 0010
        #1 $finish;
    end
endmodule
