// testbench code for UART 

module tb_uart;

    // Parameters
    reg clk;
    reg rst;
    reg [7:0] tx_data;
    reg tx_start;
    wire tx;
    wire tx_busy;
    
    wire [7:0] rx_data;
    wire rx_valid;
    reg rx;
    
    //to run the UART we need to instantiate both transmitter and receiver 


    // Instantiate UART Transmitter
    uart_tx uart_tx_inst (
        .clk(clk),
        .rst(rst),
        .data(tx_data),
        .start(tx_start),
        .tx(tx),
        .busy(tx_busy)
    );

    // Instantiate UART Receiver
    uart_rx uart_rx_inst (
        .clk(clk),
        .rst(rst),
        .rx(rx),
        .data(rx_data),
        .valid(rx_valid)
    );

    // Clock Generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Test Sequence
    initial begin
        // Initialize Inputs
        rst = 1;
        tx_data = 8'h00;
        tx_start = 0;
        rx = 1;

        // Reset the system
        #20;
        rst = 0;

        // Transmit data
        #10;
        tx_data = 8'hA5; // Data to be transmitted
        tx_start = 1;
        #10;
        tx_start = 0;

        // Simulate reception by directly connecting tx to rx
        #100;
        rx = tx;

        // Wait for the data to be received
        #1000;
        
        // Check the received data
        if (rx_data == 8'hA5 && rx_valid) begin
            $display("Test Passed: Received data matches transmitted data.");
        end else begin
            $display("Test Failed: Received data does not match transmitted data.");
        end

        // End simulation
        #100;
        $finish;
    end

endmodule
