//Day-79 SV26 Associative arrays
module associative_array_example;
   bit [7:0] array [int];
   int index;
  
  initial begin
    
    array[5] = 2;
    array[10] = 4;
    array[7] = 6;
    array[9] = 8;
    array[20] = 10;
    array[13] = 12;
    
    // Print array elements
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    
    // Print array size and number of entries
    $display("size = %0d, Number of entries = %0d of array", array.size(), array.num());
    $display("--------------------------");
    
    // exists method
    if(array.exists(7)) $display("An element exists at index = 7");
    else $display("An element doesn't exists at index = 7");
    
    if(array.exists(8)) $display("An element exists at index = 8");
    else $display("An element doesn't exists at index = 8");
    $display("--------------------------");
    
    // first, last, prev, next method
    array.first(index);
    $display("First index of array = %0d", index);
    
    array.last(index);
    $display("Last index of array = %0d", index);
    
    index = 9;
    array.prev(index);  // Previous index of 9
    $display("Prev index of 9 is %0d", index);
    
    index = 10;
    array.next(index); // Next index of 10
    $display("Next index of 10 is %0d", index);
    
    $display("--------------------------");
    // Delete particular index
    array.delete(7);
    
    // Print array elements
    $display("After deleting element having index 7");
    foreach (array[i]) $display("array[%0d] = %0d", i, array[i]);
    $display("--------------------------");
    
    // Delete complete array
    array.delete();
    $display("size = %0d of array", array.size());
  end
endmodule