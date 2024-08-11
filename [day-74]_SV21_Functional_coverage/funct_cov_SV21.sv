// Day-74 SV21 Functional Coverage , Implicit bins
class pkt;
	rand bit[3:0] addr;
	rand bit[3:0] data;
endclass

module top;
	pkt p=new();
	
	covergroup cg;
		//implicit
		ADDR:coverpoint p.addr;
		DATA:coverpoint p.data;
	endgroup

	initial begin
		cg c=new();
		repeat(20)begin
		p.randomize();
		$display("addr = %d data = %d \n",p.addr,p.data);
		c.sample();
	end
end
endmodule