module calculator(
    input [3:0] A, B,      // 4-bit inputs
    input [1:0] Op,        // Operation selector (00:Add, 01:Sub, 10:AND, 11:OR)
    output reg [4:0] Result // 5-bit output (to handle carry/overflow)
    );

    always @(*) begin
        case(Op)
            2'b00: Result = A + B;   // Addition
            2'b01: Result = A - B;   // Subtraction
            2'b10: Result = A & B;   // Bitwise AND
            2'b11: Result = A | B;   // Bitwise OR
            default: Result = 5'b0;  // Safety default
        endcase
    end
endmodule