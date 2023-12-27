module Mux16(a,b,sel,out);

	input [15:0] a,b;
	input sel;
	output [15:0] out;
	wire w1;
	wire [15:0] w2,w3,w4,w5;
	
	oneNot Not1(
	.a(sel),
	.out(w1));
	
	generate
		genvar i;
		
		for(i=0;i<16;i=i+1) begin: instance_loop
			
			twoAnd multiAnd1(
			.a(b[i]),
			.b(sel),
			.out(w2[i]));
			
			twoAnd multiAnd2(
			.a(a[i]),
			.b(b[i]),
			.out(w3[i]));
			
			twoAnd multiAnd3(
			.a(a[i]),
			.b(w1),
			.out(w4[i]));
			
			twoOr multiOr1(
			.a(w2[i]),
			.b(w3[i]),
			.out(w5[i]));
			
			twoOr multiOr2(
			.a(w4[i]),
			.b(w5[i]),
			.out(out[i]));
					
		
		end
	
	endgenerate
	
endmodule