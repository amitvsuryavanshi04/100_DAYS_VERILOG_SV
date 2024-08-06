`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 22:15:47
// Design Name: 
// Module Name: asso_arr
// Project Name: 
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


module associative_array_example;

    // Define an associative array with string keys and integer values
    int score_table[string];

    initial begin
        // Insert elements into the associative array
        score_table["Alice"] = 95;
        score_table["Bob"] = 88;
        score_table["Charlie"] = 92;

        // Access and display elements using keys
        $display("Alice's score: %d", score_table["Alice"]);
        $display("Bob's score: %d", score_table["Bob"]);
        $display("Charlie's score: %d", score_table["Charlie"]);

        // Check if a key exists in the array
        if (score_table.exists("Diana"))
            $display("Diana's score: %d", score_table["Diana"]);
        else
            $display("Diana's score is not found.");

        // Loop through all elements in the associative array
        foreach (score_table[name]) begin
            $display("Student: %s, Score: %d", name, score_table[name]);
        end
    end

endmodule

