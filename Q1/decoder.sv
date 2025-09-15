/*------------------------------------------------------------------------------
 Project      : Homework 1 - Question 1 
 File         : decoder.sv
 Author       : Michael Kirchhofer
 Description  : 4-to-16 one-hot decoder with binary enable input.
                I wasn't really sure how to interpret the instructions, as a 
                decoder and de-multiplexer 
                are different components so i added another binary input signal that gets routed to 
                the appropriate bit in the output signal.
------------------------------------------------------------------------------*/
module decoder (
    input   logic binary,
    input   logic [3:0] control,
    output  logic [15:0] one_hot
);
 
    always_comb begin
        one_hot = 16'b0; // Default to all 0
        case (control)
            4'b0000: one_hot[0] = binary;
            4'b0001: one_hot[1] = binary;
            4'b0010: one_hot[2] = binary;
            4'b0011: one_hot[3] = binary;
            4'b0100: one_hot[4] = binary;
            4'b0101: one_hot[5] = binary;
            4'b0110: one_hot[6] = binary;
            4'b0111: one_hot[7] = binary;
            4'b1000: one_hot[8] = binary;
            4'b1001: one_hot[9] = binary;
            4'b1010: one_hot[10] = binary;
            4'b1011: one_hot[11] = binary;
            4'b1100: one_hot[12] = binary;
            4'b1101: one_hot[13] = binary;
            4'b1110: one_hot[14] = binary;
            4'b1111: one_hot[15] = binary;
            default: one_hot = 16'b0; // Default to all 0
        endcase 
    end
endmodule