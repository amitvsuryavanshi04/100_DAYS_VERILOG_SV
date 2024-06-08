module matrix_multiplier_4x4 (
    input [7:0] A [3:0][3:0],
    input [7:0] B [3:0][3:0],
    output reg [15:0] C [3:0][3:0]
);
    integer i, j, k;
    always @(*) begin
        for (i = 0; i < 4; i = i + 1) begin
            for (j = 0; j < 4; j = i + 1) begin
                C[i][j] = 0;
                for (k = 0; k < 4; k = i + 1) begin
                    C[i][j] = C[i][j] + A[i][k] * B[k][j];
                end
            end
        end
    end
endmodule
