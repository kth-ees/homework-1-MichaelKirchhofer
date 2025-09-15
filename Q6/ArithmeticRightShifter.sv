/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 6 
 File         : ArithmeticRightShifter.sv
 Author       : Michael Kirchhofer
 Description  : Implementation of an arithmetic right shifter that does not use
 the <<< >>> operators.
------------------------------------------------------------------------------*/

module ArithmeticRightShifter #(parameter N = 5) 
(
    input logic [N-1:0] input_data,
    input logic [1:0] control,
    output logic [N-1:0] shifted_result
);
    always_comb begin
        case (control)
            2'd0: shifted_result = input_data; 
            2'd1: shifted_result = {{1{input_data[N-1]}}, input_data[N-1:1]}; 
            2'd2: shifted_result = {{2{input_data[N-1]}}, input_data[N-1:2]};
            2'd3: shifted_result = {{3{input_data[N-1]}}, input_data[N-1:3]}; // First 3 bits set to sign bit, and keep input from N-1 to bit 3 and discard the tail
            default: shifted_result = input_data;
        endcase
    end
endmodule