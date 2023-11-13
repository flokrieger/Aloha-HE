`timescale 1ns / 1ps


// input: buffered
// output: buffered
// latency is 5 cc
(* keep_hierarchy = `KEEP_HIERARCHY *)
module IntMultiplier_54x54(
    input          clk,
    input  [ 53:0] a,
    input  [ 53:0] b,
    output [107:0] result,
    output [ 23:0] result_low // this is delivered one cycle in advance. speeds up following Montgomery reduction
  );
  
  
  logic [23:0] a_low, a_mid;
  logic [ 5:0] a_high;
  logic [33:0] b_low, b_high;
  assign a_low  = a[23:0];
  assign a_mid  = a[47:24];
  assign a_high = a[53:48];
  assign b_low  = b[33:0];
  assign b_high = {14'd0, b[53:34]};

  logic [57:0] al_x_bl;
  IntMultiplier_24x34 al_x_bl_mult(
            .clk(clk),
            .a(a_low),
            .b(b_low),
            .result(al_x_bl));
  logic [57:0] am_x_bl;
  IntMultiplier_24x34 am_x_bl_mult(
            .clk(clk),
            .a(a_mid),
            .b(b_low),
            .result(am_x_bl));
  logic [43:0] al_x_bh;
  logic [13:0] unused0;
  IntMultiplier_24x34 al_x_bh_mult(
            .clk(clk),
            .a(a_low),
            .b(b_high),
            .result({unused0, al_x_bh}));
  logic [43:0] am_x_bh;
  logic [13:0] unused1;
  IntMultiplier_24x34 am_x_bh_mult(
            .clk(clk),
            .a(a_mid),
            .b(b_high),
            .result({unused1, am_x_bh}));

  logic [39:0] ah_x_bl;
  logic [17:0] unused2;
  IntMultiplier_24x34 ah_x_bl_mult(
            .clk(clk),
            .a({18'd0, a_high}),
            .b(b_low),
            .result({unused2, ah_x_bl}));

  logic [25:0] ah_x_bh;
  logic [1:0] unused3;
  DSP_A_x_B_doublebuffer ah_x_bh_mult(
            .CLK(clk),
            .A({1'd0, b_high[19:0]}),
            .B({1'd0, a_high}),
            .P({unused3, ah_x_bh}));

  

  logic [59:0] carry1, out1;
  CarrySaveAdder #(.BITWIDTH(60)) csa1(
              .a({20'd0, ah_x_bl}),
              .b({6'd0, am_x_bh, 10'd0}),
              .c({ah_x_bh, 34'd0}), 
              .carry(carry1), 
              .out(out1));
  logic [81:0] carry2, out2;
  CarrySaveAdder #(.BITWIDTH(82)) csa2(
              .a({am_x_bl, 24'd0}),
              .b({4'd0, al_x_bh, 34'd0}),
              .c({24'd0, al_x_bl}),
              .carry(carry2), 
              .out(out2));
  logic [106:0] carry3, out3;
  CarrySaveAdder #(.BITWIDTH(107)) csa3(
              .a({out1, 47'd0}),
              .b({carry1[58:0], 48'd0}),
              .c({25'd0, carry2}),
              .carry(carry3), 
              .out(out3));
  logic [107:0] carry4, out4;
  CarrySaveAdder #(.BITWIDTH(108)) csa4(
              .a({carry3[105:0], 2'd0}),
              .b({out3, 1'd0}),
              .c({26'd0, out2}),
              .carry(carry4), 
              .out(out4));

  /////////// final pipeline stage /////////////////
  logic [54:0] carry_high_DP; 
  logic [53:0] out_high_DP;
  logic [54:0] result_low_DP;
  always_ff @(posedge clk) begin
    carry_high_DP <= carry4[107:53];
    out_high_DP <= out4[107:54];
    result_low_DP <= out4[53:0] + (carry4[52:0] << 1);
  end
  assign result_low = result_low_DP[23:0];
  
  logic [107:0] result_DP;
  always_ff @(posedge clk) begin
    result_DP[53:0] <= result_low_DP[53:0];
    result_DP[107:54] <= out_high_DP + carry_high_DP + result_low_DP[54];
  end

  assign result = result_DP;

endmodule