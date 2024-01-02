module DMux8Way (in,sel,a,b,c,d,e,f,g,h);

	input in;
	input [2:0] sel;
	output a,b,c,d,e,f,g,h;
	wire w1,w2;
	
	twoDMux firstDMux(
	.in(in),
	.sel(sel[2]),
	.a(w1),
	.b(w2));
	
	DMux4Way secondDMux(
	.in(w1),
	.sel(sel[1:0]),
	.a(a),
	.b(b),
	.c(c),
	.d(d));
	
	DMux4Way thirdDMux(
	.in(w2),
	.sel(sel[1:0]),
	.a(e),
	.b(f),
	.c(g),
	.d(h));

endmodule