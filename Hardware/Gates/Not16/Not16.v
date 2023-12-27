module Not16 (in,out);
	
	input [15:0] in;
	output [15:0] out;

  
	generate
		genvar i;
		for (i = 0; i < 16; i = i + 1) begin : instance_loop
			oneNot Not_inst (
			  .in(in[i]),
			  .out(out[i])
			);
		end
	endgenerate
  
endmodule