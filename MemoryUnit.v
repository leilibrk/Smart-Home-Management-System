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
---  Module Name: Memory Unit
---  Description: Module6:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module MemoryUnit (
	input         arst , // async  reset
	input         clk  , // clock  posedge
	input         wren , // write  enabledata
	input  [34:0] din  , // input  data
	output [34:0] dout   // output data
);
    
	 register reg0(din[0],clk,arst,wren,dout[0]);
	 register reg1(din[1],clk,arst,wren,dout[1]);
	 register reg2(din[2],clk,arst,wren,dout[2]);
	 register reg3(din[3],clk,arst,wren,dout[3]);
	 register reg4(din[4],clk,arst,wren,dout[4]);
	 register reg5(din[5],clk,arst,wren,dout[5]);
	 register reg6(din[6],clk,arst,wren,dout[6]);
	 register reg7(din[7],clk,arst,wren,dout[7]);
	 register reg8(din[8],clk,arst,wren,dout[8]);
	 register reg9(din[9],clk,arst,wren,dout[9]);
	 register reg10(din[10],clk,arst,wren,dout[10]);
	 register reg11(din[11],clk,arst,wren,dout[11]);
	 register reg12(din[12],clk,arst,wren,dout[12]);
	 register reg13(din[13],clk,arst,wren,dout[13]);
	 register reg14(din[14],clk,arst,wren,dout[14]);
	 register reg15(din[15],clk,arst,wren,dout[15]);
	 register reg16(din[16],clk,arst,wren,dout[16]);
	
	register reg17(din[17] , clk , arst , wren , dout[17] ); 
	register reg18(din[18] , clk , arst , wren , dout[18] ); 
	register reg19(din[19] , clk , arst , wren , dout[19] );
	register reg20(din[20] , clk , arst , wren , dout[20] );
	register reg21(din[21] , clk , arst , wren , dout[21] ); 
	register reg22(din[22] , clk , arst , wren , dout[22] ); 
	register reg23(din[23] , clk , arst , wren , dout[23] ); 
	register reg24(din[24] , clk , arst , wren , dout[24] ); 
	register reg25(din[25] , clk , arst , wren , dout[25] ); 
	register reg26(din[26] , clk , arst , wren , dout[26] );
	register reg27(din[27] , clk , arst , wren , dout[27] ); 
	register reg28(din[28] , clk , arst , wren , dout[28] ); 
	register reg29(din[29] , clk , arst , wren , dout[29] ); 
	register reg30(din[30] , clk , arst , wren , dout[30] ); 
	register reg31(din[31] , clk , arst , wren , dout[31] ); 
	register reg32(din[32] , clk , arst , wren , dout[32] ); 
	register reg33(din[33] , clk , arst , wren , dout[33] ); 
	register reg34(din[34] , clk , arst , wren , dout[34] ); 
	
	endmodule
