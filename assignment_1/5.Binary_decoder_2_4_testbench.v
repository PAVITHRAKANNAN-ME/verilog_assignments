module tb;
  reg [1:0] D;
  wire [3:0] y;
  binary_decoder bd(D, y);
  initial begin
    $monitor("D = %b, y = %b", D, y);
    repeat(10) begin
      D=$random; #1;
    end
  end
  initial begin
    $dumpfile(" binary_decoder.vcd");
    $dumpvars(1);
              end
endmodule
 
