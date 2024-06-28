`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.06.2024 07:50:16
// Design Name: 
// Module Name: ADC_DAC_System
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


module ADC_DAC_System (
    input clk,
    input rst,
    input [9:0] analog_in,
    output [9:0] analog_out
);
    wire [9:0] digital_signal;

    ADC adc_inst (
        .clk(clk),
        .rst(rst),
        .analog_in(analog_in),
        .digital_out(digital_signal)
    );

    DAC dac_inst (
        .clk(clk),
        .rst(rst),
        .digital_in(digital_signal),
        .analog_out(analog_out)
    );
endmodule

