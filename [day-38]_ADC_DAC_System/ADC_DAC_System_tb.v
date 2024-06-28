`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 07:52:09
// Design Name: 
// Module Name: ADC_DAC_System_tb
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


module ADC_DAC_System_tb;
    reg clk;
    reg rst;
    reg [9:0] analog_in;
    wire [9:0] analog_out;

    ADC_DAC_System uut (
        .clk(clk),
        .rst(rst),
        .analog_in(analog_in),
        .analog_out(analog_out)
    );

    initial begin
        clk = 0;
        rst = 1;
        analog_in = 10'b0;
        #10 rst = 0;
        #10 analog_in = 10'b1000000000;  // Test with mid-scale input
        #10 analog_in = 10'b1111111111;  // Test with max input
        #10 analog_in = 10'b0000000000;  // Test with min input
        #10 $stop;
    end

    always #5 clk = ~clk;
endmodule

