module tb;
  reg a,b;
  wire diff,borrow;
  HS uut(a,b,diff,borrow);
  initial begin
    $monitor("a=%b, b=%b, diff=%b,borrow=%b",a,b,diff,borrow);
     a=0;b=0;
    #2 a=0;b=1;
    #2 a=1;b=0;
    #2 a=1;b=1;
    #2;
  end 
  initial begin
    $dumpfile("HS.vcd");
    $dumpvars(1);
              end
endmodule
