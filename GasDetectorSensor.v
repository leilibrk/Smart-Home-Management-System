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
---  Module Name: Gas Detector Sensor
---  Description: Module2:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module GasDetectorSensor (
	input        arst     , // async reset
	input        clk      , // clock posedge
	input        din      , // input data 
	output reg 	 [2:0] dout       // output data
);
	reg [4:0] Prstate,Nxtstate;
	parameter S0=5'b00000, S1=5'b00001 , S2=5'b00010 , S3=5'b00011 , S4=5'b00100 , S5=5'b00101 , 
	S6=5'b00110, S7=5'b00111 , S8=5'b01000 , S9=5'b01001 , S10=5'b01010 , S11=5'b01011 , S12=5'b01100 , 
	S13=5'b01101, S14=5'b01110 , S15=5'b01111, S16=5'b10000 , S17=5'b10001 , S18=5'b10010 , S19=5'b10011,
	S20=5'b10100 , S21=5'b10101 , S22=5'b10110 , S23=5'b10111 , S24=5'b11000 , S25=5'b11001 , S26=5'b11010;

	always @(posedge clk or negedge arst)
		if(~arst) 
			Prstate=S0;
		else Prstate=Nxtstate;
		
always @(Prstate or din)
		case(Prstate)
			S0:	if(din)  Nxtstate=S1;
					else Nxtstate=S0;
			S1:	if(~din) Nxtstate=S2;
					else Nxtstate=S1;
			S2:	if(din)  Nxtstate=S3;
					else 		Nxtstate=S4;
			S3:	if(din)  Nxtstate=S11;
					else		Nxtstate=S18;
			S4:	if(din)  Nxtstate=S5;
					else     Nxtstate=S0;
			S5:	if(din)  Nxtstate=S1;
					else     Nxtstate=S6;
			S6:	if(din)  Nxtstate=S3;
					else     Nxtstate=S7;
			S7:	if(din)  Nxtstate=S8;
					else     Nxtstate=S0;
			S8:	if(din)  Nxtstate=S1;
					else     Nxtstate=S9;
			S9:	if(din)  Nxtstate=S3;
					else     Nxtstate=S10;
			S10:	if(din)  Nxtstate=S8;
					else     Nxtstate=S0;
			S11:	if(din)  Nxtstate=S12;
					else     Nxtstate=S2;
			S12:	if(din)  Nxtstate=S1;
					else     Nxtstate=S13;
			S13:	if(din)  Nxtstate=S14;
					else     Nxtstate=S4;
			S14:	if(din)  Nxtstate=S11;
					else     Nxtstate=S15;
			S15:	if(din)  Nxtstate=S16; 
					else     Nxtstate=S4;
			S16:	if(din)  Nxtstate=S11;
					else     Nxtstate=S17;
			S17:	if(din)  Nxtstate=S19;
					else     Nxtstate=S21;
			S18:	if(din)  Nxtstate=S19;
					else     Nxtstate=S4;
			S19:	if(din)  Nxtstate=S11;
					else     Nxtstate=S20;
			S20:	if(din)  Nxtstate=S19;
					else     Nxtstate=S21;
			S21:	if(din)  Nxtstate=S22;
					else     Nxtstate=S0;
			S22:	if(din)  Nxtstate=S1;
					else     Nxtstate=S23;
			S23:	if(din)  Nxtstate=S3;
					else     Nxtstate=S24;
			S24:	if(din)  Nxtstate=S25;
					else     Nxtstate=S0;
			S25:	if(din)  Nxtstate=S26;
					else     Nxtstate=S9;
			S26:	if(din)  Nxtstate=S1;
					else     Nxtstate=S2;
			default : Nxtstate = S0 ; 
		endcase
	always @(Prstate or din or arst)
	if(~arst) dout = 3'b000; 
	else
		case(Prstate)
		S9 : if(~din)  dout[2] =1 ;
			  else dout = 0 ; 
		S16 : if(~din) dout[0] =1 ; 
		     else dout = 0 ; 
		S25 : if(din)  dout[1] =1 ; 
		     else dout = 0 ; 
		default : dout = 0 ; 
		endcase
		
endmodule