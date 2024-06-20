`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2024 14:55:23
// Design Name: 
// Module Name: debounce
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


module debounce(
    input clk,               // Clock signal
    input reset,             // Reset signal
    input noisy,             // Noisy switch input
    output reg clean         // Debounced (clean) output
);

    reg [3:0] shift_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= 4'b0;
            clean <= 0;
        end else begin
            shift_reg <= {shift_reg[2:0], noisy};
            if (shift_reg == 4'b1111)
                clean <= 1;
            else if (shift_reg == 4'b0000)
                clean <= 0;
        end
    end
endmodule

