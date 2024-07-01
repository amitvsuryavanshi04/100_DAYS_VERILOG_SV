`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.07.2024 23:03:19
// Design Name: 
// Module Name: IC_7458_tb
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


module IC_7458_tb;
    // Inputs
    reg p1a, p1b, p1c, p1d, p1e, p1f;
    reg p2a, p2b, p2c, p2d;

    // Outputs
    wire p1y, p2y;

    // Instantiate the Unit Under Test (UUT)
    IC_7458 uut (
        .p1a(p1a), .p1b(p1b), .p1c(p1c), .p1d(p1d), .p1e(p1e), .p1f(p1f),
        .p1y(p1y),
        .p2a(p2a), .p2b(p2b), .p2c(p2c), .p2d(p2d),
        .p2y(p2y)
    );

    initial begin
        // Initialize Inputs
        p1a = 0; p1b = 0; p1c = 0; p1d = 0; p1e = 0; p1f = 0;
        p2a = 0; p2b = 0; p2c = 0; p2d = 0;

        // Apply Test Cases
        #10; p1a = 1; p1b = 1; p1c = 1; // AND gate 1 should output 1, thus p1y should be 1
        #10; p1d = 1; p1e = 1; p1f = 1; // AND gate 2 should output 1, thus p1y should be 1
        #10; p1a = 0; p1b = 0; p1c = 0; // Reset AND gate 1
        #10; p1d = 0; p1e = 0; p1f = 0; // Reset AND gate 2
        #10; p2a = 1; p2b = 1; // AND gate 3 should output 1, thus p2y should be 1
        #10; p2c = 1; p2d = 1; // AND gate 4 should output 1, thus p2y should be 1
        #10; p2a = 0; p2b = 0; p2c = 0; p2d = 0; // Reset all

        // Additional test cases
        #10; p1a = 1; p1b = 0; p1c = 1; p1d = 0; p1e = 1; p1f = 0; // p1y should be 0
        #10; p2a = 1; p2b = 0; p2c = 1; p2d = 0; // p2y should be 0

        // Finish the simulation
        #20; $finish;
    end

    initial begin
        $monitor("Time=%0d p1a=%b p1b=%b p1c=%b p1d=%b p1e=%b p1f=%b p1y=%b p2a=%b p2b=%b p2c=%b p2d=%b p2y=%b", 
                 $time, p1a, p1b, p1c, p1d, p1e, p1f, p1y, p2a, p2b, p2c, p2d, p2y);
    end
endmodule

