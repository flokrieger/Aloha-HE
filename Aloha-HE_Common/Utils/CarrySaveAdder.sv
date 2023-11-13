`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module CarrySaveAdder#(parameter BITWIDTH=108) (
    input  [BITWIDTH-1:0] a,
    input  [BITWIDTH-1:0] b,
    input  [BITWIDTH-1:0] c,
    output [BITWIDTH-1:0] carry,
    output [BITWIDTH-1:0] out
  );
  assign out = a ^ b ^ c;
  assign carry = (a & b) | (a & c) | (b & c);
endmodule
