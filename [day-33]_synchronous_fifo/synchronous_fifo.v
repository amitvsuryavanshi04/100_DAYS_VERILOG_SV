`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 23.06.2024 09:32:48
// Design Name: synchronous fifo using a common counter 
// Module Name: synchronous_fifo
//
// Tool Used : AMD's Xilinx Vivado Version 2023.2
//
// Language used :  Verilog
//////////////////////////////////////////////////////////////////////////////////
/* The synchronous FIFO can also be implemented using a common counter that can be
incremented or decremented based on write to the FIFO or read from the FIFO
respectively.
Empty condition
count == 0 i.e. FIFO contains nothing.
Full condition
count == FIFO_DEPTH i.e. counter value has reached till the depth of FIFO*/
module synchronous_fifo #(parameter DEPTH=8, DATA_WIDTH=8) (
    input clk,
    input rst_n,
    input w_en,
    input r_en,
    input [DATA_WIDTH-1:0] data_in,
    output reg [DATA_WIDTH-1:0] data_out,
    output full,
    output empty
);

    reg [$clog2(DEPTH)-1:0] w_ptr, r_ptr;
    reg [DATA_WIDTH-1:0] fifo [0:DEPTH-1];
    reg [$clog2(DEPTH):0] count;

    // Set default values on reset.
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            w_ptr <= 0;
            r_ptr <= 0;
            data_out <= 0;
            count <= 0;
        end else begin
            if (w_en && !full && (!r_en || r_en && !empty)) begin
                fifo[w_ptr] <= data_in;
                w_ptr <= w_ptr + 1;
                count <= count + 1;
            end
            if (r_en && !empty && (!w_en || w_en && !full)) begin
                data_out <= fifo[r_ptr];
                r_ptr <= r_ptr + 1;
                count <= count - 1;
            end
        end
    end

    assign full = (count == DEPTH);
    assign empty = (count == 0);
endmodule


