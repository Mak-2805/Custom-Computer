module DMux4Way (in,sel,a,b,c,d);
	
	input in;
	input [1:0] sel;
	output a,b,c,d;
	wire w1, w2;
	
	twoDMux DMux1(
	.in(in),
	.sel(sel[1]),
	.a(w1),
	.b(w2));
	
	twoDMux DMux2(
	.in(w1),
	.sel(sel[0]),
	.a(a),
	.b(b));
	
	twoDMux DMux3(
	.in(w2),
	.sel(sel[0]),
	.a(c),
	.b(d));
	
endmodule