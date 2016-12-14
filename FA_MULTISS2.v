module FA_MULTISS2(
		input [3:0] x,
		input [3:0] y,
		output [3:0] res,
		output ovf
    );

	 wire [3:0] w0;
	 wire [3:0] w1;
	 wire [3:0] w2;
	 wire [3:0] w3;
	 wire [3:0] w4;
	 wire [3:0] w5;
	 
	 FA_MULTISS2 add1(
		.mulcado(x[0]),
		.multi(y[0]),
		.resu(w0[1])
	 );
	 
	 FA_MULTISS2 add2(
		.mulcado(x[1]),
		.multi(y[1]),
		.resu(w1[2])
	 );
	 
	 FA_MULTISS2 add3(
		.mulcado(x[2]),
		.multi(y[2]),
		.resu(w2[3])
	 );
	 
	 FA_MULTISS2 add4(
		.mulcado(x[3]),
		.multi(y[3]),
		.resu(w3[4])
	 );
	 
	 FA_MULTISS2 add5(
		.mulcado(x[4]),
		.multi(y[4]),
		.resu(w4[5])
	 );
	 
	 FA_MULTISS2 add6(
		.mulcado(x[5]),
		.multi(y[5]),
		.resu(w5[6])
	 );

endmodule
