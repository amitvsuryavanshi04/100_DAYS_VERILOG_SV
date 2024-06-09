module sequence_detector_tb;
    reg clk, reset, in;
    wire out;

    // Instantiate the sequence detector
    sequence_detector uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | clk=%b reset=%b in=%b => out=%b", $time, clk, reset, in, out);

        // Initialize signals
        clk = 0; reset = 0; in = 0;

        // Reset the FSM
        reset = 1; #5;
        reset = 0; #5;

        // Apply test sequences
        in = 1; #10; in = 0; #10; in = 1; #10; in = 1; #10; // Sequence: 1011 (detected)
        in = 0; #10; in = 1; #10; in = 0; #10; in = 1; #10; in = 1; #10; // Sequence: 1011 (detected again)
        
        $finish;
    end

    // Clock generation
    always #5 clk = ~clk;
endmodule
