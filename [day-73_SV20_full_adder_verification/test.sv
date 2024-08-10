`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.08.2024 17:00:31
// Design Name: 
// Module Name: test 
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


// test.sv
`include "environment.sv"

program test(fa_intf vif);
    environment env;
    
    initial begin
        env = new(vif);
        env.run();
    end
endprogram