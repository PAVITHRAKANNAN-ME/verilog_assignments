module FS(input a,b,c, output diff,borrow);
  wire m,n,o;
  HS g1(a,b,m,n);
  HS g2(m,c,diff,o);
  assign borrow=n|o;
endmodule
  module HS(input a,b,output diff,borrow);
  assign diff=a^b;
  assign borrow=~a&b;
endmodule
