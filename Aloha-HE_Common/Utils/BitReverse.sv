`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module BitReverse #(BITWIDTH = 0)(
    input  [BITWIDTH-1:0] in,
    output [BITWIDTH-1:0] out
  );

  genvar i;
  generate
    for (i = 0; i < BITWIDTH; i = i+1) begin
      assign out[i] = in[BITWIDTH-1-i];
    end
  endgenerate
endmodule
