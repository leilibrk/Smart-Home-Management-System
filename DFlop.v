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
---  Module Name: Light Dance
---  Description: Module5:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module MuxDflop (
	input  arst  , // async reset
	input  clk   , // clock posedge
	input  din   , // data  in
	input  load  , // data  load
	input  p     , // load data
	output reg dout    // data  out
);

	wire in;
	assign in = load ? p : din;
	always@(posedge clk or negedge arst)
		if(~arst) dout=0;
		else 		 dout=in;
endmodule