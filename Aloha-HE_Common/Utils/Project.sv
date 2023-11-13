`timescale 1ns / 1ps

module Project #(
    parameter LOGN         = 13,
    parameter FLP_WORDSIZE = 64,
    parameter BRAM_RD_LAT  = 2
  )
  (
    input clk,
    input rst,

    output [LOGN-2:0]           fft_rd_addr,
    output [LOGN-2:0]           fft_wr_addr,
    output                      fft_bank0_wea,
    output                      fft_bank1_wea,
    input  [2*FLP_WORDSIZE-1:0] fft_bank0_rd_data,
    input  [2*FLP_WORDSIZE-1:0] fft_bank1_rd_data,
    output [2*FLP_WORDSIZE-1:0] fft_wr_data,

    output done
  );

  localparam LOGM = LOGN+1;
  localparam M = 2**LOGM;
  localparam N = 2**LOGN;

  logic done_internal_1DP, done_internal_2DP;
  logic [LOGM-1:0] pos_ctr_DP;
  logic [LOGN-2:0] dest_addr_DP;
  always_ff @(posedge clk) begin
    if(rst) begin
      pos_ctr_DP <= 'd1;
      dest_addr_DP <= 12'hffe;
    end else if(~done_internal_2DP) begin 
      pos_ctr_DP <= (pos_ctr_DP << 1) + pos_ctr_DP;
      dest_addr_DP <= dest_addr_DP + 'd1;
    end
  end

  always_ff @(posedge clk)begin
    if(rst) begin
      done_internal_1DP <= 'd0;
      done_internal_2DP <= 'd0;
    end else begin
      if(dest_addr_DP == 12'hffd)
        done_internal_1DP <= 'd1;
      done_internal_2DP <= done_internal_1DP; 
    end
  end

  logic [LOGN-1:0] rd_index;
  logic [LOGM-1:0] br_in;
  assign br_in = pos_ctr_DP-1'd1;
  BitReverse #(.BITWIDTH(LOGN)) index_reverse (.in(br_in[LOGM-1:1]), .out(rd_index));

  logic [LOGN-2:0] rd_addr_tmp;
  assign rd_addr_tmp = rd_index[LOGN-1] == 0 ? rd_index : N - rd_index - 1;
  assign fft_rd_addr = {1'd0, rd_addr_tmp[LOGN-2:1]};
  logic rd_bank_sel, conjugate;
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(2)) delay (.clk(clk), .in({rd_index[LOGN-1], rd_addr_tmp[0]}), .out({conjugate, rd_bank_sel}));

  logic [2*FLP_WORDSIZE-1:0] fft_wr_data_tmp;
  assign fft_wr_data_tmp = (rd_bank_sel ? fft_bank1_rd_data : fft_bank0_rd_data);
  assign fft_wr_data = fft_wr_data_tmp ^ (conjugate<<63);
  
  assign fft_wr_addr = {1'd1, dest_addr_DP[LOGN-2:1]};

  logic wea_internal;
  DelayRegisterReset #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) delay1 (.clk(clk), .rst(rst | done_internal_2DP), .in(~done_internal_2DP), .out(wea_internal));
  assign done = done_internal_2DP;

  assign fft_bank0_wea = wea_internal && ~dest_addr_DP[0];
  assign fft_bank1_wea = wea_internal &&  dest_addr_DP[0];
endmodule
