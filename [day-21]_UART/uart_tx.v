//module code for UART universal asynchronous receiver and transmitter 
// transmitter part 
module uart_tx (
    input wire clk,         // System clock
    input wire rst,         // Reset
    input wire [7:0] data,  // Data to be transmitted
    input wire start,       // Start transmission
    output reg tx,          // Serial output
    output reg busy         // Transmitter busy flag
);

    parameter IDLE = 3'b000, START = 3'b001, DATA = 3'b010, STOP = 3'b011;
    reg [2:0] state, next_state;
    reg [3:0] bit_cnt;
    reg [7:0] shift_reg;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state <= IDLE;
            tx <= 1'b1;
            busy <= 1'b0;
            bit_cnt <= 4'b0;
            shift_reg <= 8'b0;
        end else begin
            state <= next_state;
            case (state)
                IDLE: begin
                    tx <= 1'b1;
                    busy <= 1'b0;
                end
                START: begin
                    tx <= 1'b0;
                    busy <= 1'b1;
                end
                DATA: begin
                    tx <= shift_reg[0];
                    shift_reg <= {1'b0, shift_reg[7:1]};
                    bit_cnt <= bit_cnt + 1;
                end
                STOP: begin
                    tx <= 1'b1;
                end
            endcase
        end
    end

    always @(*) begin
        case (state)
            IDLE: if (start) next_state = START; else next_state = IDLE;
            START: next_state = DATA;
            DATA: if (bit_cnt == 4'd8) next_state = STOP; else next_state = DATA;
            STOP: if (!start) next_state = IDLE; else next_state = STOP;
        endcase
    end
endmodule
