module oneNot (a, out);
	
	input a;
	output out;
	
	
	assign out = ~(a & a);

endmodule