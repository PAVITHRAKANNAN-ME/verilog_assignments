module mux2_1(input a,b,input s, output reg y);
  wire m,n;
  and g1(m,a,~s);
  and g2(n,b,s);
  or g3(y,m,n);
endmodule
