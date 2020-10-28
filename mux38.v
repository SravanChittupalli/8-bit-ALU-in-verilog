module mux38
(
	input en,
	input [2:0] sel,
	output reg [7:0] out
);

	always @ (en, sel)
	begin
	
		if( en == 1'b1)
		begin

			case (sel)
			
				3'b111: out[7:0]=8'b10000000;
			
				3'b110: out[7:0]=8'b01000000;
			
				3'b101: out[7:0]=8'b00100000;
			
				3'b100: out[7:0]=8'b00010000;
			
				3'b011: out[7:0]=8'b00001000;
			
				3'b010: out[7:0]=8'b00000100;
			
				3'b001: out[7:0]=8'b00000010;
			
				3'b000: out[7:0]=8'b00000001;
			
				default: out = 8'b00000000;
			
			endcase
		
		end
	
	end

endmodule
