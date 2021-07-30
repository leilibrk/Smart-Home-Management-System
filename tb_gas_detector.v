module tb_gas_detector;

	// Inputs
	reg arst;
	reg clk;
	reg din;

	// Outputs
	wire [2:0] dout;

	// Instantiate the Unit Under Test (UUT)
	GasDetectorSensor uut (
		.arst(arst), 
		.clk(clk), 
		.din(din), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		arst = 0;
		clk = 0;
		din = 0;
		//test sequence 1
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		//end test of sequence 1
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		//end test of sequence 2
		
		//test sequence 3
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=1;
		
		#10;
		arst=1;
		clk=0;
		din=1;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		
		#10;
		arst=1;
		clk=1;
		din=0;
		
		#10;
		arst=1;
		clk=0;
		din=0;
		//end test of sequence 3
		
	end
      
endmodule