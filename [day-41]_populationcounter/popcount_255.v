`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.07.2024 19:23:54
// Design Name: 
// Module Name: popcount_255
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

module popcount255( 
    input [254:0] in,
    output reg [7:0] out
);

    integer i;
    reg [7:0] count;

    always @ (in) begin
        count = 0;
        for (i = 0; i < 255; i = i + 1) begin
            if (in[i] == 1'b1) 
                count = count + 1;
        end
        out = count;
    end

endmodule