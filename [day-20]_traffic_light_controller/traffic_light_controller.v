//a verilog code for traffic light controller 
//which uses light states for changing the light of contrller 
//NS refers here to the north south direction and EW refers to east and west 
module traffic_light_controller (
    input clk,
    input reset,
    output reg [2:0] NS_light, // 3-bit output for NS light (Red, Yellow, Green)
    output reg [2:0] EW_light  // 3-bit output for EW light (Red, Yellow, Green)
);

    // Light States
    parameter RED = 3'b100, YELLOW = 3'b010, GREEN = 3'b001;

    // FSM States
    parameter S0 = 2'b00, S1 = 2'b01, S2 = 2'b10, S3 = 2'b11;
    reg [1:0] state, next_state;

    // Counters
    reg [3:0] counter;

    // State transition and output logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0;
            counter <= 0;
        end else begin
            if (counter >= 4'b1111) begin
                counter <= 0;
                state <= next_state;
            end else begin
                counter <= counter + 1;
            end
        end
    end

    // Next state logic
    always @(*) begin
        case (state)
            S0: begin
                next_state = S1;
                NS_light = GREEN;
                EW_light = RED;
            end
            S1: begin
                next_state = S2;
                NS_light = YELLOW;
                EW_light = RED;
            end
            S2: begin
                next_state = S3;
                NS_light = RED;
                EW_light = GREEN;
            end
            S3: begin
                next_state = S0;
                NS_light = RED;
                EW_light = YELLOW;
            end
            default: begin
                next_state = S0;
                NS_light = RED;
                EW_light = RED;
            end
        endcase
    end
endmodule
