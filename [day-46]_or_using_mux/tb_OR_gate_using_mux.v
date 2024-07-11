`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 22:51:47
// Design Name: 
// Module Name: tb_OR_gate_using_mux
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

module tb_OR_gate_using_mux;

// Declare inputs as reg and output as wire
reg A;
reg B;
wire Y;

// Instantiate the OR gate module
OR_gate_using_mux uut (
    .A(A),
    .B(B),
    .Y(Y)
);

initial begin
    // Initialize inputs
    A = 0;
    B = 0;

    // Apply test vectors
    #10 A = 0; B = 0; // Expect Y = 0
    #10 A = 0; B = 1; // Expect Y = 1
    #10 A = 1; B = 0; // Expect Y = 1
    #10 A = 1; B = 1; // Expect Y = 1

    // Finish the simulation
    #10 $finish;
end

initial begin
    // Monitor the signals
    $monitor("At time %0t: A = %b, B = %b, Y = %b", $time, A, B, Y);
end

endmodule

