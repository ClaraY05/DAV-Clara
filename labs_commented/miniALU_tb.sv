// Name: Clara Yee
// Team: 15
// Class: UCLA IEEE - DAV
// Project Name: Lab 1 - miniALU_tb
// Spec: https://docs.google.com/document/d/1tnDai7YhGOkb_zPJxQUWJ4xnXCeODnWRTt04ognFlSY/edit?tab=t.0
// Last Updated: 12/17/2024

// 1.2 A BENCH FOR TESTING
`timescale 1ns/1ns // assign timescale

module 
	miniALU_tb(
		output [9:0]leds
	);

	logic[9:0] a = 10'b1111111111;   // assign signal as binary
	logic[9:0] b = 10'd10;           // assign signal as decimal

	leds UUI(.switches(a), .leds(leds)); // instantiating module

	initial begin
		#20 a[4:0] = 5'b00000;
		assert (leds[4:0] == 5'b0);
		#20 $stop;
	end
endmodule