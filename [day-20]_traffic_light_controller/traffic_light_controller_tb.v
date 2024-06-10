//testbench code for traffic_light_controller using FSMs(simple one)
module traffic_light_controller_tb;
    reg clk, reset;
    wire [2:0] NS_light, EW_light;

    // Instantiate the traffic light controller
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .NS_light(NS_light),
        .EW_light(EW_light)
    );

    initial begin
        // Initialize signals
        clk = 0; reset = 0;

        // Reset the system
        reset = 1; #10;
        reset = 0; #10;

        // Run the simulation for a while
        #200 $finish;
    end

    // Clock generation
    always #5 clk = ~clk;

    // Monitor signals
    initial begin
        $monitor("Time=%0t | NS_light=%b, EW_light=%b", $time, NS_light, EW_light);
    end
endmodule
