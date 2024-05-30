module demux_1to4_tb;
    reg in;
    reg [1:0] sel;
    wire [3:0] out;

    // Instantiate the demultiplexer
    demux_1to4 uut (
        .in(in),
        .sel(sel),
        .out(out)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | in=%b sel=%b => out=%b", $time, in, sel, out);

        // Apply test cases
        // Test case 1: Input = 1, select = 00
        in = 1'b1; sel = 2'b00; #10;
        
        // Test case 2: Input = 1, select = 01
        in = 1'b1; sel = 2'b01; #10;
        
        // Test case 3: Input = 1, select = 10
        in = 1'b1; sel = 2'b10; #10;
        
        // Test case 4: Input = 1, select = 11
        in = 1'b1; sel = 2'b11; #10;

        // Test case 5: Input = 0, select = 00
        in = 1'b0; sel = 2'b00; #10;

        // Test case 6: Input = 0, select = 01
        in = 1'b0; sel = 2'b01; #10;

        // Test case 7: Input = 0, select = 10
        in = 1'b0; sel = 2'b10; #10;

        // Test case 8: Input = 0, select = 11
        in = 1'b0; sel = 2'b11; #10;

        $finish;
    end
endmodule
