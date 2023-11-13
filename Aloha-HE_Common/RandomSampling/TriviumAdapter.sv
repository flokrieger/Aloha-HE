`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module TriviumAdapter(
    input clk,
    input rst,
    input [63:0] seed,
    output [63:0] random_out,
    output random_valid
  );

  logic random_en;
  trivium64_update trivium64_prng(
                 .clk(clk),
                 .load_seed(rst),
                 .seed(seed),
                 .tout(random_out),
                 .enable(random_en));

  logic [4:0] trivium_init_cntr;
  always @(posedge clk) begin
      if(rst)
          trivium_init_cntr <= 'd0;
      else if(~random_valid)
          trivium_init_cntr <= trivium_init_cntr + 1'd1;
  end

  assign random_en    = trivium_init_cntr != 5'd0;
  assign random_valid = trivium_init_cntr >= 5'd19;

endmodule