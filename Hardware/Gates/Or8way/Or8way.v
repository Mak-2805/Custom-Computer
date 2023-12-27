module Or8way (in,out);

	input [7:0] in;
	output out;
	
	wire w1, w2, w3, w4, w5, w6;
	
	twoOr Or1(
	.a(in[0]),
	.b(in[1]),
	.out(w1));
	
	twoOr Or2(
	.a(w1),
	.b(in[2]),
	.out(w2));
	
	twoOr Or3(
	.a(w2),
	.b(in[3]),
	.out(w3));
	
	twoOr Or4(
	.a(w3),
	.b(in[4]),
	.out(w4));
	
	twoOr Or5(
	.a(w4),
	.b(in[5]),
	.out(w5));
	
	twoOr Or6(
	.a(w5),
	.b(in[6]),
	.out(w6));
	
	twoOr Or7(
	.a(w6),
	.b(in[7]),
	.out(out));
	
endmodule