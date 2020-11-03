//`include "alu8bit.v"

module testbench_alu();

reg [7:0] a;
reg [7:0] b;
reg en;
reg [3:0] opcode;
// wires                                               
wire cout;
wire [7:0]  out;

localparam period = 20;
                          
alu8bit i1 (
// port map - connection between master ports and signals/registers   
	.a(a),
	.b(b),
	.cout(cout),
	.en(en),
	.opcode(opcode),
	.out(out)
);

initial                                                
	begin                                                  
		a = 8'b00000000;  // initial
		b = 8'b00000000;
		en = 1'b0;
		opcode = 4'b0000;

		#period;

		#5 en = 1'b1;
		#1 opcode = 4'b1111;  // add
		a = 8'b11111111;
		b = 8'b11111111;
		#2 en = 1'b0;

		#period;

		#5 en = 1'b1;
		#1 opcode = 4'b0110;  // or
		a = 8'b11001100;
		b = 8'b00110011;
		#2 en = 1'b0;
		
		#period;
		
		#5 en = 1'b1;
		#1 opcode = 4'b0100;  // not
		a = 8'b10101010;
		#2 en = 1'b0;
		
		#period;
		
		#5 en = 1'b1;
		#1 opcode = 4'b1110;  //subtract
		a = 8'b00000000;
		b = 8'b00000001;
		#2 en = 1'b0;
		
		#period;
		
		#5 en = 1'b1;
		#1 opcode = 4'b0111;  // and
		a = 8'b11001100;
		b = 8'b00110011;
		#2 en = 1'b0;
		
		#period;
	                                     
	end                                                    
endmodule
