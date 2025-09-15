/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 1 
 File         : tb_decoder.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the 4 - 16 de-multiplexer
------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module tb_decoder;

    logic        binary;
    logic [3:0]  control;
    logic [15:0] one_hot;

    // DUT
    decoder DUT (
        .binary (binary),
        .control(control),
        .one_hot(one_hot)
    );

    initial begin
        // Reset to 0
        binary  = 0;
        control = 4'd0;
        #5;

        // Start shifting through 
        binary = 1;
        for (int i = 0; i < 16; i++) begin
            control = i;
            #5;
        end

        // Case 3: binary = 0
        binary  = 0;
        control = 4'd5;
        #5;

        $finish;
    end

endmodule
