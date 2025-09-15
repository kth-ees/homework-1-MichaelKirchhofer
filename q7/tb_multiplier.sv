/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 7 
 File         : tb_multiplier.sv
 Author       : Michael Kirchhofer
 Description  : Testbench for the Multiplier module
------------------------------------------------------------------------------*/
`timescale 1ns/1ps

module tb_multiplier;

  // DUT: N = 4 (outputs 8 bits)

  logic signed [3:0]  a4, b4;
  logic signed [7:0]  p4;

  multiplier #(.N(4)) dut4 (
    .a(a4),
    .b(b4),
    .product(p4)
  );

  // DUT: N = 5 (outputs 10 bits)
 
  logic signed [4:0]  a5, b5;
  logic signed [9:0]  p5;

  multiplier #(.N(5)) dut5 (
    .a(a5),
    .b(b5),
    .product(p5)
  );

  // DUT: N = 8 (outputs 16 bits)
  logic signed [7:0]  a8, b8;
  logic signed [15:0] p8;

  multiplier #(.N(8)) dut8 (
    .a(a8),
    .b(b8),
    .product(p8)
  );

  initial begin

    a4 = '0; b4 = '0;
    a5 = '0; b5 = '0;
    a8 = '0; b8 = '0;

    // set #1
    #10;
    a4 = 4'sd3;     b4 = 4'sd5;       // 3  * 5   = 15
    a5 = 5'sd15;    b5 = 5'sd15;      // 15 * 15  = 225
    a8 = 8'sd25;    b8 = 8'sd13;      // 25 * 13  = 325

    // set #2
    #10;
    a4 = -4'sd7;  b4 = 4'sd6;       // -7 * 6   = -42
    a5 = -5'sd16; b5 = 5'sd3;       // -16* 3   = -48
    a8 = -8'sd128;b8 = 8'sd2;       // -128* 2  = -256

    // set #3
    #10;
    a4 = -4'sd8;  b4 = -4'sd1;    // -8 * -1  = 8
    a5 = -5'sd7;  b5 = -5'sd8;    // -7 * -8  = 56
    a8 = -8'sd45; b8 = -8'sd7;    // -45* -7  = 315

    // set #4
    #10;
    a4 = 4'sd7;     b4 = -4'sd3;    // 7  * -3  = -21
    a5 = 5'sd12;    b5 = -5'sd5;    // 12 * -5  = -60
    a8 = 8'sd127;   b8 = -8'sd64;   // 127* -64 = -8128

    #20;
    $finish;
  end

endmodule
