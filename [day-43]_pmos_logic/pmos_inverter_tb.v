`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.07.2024 21:07:15
// Design Name: 
// Module Name: pmos_inverter_tb
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


module pmos_transistor_tb;

    reg gate;
    reg source;
    wire drain;

    // Instantiate the PMOS transistor
    pmos_transistor_logic uut (
        .drain(drain),
        .gate(gate),
        .source(source)
    );

    initial begin
        // Initialize inputs
        gate = 0;
        source = 1;

        // Apply test vectors
        $monitor("Time=%0t | Gate=%b | Source=%b | Drain=%b", $time, gate, source, drain);
        
        #10 gate = 1; // PMOS off
        #10 gate = 0; // PMOS on
        #10 source = 0; // PMOS on
        #10 gate = 1; // PMOS off

        #10 $finish;
    end

endmodule
