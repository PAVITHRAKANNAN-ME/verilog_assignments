module binary_encoder(
  input [3:0] D,
  output reg [1:0] y); 
  always @(*)begin
    case (D)
    1 : y = 0; 
    2 : y  = 1; 
    4 : y  = 2; 
    8 : y  = 3; 
endcase
  end
endmodule
