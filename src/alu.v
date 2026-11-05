module alu(
    input wire [31:0] a, // source from register
    input wire [31:0] b, // target from register
    input wire [2:0] control,// select from alu_control
    output reg [31:0] result, // goes to MEM Data memory and MEM/WB latch
    output wire zero // goes to MEM Branch
);
parameter ALUadd = 3'b010,
    ALUsub = 3'b110,
    ALUand = 3'b000,     
    ALUor = 3'b001,
    ALUslt = 3'b111;
wire sign_mismatch;
assign sign_mismatch = a[31]^b[31];

initial
    result <= 0;

always @(*) begin
    case(control)
        ALUadd: result = a + b;
        ALUsub: result = a - b;
        ALUand: result = a & b;
        ALUor: result = a | b;
        ALUslt: result = a < b ? 1 - sign_mismatch
        : 0 + sign_mismatch;
        default: result = 32'bX;
    endcase
end

assign zero = (result == 0);

endmodule