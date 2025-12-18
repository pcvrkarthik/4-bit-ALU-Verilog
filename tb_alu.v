module tb_alu;

    reg  [3:0] A, B;
    reg  [2:0] sel;
    wire [3:0] Y;
    wire       carry;

    alu dut (
        .A(A),
        .B(B),
        .sel(sel),
        .Y(Y),
        .carry(carry)
    );

    initial begin
        A = 4'd5;
        B = 4'd3;

        sel = 3'b000; #10; // ADD
        sel = 3'b001; #10; // SUB
        sel = 3'b010; #10; // AND
        sel = 3'b011; #10; // OR
        sel = 3'b100; #10; // XOR

        $finish;
    end

endmodule
