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
---  Module Name: 32 Bit Adder/Subtractor
---  Description: Module1: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module AdderSubtractor32x32 (
	input  [31:0] A    , // input  [2's complement 32 bits]
	input  [31:0] B    , // input  [2's complement 32 bits]
	input         sel  , // input  [add:sel=0 || sub:sel=1] 
	output [31:0] S      // output [2's complement 32 bits]
);
	wire [31:0] w;
	add_sub g1(A[0],B[0],sel,sel,S[0],w[0]);
	add_sub g2(A[1],B[1],w[0],sel,S[1],w[1]);
	add_sub g3(A[2],B[2],w[1],sel,S[2],w[2]);
	add_sub g4(A[3],B[3],w[2],sel,S[3],w[3]);
	add_sub g5(A[4],B[4],w[3],sel,S[4],w[4]);
	add_sub g6(A[5],B[5],w[4],sel,S[5],w[5]);
	add_sub g7(A[6],B[6],w[5],sel,S[6],w[6]);
	add_sub g8(A[7],B[7],w[6],sel,S[7],w[7]);
	add_sub g9(A[8],B[8],w[7],sel,S[8],w[8]);
	add_sub g10(A[9],B[9],w[8],sel,S[9],w[9]);
	add_sub g11(A[10],B[10],w[9],sel,S[10],w[10]);
	add_sub g12(A[11],B[11],w[10],sel,S[11],w[11]);
	add_sub g13(A[12],B[12],w[11],sel,S[12],w[12]);
	add_sub g14(A[13],B[13],w[12],sel,S[13],w[13]);
	add_sub g15(A[14],B[14],w[13],sel,S[14],w[14]);
	add_sub g16(A[15],B[15],w[14],sel,S[15],w[15]);
	add_sub g17(A[16],B[16],w[15],sel,S[16],w[16]);
	add_sub g18(A[17],B[17],w[16],sel,S[17],w[17]);
	add_sub g19(A[18],B[18],w[17],sel,S[18],w[18]);
	add_sub g20(A[19],B[19],w[18],sel,S[19],w[19]);
	add_sub g21(A[20],B[20],w[19],sel,S[20],w[20]);
	add_sub g22(A[21],B[21],w[20],sel,S[21],w[21]);
	add_sub g23(A[22],B[22],w[21],sel,S[22],w[22]);
	add_sub g24(A[23],B[23],w[22],sel,S[23],w[23]);
	add_sub g25(A[24],B[24],w[23],sel,S[24],w[24]);
	add_sub g26(A[25],B[25],w[24],sel,S[25],w[25]);
	add_sub g27(A[26],B[26],w[25],sel,S[26],w[26]);
	add_sub g28(A[27],B[27],w[26],sel,S[27],w[27]);
	add_sub g29(A[28],B[28],w[27],sel,S[28],w[28]);
	add_sub g30(A[29],B[29],w[28],sel,S[29],w[29]);
	add_sub g31(A[30],B[30],w[29],sel,S[30],w[30]);
	add_sub g32(A[31],B[31],w[30],sel,S[31],w[31]);


endmodule