`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.06.2024 00:21:40
// Design Name: 
// Module Name: b2g_converter_tb
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
module b2g_converter_tb;
  reg [3:0] binary;
  wire [3:0] gray;

  // Instantiate the Unit Under Test (UUT)
  b2g_converter uut (
    .binary(binary), 
    .gray(gray)
  );

  initial begin
    $monitor("Binary = %b --> Gray = %b", binary, gray);
    binary = 4'b0110; #10;
    binary = 4'b1001; #10;
    binary = 4'b1110; #10;
    binary = 4'b0001; #10;
    binary = 4'b1010; #10; // Added delay to ensure the simulation runs long enough to observe this value
    $finish; // Ends the simulation
  end
endmodule

