`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 14:55:53
// Design Name: 
// Module Name: debounce_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

//The testbench code for debounce circuit code with test values

module debounce_tb;

    // Inputs
    reg clk;
    reg reset;
    reg noisy;

    // Outputs
    wire clean;

    // Instantiate the Debounce Circuit
    debounce uut (
        .clk(clk),
        .reset(reset),
        .noisy(noisy),
        .clean(clean)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        // Initialize Inputs
        reset = 1;
        noisy = 0;

        // Reset the circuit
        #20;
        reset = 0;

        // Simulate noisy switch input
        #20 noisy = 1; #10 noisy = 0; #10 noisy = 1;
        #10 noisy = 0; #10 noisy = 1; #10 noisy = 0;
        #20 noisy = 1;

        // Wait for debounce
        #100;

        // Check if the output is clean
        if (clean == 1) begin
            $display("Test Passed: Debounced output is clean.");
        end else begin
            $display("Test Failed: Debounced output is not clean.");
        end

        $finish;
    end

endmodule

