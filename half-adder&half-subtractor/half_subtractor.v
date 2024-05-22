module half_subtractor(a,b,dif,bo_out)
  input a,b;
  output dif,bo_out;

  assign dif=a^b;
  assign bout= ~a&b;

endmodule
