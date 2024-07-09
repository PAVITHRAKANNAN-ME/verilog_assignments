module tb;
  reg [3:0] D;
  wire [1:0]y;  
  int i;
  binary_encoder be(D, y);
  initial begin
    D=4'b1; #1;
    for(i=0; i<4; i++) begin
      $display("D = %h, i= %0h, y = %0h", D, i, y);
      D=D<<1; #1;
    end
  end
  initial begin
    $dumpfile("binary_encoder.vcd");
    $dumpvars(1);
              end
endmodule
 
