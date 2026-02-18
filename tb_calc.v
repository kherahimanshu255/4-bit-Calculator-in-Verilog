`timescale 1ns / 1ps

module tb_calculator();
    // 1. Declare signals to connect to the module
    reg [3:0] tb_A, tb_B;
    reg [1:0] tb_Op;
    wire [4:0] tb_Result;

    // 2. Instantiate the Unit Under Test (UUT)
    calculator uut (
        .A(tb_A), 
        .B(tb_B), 
        .Op(tb_Op), 
        .Result(tb_Result)
    );

    // 3. Stimulus Process
    initial begin
        // Test Addition: 5 + 3 = 8
        tb_A = 4'd5; tb_B = 4'd3; tb_Op = 2'b00;
        #10; // Wait 10 nanoseconds
        
        // Test Subtraction: 10 - 4 = 6
        tb_A = 4'd10; tb_B = 4'd4; tb_Op = 2'b01;
        #10;
        
        // Test AND: 4'b1100 & 4'b1010 = 4'b1000 (8)
        tb_A = 4'b1100; tb_B = 4'b1010; tb_Op = 2'b10;
        #10;

        $finish; // End simulation
    end
endmodule