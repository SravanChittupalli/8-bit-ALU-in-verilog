module alu8bit
(
	input en,
	input [7:0] a, b,
	input [3:0] opcode,
	output reg [7:0] out,
	output reg cout
);

	wire [7:0] add_out, sub_out, inc_out, dec_out, and_out, or_out, exor_out, not_out;
	wire add_cout, sub_cout, inc_cout, dec_cout;

	add_8bit add(a[7:0], b[7:0], 1'b0, add_out[7:0], add_cout);
			
	sub_8bit sub(a[7:0], b[7:0], sub_out[7:0], sub_cout);
			
	inc_8bit inc(a[7:0], inc_out[7:0], inc_cout);
			
	dec_8bit dec(a[7:0], dec_out[7:0], dec_cout);
	
	and_gate8 and_gate(a[7:0], b[7:0], and_out[7:0]); 
				
	or_gate8 or_gate(a[7:0], b[7:0], or_out[7:0]);
				
	exor_gate8 exor_gate(a[7:0], b[7:0], exor_out[7:0]);
				
	not_gate8 not_gate(a[7:0], not_out[7:0]);
	
	always @ (en, a, b, opcode)
	begin
	
		if(opcode[3] == 1)
		begin
	
			case({opcode[2], opcode[1], opcode[0]})
		
				3'b111:
				begin
					out[7:0] = add_out;
					cout = add_cout;
				end
	
				3'b110:
				begin
					out[7:0] = sub_out;
					cout = sub_cout;
				end
			
				3'b101:
				begin
					out[7:0] = inc_out;
					cout = inc_cout;
				end
			
				3'b100:
				begin
					out[7:0] = dec_out;
					cout = dec_cout;
				end
				
				default:
				begin
					out[7:0] = 8'b00000000;
				end
			
			endcase
		
		end
		
		else
		begin
			
			cout = 1'b0;

			case({opcode[2], opcode[1], opcode[0]})
				
				3'b111: out[7:0] = and_out;
				
				3'b110: out[7:0] = or_out;
				
				3'b101: out[7:0] = exor_out;
				
				3'b100: out[7:0] = not_out;
				
				default:
				begin
					out[7:0] = 8'b00000000;
				end
				
			endcase
		
		end
	
	end

endmodule
