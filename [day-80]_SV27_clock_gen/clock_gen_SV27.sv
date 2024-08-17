// Code your testbench here
// or browse Examples
module clock_gen;
    reg clk;
    reg d;
    reg q;

    // Clock generation: toggle every 5 time units
    always #5 clk = ~clk;

    // Sequential logic: Flip-flop
    always @(posedge clk) begin
        q <= d;
    end

    initial begin
        // Initialize values
        clk = 0;
        d = 0;
        #7 d = 1;
        #10 d = 0;
        #10 d = 1;
        #10 d = 0;
        #10 ;
       $dumpfile("dump.vcd"); 
      $dumpvars;
      $finish;  // End simulation
     
    end
endmodule
