`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 16:57:04
// Design Name: 
// Module Name: design
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


// full_adder.sv
module full_adder(input a, b, cin, output s, c);
    wire w1, w2, w3;
    
    xor x1(w1, a, b);
    xor x2(s, w1, cin);
    and a1(w2, w1, cin);
    and a2(w3, a, b);
    or o1(c, w2, w3);
endmodule

 
