module top;

  bit [3:0] a, b, sum;
  bit carry;

  initial begin
    a = 4'b0011; // 3
    b = 4'b0101; // 5
    sum = a + b; // Sum should be 8
    carry = (sum > 4'b1111); // Check for overflow

    // Immediate assertion to check if sum is correct
    assert(sum == 4'b1000) else $fatal("Sum mismatch! Expected 8, got %0d", sum);

    // Immediate assertion to check if carry is correct
    assert(carry == 1'b0) else $fatal("Carry flag error!");

    $display("Assertions passed! Sum = %0d, Carry = %0b", sum, carry);
  end

endmodule
