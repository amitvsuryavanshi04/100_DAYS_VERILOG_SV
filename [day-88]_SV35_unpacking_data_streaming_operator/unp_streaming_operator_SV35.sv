module streaming_example_unpack;

  int   packed_data = 32'hA1B2C3D4; // 32-bit integer with packed data
  byte  data_bytes[4];              // Array of 4 bytes to hold unpacked data

  initial begin
    // Unpack the data from the integer into the array using the streaming operator <<
    {<<8{data_bytes}} = packed_data;

    $display("Unpacked Data: %h %h %h %h", data_bytes[0], data_bytes[1], data_bytes[2], data_bytes[3]);
    // Should display A1 B2 C3 D4
  end

endmodule
