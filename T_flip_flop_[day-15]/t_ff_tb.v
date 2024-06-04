`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2024 00:08:47
// Design Name: 
// Module Name: t_ff_tb
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


module t_ff_tb;
    reg t, clk, rst;
    wire q;

    // Instantiate the T flip-flop
    t_ff uut (
        .t(t),
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    // Generate clock signal
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock period of 10 time units
    end

    // Apply test cases
    initial begin
        // Monitor the signals
        $monitor("Time=%0t | t=%b rst=%b clk=%b => q=%b", $time, t, rst, clk, q);

        // Initialize inputs
        t = 0; rst = 1; #10;  // Reset the flip-flop
        rst = 0; #10;
        
        // Test case 1: No toggle (t=0)
        t = 0; #10;
        
        // Test case 2: Toggle (t=1)
        t = 1; #10;
        
        // Test case 3: No toggle (t=0)
        t = 0; #10;
        
        // Test case 4: Toggle (t=1)
        t = 1; #10;

        // Test case 5: Reset during operation
        t = 1; rst = 1; #10;
        rst = 0; #10;

        // Test case 6: Multiple toggles
        t = 1; #20;  // Should toggle twice

        $finish;
    end
endmodule

