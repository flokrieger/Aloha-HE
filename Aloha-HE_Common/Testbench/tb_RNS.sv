`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

module tb_RNS();
  integer i, fd, fd_ref,fd_error,fd_error_ref;
  logic clk = 1'b0, rst = 1'd1;
  always #5 clk = ~clk;

  localparam N = 8192;

  logic bram_intr, done;
  logic wea_0_tb, wea_1_tb;
  logic [11:0] addr_1_a, addr_1_b, addr_0_a_tb, addr_0_b_tb, addr_1_a_tb, addr_1_b_tb;
  logic [2*`OVERALL_BITS-1:0] din_0_a, din_0_a_tb, din_1_a, din_1_a_tb;
  SharedFFTBrams shared_brams(
      .clk(clk),
      .is_fft(bram_intr),
      .fft_rd_addr_bank0(addr_0_b_tb),
      .fft_wr_addr_bank0(addr_0_a_tb),
      .fft_rd_data_bank0(),
      .fft_wr_data_bank0(din_0_a_tb),
      .fft_wea_bank0(wea_0_tb),
      .fft_rd_addr_bank1(addr_1_b_tb),
      .fft_wr_addr_bank1(addr_1_a_tb),
      .fft_rd_data_bank1(),
      .fft_wr_data_bank1(din_1_a_tb),
      .fft_wea_bank1(wea_1_tb),

      .rns_rd_addr(bram_rd_addr),
      .rns_rd_data(rns_read_data)
    );

  logic dest_wea;
  logic [12:0] dest_wr_addr, dest_rd_addr;
  logic [53:0] dest_wr_data, dest_rd_data0, dest_rd_data1;
  NTTPolyBank ntt_message_bank0(
      .clka(clk), 
      .clkb(clk), 
      .addra(dest_wr_addr[12:1]),
      .addrb(dest_rd_addr[11:0]), 
      .dina(dest_wr_data), 
      .doutb(dest_rd_data0), 
      .wea(dest_wea & ~dest_wr_addr[0])
      );
  NTTPolyBank ntt_message_bank1(
      .clka(clk), 
      .clkb(clk), 
      .addra(dest_wr_addr[12:1]),
      .addrb(dest_rd_addr[11:0]), 
      .dina(dest_wr_data), 
      .doutb(dest_rd_data1), 
      .wea(dest_wea & dest_wr_addr[0])
      );

  logic e1_dest_wea,v_dest_wea;
  logic [12:0] e1_dest_wr_addr,v_dest_wr_addr;
  logic [53:0] v_dest_wr_data, v_dest_rd_data0, v_dest_rd_data1;
  logic [53:0] e1_dest_wr_data, e1_dest_rd_data0, e1_dest_rd_data1;
  NTTPolyBank ntt_v_bank0(
      .clka(clk), 
      .clkb(clk), 
      .addra(v_dest_wr_addr[12:1]),
      .addrb(dest_rd_addr[11:0]), 
      .dina(v_dest_wr_data), 
      .doutb(v_dest_rd_data0), 
      .wea(v_dest_wea & ~v_dest_wr_addr[0])
      );
  NTTPolyBank ntt_v_bank1(
      .clka(clk), 
      .clkb(clk), 
      .addra(v_dest_wr_addr[12:1]),
      .addrb(dest_rd_addr[11:0]), 
      .dina(v_dest_wr_data), 
      .doutb(v_dest_rd_data1), 
      .wea(v_dest_wea & v_dest_wr_addr[0])
      );

  NTTPolyBank ntt_e1_bank0(
      .clka(clk), 
      .clkb(clk), 
      .addra(e1_dest_wr_addr[12:1]),
      .addrb(dest_rd_addr[11:0]), 
      .dina(e1_dest_wr_data), 
      .doutb(e1_dest_rd_data0), 
      .wea(e1_dest_wea & ~e1_dest_wr_addr[0])
      );
  NTTPolyBank ntt_e1_bank1(
      .clka(clk), 
      .clkb(clk), 
      .addra(e1_dest_wr_addr[12:1]),
      .addrb(dest_rd_addr[11:0]), 
      .dina(e1_dest_wr_data), 
      .doutb(e1_dest_rd_data1), 
      .wea(e1_dest_wea & e1_dest_wr_addr[0])
      );

  logic random_bram_wea;
  logic [12:0] random_bram_wr_addr,e0_rd_addr,e1_rd_addr,v_rd_addr;
  logic [13:0] e0_rd_data,e1_rd_data,random_bram_wr_data;
  logic [1:0] v_rd_data;
  CBDPolyBRAM e0_bram(
    .clka(clk),
    .wea(random_bram_wea),
    .addra(bram_intr ? random_bram_wr_addr : e0_rd_addr),
    .dina(random_bram_wr_data[11:6]),
    .douta(e0_rd_data)
  );
  CBDPolyBRAM e1_bram(
    .clka(clk),
    .wea(random_bram_wea),
    .addra(bram_intr ? random_bram_wr_addr : e1_rd_addr),
    .dina(random_bram_wr_data[5:0]),
    .douta(e1_rd_data)
  );
  TernaryPolyBRAM v_bram(
    .clka(clk),
    .wea(random_bram_wea),
    .addra(bram_intr ? random_bram_wr_addr : v_rd_addr),
    .dina(random_bram_wr_data[13:12]),
    .douta(v_rd_data)
  );

  logic [6:0] rom_addr;
  logic [2*`OVERALL_BITS-1:0] rom_out;
  logic [`EXPONENT_BITS:0] scale;
  FFTTw_RNS_ROM rns_rom (.clka(clk), .addra({2'd0, rom_addr}), .douta(rom_out));

  logic [12:0] bram_rd_addr;
  logic [3:0] modulus_select; 

  logic [107:0] significant;
  logic [23:0] significant_low;
  logic [53:0] mult_factor;
  logic [53:0] mult_result;
  logic [`OVERALL_BITS-1:0] rns_read_data;
  RNS #(
    .N(8192),    // polynomial degree
    .LOGN(13),   // bit-size of polynomial coeficient addressing 
    .LOGQ(54),   // maximum bit-size of one modulus
    .LOGI(4),    // 2*4 = 16 supported different moduli
    .W(24),      // word-size of WL-Montgomery reduction in bits
    .L(3),       // number of stages in WL-Montgomery reduction
    .M(17),      // number of non-zero bits in modulus
    .ROM_BASE_ADDR(39) // base address with metadata needed in this module
  )dut(
    .clk(clk),
    .rst(rst),
    .modulus_select(modulus_select),
    .scale(scale),

    .current_k(current_k),
    .qm(qm),

    .bram_rd_addr(bram_rd_addr),
    .bram_rd_data(rns_read_data),

    .bram_wr_addr(dest_wr_addr),
    .bram_wr_data(dest_wr_data),
    .bram_wea(dest_wea),
    
    // error polynomials brams:
    .e0_bram_rd_addr(e0_rd_addr),
    .e0_bram_rd_data(e0_rd_data),
    .e1_bram_rd_addr(e1_rd_addr),
    .e1_bram_rd_data(e1_rd_data),
    .v_bram_rd_addr(v_rd_addr),
    .v_bram_rd_data(v_rd_data),

    .v_bram_wr_addr(v_dest_wr_addr),
    .v_bram_wr_data(v_dest_wr_data),
    .v_bram_wea(v_dest_wea),
    .e1_bram_wr_addr(e1_dest_wr_addr),
    .e1_bram_wr_data(e1_dest_wr_data),
    .e1_bram_wea(e1_dest_wea),

    .rom_addr(rom_addr),
    .rom_data(rom_out),

    .significant(significant),
    .significant_low(significant_low),
    .mult_factor(mult_factor),
    .mult_result(mult_result),

    .done(done)
  );

  logic [3:0] current_k;
  logic [16:0] qm;
  // We need the UniformTransformation here for its NTT Butterflies and NTT Twiddle factor generation 
  UnifiedTransformation unif_transf (
    .clk(clk),
    .rst(1'd1),
    .is_dif(),
    .is_fft(),

    // debug i/o
    .base_address_debug(),
    .gap_debug(),
    .base_address_debug_out(),
    .gap_debug_out(),
    .stall_debug(),
    .stage_done_debug(),

    // modulus info for NTT
    .current_k(current_k),
    .qm(qm),
    .constants_sel(),

    // fft bram bank 0:
    .data_to_bram_0_fft(),
    .data_from_bram_0_fft(),
    .read_addr_0_fft(),
    .write_addr_0_fft(),
    .wea_0_fft(),

    // fft bram bank 1:
    .data_to_bram_1_fft(),
    .data_from_bram_1_fft(),
    .read_addr_1_fft(),
    .write_addr_1_fft(),
    .wea_1_fft(),

    // ntt bram bank 0:
    .data_to_bram_0_ntt(),
    .data_from_bram_0_ntt(),
    .read_addr_0_ntt(),
    .write_addr_0_ntt(),
    .wea_0_ntt(),

    // ntt bram bank 1:
    .data_to_bram_1_ntt(),
    .data_from_bram_1_ntt(),
    .read_addr_1_ntt(),
    .write_addr_1_ntt(),
    .wea_1_ntt(),

    // ntt bram bank 2:
    .data_to_bram_2_ntt(),
    .data_from_bram_2_ntt(),
    .read_addr_2_ntt(),
    .write_addr_2_ntt(),
    .wea_2_ntt(),

    // ntt bram bank 3:
    .data_to_bram_3_ntt(),
    .data_from_bram_3_ntt(),
    .read_addr_3_ntt(),
    .write_addr_3_ntt(),
    .wea_3_ntt(),

    // ntt bram bank 4:
    .data_to_bram_4_ntt(),
    .data_from_bram_4_ntt(),
    .read_addr_4_ntt(),
    .write_addr_4_ntt(),
    .wea_4_ntt(),

    // ntt bram bank 5:
    .data_to_bram_5_ntt(),
    .data_from_bram_5_ntt(),
    .read_addr_5_ntt(),
    .write_addr_5_ntt(),
    .wea_5_ntt(),

    // twiddle factor rom:
    .tw_rom_addr(),
    .tw_rom_data(),

    // connection for PWM module using NTT BF 2
    .rst_pwm(1'd1),
    .pwm_bf0_ina(),
    .pwm_bf0_inb(),
    .pwm_bf0_tw(),
    .pwm_bf0_result(),
    .pwm_bf2_ina(),
    .pwm_bf2_inb(),
    .pwm_bf2_tw(),
    .pwm_bf2_result(),

    // connection to RNS module using NTT TwFctGen and NTT BF 1
    .rns_significant(significant),
    .rns_significant_low(significant_low),
    .rns_mult_factor(mult_factor),
    .rns_mult_result(mult_result),

    .done()
  );

  logic [53:0] dummy;
  logic [`OVERALL_BITS:0] double_in_a, double_in_b;
  logic [53:0] out_a, out_b, out_v_0, out_e1_0, out_v_1, out_e1_1;
  logic [13:0] out_e;
  initial begin
    fd = $fopen("../../../../../testvectors/double_rns_testvec.txt", "r");
    fd_ref = $fopen("../../../../../testvectors/double_rns_testvec.txt", "r");
    fd_error = $fopen("../../../../../testvectors/error_polys_sam.txt", "r");
    fd_error_ref = $fopen("../../../../../testvectors/error_rns_testvec.txt", "r");
    
    #50;

    bram_intr = 1'd1;
    random_bram_wea = 1'd1;
    for(i = 0; i < N; i = i + 1) begin
      $fscanf(fd_error, "%x\n", out_e);
      random_bram_wr_data = out_e;
      random_bram_wr_addr = i;
      @(posedge clk);
      #1;
    end   
    random_bram_wea = 1'd0;
    
    modulus_select = 0;

    while($fscanf(fd, "%x %x %x %x %x %x %x\n",current_k,qm,scale,dummy,dummy,dummy,dummy) == 7) begin
      current_k = current_k - 46;
      $fscanf(fd_ref, "%x %x %x %x %x %x %x\n",dummy,dummy,dummy,dummy,dummy,dummy,dummy);
      bram_intr = 1'd1;
      rst = 1;

      # 20;
      wea_0_tb = 1;
      wea_1_tb = 1;
      for(i = 0; i < N; i = i + 2) begin
        $fscanf(fd, "%x %x\n", double_in_a,dummy);
        $fscanf(fd, "%x %x\n", double_in_b,dummy);
        din_0_a_tb = {double_in_a, `OVERALL_BITS'd0};
        din_1_a_tb = {double_in_b, `OVERALL_BITS'd0};
        addr_0_a_tb = i>>1;
        addr_1_a_tb = i>>1;
        @(posedge clk);
        #1;
      end
      wea_0_tb = 0;
      wea_1_tb = 0;
      /*
      #20;
      for(i = 0; i < N/2; i = i + 1) begin
        addr_0_b_tb = i;
        addr_1_b_tb = i;
        @(posedge clk);
        #1;
      end
      */
      bram_intr = 1'd0;

      #50;
      rst = 1'd0;

      @(posedge clk iff done == 1);
      rst = 1'd1;

      #500;
      bram_intr = 1;
      for(i = 0; i < N/2; i = i + 1) begin
        $fscanf(fd_ref, "%x %x\n", dummy, out_a);
        $fscanf(fd_ref, "%x %x\n", dummy, out_b);
        $fscanf(fd_error_ref, "%x %x\n", out_v_0, out_e1_0);
        $fscanf(fd_error_ref, "%x %x\n", out_v_1, out_e1_1);
        dest_rd_addr = i;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(dest_rd_data0 == out_a);
        assert(dest_rd_data1 == out_b);
        assert(e1_dest_rd_data0 == out_e1_0);
        assert(e1_dest_rd_data1 == out_e1_1);
        assert(v_dest_rd_data0 == out_v_0);
        assert(v_dest_rd_data1 == out_v_1);
        #1;
      end

      modulus_select = modulus_select + 1;
    end
    #100;
    $finish;
  end
endmodule
