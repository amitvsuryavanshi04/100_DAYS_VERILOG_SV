module streaming_example_pack;

  byte  data_bytes[4];          // Array of 4 bytes
  int   packed_data;            // 32-bit integer to hold packed data

  initial begin
    data_bytes[0] = 8'hA1;
    data_bytes[1] = 8'hB2;
    data_bytes[2] = 8'hC3;
    data_bytes[3] = 8'hD4;

    // Pack data from the array into an integer using the streaming operator >>
    packed_data = {<<8{data_bytes}};

    $display("Packed Data: %h", packed_data); // Should display A1B2C3D4
  end

endmodule
