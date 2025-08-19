`timescale 1ns / 1ps

module tb_RandomSampling();

integer i, fd, fd_ref;
  logic clk = 1'b0, valid, done, rst = 1'd1;
  always #5 clk = ~clk;

  localparam N = 8192;

  logic [5:0] expected_e0, expected_e1, dummy;
  logic [1:0] expected_v; 

  logic [16:0] qm;
  logic [3:0] current_k;

  logic bram_intr;
  logic wea_e0, wea_e1, wea_v;
  logic [12:0] rd_addr_e0,rd_addr_e1,rd_addr_v,rd_addr_pk1;
  logic [12:0] wr_addr_e0,wr_addr_e1,wr_addr_v,wr_addr_pk1;
  logic [5:0] rd_data_e0,rd_data_e1,wr_data_e0,wr_data_e1;
  logic [1:0] rd_data_v, wr_data_v;
  logic [53:0] rd_data_pk1,rd_data_pk10,rd_data_pk11,wr_data_pk1,expected_pk1;
  
  TernaryPolyBRAM v_bram(
      .clka(clk), 
      .addra(bram_intr ? rd_addr_v : wr_addr_v),
      .dina(wr_data_v), 
      .douta(rd_data_v), 
      .wea(wea_v)
      );
  CBDPolyBRAM e0_bram(
      .clka(clk), 
      .addra(bram_intr ? rd_addr_e0 : wr_addr_e0),
      .dina(wr_data_e0), 
      .douta(rd_data_e0), 
      .wea(wea_e0)
      );
  CBDPolyBRAM e1_bram(
      .clka(clk), 
      .addra(bram_intr ? rd_addr_e1 : wr_addr_e1),
      .dina(wr_data_e1), 
      .douta(rd_data_e1), 
      .wea(wea_e1)
      );
  NTTPolyBank key_bram0(
      .clka(clk), 
      .clkb(clk), 
      .addra(wr_addr_pk1[12:1]),
      .addrb(rd_addr_pk1[12:1]),
      .dina(wr_data_pk1), 
      .doutb(rd_data_pk10), 
      .wea(wea_pk1 & ~wr_addr_pk1[0])
      );
  NTTPolyBank key_bram1(
      .clka(clk), 
      .clkb(clk), 
      .addra(wr_addr_pk1[12:1]),
      .addrb(rd_addr_pk1[12:1]),
      .dina(wr_data_pk1), 
      .doutb(rd_data_pk11), 
      .wea(wea_pk1 & wr_addr_pk1[0])
      );
  assign rd_data_pk1 = rd_addr_pk1[0] ? rd_data_pk11 : rd_data_pk10;
  
  logic [63:0] seed;
  logic sample_errors = 'd1;
  RandomSampling dut (
    .clk(clk),
    .rst(rst),
    .sample_errors(sample_errors),

    .seed(seed),
    .current_k(current_k),
    .qm(qm),

    .wr_addr_v(wr_addr_v),
    .wr_data_v(wr_data_v),
    .wea_v(wea_v),

    // write interface e0
    .wr_addr_e0(wr_addr_e0),
    .wr_data_e0(wr_data_e0),
    .wea_e0(wea_e0),

    // write interface e1
    .wr_addr_e1(wr_addr_e1),
    .wr_data_e1(wr_data_e1),
    .wea_e1(wea_e1),

    // write interface pk1
    .wr_addr_pk1(wr_addr_pk1),
    .wr_data_pk1(wr_data_pk1),
    .wea_pk1(wea_pk1),
    
    .done(done)
  );

  initial begin
    fd = $fopen("../../../../../testvectors/error_sampling.txt", "r");
    rst = 1;

    while($fscanf(fd, "%x\n", seed) == 1) begin
      bram_intr = 0;

      #50;
      rst = 1'd0;

      @(posedge clk iff done == 1);
      @(posedge clk)
      @(posedge clk)
      @(posedge clk)
      rst = 1'd1;

      bram_intr = 1;

      #100;
      for(i = 0; i < N; i = i + 1) begin
        $fscanf(fd, "%x %x %x\n", expected_e0, expected_e1, expected_v);
        rd_addr_e0 = i;
        rd_addr_e1 = i;
        rd_addr_v = i;
        #1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(expected_e0 == rd_data_e0);
        assert(expected_e1 == rd_data_e1);
        assert(expected_v == rd_data_v);
        #1;
      end
    end



    fd = $fopen("../../../../../testvectors/key_sampling.txt", "r");
    rst = 1;
    sample_errors = 0;

    while($fscanf(fd, "%x %x %x\n", seed, current_k, qm) == 3) begin
      qm = -qm;
      bram_intr = 0;

      #50;
      rst = 1'd0;

      @(posedge clk iff done == 1);
      @(posedge clk)
      @(posedge clk)
      @(posedge clk)
      rst = 1'd1;

      bram_intr = 1;

      #100;
      for(i = 0; i < N; i = i + 1) begin
        $fscanf(fd, "%x\n", expected_pk1);
        rd_addr_pk1 = i;
        #1;
        @(posedge clk);
        @(posedge clk);
        @(posedge clk);
        assert(expected_pk1 == rd_data_pk1);
        #1;
      end
    end

    #100;
    $finish;
  end


endmodule
