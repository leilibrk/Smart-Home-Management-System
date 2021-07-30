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
---  Module Name: Window Shade Degree
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module WindowShadeDegree (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
	output reg [3:0] wshade   // shade level  [window shade level ]
);
always @(tcode or ulight)
begin
	case(tcode)
				4'b0001 : wshade = 4'b1111; 
				4'b0010 : wshade = 4'b1100;
				4'b0100 : wshade = ulight ;
				4'b1000 : wshade = 4'b0 ; 
				4'B0000 : wshade = 4'b0 ; 
				default: wshade = 4'b0 ; 	
	endcase
end
endmodule