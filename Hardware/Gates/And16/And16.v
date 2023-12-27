module And16 (a,b,out);

	input [15:0] a,b;
	output [15:0] out;
	wire [15:0] w;

	generate
		genvar i;
		for (i = 0; i < 16; i = i + 1) begin : instance_loop1
		
			twoNand Nand_inst (
			  .a(a[i]),
			  .b(b[i]),
			  .out(w[i]));
			
			oneNot Not_inst(
				.a(w[i]),
				.out(out[i]));
			  
		end
	
	endgenerate
	
	
endmodule