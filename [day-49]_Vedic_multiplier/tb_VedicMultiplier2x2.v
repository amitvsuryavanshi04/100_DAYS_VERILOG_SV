`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.07.2024 22:38:53
// Design Name: 
// Module Name: tb_VedicMultiplier2x2
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


module tb_VedicMultiplier2x2;

// Declare inputs as reg and output as wire
reg [1:0] A;
reg [1:0] B;
wire [3:0] P;

// Instantiate the Vedic Multiplier module
VedicMultiplier2x2 uut (
    .A(A),
    .B(B),
    .P(P)
);

initial begin
    // Initialize inputs
    A = 2'b00;
    B = 2'b00;

    // Apply test vectors
    #10 A = 2'b00; B = 2'b00; // Expect P = 4'b0000
    #10 A = 2'b01; B = 2'b01; // Expect P = 4'b0001
    #10 A = 2'b10; B = 2'b10; // Expect P = 4'b0100
    #10 A = 2'b11; B = 2'b11; // Expect P = 4'b1001
    #10 A = 2'b01; B = 2'b10; // Expect P = 4'b0010
    #10 A = 2'b10; B = 2'b01; // Expect P = 4'b0010
    #10 A = 2'b11; B = 2'b10; // Expect P = 4'b0110

    // Finish the simulation
    #10 $finish;
end

initial begin
    // Monitor the signals
    $monitor("At time %0t: A = %b, B = %b, P = %b", $time, A, B, P);
end

endmodule

