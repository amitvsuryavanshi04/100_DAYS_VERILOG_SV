`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 21.06.2024 00:10:27
// Design Name: Binary to Gray Code Converter Verilog Code
// Module Name: b2g_converter
// 
// Tool Used : AMD's Xilinx Vivado Version 2023.2
// Description: Gray Code is similar to binary code except its successive number differs by only a single
//bit. Hence, it has importance in communication systems as it minimizes error
//occurrence. They are also useful in rotary, optical encoders, data acquisition systems,
//etc.
//
// Language used :  Verilog 
//////////////////////////////////////////////////////////////////////////////////


module b2g_converter #(parameter width=4)( binary,gray);
genvar i;
input [width-1:0] binary;
output [width-1:0]gray;
generate 

    for (i=0; i<width-1; i=i+1) begin 
      assign gray[i] = binary[i] ^ binary[i+1];
      end
   endgenerate
   
   assign gray[width-1] = binary[width-1];
endmodule
