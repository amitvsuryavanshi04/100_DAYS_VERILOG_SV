module jk_ff_tb;
    reg j, k, clk;
    wire q;

    // Instantiate the JK flip-flop
    jk_ff uut (
        .j(j),
        .k(k),
        .clk(clk),
        .q(q)
    );

    // Generate clock signal
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Clock period of 10 time units
    end

    // Apply test cases
    initial begin
        // Monitor the signals
        $monitor("Time=%0t | j=%b k=%b clk=%b => q=%b", $time, j, k, clk, q);

        // Initialize inputs
        j = 0; k = 0; #10;
        
        // Test case 1: No change (j=0, k=0)
        j = 0; k = 0; #10;
        
        // Test case 2: Reset (j=0, k=1)
        j = 0; k = 1; #10;
        
        // Test case 3: Set (j=1, k=0)
        j = 1; k = 0; #10;
        
        // Test case 4: Toggle (j=1, k=1)
        j = 1; k = 1; #10;
        
        // Test case 5: Repeat toggle (j=1, k=1)
        #10;  // Wait for another clock cycle
        
        // Test case 6: No change (j=0, k=0)
        j = 0; k = 0; #10;

        $finish;
    end
endmodule
