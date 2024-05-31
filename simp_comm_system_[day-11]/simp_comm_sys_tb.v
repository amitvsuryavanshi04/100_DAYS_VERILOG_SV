`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2024 07:06:48
// Design Name: 
// Module Name: simp_comm_sys_tb
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


module simp_comm_sys_tb;
    reg [3:0] message;
    reg [1:0] sel;
    wire [3:0] received_message;

    // Instantiate the Device Under Test (DUT)
    simp_comm_sys uut (
        .message(message),
        .sel(sel),
        .received_message(received_message)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | Message=%b Sel=%b => Received Message=%b", $time, message, sel, received_message);

        // Test case 1
        message = 4'b0001; sel = 2'b00; #10;
        
        // Test case 2
        message = 4'b0010; sel = 2'b01; #10;
        
        // Test case 3
        message = 4'b0100; sel = 2'b10; #10;
        
        // Test case 4
        message = 4'b1000; sel = 2'b11; #10;

        $finish;
    end
endmodule


