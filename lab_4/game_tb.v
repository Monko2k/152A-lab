`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:13:08 10/26/2021
// Design Name:   clock
// Module Name:   C:/Project/lab3/clock_TB.v
// Project Name:  lab3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_TB;
	reg gameclk;
	reg clr;
	reg scoreclk;
	reg clb;
	reg [3:0] plrpos;



	// Outputs
	wire [8:0] barpos;
	wire [3:0] holepos;
	wire [15:0] timealive;
	wire [1:0] lives;

	// Instantiate the Unit Under Test (UUT)
	game game_ (
		.gameclk (gameclk),
		.clr (clr),
		.scoreclk (scoreclk),
		.clb (clb),
		.barpos (barpos),
		.holepos (holepos),
		.timealive (timealive),
		.lives (lives),
		.plrpos (plrpos)
	
	);

	initial begin
		// Initialize Inputs
		gameclk = 0;
		clr = 0;
		scoreclk = 0;
		clb = 0;
		plrpos = 3;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always #5 clb = ~clb;
	always #10 gameclk = ~gameclk;
	always #15 scoreclk = ~scoreclk;
	
      
endmodule

