// please don' use hyphen in the naming convention in verilog language it may give problems instead please use underscore 
module full_adder_tb();
reg a,b,cin;
wire s,c;
full_adder uut(.a(a),
      .b(b),
      .cin(cin),
      .s(s),
      .c(c));
      initial begin
      a=0;b=0;cin=0;
      #10;
      a=0;b=0;cin=1;
      #10;
      a=0;b=1;cin=0;
      #10;
      a=0;b=1;cin=1;
      #10;
      a=1;b=0;cin=0;
      #10;
      a=1;b=0;cin=1;
      #10;
      a=1;b=1;cin=0;
      #10;
      a=1;b=1;cin=1;
      #10;
      $finish;
      end
endmodule
