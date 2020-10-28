module add_subtract_8bit
(
	input [7:0] a, b,
	input mode,
	output [7:0] out,
	output cout
);

	wire [7:0] b_in;
	reg [3:0] i;
	
	initial
		begin
		
		for(i = 1; i < 8; i = i + 1)
			begin
			
			b_in[i] = b[i] ^ mode;

			end
		
		end
	
	add_8bit fin_add(a[7:0], b_in[7:0], mode, out[7:0], cout);

endmodule
