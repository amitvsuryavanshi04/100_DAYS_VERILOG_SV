`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Github: github.com/amitvsuryavanshi04
//  RTL Coder / Engineer: Amit Suryavanshi 
// 
// Create Date: 18.June.2024 07:41:43
// Design Name: Newspaper Vending Machine using FSMs
// Module Name: newspaper_vm_tb
// Project Name: Verification code for RTL code of NVM using FSM
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module newspaper_vm_tb();
    reg clock;
    reg [1:0] coin;
    reg reset;
    wire newspaper;

    // Instantiate the unit under test (UUT)
    newspaper_vm uut(
        .coin(coin),
        .clock(clock),
        .reset(reset),
        .newspaper(newspaper)
    );

    // To display the output
    initial begin
        $display("\tTime\tReset\tCoin\tNewspaper");
        $monitor("%d\t%b\t%b\t%b", $time, reset, coin, newspaper);
    end

    // Provide stimulus to the FSM of NVM
    initial begin
        clock = 0;
        coin = 0;
        reset = 1;
        #50 reset = 0;
        #40;

        // Put coins in the vending machine to test the FSM transitions
        // Insert 3 nickels to get a newspaper
        coin = 2'b01; #40; //coin = 2'b00; #40;
        coin = 2'b01; #40; //coin = 2'b00; #40;
        coin = 2'b01; #40; //coin = 2'b00; #40;
        
        // Insert one nickel and one dime to get a newspaper
        coin = 2'b01; #40; //coin = 2'b00; #40;
        coin = 2'b10; #40; //coin = 2'b00; #40;
        
        // Insert two dimes; machine should not return a nickel, but give a newspaper
        coin = 2'b10; #40; //coin = 2'b00; #40;
        coin = 2'b10; #40; //coin = 2'b00; #40;
         
        // Insert one dime and one nickel to get a newspaper
        coin = 2'b10; #40; //coin = 2'b00; #40;
        coin = 2'b01; #40; //coin = 2'b00; #40;
        
        #80 $finish;
    end
    
    // Setup clock; cycle time 40 units
    always begin
        #20 clock = ~clock;
    end
endmodule