module twoXor (a,b,out);

	input a,b;
	output out;
	wire w1,w2,w3,w4;
	
	oneNot Not1(
	.a(a),
	.out(w1));
	
	oneNot Not2(
	.a(b),
	.out(w2));
	
	twoAnd And1(
	.a(w1),
	.b(b),
	.out(w3));
	
	twoAnd And2(
	.a(a),
	.b(w2),
	.out(w4));
	
	twoOr Or1(
	.a(w3),
	.b(w4),
	.out(out));
	

endmodule