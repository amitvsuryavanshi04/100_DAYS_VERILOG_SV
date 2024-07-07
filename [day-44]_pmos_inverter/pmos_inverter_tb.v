`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 19:41:32
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


module pmos_inverter_tb;

    reg in;
    wire out;

    // Instantiate the PMOS inverter
    pmos_inverter uut (
        .out(out),
        .in(in)
    );

    initial begin
        // Initialize inputs
        in = 0;

        // Apply test vectors
        $monitor("Time=%0t | In=%b | Out=%b", $time, in, out);

        #10 in = 1; // Inverter should output 0
        #10 in = 0; // Inverter should output 1
        #10 in = 1; // Inverter should output 0
        #10 in = 0; // Inverter should output 1

        #10 $finish;
    end

endmodule

