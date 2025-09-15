/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 3 
 File         : tb_CSA_8.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the 8_bit CS Adder
------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module tb_CSA_8;

    logic [7:0] sum_out1;
    logic [7:0] A,B;
    logic carry;

    CSA_8 DUT_CSA (
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