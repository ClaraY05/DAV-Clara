// Name: Clara Yee
// Team: 15
// Class: UCLA IEEE - DAV
// Project Name: Lab 1 - miniALU_top
// Spec: https://docs.google.com/document/d/1tnDai7YhGOkb_zPJxQUWJ4xnXCeODnWRTt04ognFlSY/edit?tab=t.0
// Last Updated: 12/17/2024

// 1.1 A NEW FILE IS BORN
// define inputs and outputs in module declaration
module 
	miniALU_top(
	input [9:0] switches,            // defines 10 switches from MSB to LSB
	output logic [9:0] leds          // defines 10 switches from MSB to LSB
	);

	assign leds[9:0] = switches[9:0];    // assign output leds to switches

	// 1.2 A BENCH FOR TESTING
	// write testbench to determine if program functions correctly

	always_comb begin                 // should always write combinational logic here
		leds [9:0] = switches[9:0];   // 10 bit leds take on value of 10 bit switches
	end
	
	
endmodule