/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 2 
 File         : tb_decoder.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the BCD Encoder
------------------------------------------------------------------------------*/

`timescale 1ns/1ps

module tb_bcd_encoder;
    
    logic [3:0] binary;
    logic [3:0] bcd;
    logic carry; 

    bcd_encoder DUT(
        .binary (binary),
        .bcd (bcd),
        .carry(carry)
    );

    initial begin
        // Set binary to 0
        binary = 4'b0;
        #5;

        // Start running throught the encoder sequence
        for (int i = 0; i < 15; i++) begin
            binary = i[3:0];
            #5;
        end
        
        // Set binary to 0
        binary =4'b0;
        #5;

        $finish;

    end

endmodule