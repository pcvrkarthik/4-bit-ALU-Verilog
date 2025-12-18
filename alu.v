module alu (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] sel,
    output reg [3:0] Y,
    output reg       carry
);

always @(*) begin
    carry = 1'b0;
    Y     = 4'b0000;

    case (sel)
        3'b000: {carry, Y} = A + B; // Addition
        3'b001: {carry, Y} = A - B; // Subtraction
        3'b010: Y = A & B;          // AND
        3'b011: Y = A | B;          // OR
        3'b100: Y = A ^ B;          // XOR
        default: begin
            Y     = 4'b0000;
            carry = 1'b0;
        end
    endcase
end

endmodule
