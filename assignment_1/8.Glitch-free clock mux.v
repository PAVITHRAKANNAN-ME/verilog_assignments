module glitch-free clock mux(
  input pclk_62_5mhz,
  input pclk_250mhz,
  input [1:0]rate,
  output reg clk_out);
  always @(*)
case (rate)
            2'b00: clk_out = pclk_62_5mhz;
            2'b10: clk_out = pclk_250mhz;
            default: clk_out = pclk_62_5mhz;
        endcase
endmodule
