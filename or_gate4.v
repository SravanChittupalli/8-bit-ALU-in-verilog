module or_gate4
(
	input [3:0] a,b,
	output [3:0] y
);

	or o0(y[0], a[0], b[0]);
	or o1(y[1], a[1], b[1]);
	or o2(y[2], a[2], b[2]);
	or o3(y[3], a[3], b[3]);

endmodule
