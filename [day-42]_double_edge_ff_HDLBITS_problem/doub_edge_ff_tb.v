`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.07.2024 23:39:24
// Design Name: 
// Module Name: doub_edge_ff_tb
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


module doub_edge_ff_tb;
    reg clk;
    reg d;
    wire q;

    // Instantiate the design under test (DUT)
    top_module dut (
        .clk(clk),
        .d(d),
        .q(q)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock period of 10 time units
    end

    // Test sequence
    initial begin
        // Initialize input signals
        d = 0;

        // Apply test vectors
        #10 d = 1;
        #20 d = 0;
        #20 d = 1;
        #20 d = 0;

        // Finish simulation after some time
        #100 $finish;
    end

    // Monitor the signals
    initial begin
        $monitor("Time = %0t | clk = %b | d = %b | q = %b", $time, clk, d, q);
    end
endmodule

