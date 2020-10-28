module sub_8bit
(
	input [7:0] a, b,
	output [7:0] out,
	output cout
);

	wire [7:0] b_in;
	
	not_gate8 ones_comp(b[7:0], b_in[7:0]);
	
	add_8bit sub_out(a[7:0], b_in[7:0], 1'b1, out[7:0], cout);
	
endmodule
