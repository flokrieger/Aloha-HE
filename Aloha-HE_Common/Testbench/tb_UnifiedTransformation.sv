`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

module tb_UnifiedTransformation();


  //////////////////////////
  localparam ON_THE_FLY_GENERATION = 1;
  localparam FORWARD_TRANSFORM = 0;
  localparam DO_FFT = 1; // 1: FFT, 0: NTT
  /////////////////////////

  localparam TW_ROM_ADDR_BITS = 9;
  localparam LOGN = 13;
  localparam LOGQ_MAX = 54;
  localparam M = 17;

  integer i, fd;
  logic clk = 1'b0, rst = 1'd1;
  always #5 clk = ~clk;

  localparam N = 8192;
  localparam ADDR_WIDTH = $clog2(N)-1;

  logic bram_intr, done;
  logic wea_0, wea_1, wea_0_tb, wea_1_tb;
  logic [LOGN-2:0] addr_0_a, addr_0_b, addr_1_a, addr_1_b, addr_0_a_tb, addr_0_b_tb, addr_1_a_tb, addr_1_b_tb;
  logic [2*`OVERALL_BITS-1:0] din_0_a, din_0_a_tb, dout_0_b, din_1_a, din_1_a_tb, dout_1_b;

  SharedFFTBrams shared_brams(
      .clk(clk),
      .is_fft(1),
      .fft_rd_addr_bank0(bram_intr ? addr_0_b_tb : addr_0_b),
      .fft_wr_addr_bank0(bram_intr ? addr_0_a_tb :addr_0_a),
      .fft_rd_data_bank0(dout_0_b),
      .fft_wr_data_bank0(bram_intr ? din_0_a_tb : din_0_a),
      .fft_wea_bank0(bram_intr ? wea_0_tb : wea_0),
      .fft_rd_addr_bank1(bram_intr ? addr_1_b_tb : addr_1_b),
      .fft_wr_addr_bank1(bram_intr ? addr_1_a_tb :addr_1_a),
      .fft_rd_data_bank1(dout_1_b),
      .fft_wr_data_bank1(bram_intr ? din_1_a_tb : din_1_a),
      .fft_wea_bank1(bram_intr ? wea_1_tb : wea_1)
    );

  logic wea_0_ntt, wea_1_ntt, wea_0_ntt_tb, wea_1_ntt_tb;
  logic [LOGN-2:0] addr_0_a_ntt, addr_0_b_ntt, addr_1_a_ntt, addr_1_b_ntt, addr_0_a_ntt_tb, addr_0_b_ntt_tb, addr_1_a_ntt_tb, addr_1_b_ntt_tb;
  logic [LOGQ_MAX-1:0] din_0_a_ntt, din_0_a_ntt_tb, dout_0_b_ntt, din_1_a_ntt, din_1_a_ntt_tb, dout_1_b_ntt;
  NTTPolyBank ntt_bank0(.clka(clk), .clkb(clk), .addra(bram_intr ? addr_0_a_ntt_tb : addr_0_a_ntt), .addrb(bram_intr ? addr_0_b_ntt_tb : addr_0_b_ntt), .dina(bram_intr ? din_0_a_ntt_tb : din_0_a_ntt), .doutb(dout_0_b_ntt), .wea(bram_intr ? wea_0_ntt_tb : wea_0_ntt));
  NTTPolyBank ntt_bank1(.clka(clk), .clkb(clk), .addra(bram_intr ? addr_1_a_ntt_tb : addr_1_a_ntt), .addrb(bram_intr ? addr_1_b_ntt_tb : addr_1_b_ntt), .dina(bram_intr ? din_1_a_ntt_tb : din_1_a_ntt), .doutb(dout_1_b_ntt), .wea(bram_intr ? wea_1_ntt_tb : wea_1_ntt));

  logic wea_2_ntt, wea_3_ntt;
  logic [LOGN-2:0] addr_2_a_ntt, addr_2_b_ntt, addr_3_a_ntt, addr_3_b_ntt;
  logic [LOGQ_MAX-1:0] din_2_a_ntt, dout_2_b_ntt, din_3_a_ntt, dout_3_b_ntt;
  NTTPolyBank ntt_bank2(.clka(clk), .clkb(clk), .addra(bram_intr ? addr_0_a_ntt_tb : addr_2_a_ntt), .addrb(bram_intr ? addr_0_b_ntt_tb : addr_2_b_ntt), .dina(bram_intr ? din_0_a_ntt_tb : din_2_a_ntt), .doutb(dout_2_b_ntt), .wea(bram_intr ? wea_0_ntt_tb : wea_2_ntt));
  NTTPolyBank ntt_bank3(.clka(clk), .clkb(clk), .addra(bram_intr ? addr_1_a_ntt_tb : addr_3_a_ntt), .addrb(bram_intr ? addr_1_b_ntt_tb : addr_3_b_ntt), .dina(bram_intr ? din_1_a_ntt_tb : din_3_a_ntt), .doutb(dout_3_b_ntt), .wea(bram_intr ? wea_1_ntt_tb : wea_3_ntt));

  logic wea_4_ntt, wea_5_ntt;
  logic [LOGN-2:0] addr_4_a_ntt, addr_4_b_ntt, addr_5_a_ntt, addr_5_b_ntt;
  logic [LOGQ_MAX-1:0] din_4_a_ntt, dout_4_b_ntt, din_5_a_ntt, dout_5_b_ntt;
  NTTPolyBank ntt_bank4(.clka(clk), .clkb(clk), .addra(bram_intr ? addr_0_a_ntt_tb : addr_4_a_ntt), .addrb(bram_intr ? addr_0_b_ntt_tb : addr_4_b_ntt), .dina(bram_intr ? din_0_a_ntt_tb : din_4_a_ntt), .doutb(dout_4_b_ntt), .wea(bram_intr ? wea_0_ntt_tb : wea_4_ntt));
  NTTPolyBank ntt_bank5(.clka(clk), .clkb(clk), .addra(bram_intr ? addr_1_a_ntt_tb : addr_5_a_ntt), .addrb(bram_intr ? addr_1_b_ntt_tb : addr_5_b_ntt), .dina(bram_intr ? din_1_a_ntt_tb : din_5_a_ntt), .doutb(dout_5_b_ntt), .wea(bram_intr ? wea_1_ntt_tb : wea_5_ntt));


  logic [TW_ROM_ADDR_BITS-1:0] tw_rom_addr;
  logic [2*`OVERALL_BITS-1:0] tw_rom_data;
  FFTTw_RNS_ROM tw_rom (.clka(clk), .addra(tw_rom_addr), .douta(tw_rom_data));

  logic [ADDR_WIDTH:0] base_address,res_base_addr,res_gap,ref_base_addr,ref_gap;
  logic [ADDR_WIDTH:0] gap, m, j, offset;
  logic is_forward_transform, stall, stage_done, enable_clk;
  logic [3:0] current_k;
  logic [M-1:0] qm;
  logic [2:0] constants_sel;
  UnifiedTransformation #(.FFT_ON_THE_FLY_GENERATION(ON_THE_FLY_GENERATION)) dut(
    .clk(clk & enable_clk),
    .rst(rst),
    .is_dif(DO_FFT ? is_forward_transform : ~is_forward_transform),
    .is_fft(DO_FFT),

    .current_k(current_k),
    .qm(qm),
    .constants_sel(constants_sel),

    .base_address_debug(base_address),
    .gap_debug(gap),
    .base_address_debug_out(res_base_addr),
    .gap_debug_out(res_gap),
    .stall_debug(stall),
    .stage_done_debug(stage_done),

    // fft bram bank 0:
    .data_to_bram_0_fft(din_0_a),
    .data_from_bram_0_fft(dout_0_b),
    .read_addr_0_fft(addr_0_b),
    .write_addr_0_fft(addr_0_a),
    .wea_0_fft(wea_0),
    // fft bram bank 1:
    .data_to_bram_1_fft(din_1_a),
    .data_from_bram_1_fft(dout_1_b),
    .read_addr_1_fft(addr_1_b),
    .write_addr_1_fft(addr_1_a),
    .wea_1_fft(wea_1),
    // ntt bram bank 0:
    .data_to_bram_0_ntt(din_0_a_ntt),
    .data_from_bram_0_ntt(dout_0_b_ntt),
    .read_addr_0_ntt(addr_0_b_ntt),
    .write_addr_0_ntt(addr_0_a_ntt),
    .wea_0_ntt(wea_0_ntt),
    // ntt bram bank 1:
    .data_to_bram_1_ntt(din_1_a_ntt),
    .data_from_bram_1_ntt(dout_1_b_ntt),
    .read_addr_1_ntt(addr_1_b_ntt),
    .write_addr_1_ntt(addr_1_a_ntt),
    .wea_1_ntt(wea_1_ntt),
    // ntt bram bank 2:
    .data_to_bram_2_ntt(din_2_a_ntt),
    .data_from_bram_2_ntt(dout_2_b_ntt),
    .read_addr_2_ntt(addr_2_b_ntt),
    .write_addr_2_ntt(addr_2_a_ntt),
    .wea_2_ntt(wea_2_ntt),
    // ntt bram bank 3:
    .data_to_bram_3_ntt(din_3_a_ntt),
    .data_from_bram_3_ntt(dout_3_b_ntt),
    .read_addr_3_ntt(addr_3_b_ntt),
    .write_addr_3_ntt(addr_3_a_ntt),
    .wea_3_ntt(wea_3_ntt),
    // ntt bram bank 4:
    .data_to_bram_4_ntt(din_4_a_ntt),
    .data_from_bram_4_ntt(dout_4_b_ntt),
    .read_addr_4_ntt(addr_4_b_ntt),
    .write_addr_4_ntt(addr_4_a_ntt),
    .wea_4_ntt(wea_4_ntt),
    // ntt bram bank 5:
    .data_to_bram_5_ntt(din_5_a_ntt),
    .data_from_bram_5_ntt(dout_5_b_ntt),
    .read_addr_5_ntt(addr_5_b_ntt),
    .write_addr_5_ntt(addr_5_a_ntt),
    .wea_5_ntt(wea_5_ntt),
    // tw factor rom:
    .tw_rom_addr(tw_rom_addr),
    .tw_rom_data(tw_rom_data),

    .rst_pwm(1'd1),
    .pwm_bf0_ina(),
    .pwm_bf0_inb(),
    .pwm_bf0_tw(),
    .pwm_bf0_result(),
    .pwm_bf2_ina(),
    .pwm_bf2_inb(),
    .pwm_bf2_tw(),
    .pwm_bf2_result(),

    .rns_significant(),
    .rns_significant_low(),
    .rns_mult_factor(),
    .rns_mult_result(),

    .done(done)
  );


  integer fd_fft;
  logic [`OVERALL_BITS-1:0] re1,im1,re2,im2;
  logic [LOGQ_MAX-1:0] ntt_coeff1,ntt_coeff2;
  initial begin

    enable_clk = 1;

    if(DO_FFT) begin
      if(ON_THE_FLY_GENERATION) begin
        if(FORWARD_TRANSFORM)
          fd = $fopen("../../../../../testvectors/fft_in.txt", "r");
        else
          fd = $fopen("../../../../../testvectors/ifft_in.txt", "r");
      end else begin
        if(FORWARD_TRANSFORM)
          fd = $fopen("../../../../../testvectors/fft_stored_in.txt", "r");
        else
          fd = $fopen("../../../../../testvectors/ifft_stored_in.txt", "r");
      end
    end else begin
      if(FORWARD_TRANSFORM)
        fd = $fopen("../../../../../testvectors/ntt_in.txt", "r");
      else
        fd = $fopen("../../../../../testvectors/intt_in.txt", "r");
      $fscanf(fd, "%x %x %x\n", constants_sel, current_k, qm);
      qm = -qm;
    end

    bram_intr = 1'd1;
    # 20;
    if(DO_FFT) begin
      wea_0_tb = 1;
      wea_1_tb = 1;
      for(i = 0; i < N; i = i + 2) begin
        $fscanf(fd, "%x %x\n", re1,im1);
        $fscanf(fd, "%x %x\n", re2,im2);
        din_0_a_tb = {re1,im1};
        din_1_a_tb = {re2,im2};
        addr_0_a_tb = i>>1;
        addr_1_a_tb = i>>1;
        @(posedge clk);
        #1;
      end
      wea_0_tb = 0;
      wea_1_tb = 0;
    end else begin // ntt
      wea_0_ntt_tb = 1;
      wea_1_ntt_tb = 1;
      for(i = 0; i < N; i = i + 2) begin
        $fscanf(fd, "%x\n", ntt_coeff1);
        $fscanf(fd, "%x\n", ntt_coeff2);
        din_0_a_ntt_tb = ntt_coeff1;
        din_1_a_ntt_tb = ntt_coeff2;
        addr_0_a_ntt_tb = i>>1;
        addr_1_a_ntt_tb = i>>1;
        @(posedge clk);
        #1;
      end
      wea_0_ntt_tb = 0;
      wea_1_ntt_tb = 0;
    end
    
    #20;
    // check bram content:
    for(i = 0; i < N/2; i = i + 1) begin
      addr_0_b_tb = i;
      addr_1_b_tb = i;
      addr_0_b_ntt_tb = i;
      addr_1_b_ntt_tb = i;
      @(posedge clk);
      #1;
    end
    bram_intr = 1'd0;

    //////////////////// forward FFT ///////////////////////
    is_forward_transform = FORWARD_TRANSFORM;
    
    #200;
    rst = 1'd0;

    @(posedge clk iff done);
    rst = 1'd1;

    #200;
    if(DO_FFT) begin
      if(ON_THE_FLY_GENERATION) begin
        if(FORWARD_TRANSFORM)
          fd = $fopen("../../../../../testvectors/fft_out.txt", "r");
        else
          fd = $fopen("../../../../../testvectors/ifft_out.txt", "r");
      end else begin
        if(FORWARD_TRANSFORM)
          fd = $fopen("../../../../../testvectors/fft_stored_out.txt", "r");
        else
          fd = $fopen("../../../../../testvectors/ifft_stored_out.txt", "r");
      end
    end else begin
      if(FORWARD_TRANSFORM)
        fd = $fopen("../../../../../testvectors/ntt_out.txt", "r");
      else
        fd = $fopen("../../../../../testvectors/intt_out.txt", "r");
      $fscanf(fd, "%x %x %x\n", constants_sel, current_k, qm);
      qm = -qm;
    end

    bram_intr = 1'd1;
    # 20;
    if(DO_FFT) begin
      for(i = 0; i < N; i = i + 2) begin
        $fscanf(fd, "%x %x\n", re1,im1);
        $fscanf(fd, "%x %x\n", re2,im2);
        addr_0_b_tb = i>>1;
        addr_1_b_tb = i>>1;
        #1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        // ignore the sign bit if result is 0 (i.e.(+0.0, -0.0)). This is introduced by AddStage in butterflys
        if (re1[`OVERALL_BITS-2:0] != 0)
          assert(dout_0_b[2*`OVERALL_BITS-1] == re1[`OVERALL_BITS-1]);
        assert(dout_0_b[2*`OVERALL_BITS-2:`OVERALL_BITS] == re1[`OVERALL_BITS-2:0]);
        if (im1[`OVERALL_BITS-2:0] != 0)
          assert(dout_0_b[`OVERALL_BITS-1] == im1[`OVERALL_BITS-1]);
        assert(dout_0_b[`OVERALL_BITS-2:0] == im1[`OVERALL_BITS-2:0]);
        
        if (re2[`OVERALL_BITS-2:0] != 0)
          assert(dout_1_b[2*`OVERALL_BITS-1] == re2[`OVERALL_BITS-1]);
        assert(dout_1_b[2*`OVERALL_BITS-2:`OVERALL_BITS] == re2[`OVERALL_BITS-2:0]);
        if (im2[`OVERALL_BITS-2:0] != 0)
          assert(dout_1_b[`OVERALL_BITS-1] == im2[`OVERALL_BITS-1]);
        assert(dout_1_b[`OVERALL_BITS-2:0] == im2[`OVERALL_BITS-2:0]);

        @(posedge clk);
        #1;
      end
    end else begin
      for(i = 0; i < N; i = i + 2) begin
        $fscanf(fd, "%x\n", ntt_coeff1);
        $fscanf(fd, "%x\n", ntt_coeff2);
        addr_0_b_ntt_tb = i>>1;
        addr_1_b_ntt_tb = i>>1;
        #1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        
        assert(dout_0_b_ntt == ntt_coeff1);
        assert(dout_1_b_ntt == ntt_coeff2);
        assert(dout_2_b_ntt == ntt_coeff1);
        assert(dout_3_b_ntt == ntt_coeff2);
        assert(dout_4_b_ntt == ntt_coeff1);
        assert(dout_5_b_ntt == ntt_coeff2);
        

        @(posedge clk);
        #1;
      end 
    end
    bram_intr = 1'd0;
    
    #100;
    $finish;

  end
endmodule
