/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 5 
 File         : bin2gray.sv
 Author       : Michael Kirchhofer
 Description  : Implementation for the binary to gray code converter in
 combinational logic
------------------------------------------------------------------------------*/
module bin2gray (
    input logic [3:0] binary,
    output logic [3:0] gray
);

    assign gray = binary ^ (binary >> 1);
    
endmodule