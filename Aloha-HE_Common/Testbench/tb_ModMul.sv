`timescale 1ns / 1ps


module tb_ModMul();

  logic clk = 1'b0, start = 1'd0, done;
  always #5 clk = ~clk;


  localparam K = 54;
  localparam W = 24;
  localparam M = 17;
  localparam R = (1<<72);

  localparam MUL_LAT = 15;

  logic [K-1:0] a;
  logic [K-1:0] b;
  logic [M-1:0] q_m;
  logic [3:0] current_k;
  logic [K-1:0] result, expected;
  logic [2*K-1:0] tmp;
  logic [73+K-1:0] tmp1;

  logic [53:0] mult_a;
  logic [53:0] mult_b;
  logic [107:0] int_mult_result;
  logic [23:0] int_mult_result_low;
  IntMultiplier_54x54 mult(.clk(clk), .a(mult_a), .b(mult_b), .result(int_mult_result), .result_low(int_mult_result_low));
  ModMul dut(.clk(clk), .ina(a), .inb(b), .q_m(q_m), .current_k(current_k), .out(result), .mult_a(mult_a), .mult_b(mult_b), .int_mult_result(int_mult_result), .int_mult_result_low(int_mult_result_low));
  DelayRegister #(.CYCLE_COUNT(MUL_LAT), .BITWIDTH(1)) start_delay (.clk(clk), .in(start), .out(done));

  logic [K-1:0] expected_delayed;
  DelayRegister #(.CYCLE_COUNT(MUL_LAT), .BITWIDTH(K)) expected_delay(.clk(clk), .in(expected), .out(expected_delayed));

  logic [M-1:0] pos_q_ms [0:8 ]= {17'h9,17'h1,17'h28,17'h5,17'h1c,17'h7,17'hd,17'ha,17'h1};
  logic  [M-1:0] q_ms [0:8] = {17'h1fff7,17'h1ffff,17'h1ffd8,17'h1fffb,17'h1ffe4,17'h1fff9,17'h1fff3,17'h1fff6,17'h1ffff};
  logic [K-1:0] r_invs [0:8] = {54'h1fffe75002d5,54'h7ffffec00001,54'hfff99900f9b1,54'h1ffffcd00006a,54'h3fff3b40054e1,54'h7fffeb10000e8,54'hffff6630006f6,54'h1ffff776000169,54'hfbfffff81};
  logic  [K-1:0] current_q;
  assign current_q = (54'd1 << (current_k+46)) - (pos_q_ms[current_k] << W) + 1;
  assign q_m = q_ms[current_k];

  always @(posedge clk) begin
    if(done) begin
      assert(result == expected_delayed);
    end
  end

  initial begin
    #50;

    for (current_k = 4'd0; current_k < 4'd9; current_k = current_k + 4'd1) begin
      #100;
      // edgecases:
      a = 54'b0;
      b = {$urandom(), $urandom()} % current_q;
      expected = 54'd0;
      start = 1'd1;
      @(posedge clk);
      #1;
      start = 1'd0;
      @(posedge clk);
      #1;
      
      a = {$urandom(), $urandom()} % current_q;
      b = 54'b0;
      expected = 54'd0;
      start = 1'd1;
      @(posedge clk);
      #1;
      start = 1'd0;
      @(posedge clk);
      #1;

      // non-pipelined:
      repeat(1000) begin
        a = {$urandom(), $urandom()} % current_q;
        b = {$urandom(), $urandom()} % current_q;
        tmp = a * b;
        tmp = tmp % current_q;
        tmp = tmp * r_invs[current_k];
        expected = tmp % current_q;

        start = 1'd1;
        @(posedge clk);
        #1;
        start = 1'd0;
        @(posedge clk);
        #1;
      end
      
      // pipelined:
      repeat(100) begin
        start = 1'b1;
        a = 54'b0; //$urandom();
        b = 54'b0; //{$urandom(), $urandom()};
        tmp = a * b;
        expected = tmp % current_q;
        @(posedge clk);
        #1;
        
        repeat(40) begin
          a = {$urandom(), $urandom()} % current_q;
          b = {$urandom(), $urandom()} % current_q;
          tmp = a * b;
          tmp = tmp % current_q;
          tmp = tmp * r_invs[current_k];
          expected = tmp % current_q;
          @(posedge clk);
          #1;
        end
      
        start = 1'b0;
        @(posedge clk);
        #1;
        @(posedge clk);
        #1;
        @(posedge clk);
        #1;
      end

      #200;
    end
    #100;
    $finish;
  end

endmodule
