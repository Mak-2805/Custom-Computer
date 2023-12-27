module twoAnd (a, b, out);

	input a, b;
	output out;
	
	wire w1;
	
	assign w1 = ~(a & b);
	
	oneNot Not1(
	.a(w1),
	.out(out));


endmodule