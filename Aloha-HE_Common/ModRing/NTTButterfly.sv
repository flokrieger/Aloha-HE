`timescale 1ns / 1ps

// load and store logic needs to make sure to deliver inputs / twiddle factors and consume results in right point in time
// latency: 17 cc (CT, NTT)
// latency: 17 cc + 2 cc = 19 cc (GS, iNTT)
(* keep_hierarchy = `KEEP_HIERARCHY *)
module NTTButterfly #(
    K = 54, // bitwidth of largest modulus q
    W = 24, // word size
    M = 17 // bitwidth if q_m 
  )
  (
    input clk,
    input [K-1:0] ina,
    input [K-1:0] inb,
    input [M-1:0] q_m,
    input [3:0] current_k,
    input [K-1:0] twiddle_factor,
    input use_ct,

    output [K-1:0] outa,
    output [K-1:0] outb,
    output [K-1:0] out_mul,

    // integer multiplier interface:
    output [53:0] mult_a,
    output [53:0] mult_b,
    input [107:0] int_mult_result,
    input [23:0] int_mult_result_low
  );

  logic [K-1:0] q;
  assign q = {(13'h1fff >> (8-current_k)) , q_m , {(W-1){1'd0}} , 1'd1};

  logic [K-1:0] mul_in, mul_out;
  logic [K-1:0] add_b_in, add_out;
  ModAdd #(.K(K)) adder (.clk(clk), .ina(ina), .inb(add_b_in), .q(q), .out(add_out));
  assign add_b_in = use_ct ? mul_out : inb;

  logic [K-1:0] sub_b_in, sub_out;
  ModSub #(.K(K)) subtractor (.clk(clk), .ina(ina), .inb(sub_b_in), .q(q), .out(sub_out));
  assign sub_b_in = add_b_in;

  ModMul #(
    .K(54),
    .M(17)
  ) multiplier (
    .clk(clk),
    .ina(mul_in),
    .inb(twiddle_factor),
    .q_m(q_m),
    .current_k(current_k),
    .out(mul_out),

    .mult_a(mult_a),
    .mult_b(mult_b),
    .int_mult_result(int_mult_result),
    .int_mult_result_low(int_mult_result_low)
  );
  assign mul_in = use_ct ? inb : sub_out;

  logic [K-1:0] out_a_scaled, out_b_scaled;
  INTTScale #(.LOGQ(K), .W(W), .M(M)) out_a_scale (
    .clk(clk),
    .in(add_out),
    .q(q),
    .out(out_a_scaled)
  );
  INTTScale #(.LOGQ(K), .W(W), .M(M)) out_b_scale (
    .clk(clk),
    .in(mul_out),
    .q(q),
    .out(out_b_scaled)
  );

  assign outa = use_ct ? add_out : out_a_scaled;
  assign outb = use_ct ? sub_out : out_b_scaled;
  assign out_mul = mul_out;
endmodule
