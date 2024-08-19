module clock_divider(
    input logic clk_in,    // Input Clock
    input logic rst,       // Reset signal
    output logic clk_out   // Output divided clock
);
    logic [1:0] count;     // 2-bit counter

    always_ff @(posedge clk_in or posedge rst) begin
        if (rst) begin
            count <= 2'b00;
            clk_out <= 1'b0;
        end else begin
            count <= count + 1'b1;
            if (count == 2'b10) begin
                clk_out <= ~clk_out; // Toggle clock output
                count <= 2'b00;
            end
        end
    end
endmodule

module testbench;
    logic clk_in, rst;
    logic clk_out;
    
    clock_divider uut (
        .clk_in(clk_in),
        .rst(rst),
        .clk_out(clk_out)
    );

    initial begin
        rst = 1; clk_in = 0; #5 rst = 0;
        forever #5 clk_in = ~clk_in; // Generate input clock
    end

    initial begin
        #100 $finish;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, testbench);
    end
endmodule
