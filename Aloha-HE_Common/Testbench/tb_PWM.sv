`timescale 1ns / 1ps


module tb_PWM();
  integer i, fd, fd_ref;
  logic clk = 1'b0, valid, done, rst = 1'd1;
  always #5 clk = ~clk;

  localparam N = 8192;

  logic [53:0] ina,inb,inc,dummy,out_r;
  logic [3:0] current_k;
  logic [16:0] qm;

  logic bram_intr;
  logic wea_a, wea_b, wea_c, wea_r;
  logic [12:0] wr_addr_a, wr_addr_b, wr_addr_c, wr_addr_r, rd_addr_a, rd_addr_b, rd_addr_c, rd_addr_r;
  logic [53:0] din_a,din_b,din_c,din_r,din_r1,dout_a,dout_b,dout_c,dout_r,dout_b1,dout_c1,dout_r1;
  ModRingPolyBRAM bram_a(.clka(clk), .clkb(clk), .addra(wr_addr_a), .addrb(rd_addr_a), .dina(din_a), .doutb(dout_a), .wea(wea_a));
  ModRingPolyBRAM bram_b0(.clka(clk), .clkb(clk), .addra(wr_addr_b), .addrb(rd_addr_b), .dina(din_b), .doutb(dout_b), .wea(wea_b));
  ModRingPolyBRAM bram_c0(.clka(clk), .clkb(clk), .addra(wr_addr_c), .addrb(rd_addr_c), .dina(din_c), .doutb(dout_c), .wea(wea_c));
  ModRingPolyBRAM bram_r0(.clka(clk), .clkb(clk), .addra(wr_addr_r), .addrb(rd_addr_r), .dina(din_r), .doutb(dout_r), .wea(wea_r));
  ModRingPolyBRAM bram_b1(.clka(clk), .clkb(clk), .addra(wr_addr_b), .addrb(rd_addr_b), .dina(din_b), .doutb(dout_b1), .wea(wea_b));
  ModRingPolyBRAM bram_c1(.clka(clk), .clkb(clk), .addra(wr_addr_c), .addrb(rd_addr_c), .dina(din_c), .doutb(dout_c1), .wea(wea_c));
  ModRingPolyBRAM bram_r1(.clka(clk), .clkb(clk), .addra(wr_addr_r), .addrb(rd_addr_r), .dina(din_r1), .doutb(dout_r1), .wea(wea_r));

  
  logic [53:0] pwm_bf_ina,pwm_bf_ina1;
  logic [53:0] pwm_bf_inb,pwm_bf_inb1;
  logic [53:0] pwm_twiddle_factor,pwm_twiddle_factor1;
  logic [53:0] pwm_result,pwm_result1;
  PWM #(
    .LOGQ(54),
    .LOGN(13),
    .W(24),
    .M(17)
  ) dut (
    .clk(clk),
    .rst(rst),
    .q_m(qm),
    .current_k(current_k),

    // a bram read port:
    .a_bram_rd_addr(rd_addr_a),
    .a_bram_rd_data(dout_a),

    // b bram read port:
    .b_bram_rd_addr(rd_addr_b),
    .b0_bram_rd_data(dout_b),
    .b1_bram_rd_data(dout_b1),

    // c bram read port:
    .c_bram_rd_addr(rd_addr_c),
    .c0_bram_rd_data(dout_c),
    .c1_bram_rd_data(dout_c1),

    // result bram write port:
    .result_bram_wr_addr(wr_addr_r),
    .result0_bram_wr_data(din_r),
    .result1_bram_wr_data(din_r1),
    .result_bram_wea(wea_r),

    .pwm_bf0_ina(pwm_bf_ina),
    .pwm_bf0_inb(pwm_bf_inb),
    .pwm_bf0_tw(pwm_twiddle_factor),
    .pwm_bf0_result(pwm_result),

    .pwm_bf1_ina(pwm_bf_ina1),
    .pwm_bf1_inb(pwm_bf_inb1),
    .pwm_bf1_tw(pwm_twiddle_factor1),
    .pwm_bf1_result(pwm_result1),

    .done(done)
  );


  UnifiedTransformation #(
    .FFT_ON_THE_FLY_GENERATION(0)
  ) transf (
    .clk(clk),
    .rst(1),

    // modulus info for NTT
    .current_k(current_k),
    .qm(qm),

    // connection for PWM module using NTT BF 0,2
    .rst_pwm(0), // if 0: NTT BF is granted to PWM module
    .pwm_bf0_ina(pwm_bf_ina),
    .pwm_bf0_inb(pwm_bf_inb),
    .pwm_bf0_tw(pwm_twiddle_factor),
    .pwm_bf0_result(pwm_result),
    .pwm_bf2_ina(pwm_bf_ina1),
    .pwm_bf2_inb(pwm_bf_inb1),
    .pwm_bf2_tw(pwm_twiddle_factor1),
    .pwm_bf2_result(pwm_result1)
  );

  initial begin
    fd = $fopen("../../../../../testvectors/PWM.txt", "r");
    fd_ref = $fopen("../../../../../testvectors/PWM.txt", "r");

    bram_intr = 1'd1;
    rst = 1;

    # 20;
    while($fscanf(fd, "%x %x\n", current_k, qm) == 2) begin
      qm = -qm;
      assert($fscanf(fd_ref, "%x %x\n", dummy, dummy) == 2);

      wea_a = 1;
      wea_b = 1;
      wea_c = 1;
      for(i = 0; i < N; i = i + 1) begin
        $fscanf(fd, "%x %x %x %x\n", din_a,din_b,din_c,dummy);
        wr_addr_a = i;
        wr_addr_b = i;
        wr_addr_c = i;
        @(posedge clk);
        #1;
      end
      wea_a = 0;
      wea_b = 0;
      wea_c = 0;
      
      bram_intr = 1'd0;

      #50;
      rst = 1'd0;

      @(posedge clk iff done == 1);
      rst = 1'd1;

      #50;
      bram_intr = 1'd1;
      for(i = 0; i < N; i = i + 1) begin
        $fscanf(fd_ref, "%x %x %x %x\n", dummy,dummy,dummy, out_r);
        rd_addr_r = i;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(dout_r == out_r);
        assert(dout_r1 == out_r);
        #1;
      end
      bram_intr = 1'd0;
    end
    #100;
    $finish;
  end


endmodule
