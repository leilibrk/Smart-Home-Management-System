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
---  Description: Module5
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module LightDance (
	input        arst  , // async  reset
	input        clk   , // clock  posedge
	input        din   , // input  data
	input        load  , // load   enable 
	input  [7:0] pdata , // load   data
	output [7:0] qdata   // output data
);
	wire w1,w2,w3,w4,w5;
	assign w1=din ^ qdata[0];
	MuxDflop muxdflop7(arst,clk,w1,load,pdata[7],qdata[7]);
	MuxDflop muxdflop6(arst,clk,qdata[7],load,pdata[6],qdata[6]);
	assign w2=qdata[0]^qdata[6];
	MuxDflop muxdflop5(arst,clk,w2,load,pdata[5],qdata[5]);
	assign w3=qdata[0]^qdata[5];
	MuxDflop muxdflop4(arst,clk,w3,load,pdata[4],qdata[4]);
	MuxDflop muxdflop3(arst,clk,qdata[4],load,pdata[3],qdata[3]);
	MuxDflop muxdflop2(arst,clk,qdata[3],load,pdata[2],qdata[2]);
	assign w4=qdata[0]^qdata[2];
	MuxDflop muxdflop1(arst,clk,w4,load,pdata[1],qdata[1]);
	assign w5=qdata[0]^qdata[1];
	MuxDflop muxdflop0(arst,clk,w5,load,pdata[0],qdata[0]);
	
endmodule