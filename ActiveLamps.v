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
---  Module Name: Active Lights
---  Description: Module4: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module ActiveLamps (
	input  [3:0] tcode  , // time code    [table2 time code   ]
	input  [3:0] ulight , // user light   [light degree mode  ]
    input  [3:0] lenght     , // room length  [square room lenght ]
	output reg [3:0] active_lights  // number of active light
);

	
	always @(tcode or ulight or lenght)
begin
	case(tcode)
				4'b0001 : active_lights = 4'b0; 
				4'b0010 : active_lights = 4'b0;
				4'b0100 : active_lights = lenght >> 2 ; 
				4'b1000 : active_lights = ulight ; 
				4'B0000 : active_lights = 4'b0; 
				default: active_lights = 4'b0 ; 	
	endcase
end
	

endmodule