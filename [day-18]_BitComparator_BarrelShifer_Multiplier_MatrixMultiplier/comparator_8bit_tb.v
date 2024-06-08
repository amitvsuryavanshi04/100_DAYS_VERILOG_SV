module comparator_8bit_tb;
    reg [7:0] A;
    reg [7:0] B;
    wire A_gt_B;
    wire A_lt_B;
    wire A_eq_B;

    // Instantiate the comparator
    comparator_8bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | A=%b B=%b => A_gt_B=%b A_lt_B=%b A_eq_B=%b", $time, A, B, A_gt_B, A_lt_B, A_eq_B);

        // Test case 1: A == B
        A = 8'b00000000; B = 8'b00000000; #10;
        
        // Test case 2: A > B
        A = 8'b10011001; B = 8'b01100110; #10;
        
        // Test case 3: A < B
        A = 8'b00110011; B = 8'b01000100; #10;
        
        // Test case 4: A == B (with different value)
        A = 8'b11111111; B = 8'b11111111; #10;

        $finish;
    end
endmodule
