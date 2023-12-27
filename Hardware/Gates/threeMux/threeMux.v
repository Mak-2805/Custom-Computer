module threeMux(a,b,sel,out);

	input a,b,sel;
	output out;
	wire w1,w2,w3,w4,w5;
	
	oneNot Not1(
	.a(sel),
	.out(w1));
	
	twoAnd And1(
	.a(b),
	.b(sel),
	.out(w2));
	
	twoAnd And2(
	.a(a),
	.b(b),
	.out(w3));
	
	twoAnd And3(
	.a(a),
	.b(w1),
	.out(w4));
	
	twoOr Or1(
	.a(w2),
	.b(w3),
	.out(w5));
	
	twoOr Or2(
	.a(w4),
	.b(w5),
	.out(out));
	

endmodule