module multiplier_8x8 (
    input [7:0] A,
    input [7:0] B,
    output [15:0] product
);
    assign product = A * B;
endmodule
