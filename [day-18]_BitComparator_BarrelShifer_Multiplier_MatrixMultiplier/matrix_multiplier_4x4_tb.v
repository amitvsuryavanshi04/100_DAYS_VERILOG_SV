module matrix_multiplier_4x4_tb;
    reg [7:0] A [3:0][3:0];
    reg [7:0] B [3:0][3:0];
    wire [15:0] C [3:0][3:0];
    integer i, j;

    // Instantiate the matrix multiplier
    matrix_multiplier_4x4 uut (
        .A(A),
        .B(B),
        .C(C)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | C = [%0d %0d %0d %0d] [%0d %0d %0d %0d] [%0d %0d %0d %0d] [%0d %0d %0d %0d]",
                 $time,
                 C[0][0], C[0][1], C[0][2], C[0][3],
                 C[1][0], C[1][1], C[1][2], C[1][3],
                 C[2][0], C[2][1], C[2][2], C[2][3],
                 C[3][0], C[3][1], C[3][2], C[3][3]);

        // Initialize matrix A
        A[0][0] = 8'd1; A[0][1] = 8'd2; A[0][2] = 8'd3; A[0][3] = 8'd4;
        A[1][0] = 8'd5; A[1][1] = 8'd6; A[1][2] = 8'd7; A[1][3] = 8'd8;
        A[2][0] = 8'd9; A[2][1] = 8'd10; A[2][2] = 8'd11; A[2][3] = 8'd12;
        A[3][0] = 8'd13; A[3][1] = 8'd14; A[3][2] = 8'd15; A[3][3] = 8'd16;

        // Initialize matrix B
        B[0][0] = 8'd1; B[0][1] = 8'd0; B[0][2] = 8'd0; B[0][3] = 8'd0;
        B[1][0] = 8'd0; B[1][1] = 8'd1; B[1][2] = 8'd0; B[1][3] = 8'd0;
        B[2][0] = 8'd0; B[2][1] = 8'd0; B[2][2] = 8'd1; B[2][3] = 8'd0;
        B[3][0] = 8'd0; B[3][1] = 8'd0; B[3][2] = 8'd0; B[3][3] = 8'd1;

        #10;

        // Modify matrix B to test different values
        B[0][0] = 8'd1; B[0][1] = 8'd2; B[0][2] = 8'd3; B[0][3] = 8'd4;
        B[1][0] = 8'd5; B[1][1] = 8'd6; B[1][2] = 8'd7; B[1][3] = 8'd8;
        B[2][0] = 8'd9; B[2][1] = 8'd10; B[2][2] = 8'd11; B[2][3] = 8'd12;
        B[3][0] = 8'd13; B[3][1] = 8'd14; B[3][2] = 8'd15; B[3][3] = 8'd16;

        #10;

        $finish;
    end
endmodule
