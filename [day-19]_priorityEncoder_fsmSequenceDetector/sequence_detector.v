// sequence detector which uses finite state machine and this sequence detector is used to detect a 
// sequence of 1011 
module sequence_detector (
    input clk,
    input reset,
    input in,
    output reg out
);
    reg [2:0] state, next_state;

    // State encoding
    parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b011, S4 = 3'b100;

    // State transition
    always @(posedge clk or posedge reset) begin
        if (reset)
            state <= S0;
        else
            state <= next_state;
    end

    // Next state logic and output logic
    always @(*) begin
        case (state)
            S0: begin
                if (in) next_state = S1;
                else next_state = S0;
                out = 0;
            end
            S1: begin
                if (in) next_state = S1;
                else next_state = S2;
                out = 0;
            end
            S2: begin
                if (in) next_state = S3;
                else next_state = S0;
                out = 0;
            end
            S3: begin
                if (in) next_state = S4;
                else next_state = S2;
                out = 0;
            end
            S4: begin
                if (in) next_state = S1;
                else next_state = S2;
                out = 1;
            end
            default: begin
                next_state = S0;
                out = 0;
            end
        endcase
    end
endmodule
