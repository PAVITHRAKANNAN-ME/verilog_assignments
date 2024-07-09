module tb;
  reg [1:0] s;
  reg x;
  wire [3:0]y;
  demux bd(x,s,y);
  initial begin
    $monitor("x = %b,s=%b, y= %b", x,s, y);
    x=0;
    repeat(10) begin
      s=$random; #1;
      x=1;
      #1;
    end
  end
  initial begin
    $dumpfile(" demux.vcd");
    $dumpvars(1);
              end
endmodule
