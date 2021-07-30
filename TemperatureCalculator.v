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
---  Module Name: Temperature Calculator
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns 
module TemperatureCalculator (
	input  [31:0] tc_base  , // base [environment degree ]
	input  [ 7:0] tc_ref   , // ref  [system work voltage]
	input  [15:0] adc_data , // adc  [sensor digital data]
	output [31:0] tempc      // temp [temperature celsius]
);
	wire [15:0] p1;
	wire [31:0] p2;
	wire [15:0] data;
	wire sel,zero;
	
	assign zero=0;
	assign sel=adc_data[15];
	assign data={zero,adc_data[14:0]};
	
	Multiplier8x8 mult1(tc_ref,tc_ref,p1);
	Multiplier16x16 mult2(p1,data,p2);
	
	AdderSubtractor32x32 addSub(tc_base,p2>>6,sel,tempc);

endmodule