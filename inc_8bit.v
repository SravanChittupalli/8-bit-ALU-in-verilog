module inc_8bit
(
	input [7:0] a,
	output [7:0] out,
	output cout
);

wire cin = 1'b1;
wire [7:0]b = 8'b00000000;

	add_8bit(a[7:0], b[7:0], cin, out[7:0], cout);

endmodule
