/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 6 
 File         : tb_ArithmeticRightShifter.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the arithmetic right shifter, tests with 3 bit
 sizes.
------------------------------------------------------------------------------*/

`timescale 1ns/1ps

module tb_ArithmeticRightShifter;

    localparam int size = 16;
    logic [size-1:0] input_data_16,shifted_result_16;
    logic [(size/2)-1:0] input_data_8,shifted_result_8;
    logic [(size/4)-1:0] input_data_4,shifted_result_4;
    logic [1:0] control;

    ArithmeticRightShifter DUT_Shifter_4(
        .input_data(input_data_4),
        .shifted_result(shifted_result_4),
        .control(control)
    );
    ArithmeticRightShifter #(.N(size/2)) DUT_Shifter_8(
        .input_data(input_data_8),
        .shifted_result(shifted_result_8),
        .control(control)
    );
    ArithmeticRightShifter #(.N(size)) DUT_Shifter_16(
        .input_data(input_data_16),
        .shifted_result(shifted_result_16),
        .control(control)
    );

    initial begin
        input_data_16 = 16'b0;
        input_data_8 = 8'b0;
        input_data_4 = 4'b0;
        control = 2'b0;
        #5

        control = 2'b01;
        input_data_16 = 16'b1000000000000000;
        input_data_8 = 8'b10000000;
        input_data_4 = 4'b1000;
        #5
        
        control = 2'b10;
        #5

        control = 2'b11;
        #5

        control = 2'b00;
        #5
        control = 2'b10;
        input_data_16 = 16'b0000001110000000;
        input_data_8 = 8'b10011001;
        input_data_4 = 4'b0010;
        #5
        control = 2'b01;
        input_data_16 = 16'b000100100100000;
        input_data_8 = 8'b1011000;
        input_data_4 = 4'b0101;
        #5

        $finish;
    end
    
endmodule