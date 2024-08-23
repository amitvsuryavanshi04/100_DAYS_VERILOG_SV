
module static_cast_example;

  int unsigned_val = 32'hFFFF_FFFF; // Unsigned 32-bit value
  byte signed_val;

  initial begin
    signed_val = byte'(unsigned_val); // Static cast from int to byte
    $display("Unsigned Value: %0d, Signed Value after static cast: %0d", unsigned_val, signed_val);
  end

endmodule
