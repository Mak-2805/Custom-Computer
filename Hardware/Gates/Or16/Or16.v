module Or16(a,b,out);
	
	input [0:15] a,b;
	output [0:15] out;
	wire [0:15] w1,w2;
	
	generate
		genvar i;
		
		for(i=0; i<16; i=i+1) begin: instance_loop
		
			oneNot Not_inst1(
			.a(a[i]),
			.out(w1[i]));
			
			oneNot Not_inst2(
			.a(b[i]),
			.out(w2[i]));
			
			twoNand Nand_inst(
			.a(w1[i]),
			.b(w2[i]),
			.out(out[i]));
		
		end
	endgenerate
	
endmodule