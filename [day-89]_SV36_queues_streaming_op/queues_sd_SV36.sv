// Day-89 SV36 converting between queues using streaming operators.
module queue_conversion_example;

  initial begin
    // Define queues
    bit [15:0] word_queue[$] = {16'h1234, 16'h5678}; // Queue of 16-bit words
    bit [7:0] byte_queue[$]; // Queue of 8-bit bytes

    // Convert word queue to byte queue using streaming operator
    byte_queue = { >> {word_queue}};  // Expected: byte_queue contains 12 34 56 78

    // Display byte queue
    foreach (byte_queue[i])
      $display("byte_queue[%0d] = %h", i, byte_queue[i]);

    // Reinitialize byte_queue with new values
    byte_queue = {8'h98, 8'h76, 8'h54, 8'h32};

    // Convert byte queue back to word queue using streaming operator
    word_queue = { >> {byte_queue}};  // Expected: word_queue contains 9876 5432

    // Display word queue
    foreach (word_queue[i])
      $display("word_queue[%0d] = %h", i, word_queue[i]);

  end

endmodule
