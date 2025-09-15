/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 5 
 File         : tb_bin2gray_mux.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the binary to gray code converter - multiplexer
 version
------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module tb_bin2gray_mux;

    logic [3:0] binary;
    logic [3:0] gray;

    bin2gray_mux DUT_bin2gray_mux (
        .binary(binary),
        .gray(gray)
        );

    initial begin
        binary = 4'b0;    
        #5;
        for (int i = 0; i < 16; i++) begin
            binary = i[3:0];
            #5;
        end
        $finish;
    end

endmodule