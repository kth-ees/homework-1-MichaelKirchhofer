/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 4
 File         : count_1.sv
 Author       : Michael Kirchhofer
 Description  : Logic 1 counter in 4 bit binary number
------------------------------------------------------------------------------*/

module count_1(
    input logic [3:0] a,
    output logic [2:0] out
);
    /* Implementation 1 -> Modelsim simulates correctly, it might not be synthesizable
    depending on the synth tool
    assign out = $countbits(a,1);
    */

    always_comb begin
        out = 0;
        for (int i = 0; i < 4; i++) begin
            out += a[i];
        end
    end

endmodule