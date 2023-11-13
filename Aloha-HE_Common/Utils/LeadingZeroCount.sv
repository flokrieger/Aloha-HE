`timescale 1ns / 1ps

(* keep_hierarchy = `KEEP_HIERARCHY *)
module LeadingZeroCount #(
    parameter BITWIDTH = 24
  )
  (
    input  logic [BITWIDTH-1:0]         in,
    output logic [$clog2(BITWIDTH)-1:0] out,
    output logic                        input_is_zero
  );
  
  logic [BITWIDTH:0] bits_set;
  assign bits_set[BITWIDTH] = 1'b1;
  
  genvar i;
  generate
    for(i = BITWIDTH-1; i >= 0; i = i-1) begin
        assign bits_set[i] = ~(~bits_set[i+1] | in[i]);
    end
  endgenerate
  
  logic [$clog2(BITWIDTH)-1:0] result;
  integer j;
  always_comb begin
    result = 0;
    for(j = BITWIDTH-1; j >= 0; j = j-1) begin
      result = result + bits_set[j];
    end
  end
  assign out = result;
  assign input_is_zero = bits_set[0];
  
endmodule
