/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 3 
 File         : tb_CSA_8.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the modified 8 bit CSA Adder with a carry input
------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module tb_CSA_8_carry;

    logic [7:0] sum_out1;
    logic [7:0] A,B;
    logic carry;

    // Identical Test bench as only the inner "wiring" changes 
    CSA_8_carry DUT_CSA_carry (
        .A(A),
        .B(B),
        .carry(carry),
        .sum(sum_out)
    );

    initial begin
        
        A = 8'b0;
        B = 8'b0;
        #5;
        
        A = 8'b00000010;
        B = 8'b00000001;
        #10;

        A = 8'b00100010;
        B = 8'b01000001;
        #10;

        A = 8'b00001111;
        #10
        B = 8'b00001111;
        #10;

        A = 8'b00000001;
        B = 8'b11111111;
        #10;

        A = 8'b11111111;
        B = 8'b11111111;
        #10;
        
        $finish;
    end

endmodule