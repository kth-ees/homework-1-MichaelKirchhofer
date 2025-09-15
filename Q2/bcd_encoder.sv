/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 2 
 File         : bcd_encoder.sv
 Author       : Michael Kirchhofer
 Description  : Binary Decimal Encoder
------------------------------------------------------------------------------*/
module bcd_encoder(
    input   logic [3:0] binary,
    output  logic [3:0] bcd,
    output  logic carry
);
    always_comb begin
        if(binary >= 4'd10) begin
            carry = 1'b1;
            bcd = binary - 4'd10;
        end else begin
            carry = 1'b0;
            bcd = binary;
        end
    end
endmodule