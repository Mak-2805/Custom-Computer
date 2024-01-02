module Mux8Way16 (a,b,c,d,e,f,g,h,sel,out);

	input [15:0] a,b,c,d,e,f,g,h;
	input [2:0] sel;
	output [15:0] out;
	wire[15:0] w1, w2;
	
	Mux4Way16 first4wayMux(
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.sel(sel[1:0]),
	.out(w1));
	
	Mux4Way16 second4wayMux(
	.a(e),
	.b(f),
	.c(g),
	.d(h),
	.sel(sel[1:0]),
	.out(w2));
	
	Mux16 finalMux(
	.a(w1),
	.b(w2),
	.sel(sel[2]),
	.out(out));

endmodule