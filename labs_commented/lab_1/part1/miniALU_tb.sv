// Name: Clara Yee
// Team: 15
// Class: UCLA IEEE - DAV
// Project Name: Lab 1 - miniALU_tb
// Spec: https://docs.google.com/document/d/1tnDai7YhGOkb_zPJxQUWJ4xnXCeODnWRTt04ognFlSY/edit?tab=t.0
// Last Updated: 3/28/2025

// 1.2 A BENCH FOR TESTING

`timescale 1ns/1ns // assign timescale (time units of 1ns with 1ns precision)

module 
	miniALU_tb(
		output [9:0]leds
	);

	logic[9:0] a = 10'b1111110101;   // assign signal w/ dummy value

	// instantiate top module as DUT
	miniALU_top(
		.switches(a),
		.leds(leds)
		);
endmodule