module Mux4Way16 (a,b,c,d,sel,out);

	input [15:0] a,b,c,d;
	input [1:0] sel;
	output [15:0]out;
	wire [15:0] w1, w2;
	
	Mux16 abMux16(
	.a(a),
	.b(b),
	.sel(sel[0]),
	.out(w1));
	
	Mux16 cdMux16(
	.a(c),
	.b(d),
	.sel(sel[0]),
	.out(w2));
	
	Mux16 finalMux16(
	.a(w1),
	.b(w2),
	.sel(sel[1]),
	.out(out));


endmodule