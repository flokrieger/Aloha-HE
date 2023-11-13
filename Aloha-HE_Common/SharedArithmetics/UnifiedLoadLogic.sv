`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module UnifiedLoadLogic #(
    ADDER_LAT = `DELAY_FLP_ADDER,
    MULT_LAT = `DELAY_COMPLEX_MULT,
    ADDR_WIDTH = 12,
    LOGQ = 54
  )
  (
    input clk,
    input rst,
    input is_dif,
    input is_fft,
    input [ADDR_WIDTH:0] base_address,
    input [ADDR_WIDTH:0] gap,
    input ctrl_done,
    input ctrl_stall,

    output[ADDR_WIDTH-1:0] read_addr_0,
    output[ADDR_WIDTH-1:0] read_addr_1,
    input [2*`OVERALL_BITS-1:0] data_from_bram_0,
    input [2*`OVERALL_BITS-1:0] data_from_bram_1,
    input [LOGQ-1:0] data_from_bram_2,
    input [LOGQ-1:0] data_from_bram_3,
    input [LOGQ-1:0] data_from_bram_4,
    input [LOGQ-1:0] data_from_bram_5,

    // fft and ntt 0:
    output [`OVERALL_BITS-1:0] a_real, 
    output [`OVERALL_BITS-1:0] a_imag, 
    output [`OVERALL_BITS-1:0] b_real,
    output [`OVERALL_BITS-1:0] b_imag,
    
    // ntt 1:
    output [LOGQ-1:0] a_in_1,
    output [LOGQ-1:0] b_in_1,
    // ntt 2:
    output [LOGQ-1:0] a_in_2,
    output [LOGQ-1:0] b_in_2,

    output a_is_valid,
    output b_is_valid,
    output dest_bank_a,
    output dest_bank_b,
    output [ADDR_WIDTH-1:0] dest_addr_a,
    output [ADDR_WIDTH-1:0] dest_addr_b
  );

  localparam BRAM_RD_LAT = 2;

  logic [ADDR_WIDTH-1:0] addr_a, addr_b;
  logic bank_a, bank_b;
  assign addr_a = base_address[ADDR_WIDTH:1];
  assign bank_a = base_address[0];
  logic [ADDR_WIDTH:0] b_operand_addr;
  assign b_operand_addr = base_address + gap;
  assign addr_b = b_operand_addr[ADDR_WIDTH:1];
  assign bank_b = b_operand_addr[0];

  logic valid_a_forw_delayed, valid_a_inv_delayed,valid_a_forw_ntt_delayed;
  logic stall, stall_1DP, end_1DP;
  assign stall = is_dif ? base_address == 'h1ffe && gap == 1 : 
                         (base_address == 'h1ffd && gap == 2) || ctrl_stall;
  always_ff @(posedge clk) stall_1DP <= stall;
  always_ff @(posedge clk) begin
    if(rst)
      end_1DP <= 1'd0;
    else if(ctrl_done)
      end_1DP <= 1'd1; 
  end

  logic bank_b_fixed_DP;
  always_ff @(posedge clk) begin
    if(rst)
      bank_b_fixed_DP <= 0;
    else if(~is_dif && base_address == 'h1ffe)
      bank_b_fixed_DP <= 1;
  end


  DelayRegisterReset #(.CYCLE_COUNT(BRAM_RD_LAT+1), .BITWIDTH(1)) valid_a_forward_delay (.clk(clk), .rst(rst), .in(~((stall_1DP && stall) || end_1DP)), .out(valid_a_forw_delayed));
  DelayRegisterReset #(.CYCLE_COUNT(MULT_LAT+1), .BITWIDTH(1)) valid_a_inverse_delay (.clk(clk), .rst(rst), .in(valid_a_forw_delayed), .out(valid_a_inv_delayed));
  assign a_is_valid = is_dif ? valid_a_forw_delayed : valid_a_inv_delayed;
  DelayRegisterReset #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) valid_b_delay (.clk(clk), .rst(rst), .in(~((stall_1DP && stall) || end_1DP)), .out(b_is_valid));

  logic bank_a_delayed, src_bank_a_forw_delayed, src_bank_a_inv_delayed;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(1)) src_bank_a_forward_delay (.clk(clk), .in(bank_a), .out(src_bank_a_forw_delayed));
  DelayRegister #(.CYCLE_COUNT(MULT_LAT), .BITWIDTH(1)) src_bank_a_inverse_delay (.clk(clk), .in(src_bank_a_forw_delayed), .out(src_bank_a_inv_delayed));
  assign bank_a_delayed = is_dif ? src_bank_a_forw_delayed : src_bank_a_inv_delayed;

  logic [ADDR_WIDTH-1:0] addr_a_delayed, addr_a_forw_delayed, addr_a_inv_delayed;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(ADDR_WIDTH)) src_addr_a_forward_delay (.clk(clk), .in(addr_a), .out(addr_a_forw_delayed));
  DelayRegister #(.CYCLE_COUNT(MULT_LAT), .BITWIDTH(ADDR_WIDTH)) src_addr_a_inverse_delay (.clk(clk), .in(addr_a_forw_delayed), .out(addr_a_inv_delayed));
  assign addr_a_delayed = is_dif ? addr_a_forw_delayed : addr_a_inv_delayed;


  // always_ff @(posedge clk) assert((bank_a_delayed ^ bank_b) || rst);
  logic switch_operands;
  assign switch_operands = (bank_a_delayed | ~bank_b) && ~bank_b_fixed_DP;
  assign read_addr_0 = switch_operands ? addr_b : addr_a_delayed;
  assign read_addr_1 = switch_operands ? addr_a_delayed : addr_b;

  logic switch_operand_delayed;
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) switch_operand_delay (.clk(clk), .in(switch_operands), .out(switch_operand_delayed));

  logic [2*`OVERALL_BITS-1:0] a_tmp, a_tmp_delayed, b_tmp, b_tmp_delayed;
  logic [LOGQ-1:0] a_tmp_ntt_1, a_tmp_ntt_2, a_tmp_delayed_ntt_1, a_tmp_delayed_ntt_2, b_tmp_ntt_1, b_tmp_ntt_2, b_tmp_delayed_ntt_1, b_tmp_delayed_ntt_2;
  assign a_tmp = switch_operand_delayed ? data_from_bram_1 : data_from_bram_0;
  assign a_tmp_ntt_1 = switch_operand_delayed ? data_from_bram_3 : data_from_bram_2;
  assign a_tmp_ntt_2 = switch_operand_delayed ? data_from_bram_5 : data_from_bram_4;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(2*`OVERALL_BITS)) a_tmp_delay (.clk(clk), .in(a_tmp), .out(a_tmp_delayed));
  assign {a_real, a_imag} = is_dif || ~is_fft ? a_tmp : a_tmp_delayed;
  assign a_in_1 = a_tmp_ntt_1;
  assign a_in_2 = a_tmp_ntt_2;
  assign b_tmp = switch_operand_delayed ? data_from_bram_0 : data_from_bram_1;
  assign b_tmp_ntt_1 = switch_operand_delayed ? data_from_bram_2 : data_from_bram_3;
  assign b_tmp_ntt_2 = switch_operand_delayed ? data_from_bram_4 : data_from_bram_5;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(2*`OVERALL_BITS)) b_tmp_delay (.clk(clk), .in(b_tmp), .out(b_tmp_delayed));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(LOGQ)) b_tmp_ntt_1_delay (.clk(clk), .in(b_tmp_ntt_1), .out(b_tmp_delayed_ntt_1));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(LOGQ)) b_tmp_ntt_2_delay (.clk(clk), .in(b_tmp_ntt_2), .out(b_tmp_delayed_ntt_2));
  assign {b_real, b_imag} = is_fft || ~is_dif ? b_tmp : b_tmp_delayed; 
  assign b_in_1 = ~is_dif ? b_tmp_ntt_1 : b_tmp_delayed_ntt_1;
  assign b_in_2 = ~is_dif ? b_tmp_ntt_2 : b_tmp_delayed_ntt_2;

  logic [ADDR_WIDTH-1:0] dest_addr_a_1DP, dest_addr_a_2DP;
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(ADDR_WIDTH)) a_addr_delay (.clk(clk), .in(addr_a_delayed), .out(dest_addr_a_1DP));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(ADDR_WIDTH)) src_addr_a_inverse_delay1 (.clk(clk), .in(dest_addr_a_1DP), .out(dest_addr_a_2DP));
  assign dest_addr_a = is_dif ? dest_addr_a_1DP : dest_addr_a_2DP;
  logic dest_bank_a_1DP, dest_bank_a_2DP;
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) a_bank_delay1 (.clk(clk), .in(bank_a_delayed), .out(dest_bank_a_1DP));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(1)) a_bank_delay2 (.clk(clk), .in(dest_bank_a_1DP), .out(dest_bank_a_2DP));
  assign dest_bank_a = is_dif ? dest_bank_a_1DP : dest_bank_a_2DP;
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(ADDR_WIDTH)) b_addr_delay (.clk(clk), .in(addr_b), .out(dest_addr_b));
  DelayRegister #(.CYCLE_COUNT(BRAM_RD_LAT), .BITWIDTH(1)) b_bank_delay (.clk(clk), .in(bank_b), .out(dest_bank_b));

endmodule