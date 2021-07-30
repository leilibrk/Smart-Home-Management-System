`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:05:05 01/26/2021
// Design Name:   ControlUnit
// Module Name:   C:/Users/minaa/Desktop/uni-term3/logiclab_5/FinalProject/tb_controlUni.v
// Project Name:  FinalProject
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_controlUni;

	// Inputs
	reg arst;
	reg clk;
	reg request;
	reg confirm;
	reg [1:0] password;
	reg [1:0] syskey;
	reg [34:0] configin;

	// Outputs
	wire [34:0] configout;
	wire write_en;
	wire [2:0] dbg_state;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.arst(arst), 
		.clk(clk), 
		.request(request), 
		.confirm(confirm), 
		.password(password), 
		.syskey(syskey), 
		.configin(configin), 
		.configout(configout), 
		.write_en(write_en), 
		.dbg_state(dbg_state)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		request = 0;
		confirm = 0;
		password = 0;
		syskey = 0;
		configin = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		arst=1;
		clk=1;
		request=1;
		
		#10;
        
		arst=1;
		clk=0;
		request=1;

		#10;

		arst=1;
		clk=1;
		password=2;
		syskey=2;
		confirm=1;
		
		#10;

		arst=1;
		clk=0;
		password=2;
		syskey=2;
		confirm=1;
		
		#10;

		arst=1;
		clk=1;
		configin=35'b11111111111111111111111111111111111;
		confirm=1;
		
		#10;

		arst=1;
		clk=0;
		configin=35'b11111111111111111111111111111111111;
		confirm=1;

		#10;

		arst=1;
		clk=1;
		
		
		#10;

		arst=1;
		clk=0;
		
		//back to state A
		#10;
		
		arst=1;
		clk=1;
		request=0;
		
		#10;
		
		arst=1;
		clk=0;
		request=0;
		
		#10;
		arst=1;
		clk=1;
		request=1;
		
		#10;
		arst=1;
		clk=0;
		request=1;
		
		#10;
		arst=1;
		clk=1;
		confirm=1;
		password=2'b01;
		syskey=2'b10;
		
		#10;
		arst=1;
		clk=0;
		confirm=1;
		password=2'b01;
		syskey=2'b10;
		
		#10;
		arst=1;
		clk=1;
		
		#10;
		arst=1;
		clk=0;
		
		#10;
		arst=1;
		clk=1;
		
		#10;
		arst=1;
		clk=0;
		
		//back to A : 
		
		#10;
		arst=1;
		clk=1;
		request=0;
		
		#10;
		arst=1;
		clk=0;
		request=0;
		
		#10;
		arst=1;
		clk=1;
		request=1;
		
		#10;
		arst=1;
		clk=0;
		request=1;
		
		#10;
		arst=1;
		clk=1;
		confirm=1;
		password=2'b10;
		
		#10;
		arst=1;
		clk=0;
		confirm=1;
		password=2'b10;
		
		
		#10;
		arst=1;
		clk=1;
		confirm=1;
		configin=35'b11111111111111111111111111111111111;
		
		#10;
		arst=1;
		clk=0;
		confirm=1;
		configin=35'b11111111111111111111111111111111111;
		
		#10;
		arst=1;
		clk=1;
		confirm=1;
		configin=35'b11111111111111111111111111111111111;
		
		#10;
		arst=1;
		clk=0;
		confirm=1;
		configin=35'b11111111111111111111111111111111111;
		
		
		

		

		
		
		end
		endmodule 
		