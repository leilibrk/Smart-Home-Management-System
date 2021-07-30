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
---  Module Name:  Memory Unit Utils
---  Description: Module5:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module register(input D, input Clk,
input reset, input load, output reg Q);
		 always @(posedge Clk or negedge reset)
			 if (~reset)
				begin
				Q <= 1'b0;
				end else if (load)
				begin
				Q <= D;
				end
endmodule 