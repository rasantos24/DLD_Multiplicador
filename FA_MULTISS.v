module FA_MULTISS(
			input [3:0] mulcado,
			input [3:0] multi,
			output [7:0] resu
    );
	  
	 wire [7:0] p0;
	 wire [7:0] p1; 
	 wire [7:0] p2; 
	 wire [7:0] p3;
	 
	 assign p0 = {4'b0000, mulcado[0] & multi[0], mulcado[1] & multi[0], mulcado[2] & multi[0], mulcado[3] & multi[0]};
	 assign p1 = {3'b000, mulcado[0] & multi[1], mulcado[1] & multi[1], mulcado[2] & multi[1], mulcado[3] & multi[1], 1'b0};
	 assign p2 = {2'b00, mulcado[0] & multi[2], mulcado[1] & multi[2], mulcado[2] & multi[2], mulcado[3] & multi[2], 2'b00};
	 assign p3 = {1'b0, mulcado[0] & multi[3], mulcado[1] & multi[3], mulcado[2] & multi[3], mulcado[3] & multi[3], 3'b000};
	 
	 assign resu = p0 + p1 + p2 + p3;
	 
endmodule
