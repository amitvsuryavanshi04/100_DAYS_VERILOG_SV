module barrel_shifter (
    input [7:0] data_in,
    input [2:0] shift,
    input dir, // 0 for left shift, 1 for right shift
    output reg [7:0] data_out
);
    always @(*) begin
        if (dir)
            data_out = data_in >> shift;
        else
            data_out = data_in << shift;
    end
endmodule
