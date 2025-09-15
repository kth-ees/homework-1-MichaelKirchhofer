module multiplier #(parameter N) (
  input  logic [N-1:0]a,b,
  output logic [2*N-1:0] product
);

logic [N-1:0][N-1:0] partial_products;

generate
  for (genvar i = 0; i < N; i++) begin : gen_loop_i
    for (genvar j = 0; j < N; j++) begin : gen_loop_j
      assign partial_products[i][j] = a[i] & b[j];
    end
  end
endgenerate

// LSB is just the first partial product
assign product[0] = partial_products[0][0];

if (N >= 2) begin
  
end





endmodule
