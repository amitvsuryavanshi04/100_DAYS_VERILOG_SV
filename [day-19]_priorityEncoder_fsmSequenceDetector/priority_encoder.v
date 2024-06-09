module priority_encoder (
    input [3:0] in,
    output reg [1:0] out,
    output reg valid
);
    always @(*) begin
        casez (in)
            4'b0000: begin out = 2'b00; valid = 0; end
            4'b0001: begin out = 2'b00; valid = 1; end
            4'b001?: begin out = 2'b01; valid = 1; end
            4'b01??: begin out = 2'b10; valid = 1; end
            4'b1???: begin out = 2'b11; valid = 1; end
            default: begin out = 2'b00; valid = 0; end
        endcase
    end
endmodule
