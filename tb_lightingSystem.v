`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:33:26 01/29/2021
// Design Name:   LightingSystem
// Module Name:   C:/Users/minaa/Desktop/uni-term3/logiclab_5/FinalProject/tb_lightingSystem.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LightingSystem
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_lightingSystem;

	// Inputs
	reg [3:0] tcode;
	reg [3:0] ulight;
	reg [3:0] lenght;

	// Outputs
	wire [3:0] wshade;
	wire [3:0] lightnum;
	wire [15:0] lightstate;

	// Instantiate the Unit Under Test (UUT)
	LightingSystem uut (
		.tcode(tcode), 
		.ulight(ulight), 
		.lenght(lenght), 
		.wshade(wshade), 
		.lightnum(lightnum), 
		.lightstate(lightstate)
	);

	initial begin
		// Initialize Inputs
		tcode = 0;
		ulight = 0;
		lenght = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		tcode = 4'b0001;
		ulight[3:0] = 4'b0010;
		lenght = 4'b0100; 
		
		#5; 
		
		tcode = 4'b0010;
		ulight[3:0] = 4'b0010;
		lenght = 4'b0100; 
		
		#50;
      tcode=4'b0100;
		ulight=4'b0010;
		lenght=4'b0100;
		
		#50;
		tcode=4'b1000;
		ulight=4'b0100;
		lenght=4'b0100;

	end
      
endmodule

