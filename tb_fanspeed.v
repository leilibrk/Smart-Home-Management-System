`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:27:21 01/23/2021
// Design Name:   FanSpeed
// Module Name:   C:/Users/minaa/Desktop/uni-term3/logiclab_5/FinalProject/tb_fanspeed.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FanSpeed
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_fanspeed;

	// Inputs
	reg arst;
	reg clk;
	reg [7:0] speed;

	// Outputs
	wire pwm_data;

	// Instantiate the Unit Under Test (UUT)
	FanSpeed uut (
		.arst(arst), 
		.clk(clk), 
		.speed(speed), 
		.pwm_data(pwm_data)
	);
      
		initial
			begin
			arst <= 0 ; 
			speed <= 8'b00000010 ; 
         #0.1
			arst <= 1 ; 
			end
			
		initial 
			begin
				#0.1
				clk = 1'b0 ;
				#51.2 ;
			end
			
			always
				#0.1 clk = ~ clk ; 
	      
endmodule

