module binary_encoder(
  input [3:0] D,
  output [1:0] y); 
  assign y[1] = D[2] | D[3] ;
  assign y[0] = D[1] | D[3] ;
endmodule
