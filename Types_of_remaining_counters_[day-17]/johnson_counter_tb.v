module johnson_counter_tb;
    reg clk, rst;
    wire [3:0] q;

    johnson_counter uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0t | rst=%b clk=%b => q=%b", $time, rst, clk, q);
        rst = 1; #10;
        rst = 0; #50;
        rst = 1; #10;
        rst = 0; #30;
        $finish;
    end
endmodule
