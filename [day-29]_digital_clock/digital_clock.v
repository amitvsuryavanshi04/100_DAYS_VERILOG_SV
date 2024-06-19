`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.06.2024 17:37:47
// Design Name: 
// Module Name: digital_clock
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


module digital_clock(
    input clk,       // Clock signal
    input reset,     // Reset signal
    output [5:0] seconds,  // Seconds counter (0-59)
    output [5:0] minutes,  // Minutes counter (0-59)
    output [4:0] hours     // Hours counter (0-23)
);

    reg [5:0] sec_counter = 0;
    reg [5:0] min_counter = 0;
    reg [4:0] hour_counter = 0;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sec_counter <= 0;
            min_counter <= 0;
            hour_counter <= 0;
        end else begin
            if (sec_counter == 59) begin
                sec_counter <= 0;
                if (min_counter == 59) begin
                    min_counter <= 0;
                    if (hour_counter == 23) begin
                        hour_counter <= 0;
                    end else begin
                        hour_counter <= hour_counter + 1;
                    end
                end else begin
                    min_counter <= min_counter + 1;
                end
            end else begin
                sec_counter <= sec_counter + 1;
            end
        end
    end

    assign seconds = sec_counter;
    assign minutes = min_counter;
    assign hours = hour_counter;

endmodule

