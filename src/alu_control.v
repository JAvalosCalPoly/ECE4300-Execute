`timescale 1ns / 1ps
/*
Takes ALUOp and the funct field (Instr[5:0]) and outputs the 3-bit ALU control.
*/
module alu_control(
    input  wire [5:0] funct,
    input  wire [1:0] aluop,
    output reg  [2:0] select
);
    parameter Rtype = 2'b10, lwsw = 2'b00, Itype = 2'b01, unknown = 2'b11;

    parameter ALUadd = 3'b010, ALUsub = 3'b110, ALUand = 3'b000,
              ALUor  = 3'b001, ALUslt = 3'b111, ALUx   = 3'b011;

    parameter FUNCTadd = 6'b100000, FUNCTsub = 6'b100010,
              FUNCTand = 6'b100100, FUNCTor  = 6'b100101,
              FUNCTslt = 6'b101010;

    initial select = 0;

    always @* begin
        case (aluop)
            lwsw:  select = ALUadd;            // LW / SW
            Itype: select = ALUsub;            // BEQ
            Rtype: case (funct)
                       FUNCTadd: select = ALUadd;
                       FUNCTsub: select = ALUsub;
                       FUNCTand: select = ALUand;
                       FUNCTor:  select = ALUor;
                       FUNCTslt: select = ALUslt;
                       default:  select = ALUx;
                   endcase
            default: select = ALUx;            // unknown (2'b11)
        endcase
    end
endmodule
