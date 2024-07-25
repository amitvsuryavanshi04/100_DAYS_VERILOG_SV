//inline constraints
//written along with randomize method using keyword "with"
//add extra constraints to existing constraint
class sv3;
 rand bit [3:0] var1;
 constraint c1 { var1 > 3 && var1<7;};
 constraint c2 { var1 == 5;};
endclass

module top;
 sv3 s;
  initial begin 
   s = new();
	repeat(s)begin
		//s.randomize with {var1 == 5;};
	$display("var1 =%d",s.var1);
	end
	end
endmodule

