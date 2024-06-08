module multiplier_8x8_tb;
    reg [7:0] A;
    reg [7:0] B;
    wire [15:0] product;

    // Instantiate the multiplier
    multiplier_8x8 uut (
        .A(A),
        .B(B),
        .product(product)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | A=%d B=%d => product=%d", $time, A, B, product);

        // Test case 1
        A = 8'd12; B = 8'd3; #10;
        
        // Test case 2
        A = 8'd15; B = 8'd7; #10;
        
        // Test case 3
        A = 8'd5; B = 8'd20; #10;
        
        // Test case 4
        A = 8'd255; B = 8'd255; #10;

        $finish;
    end
endmodule
