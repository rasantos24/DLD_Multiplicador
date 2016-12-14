`timescale 1ns / 1ps
module FA_MULTISS_TB;

	// Inputs
	reg [3:0] mulcado;
	reg [3:0] multi;

	// Outputs
	wire [7:0] resu;

	// Instantiate the Unit Under Test (UUT)
	FA_MULTISS uut (
		.mulcado(mulcado), 
		.multi(multi), 
		.resu(resu)
	);

	initial begin
		// Initialize Inputs
		mulcado = 0;
		multi = 0;

		// Wait 100 ns for global reset to finish
		#100;
		mulcado = 4'b0110;
		multi = 4'b1001;
        
		// Add stimulus here

	end
      
endmodule

