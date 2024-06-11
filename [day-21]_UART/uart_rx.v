//verilog code for UART universal asynchronous receiver and transmitter
//receiver part 
module uart_rx (
    input wire clk,         // System clock
    input wire rst,         // Reset
    input wire rx,          // Serial input
    output reg [7:0] data,  // Received data
    output reg valid        // Data valid flag
);

    parameter IDLE = 3'b000, START = 3'b001, DATA = 3'b010, STOP = 3'b011;
    reg [2:0] state, next_state;
    reg [3:0] bit_cnt;
    reg [7:0] shift_reg;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            data <= 8'b0;
            valid <= 1'b0;
            bit_cnt <= 4'b0;
            shift_reg <= 8'b0;
        end else begin
            state <= next_state;
            case (state)
                IDLE: begin
                    valid <= 1'b0;
                end
                START: begin
                    if (rx == 1'b0) begin
                        bit_cnt <= 4'b0;
                        state <= DATA;
                    end
                end
                DATA: begin
                    shift_reg <= {rx, shift_reg[7:1]};
                    bit_cnt <= bit_cnt + 1;
                    if (bit_cnt == 4'd8) begin
                        data <= shift_reg;
                        valid <= 1'b1;
                        state <= STOP;
                    end
                end
                STOP: begin
                    if (rx == 1'b1) state <= IDLE;
                end
            endcase
        end
    end

    always @(*) begin
        case (state)
            IDLE: if (rx == 1'b0) next_state = START; else next_state = IDLE;
            START: next_state = DATA;
            DATA: if (bit_cnt == 4'd8) next_state = STOP; else next_state = DATA;
            STOP: if (rx == 1'b1) next_state = IDLE; else next_state = STOP;
        endcase
    end
endmodule
