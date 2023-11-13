`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module FFTTwFctStorage(
    input clk,
    input rst,
    input is_forward_fft,

    input [12:0] m,
    input [12:0] i,
    input i_loop_done,

    output [`OVERALL_BITS-1:0] tw_real,
    output [`OVERALL_BITS-1:0] tw_imag
  );

  localparam ROM_RD_LAT = 2;

  ////////////// Input delay to match timing to FFT: //////////////
  logic rst_delayed, i_loop_done_delayed, rst_delayed_forw, i_loop_done_delayed_forw, rst_delayed_inv, i_loop_done_delayed_inv;
  logic [12:0] m_delayed, i_delayed, m_delayed_forw, i_delayed_forw, m_delayed_inv, i_delayed_inv;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(13+13+1+1)) inputs_delay_inverse (.clk(clk), .in({m, i, i_loop_done, rst}), .out({m_delayed_inv, i_delayed_inv, i_loop_done_delayed_inv, rst_delayed_inv}));
  DelayRegister #(.CYCLE_COUNT(8), .BITWIDTH(13+13+1+1)) inputs_delay_forward (.clk(clk), .in({m_delayed_inv, i_delayed_inv, i_loop_done_delayed_inv, rst_delayed_inv}), .out({m_delayed_forw, i_delayed_forw, i_loop_done_delayed_forw, rst_delayed_forw}));
  assign {m_delayed, i_delayed, i_loop_done_delayed, rst_delayed} = is_forward_fft ? {m_delayed_forw, i_delayed_forw, i_loop_done_delayed_forw, rst_delayed_forw} : {m_delayed_inv, i_delayed_inv, i_loop_done_delayed_inv, rst_delayed_inv};

  ////////////// Twiddle factor ROM: //////////////
  logic [11:0] rom_addr;
  logic [2*`OVERALL_BITS-1:0] rom_data;
  FFTAllTwiddleROM all_twiddle_rom (.clka(clk), .addra(rom_addr), .douta(rom_data));

  logic negate_real, negate_imag, negate_real_delayed, negate_imag_delayed;
  DelayRegister #(.CYCLE_COUNT(ROM_RD_LAT), .BITWIDTH(1)) negate_real_delay (.clk(clk), .in(negate_real), .out(negate_real_delayed)); 
  DelayRegister #(.CYCLE_COUNT(ROM_RD_LAT), .BITWIDTH(1)) negate_imag_delay (.clk(clk), .in(negate_imag), .out(negate_imag_delayed)); 

  assign tw_real[`OVERALL_BITS-1]   = rom_data[2*`OVERALL_BITS-1] ^ negate_real_delayed;
  assign tw_real[`OVERALL_BITS-2:0] = rom_data[2*`OVERALL_BITS-2:`OVERALL_BITS];
  assign tw_imag[`OVERALL_BITS-1]   = rom_data[`OVERALL_BITS-1] ^ negate_imag_delayed;
  assign tw_imag[`OVERALL_BITS-2:0] = rom_data[`OVERALL_BITS-2:0];

  
  ////////////// Control logic: //////////////
  logic [11:0] base_DP, base_DN;
  always_ff @(posedge clk) begin
    if(rst_delayed) begin
      base_DP <= is_forward_fft ? 'd0 : 'd4095;
    end else begin
      base_DP <= i_loop_done_delayed ? base_DN : base_DP;
    end
  end
  assign base_DN = is_forward_fft ? base_DP + (m_delayed >> 1) : base_DP - m_delayed;

  logic [11:0] address, address_reverse;
  assign address = base_DP + i_delayed;
  assign address_reverse = base_DP + m_delayed - 1 - i_delayed;

  logic forward_fft_if_branch, inverse_fft_else_branch;
  assign forward_fft_if_branch = is_forward_fft && (i_delayed >= (m_delayed>>1)) && m_delayed != 'd1;
  assign inverse_fft_else_branch = ~is_forward_fft && !((i_delayed < (m_delayed>>1)) && m_delayed != 'd1);
  assign rom_addr = forward_fft_if_branch || inverse_fft_else_branch ? address_reverse : address;
  assign negate_imag = ~is_forward_fft;
  assign negate_real = forward_fft_if_branch || inverse_fft_else_branch;

endmodule
