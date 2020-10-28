module add_8bit
(
	input [7:0] a, b,
	input cin,
	output [7:0] s,
	output cout
);
	
	wire tempc;
	
	add_4bit add03(a[3:0], b[3:0], cin, s[3:0], tempc);
	add_4bit add47(a[7:4], b[7:4], tempc, s[7:4], cout);

endmodule
