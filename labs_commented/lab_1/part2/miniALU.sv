// Name: Clara Yee
// Team: 15
// Class: UCLA IEEE - DAV
// Project Name: Lab 1 - miniALU
// Spec: https://docs.google.com/document/d/1tnDai7YhGOkb_zPJxQUWJ4xnXCeODnWRTt04ognFlSY/edit?tab=t.0
// Last Updated: 3/28/2025

// 2.1 ALU LOGIC
module miniALU (
    // TODO: define your input and output 
        // INPUT
        input [3:0] op1, // first operand
        input [3:0] op2, // second operand
        input operation, // select between 2 types of operation 
        // Low = add / subtract, High = left or right shift
        input sign,       // toggle sign of second 
        // low = positive operation, high = negative operation

        // OUTPUT
        output [19:0] result // output of operation
    );

    // The following block contains the logic of your combinational circuit
    always_comb begin
        // TODO: write the logic for your miniALU here
        if(operation)begin // if add or subtract
            if(sign)begin // if subtract
                result = op1 >> op2;
            end
            else begin  // otherwise add
                result = op1 << op2;
            end
        end
        else begin // otherwise left or right shift
            if(sign)begin // if right 
                result = op1 - op2;
            end
            else begin  // otherwise left shift
                result = op1 + op2;
            end
        end
    end
endmodule