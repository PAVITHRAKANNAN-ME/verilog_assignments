module demux(
  input x,
  input [1:0]s,
  output [3:0] y);
  assign y[0]=~s[0]&~s[1]&x;
  assign y[1]=s[0]&~s[1]&x;
  assign y[2]=~s[0]&s[1]&x;
  assign y[3]=s[0]&s[1]&x;
endmodule
   
