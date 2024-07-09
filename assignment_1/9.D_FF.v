module d_ff(
  input clk,rst,
  input d,
  output reg q,q_bar);
  always @(negedge clk)
    begin
      if(!rst) q<=0;
      else
        q<=d;
    end
  assign q_bar=~q;
endmodule
