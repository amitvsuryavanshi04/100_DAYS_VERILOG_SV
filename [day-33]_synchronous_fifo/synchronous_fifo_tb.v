`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 09:51:50
// Design Name: synchronous fifo testbench code using a common counter 
// Module Name: synchronous_fifo_tb 
//
// Tool Used : AMD's Xilinx Vivado Version 2023.2
//
// Language used :  Verilog
//////////////////////////////////////////////////////////////////////////////////

module synchronous_fifo_tb;

    parameter DEPTH = 8;
    parameter DATA_WIDTH = 8;

    // Inputs
    reg clk;
    reg rst_n;
    reg w_en;
    reg r_en;
    reg [DATA_WIDTH-1:0] data_in;

    // Outputs
    wire [DATA_WIDTH-1:0] data_out;
    wire full;
    wire empty;

    // Instantiate the Unit Under Test (UUT)
    synchronous_fifo #(DEPTH, DATA_WIDTH) uut (
        .clk(clk),
        .rst_n(rst_n),
        .w_en(w_en),
        .r_en(r_en),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Test Sequence
    initial begin
        // Initialize Inputs
        rst_n = 0;
        w_en = 0;
        r_en = 0;
        data_in = 0;

        // Apply Reset
        #20;
        rst_n = 1;

        // Write Data
        #10;
        data_in = 8'hA1;
        w_en = 1;
        #10;
        w_en = 0;

        // Read Data
        #10;
        r_en = 1;
        #10;
        r_en = 0;

        // Write Data Again
        #10;
        data_in = 8'hB2;
        w_en = 1;
        #10;
        w_en = 0;

        // Read Data Again
        #10;
        r_en = 1;
        #10;
        r_en = 0;

        // Fill FIFO
        #10;
        repeat (DEPTH) begin
            data_in = data_in + 1;
            w_en = 1;
            #10;
            w_en = 0;
            #10;
        end

        // Read All Data
        #10;
        repeat (DEPTH) begin
            r_en = 1;
            #10;
            r_en = 0;
            #10;
        end

        // End Simulation
        #100;
        $finish;
    end

endmodule

