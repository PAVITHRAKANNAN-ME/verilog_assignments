module binary_decoder(
  input [1:0] d,
  output reg [3:0] y);
  assign y[0]=~d[0]&~d[1];
  assign y[1]=d[0]&~d[1];
  assign y[2]=~d[0]&d[1];
  assign y[3]=d[0]&d[1];
endmodule
   
