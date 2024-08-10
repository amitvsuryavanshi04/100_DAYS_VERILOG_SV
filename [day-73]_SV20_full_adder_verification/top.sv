`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 17:04:16
// Design Name: 
// Module Name: 
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


// testbench.sv
`include "interface.sv"
`include "test.sv"

module testbench;
    fa_intf pif();
    test tb (pif);
    full_adder f1(.a(pif.a), .b(pif.b), .cin(pif.cin), .s(pif.s), .c(pif.c));
    
    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1);
    end 
endmodule
