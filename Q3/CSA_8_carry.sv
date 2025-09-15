/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 3 
 File         : CSA_8_carry.sv
 Author       : Michael Kirchhofer
 Description  : Unsigned Carry Adder
 - Disclaimer, the carry adder when using the 4 input adder is not really 
 working as intended, as it would need a carry input for correct addition
 because adder_b should also consider the adder_a carry bit. Either the module
 description needs to be changed or the circuit diagram, because the curcuit 
 diagram shows an adder WITH and carry bit input, so it does not match with 
 the module description. -> This version extends the module given by the
 instruction sheet with another c_in wire, which is can then replicate the given
 circuit diagram
------------------------------------------------------------------------------*/

module CSA_8_carry (
    input logic [7:0] A,B,
    output logic [7:0] sum,
    output logic carry
);
    logic carry_adder_a;
    logic [3:0] sum_a,sum_b;

    adder_4 adder_a(
        .A(A[3:0]),
        .B(B[3:0]),
        .carry_in(1'b0),
        .carry(carry_adder_a),
        .sum(sum_a)
    );

    adder_4 adder_b(
        .A(A[7:4]),
        .B(B[7:4]),
        .carry_in(carry_adder_a),
        .carry(carry),
        .sum(sum_b)
    );

    assign sum = {sum_b,sum_a};

endmodule

module adder_4 (
    input logic [3:0] A,B,
    input logic carry_in,
    output logic [3:0] sum,
    output logic carry
);
    assign {carry,sum} = A+B+carry_in;
endmodule