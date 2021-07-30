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
---  Module Name: Temperature Calculator Utils
---  Description: Module1:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module full_adder (
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
);
wire [2:0] w;
	xor  
				x1(w[0],a,b),
				x2(s,w[0],ci);
				
	and 
				a1(w[1],a,b),
				a2(w[2],w[0],ci);
	or       r1(co,w[2],w[1]);		


endmodule

module add_sub (
	input a ,
	input b ,
	input cin ,
	input sel ,
	output sum ,
	output cout
);
	wire w;
	xor r1(w,b,sel);
	full_adder fa(a,w,cin,sum,cout);
endmodule