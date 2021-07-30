/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Lighting System Utils
---  Description: Module4:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module decoder2x4 (
	input [1:0] in ,
	input 		en ,
	output [3:0] dout	
);
	wire I0not,I1not;
	not
		no(I0not,in[0]),
		n1(I1not,in[1]);
	and
		g1(dout[0],I0not,I1not,en),
		g2(dout[1],I0not,in[1],en),
		g3(dout[2],in[0],I1not,en),
		g4(dout[3],in[0],in[1],en);

endmodule

module decoder4x16 (
	input [3:0] in ,
	input 		en ,
	output [15:0] dout
);
	wire [3:0] wires;
	decoder2x4 deco1(in[1:0],en,wires[3:0]);
	decoder2x4 deco2(in[3:2],wires[0],dout[3:0]);
	decoder2x4 deco3(in[3:2],wires[1],dout[7:4]);
	decoder2x4 deco4(in[3:2],wires[2],dout[11:8]);
	decoder2x4 deco5(in[3:2],wires[3],dout[15:12]);

endmodule
