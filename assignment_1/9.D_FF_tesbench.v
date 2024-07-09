module tb;
  reg clk,rst;
  reg d;
  wire q,q_bar;
  d_ff uut(clk,rst,d,q,q_bar);
  always #1 clk=~clk;
  initial begin
    $monitor("rst = %b,d = %b,q=%b, q_bar= %b",rst, d,q,q_bar);
    clk=0;rst=0;
    d=0;
    #1;rst=1;
    repeat(6) begin
      d=$urandom_range(0,1); #2;
    end
    $finish;
  end
  initial begin
    $dumpfile(" d_ff.vcd");
    $dumpvars(1);
              end
endmodule
 
