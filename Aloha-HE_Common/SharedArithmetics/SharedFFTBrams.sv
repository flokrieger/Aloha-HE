`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module SharedFFTBrams #(
    parameter LOGN = 13,
    parameter LOGQ = 54,
    parameter FLP_WORDSIZE = 64,
    parameter BRAM_RD_LAT = 2
  )
  (
    input clk,
    input is_fft,

    // FFT Bank 0 "Complex BRAM":
    input [LOGN-2:0] fft_rd_addr_bank0,
    input [LOGN-2:0] fft_wr_addr_bank0, 
    output [2*FLP_WORDSIZE-1:0] fft_rd_data_bank0, 
    input [2*FLP_WORDSIZE-1:0] fft_wr_data_bank0, 
    input fft_wea_bank0,
    
    // FFT Bank 1 "Complex BRAM":
    input [LOGN-2:0] fft_rd_addr_bank1, 
    input [LOGN-2:0] fft_wr_addr_bank1,
    output [2*FLP_WORDSIZE-1:0] fft_rd_data_bank1, 
    input [2*FLP_WORDSIZE-1:0] fft_wr_data_bank1,
    input fft_wea_bank1,

    // RNS port (real parts only) "Complex BRAM":
    input [LOGN-1:0] rns_rd_addr,
    output [FLP_WORDSIZE-1:0] rns_rd_data, 
    
    // Key port (imag parts only) "Imag BRAM":
    input [LOGN-1:0] key_rd_addr, 
    input [LOGN-1:0] key_wr_addr,
    output [LOGQ-1:0] key_rd_data, 
    input [LOGQ-1:0] key_wr_data,
    input key_wea
  );

  // BRAM LAYOUT:
  // {higher bram, lower bram} 
  // {74b        , 54b       } = 128b
  // fft configuration: {64b re, 64b im}
  // non-fft configuration: {64b re fft result, 10b unused, 54b key}
  // even indices are in bank 0, odd ones in bank 1
  logic [LOGQ-1:0] dout_lower_bank0,dout_lower_bank1;
  logic [2*FLP_WORDSIZE-LOGQ-1:0] dout_higher_bank0,dout_higher_bank1;
  logic key_wea_bank0,key_wea_bank1;
  assign key_wea_bank0 = key_wea & ~key_wr_addr[0];
  assign key_wea_bank1 = key_wea &  key_wr_addr[0];
  NTTPolyBank lower_bank0(
    .clka(clk), 
    .clkb(clk), 
    .addra(is_fft ? fft_wr_addr_bank0 : key_wr_addr[LOGN-1:1]),
    .addrb(is_fft ? fft_rd_addr_bank0 : key_rd_addr[LOGN-1:1]),
    .dina( is_fft ? fft_wr_data_bank0[LOGQ-1:0] : key_wr_data),
    .doutb(dout_lower_bank0),
    .wea(  is_fft ? fft_wea_bank0 : key_wea_bank0)
    );

  NTTPolyBank lower_bank1(
    .clka(clk), 
    .clkb(clk), 
    .addra(is_fft ? fft_wr_addr_bank1 : key_wr_addr[LOGN-1:1]),
    .addrb(is_fft ? fft_rd_addr_bank1 : key_rd_addr[LOGN-1:1]),
    .dina( is_fft ? fft_wr_data_bank1[LOGQ-1:0] : key_wr_data),
    .doutb(dout_lower_bank1),
    .wea(  is_fft ? fft_wea_bank1 : key_wea_bank1)
    );

  SharedFFTBramBank higher_bank0(
    .clka(clk),
    .clkb(clk),
    .addra(fft_wr_addr_bank0), // rns never writes to floating point values
    .addrb(is_fft ? fft_rd_addr_bank0 : rns_rd_addr[LOGN-1:1]),
    .dina(fft_wr_data_bank0[2*FLP_WORDSIZE-1:LOGQ]),
    .doutb(dout_higher_bank0),
    .wea(fft_wea_bank0)
    );

  SharedFFTBramBank higher_bank1(
    .clka(clk),
    .clkb(clk),
    .addra(fft_wr_addr_bank1), // rns never writes to floating point values
    .addrb(is_fft ? fft_rd_addr_bank1 : rns_rd_addr[LOGN-1:1]),
    .dina(fft_wr_data_bank1[2*FLP_WORDSIZE-1:LOGQ]),
    .doutb(dout_higher_bank1),
    .wea(fft_wea_bank1)
    );

    assign fft_rd_data_bank0 = {dout_higher_bank0, dout_lower_bank0};
    assign fft_rd_data_bank1 = {dout_higher_bank1, dout_lower_bank1};
    
    logic key_rd_data_sel, rns_rd_data_sel;
    DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) key_rd_data_sel_delayed(.clk(clk), .in(key_rd_addr[0]), .out(key_rd_data_sel));
    assign key_rd_data = key_rd_data_sel ? dout_lower_bank1 : dout_lower_bank0;
    DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) rns_rd_data_sel_delayed(.clk(clk), .in(rns_rd_addr[0]), .out(rns_rd_data_sel));
    assign rns_rd_data = rns_rd_data_sel ? dout_higher_bank1[2*FLP_WORDSIZE-LOGQ-1 : FLP_WORDSIZE-LOGQ] : dout_higher_bank0[2*FLP_WORDSIZE-LOGQ-1 : FLP_WORDSIZE-LOGQ];

  
endmodule
