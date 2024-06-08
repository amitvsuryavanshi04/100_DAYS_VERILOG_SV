module barrel_shifter_tb;
    reg [7:0] data_in;
    reg [2:0] shift;
    reg dir;
    wire [7:0] data_out;

    // Instantiate the barrel shifter
    barrel_shifter uut (
        .data_in(data_in),
        .shift(shift),
        .dir(dir),
        .data_out(data_out)
    );

    initial begin
        // Monitor the signals
        $monitor("Time=%0t | data_in=%b shift=%d dir=%b => data_out=%b", $time, data_in, shift, dir, data_out);

        // Test case 1: Left shift by 1
        data_in = 8'b11001100; shift = 3'b001; dir = 0; #10;
        
        // Test case 2: Right shift by 2
        data_in = 8'b11001100; shift = 3'b010; dir = 1; #10;
        
        // Test case 3: Left shift by 3
        data_in = 8'b10101010; shift = 3'b011; dir = 0; #10;
        
        // Test case 4: Right shift by 1
        data_in = 8'b10101010; shift = 3'b001; dir = 1; #10;

        $finish;
    end
endmodule
