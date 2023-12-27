module twoDMux(in,sel,a,b);

	input in,sel;
	output a,b;
	wire w1;
	
	oneNot Not1(
	.a(sel),
	.out(w1));
	
	twoAnd And1(
	.a(in),
	.b(w1),
	.out(a));
	
	twoAnd And2(
	.a(in),
	.b(sel),
	.out(b));

endmodule