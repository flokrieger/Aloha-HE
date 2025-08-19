`timescale 1ns / 1ps

module tb_IntToFlpWrapper();

  integer i, fd, fd_ref;
  logic clk = 1'b0, valid, done, rst = 1'd1;
  always #5 clk = ~clk;

  localparam N = 8192;

  logic [`OVERALL_BITS-1:0] result, expected, dummy;
  logic [`OVERALL_BITS-1:0] out0,out1;
  logic [53:0] in0,in1;
  logic [3:0] current_k;
  logic [16:0] qm;

  logic bram_intr;
  logic wea_0, wea_1, wea_0_tb, wea_1_tb;
  assign wea_0 = dest_wea & ~dest_wr_addr[0];
  assign wea_1 = dest_wea & dest_wr_addr[0];
  logic [11:0] addr_0_a_tb, addr_0_b_tb, addr_1_a_tb, addr_1_b_tb;
  logic [2*`OVERALL_BITS-1:0] din_fft, dout_0_b, dout_1_b;
  
  SharedFFTBrams shared_brams(
      .clk(clk),
      .is_fft(1),
      .fft_rd_addr_bank0(addr_0_b_tb),
      .fft_wr_addr_bank0(dest_wr_addr[12:1]),
      .fft_rd_data_bank0(dout_0_b),
      .fft_wr_data_bank0(din_fft),
      .fft_wea_bank0(wea_0),
      .fft_rd_addr_bank1(addr_1_b_tb),
      .fft_wr_addr_bank1(dest_wr_addr[12:1]),
      .fft_rd_data_bank1(dout_1_b),
      .fft_wr_data_bank1(din_fft),
      .fft_wea_bank1(wea_1)
    );

  logic dest_wea;
  logic [12:0] ntt_rd_addr,dest_wr_addr;
  logic [53:0] ntt_wr_data0,ntt_wr_data1, ntt_rd_data0, ntt_rd_data1;
  NTTPolyBank ntt_message_bank0(
      .clka(clk), 
      .clkb(clk), 
      .addra(addr_0_a_tb),
      .addrb(bram_intr ? addr_0_b_tb : ntt_rd_addr[12:1]), 
      .dina(ntt_wr_data0), 
      .doutb(ntt_rd_data0), 
      .wea(bram_intr & wea_0_tb)
      );
  NTTPolyBank ntt_message_bank1(
      .clka(clk), 
      .clkb(clk), 
      .addra(addr_1_a_tb),
      .addrb(bram_intr ? addr_1_b_tb : ntt_rd_addr[12:1]), 
      .dina(ntt_wr_data1), 
      .doutb(ntt_rd_data1), 
      .wea(bram_intr & wea_1_tb)
      );
  logic bram_sel;
  DelayRegister #(.CYCLE_COUNT(2), .BITWIDTH(1)) bram_sel_delay (.clk(clk), .in(ntt_rd_addr[0]), .out(bram_sel));
  logic [53:0] ntt_rd_data;
  assign ntt_rd_data = bram_sel ? ntt_rd_data1 : ntt_rd_data0;
  logic [`EXPONENT_BITS:0] scale_power_precomp;

  IntToFlPWrapper dut (
    .clk(clk),
    .rst(rst),
    .current_k(current_k),
    .q_m(qm),
    .scale_power(scale_power_precomp),

    // message read bram:
    .bram_rd_addr(ntt_rd_addr),
    .bram_rd_data(ntt_rd_data),

    // fft write bram:
    .bram_wr_addr(dest_wr_addr),
    .bram_wr_data(din_fft),
    .bram_wea(dest_wea),
    
    .done(done)
  );

  initial begin
    `ifdef SINGLE_PRECISION
      assert(0); // not implemented yet
      fd = 0;
      fd_ref = 0;
    `else
      fd = $fopen("../../../../../testvectors/int_to_double_wrap_testvec.txt", "r");
      fd_ref = $fopen("../../../../../testvectors/int_to_double_wrap_testvec.txt", "r");
    `endif

    bram_intr = 1'd1;
    rst = 1;

    # 20;
    while($fscanf(fd, "%x %x %x\n", current_k, qm, scale_power_precomp) == 3)begin
      qm = -qm;
      assert($fscanf(fd_ref, "%x %x %x\n", dummy, dummy, dummy) == 3);

      wea_0_tb = 1;
      wea_1_tb = 1;
      for(i = 0; i < N; i = i + 2) begin
        $fscanf(fd, "%x %x\n", in0,dummy);
        $fscanf(fd, "%x %x\n", in1,dummy);
        ntt_wr_data0 = in0;
        ntt_wr_data1 = in1;
        addr_0_a_tb = i>>1;
        addr_1_a_tb = i>>1;
        @(posedge clk);
        #1;
      end
      wea_0_tb = 0;
      wea_1_tb = 0;
      
      #20;
      for(i = 0; i < N/2; i = i + 1) begin
        addr_0_b_tb = i;
        addr_1_b_tb = i;
        @(posedge clk);
        #1;
      end
      
      bram_intr = 1'd0;

      #50;
      rst = 1'd0;

      @(posedge clk iff done == 1);
      rst = 1'd1;

      #50;
      bram_intr = 1'd1;
      for(i = 0; i < N; i = i + 2) begin
        $fscanf(fd_ref, "%x %x\n", dummy, out0);
        $fscanf(fd_ref, "%x %x\n", dummy, out1);
        addr_0_b_tb = i>>1;
        addr_1_b_tb = i>>1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert({out0, `OVERALL_BITS'd0} == dout_0_b);
        assert({out1, `OVERALL_BITS'd0} == dout_1_b);
        #1;
      end
      #50;
    end

    #100;
    $finish;
  end

endmodule
