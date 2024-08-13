class packet;
  rand bit [7:0] data;

  function void randomize_packet();
    assert(this.randomize());
  endfunction
endclass

module top;
  packet pkt = new();
  int seed = 1234; // Define a seed for randomization
  int rand_val;

  initial begin
    // Set the seed using $urandom
    rand_val = $urandom(seed);

    repeat(5) begin
      pkt.randomize_packet();
      $display("Random Data = %0d", pkt.data);
    end

    // Set the same seed again to achieve random stability
    rand_val = $urandom(seed);

    repeat(5) begin
      pkt.randomize_packet();
      $display("Stable Random Data = %0d", pkt.data);
    end
  end
endmodule
