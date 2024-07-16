`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 23:49:13
// Design Name: 
// Module Name: tb_fft
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


module tb_fft;
    reg clk;
    reg reset;
    reg signed [15:0] x_real;
    reg signed [15:0] x_imag;
    wire signed [15:0] y_real;
    wire signed [15:0] y_imag;
    
    // Instantiate the FFT module
    fft uut (
        .clk(clk),
        .reset(reset),
        .x_real(x_real),
        .x_imag(x_imag),
        .y_real(y_real),
        .y_imag(y_imag)
    );
    
    initial begin
        // Initialize clock and reset
        clk = 0;
        reset = 1;
        x_real = 16'd0;
        x_imag = 16'd0;
        
        // Release reset after a few clock cycles
        #10 reset = 0;
        
        // Apply test input sequence
        #10 x_real = 16'd1; x_imag = 16'd0;
        #10 x_real = 16'd2; x_imag = 16'd0;
        #10 x_real = 16'd3; x_imag = 16'd0;
        #10 x_real = 16'd4; x_imag = 16'd0;
        
        // End the simulation
        #50 $finish;
    end
    
    // Clock generation
    always #5 clk = ~clk;
    
    // Monitor the output
    initial begin
        $monitor("At time %t, x_real = %d, x_imag = %d, y_real = %d, y_imag = %d", $time, x_real, x_imag, y_real, y_imag);
    end
endmodule

