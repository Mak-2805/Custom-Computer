module twoOr (a,b,out);

	input a,b;
	output out;
	wire w1,w2;
	
	oneNot Not1(
	.a(a),
	.out(w1));
	
	oneNot Not2(
	.a(b),
	.out(w2));
	
	twoNand Nand1(
	.a(w1),
	.b(w2),
	.out(out));

endmodule