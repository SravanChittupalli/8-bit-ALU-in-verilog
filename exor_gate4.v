module exor_gate4
(
	input [3:0] a, b,
	output [3:0] y
);

	xor x0(y[0], a[0], b[0]);
	xor x1(y[1], a[1], b[1]);
	xor x2(y[2], a[2], b[2]);
	xor x3(y[3], a[3], b[3]);

endmodule
