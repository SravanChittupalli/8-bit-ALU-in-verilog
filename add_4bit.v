module add_4bit
(
	input [3:0] a, b,
	input cin,
	output [3:0] s,
	output cout
);

	wire c0, c1, c2;
	wire [3:0] G, P;
	
	and_gate4 Cgen(a[3:0], b[3:0], G[3:0]);
	exor_gate4 Cprop(a[3:0], b[3:0], P[3:0]);
	
	assign c0 = (G[0] | (P[0] & cin));
	assign c1 = (G[1] | (P[1] & G[0]) | (P[1] & P[0] & cin));
	assign c2 = (G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & cin));
	assign cout = (G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3]& P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & cin));
	
	assign s[0] = P[0] ^ cin;
	assign s[1] = P[1] ^ c0;
	assign s[2] = P[2] ^ c1;
	assign s[3] = P[3] ^ c2;
	

endmodule
