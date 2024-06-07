module ring_counter (
    input clk,
    input rst,
    output [3:0] q
);
    reg [3:0] q_reg;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q_reg <= 4'b0001;
        else
            q_reg <= {q_reg[2:0], q_reg[3]};
    end

    assign q = q_reg;
endmodule
