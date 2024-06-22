`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 22.06.2024 09:58:26
// Design Name: Gray to Binary Code Converter Verilog Testbench Code
// Module Name: g2b_converter_tb
// 
// Tool Used : AMD's Xilinx Vivado Version 2023.2
// Description: Gray Code is similar to binary code except its successive number differs by only a single
//bit. Hence, it has importance in communication systems as it minimizes error
//occurrence. They are also useful in rotary, optical encoders, data acquisition systems,
//etc.
//
// Language used :  Verilog 
//////////////////////////////////////////////////////////////////////////////////


module g2b_converter_tb;
  reg [3:0] gray;
  wire [3:0] binary;
  
  g2b_converter g2b(.gray(gray), .binary(binary));
  
  initial begin
    $monitor("Gray = %b --> Binary = %b", gray, binary);
    gray = 4'b1110; #1;
    gray = 4'b0100; #1;
    gray = 4'b0111; #1;
    gray = 4'b1010; #1;
    gray = 4'b1000; #1;
    $stop;
  end
endmodule
