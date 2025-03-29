// Name: Clara Yee
// Team: 15
// Class: UCLA IEEE - DAV
// Project Name: Lab 1 - miniALU
// Spec: https://docs.google.com/document/d/1tnDai7YhGOkb_zPJxQUWJ4xnXCeODnWRTt04ognFlSY/edit?tab=t.0
// Last Updated: 3/28/2025

// 2.1 ALU Testing
`timescale 1ns/1ns // assign timescale (time units of 1ns with 1ns precision)

module 
	miniALU_tb(
		output [19:0] result
	);

    // inputs
	logic[3:0] operand1;
    logic[3:0] operant2;
    logic operation;
    logic sign;

    // create tasks to check each operation
    task addition();
        operation <= 0;
        sign <= 0;
    end task

    task subtraction();
        operation <= 0;
        sign <= 1;
    end task

    task leftShift();
        operation <= 1;
        sign <= 0;
    end task

    task rightShift();
        operation <= 1;
        sign <= 1;
    end task

	// instantiate top module as DUT
	miniALU(
		.operand1(operand1),
		.operand2(operand2),
        .operation(operation),
        .sign(sign)
		);

    // simulation tests
    initial begin
        for (int i = 0; i < 15; i++) begin
			op1[3:0] = i[3:0];
			for (int j = 0; j < 15; j++) begin
				op2[3:0] = j[3:0];
				addition_operation();
				#5 assert (result[19:0] == (op1 + op2));

				subtraction_operation();
				#5 assert (result[19:0] == (op1 - op2));

				leftShift_operation();
				#5 assert (result[19:0] == (op1 << op2));

				rightShift_operation();
				#5 assert (result[19:0] == (op1 >> op2));
			end
		end
		#20 $stop; // after 20 ns, stop the simulation
    end
endmodule