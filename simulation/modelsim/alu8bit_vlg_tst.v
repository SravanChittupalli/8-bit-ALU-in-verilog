// Copyright (C) 2019  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "11/03/2020 10:24:17"
                                                                                
// Verilog Test Bench template for design : alu8bit
// 
// Simulation tool : ModelSim-Altera (Verilog)
// 

`timescale 1 ps/ 1 ps
module alu8bit_vlg_tst();
// constants                                           
// general purpose registers
reg eachvec;
// test vector input registers
reg [7:0] a;
reg [7:0] b;
reg en;
reg [3:0] opcode;
// wires                                               
wire cout;
wire [7:0]  out;

localparam period = 20;

// assign statements (if any)                          
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
	assign a = 8'b00000000;
	assign b = 8'b00000000;
	assign en = 1'b0;
	assign opcode = 4'b0000;

	#period;

	#5 assign en = 1;
	#1 assign opcode = 4'b1111;
	assign a = 8'b11111111;
	assign b = 8'b11111111;
	#2 en = 1'b0;

	#period;

	#5 assign en = 1'b1;
	#1 assign opcode = 4'b0110;
	assign a = 8'b11001100;
	assign b = 8'b00110011;

	#period;
	                                     
end                                                    
endmodule

