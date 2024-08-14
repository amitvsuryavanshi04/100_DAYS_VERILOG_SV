class packet;
  rand bit [3:0] addr;
  rand bit [3:0] data;

  function void randomize_packet();
    assert(this.randomize());
  endfunction
endclass

module top;
  packet p = new();

  covergroup cg;
    coverpoint p.addr;
    coverpoint p.data;
    cross p.addr, p.data; // Cross coverage between addr and data
  endgroup

  initial begin
    cg c = new();
    repeat(20) begin
      p.randomize_packet();
      $display("addr = %0d, data = %0d", p.addr, p.data);
      c.sample(); // Sample coverage
    end
  end
endmodule
