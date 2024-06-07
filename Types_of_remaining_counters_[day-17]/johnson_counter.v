module johnson_counter (
    input clk,
    input rst,
    output [3:0] q
);
    reg [3:0] q_reg;

    always @(posedge clk or posedge rst) begin
        if (rst)
            q_reg <= 4'b0000;
        else
            q_reg <= {~q_reg[0], q_reg[3:1]};
    end

    assign q = q_reg;
endmodule
