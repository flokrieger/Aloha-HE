`timescale 1ns / 1ps


module IntMultPool(
    input clk,
    input grant_to_fft,

    input [53:0] a_fft [0:3],
    input [53:0] b_fft [0:3],
    input [53:0] a_ntt [0:3],
    input [53:0] b_ntt [0:3],
    output [107:0] result [0:3],
    output [23:0] result_low [0:3]
  );

  genvar i;
  generate
    for(i = 0; i < 4; i = i + 1)begin
      IntMultiplier_54x54 int_mult(
        .clk(clk),
        .a(grant_to_fft ? a_fft[i] : a_ntt[i]),
        .b(grant_to_fft ? b_fft[i] : b_ntt[i]),
        .result(result[i]),
        .result_low(result_low[i])
      );
    end
  endgenerate
endmodule
