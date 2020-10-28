module not_gate4
(
	input [3:0] a,
	output [3:0] y
);

	not n0(y[0], a[0]);
	not n1(y[1], a[1]);
	not n2(y[2], a[2]);
	not n3(y[3], a[3]);

endmodule
