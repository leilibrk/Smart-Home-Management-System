`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:27:38 02/04/2021
// Design Name:   LightDance
// Module Name:   C:/Users/Leili/Desktop/az manteghi/FinalProject/tb_lightDance.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: LightDance
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_lightDance;

	// Inputs
	reg arst;
	reg clk;
	reg din;
	reg load;
	reg [7:0] pdata;

	// Outputs
	wire [7:0] qdata;

	// Instantiate the Unit Under Test (UUT)
	LightDance uut (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.load(load), 
		.pdata(pdata), 
		.qdata(qdata)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		din = 0;
		load = 0;
		pdata = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		arst=1;
		clk=1;
		din=1;
		load=0;
		pdata=8'b11110000;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;
		#100;
		clk=0;
		#100;
		clk=1;

		//loading
		#100;
		pdata=8'b11111111;
		clk=0;
		load=1;
		#100;
		clk=1;
	end
      
endmodule

