`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module DelayRegister #(
    BITWIDTH    = 8,
    CYCLE_COUNT = 1
  )
  (
    input                 clk,
    input  [BITWIDTH-1:0] in,
    output [BITWIDTH-1:0] out
  );

  logic [BITWIDTH-1:0] buffer [CYCLE_COUNT-1:0];
  always_ff @(posedge clk) begin
    buffer[0] <= in;
  end
  
  genvar i;
  generate
    for(i = 1; i < CYCLE_COUNT; i = i + 1) begin
      always_ff @(posedge clk) begin
        buffer[i] <= buffer[i-1];
      end
    end
  endgenerate
  
  assign out = buffer[CYCLE_COUNT-1];

endmodule
