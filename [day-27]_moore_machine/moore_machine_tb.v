`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 01:32:45
// Design Name: 
// Module Name: moore_machine_tb
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

module moore_machine_tb;

    // Inputs
    reg sequence_in;
    reg clock;
    reg reset;

    // Outputs
    wire detector_out;

    // Instantiate the Sequence Detector using Moore FSM
    moore_machine uut (
        .sequence_in(sequence_in), 
        .clock(clock), 
        .reset(reset), 
        .detector_out(detector_out)
    );
    
    // Clock generation
    initial begin
        clock = 0;
        forever #5 clock = ~clock;
    end 
    
    // Test sequence
    initial begin
        // Initialize inputs
        sequence_in = 0;
        reset = 1;
        
        // Wait 30 ns for global reset to finish
        #30;
        reset = 0;
        
        // Apply test vectors
        #40 sequence_in = 1;
        #10 sequence_in = 0;
        #10 sequence_in = 1; 
        #20 sequence_in = 0; 
        #20 sequence_in = 1; 
        #20 sequence_in = 0;  
        
        // End of simulation
        #20;
        $finish;
    end

    // Display output
    initial begin
        $monitor("At time %t, sequence_in = %b, detector_out = %b", $time, sequence_in, detector_out);
    end
      
endmodule
