/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 4 
 File         : tb_count_1.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the logic high counter
------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module tb_count_1;

    logic [3:0] a;
    logic [2:0] out;

    count_1 DUT_count_1 (
        .a(a),
        .out(out)
        );

    initial begin
        a = 4'b0;    
        #10;
        a = 4'b1010;    
        #10;
        a = 4'b0001;    
        #10;
        a = 4'b1001;    
        #10;
        a = 4'b1111;    
        #10;
        a = 4'b0000;    
        #10;
        $finish;
    end

endmodule