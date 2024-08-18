module adder #(parameter WIDTH = 8) 
              (input logic [WIDTH-1:0] a, b, 
               output logic [WIDTH-1:0] sum);
    
    assign sum = a + b;
endmodule

module top;
  logic [7:0] a, b;
  logic [7:0] sum8;
  logic [15:0] a16, b16;
  logic [15:0] sum16;

  // Instantiate 8-bit adder
  adder #(.WIDTH(8)) adder8(.a(a), .b(b), .sum(sum8));

  // Instantiate 16-bit adder
  adder #(.WIDTH(16)) adder16(.a(a16), .b(b16), .sum(sum16));

  initial begin
    a = 8'd10; b = 8'd20; a16 = 16'd1000; b16 = 16'd2000;
    #10;
    $display("8-bit adder result: %0d", sum8);
    $display("16-bit adder result: %0d", sum16);
  end
endmodule
