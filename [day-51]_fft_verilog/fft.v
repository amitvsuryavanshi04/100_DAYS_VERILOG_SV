`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.07.2024 23:40:59
// Design Name: 
// Module Name: fft
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


module fft (
    input clk,
    input reset,
    input signed [15:0] x_real,
    input signed [15:0] x_imag,
    output reg signed [15:0] y_real,
    output reg signed [15:0] y_imag
);
    // Number of points (N)
    parameter N = 4;
    
    // Twiddle factors
    wire signed [15:0] twiddle_real [0:N/2-1];
    wire signed [15:0] twiddle_imag [0:N/2-1];
    
    // Define the twiddle factors
    assign twiddle_real[0] = 16'd1;
    assign twiddle_imag[0] = 16'd0;
    assign twiddle_real[1] = 16'd0;
    assign twiddle_imag[1] = -16'd1;
    
    // Input and output arrays
    reg signed [15:0] x_real_arr [0:N-1];
    reg signed [15:0] x_imag_arr [0:N-1];
    reg signed [15:0] y_real_arr [0:N-1];
    reg signed [15:0] y_imag_arr [0:N-1];
    
    integer i, j, k;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < N; i = i + 1) begin
                x_real_arr[i] <= 16'd0;
                x_imag_arr[i] <= 16'd0;
                y_real_arr[i] <= 16'd0;
                y_imag_arr[i] <= 16'd0;
            end
        end else begin
            // Load input values
            x_real_arr[0] <= x_real;
            x_imag_arr[0] <= x_imag;
            
            // Compute FFT
            for (i = 0; i < N; i = i + 1) begin
                for (j = 0; j < N/2; j = j + 1) begin
                    k = (i * j) % N;
                    y_real_arr[i] <= x_real_arr[i] + (x_real_arr[j] * twiddle_real[k] - x_imag_arr[j] * twiddle_imag[k]);
                    y_imag_arr[i] <= x_imag_arr[i] + (x_real_arr[j] * twiddle_imag[k] + x_imag_arr[j] * twiddle_real[k]);
                end
            end
            
            // Output results
            y_real <= y_real_arr[0];
            y_imag <= y_imag_arr[0];
        end
    end
endmodule

