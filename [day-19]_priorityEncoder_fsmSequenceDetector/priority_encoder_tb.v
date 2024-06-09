module priority_encoder_tb;
    reg [3:0] in;
    wire [1:0] out;
    wire valid;

    // Instantiate the priority encoder
    priority_encoder uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | in=%b => out=%b valid=%b", $time, in, out, valid);

        // Test cases
        in = 4'b0000; #10;
        in = 4'b0001; #10;
        in = 4'b0010; #10;
        in = 4'b0100; #10;
        in = 4'b1000; #10;
        in = 4'b0110; #10;
        in = 4'b1100; #10;

        $finish;
    end
endmodule
