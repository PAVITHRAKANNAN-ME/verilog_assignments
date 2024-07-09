module tb;
  reg a,b,c;
  wire diff,borrow;
  FS uut(a,b,c,diff,borrow);
  initial begin
    $monitor("a=%b, b=%b,c=%b, diff=%b,borrow=%b",a,b,c,diff,borrow);
     a=0;b=0;c=0;
    #1 a=0;b=0;c=1;
    #1 a=0;b=1;c=0;
    #1 a=0;b=1;c=1;
    #1;a=1;b=0;c=0;
    #1 a=1;b=0;c=1;
    #1 a=1;b=1;c=0;
    #1 a=1;b=1;c=1;
    #1;
  end 
  initial begin
    $dumpfile("FS.vcd");
    $dumpvars(1);
              end
endmodule
