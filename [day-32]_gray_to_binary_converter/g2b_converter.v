`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 22.06.2024 09:55:26
// Design Name: Gray to Binary Code Converter Verilog Code
// Module Name: g2b_converter
// 
// Tool Used : AMD's Xilinx Vivado Version 2023.2
// Description: Gray Code is similar to binary code except its successive number differs by only a single
//bit. Hence, it has importance in communication systems as it minimizes error
//occurrence. They are also useful in rotary, optical encoders, data acquisition systems,
//etc.
//
// Language used :  Verilog 
//////////////////////////////////////////////////////////////////////////////////
module g2b_converter #(parameter WIDTH=4) (input [WIDTH-1:0] gray, output
[WIDTH-1:0] binary);

assign binary[0] = gray[3] ^ gray[2] ^ gray[1] ^ gray[0];
assign binary[1] = gray[3] ^ gray[2] ^ gray[1];
assign binary[2] = gray[3] ^ gray[2];
assign binary[3] = gray[3];

// OR
/*genvar i;
generate
for(i=0;i<WIDTH;i++) begin
assign binary[i] = ^(gray >> i);
end
endgenerate*/
endmodule
