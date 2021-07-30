/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831075
--  Student Name: Mina Beiki
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Cool Heat System Utils
---  Description: Module3:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator3 (
	input [2:0] A ,
	input [2:0] B ,
	input 		l ,
	input 		e ,
	input 		g ,
	output 		lt ,
	output 		et ,
	output 		gt 
);
wire c[23:0];
xnor
	g1(c[0],A[0],B[0]),
	g2(c[1],A[1],B[1]),
	g3(c[2],A[2],B[2]);
not
	g17(c[3],B[2]),
	g18(c[4],B[1]),
	g19(c[5],B[0]),
	g20(c[6],A[2]),
	g21(c[7],A[1]),
	g22(c[8],A[0]);
and
	g11(c[15],c[2],c[10]),
	g12(c[16],c[11],c[2],c[1]),
	g13(c[17],c[13],c[2]),
	g14(c[18],c[1],c[2],c[14]),
	g5(c[9],c[3],A[2]),
	g6(c[10],c[4],A[2]),
	g7(c[11],c[5],A[0]),
	g8(c[12],c[6],B[2]),
	g9(c[13],c[7],B[1]),
	g10(c[14],c[8],B[0]),
	g4(c[19],c[0],c[1],c[2]),
	g26(c[21],c[19],g),
	g27(c[23],c[19],l),
	g23(et,c[19],e);

or
	g15(c[20],c[15],c[16],c[9]),
	g16(c[22],c[18],c[17],c[12]),
	g24(gt,c[20],c[21]),
	g25(lt,c[22],c[23]);
	
endmodule 


module comparator8 (
	input [7:0] A ,
	input [7:0] B ,
	input 		l ,
	input 		e ,
	input 		g ,
	output 		lt ,
	output 		et ,
	output 		gt
);
	wire [5:0] w ; 
	wire [2:0] w2; 
	wire [2:0] w3; 

	assign w2[0] = A[6] ; 
	assign w2[1] = A[7] ; 
	assign w2[2] = 0 ; 
	assign w3[0] = B[6] ;
	assign w3[1] = B[7] ; 
	assign w3[2] = 0 ; 
	comparator3 cmp1(A[2:0],B[2:0],l,e,g,w[0],w[1],w[2]);
	comparator3 cmp2(A[5:3],B[5:3],w[0],w[1],w[2],w[3],w[4],w[5]);
	comparator3 cmp3(w2[2:0],w3[2:0],w[3],w[4],w[5],lt,et,gt);

endmodule
