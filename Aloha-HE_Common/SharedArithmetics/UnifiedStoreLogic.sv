`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module UnifiedStoreLogic #(
    ADDER_LAT = `DELAY_FLP_ADDER,
    MULT_LAT = `DELAY_COMPLEX_MULT,
    MOD_ADDER_LAT = 2,
    MOD_MULT_LAT = 15,
    ADDR_WIDTH = 12,
    LOGQ = 54
  )
  (
    input clk,
    input rst, 
    input is_dif,
    input is_fft,

    input dest_bank_a,
    input dest_bank_b,
    input valid_a,
    input valid_b,
    input [ADDR_WIDTH-1:0] dest_addr_a,
    input [ADDR_WIDTH-1:0] dest_addr_b,

    // bram bank 0:
    output [2*`OVERALL_BITS-1:0] data_to_bram_0,
    output [ADDR_WIDTH-1:0] write_addr_0,
    output wea_0,
    // bram bank 1:
    output [2*`OVERALL_BITS-1:0] data_to_bram_1,
    output [ADDR_WIDTH-1:0] write_addr_1,
    output wea_1,

    // bram banks 2-5 write data ports. addresses are same as in bank 0-1:
    output [LOGQ-1:0] data_to_bram_2,
    output [LOGQ-1:0] data_to_bram_3,
    output [LOGQ-1:0] data_to_bram_4,
    output [LOGQ-1:0] data_to_bram_5,

    // result from fft and ntt 0 butterfly:
    input [`OVERALL_BITS-1:0] a_out_real, 
    input [`OVERALL_BITS-1:0] a_out_imag, 
    input [`OVERALL_BITS-1:0] b_out_real,
    input [`OVERALL_BITS-1:0] b_out_imag,

    // results from ntt 1 bf:
    input [LOGQ-1:0] a_out_1,
    input [LOGQ-1:0] b_out_1,
    // results from ntt 2 bf:
    input [LOGQ-1:0] a_out_2,
    input [LOGQ-1:0] b_out_2
  );

  // no need to reduce number of registers here. Synthesis will merge them:
  // naming has room for improvement though. dont rely on names of wires :)
  logic dest_bank_a_delayed, dest_bank_a_fft_delayed, dest_bank_a_ntt_delayed, dest_bank_a_ntt_forw_delayed, dest_bank_b_delayed, dest_bank_b_fft_forw_delayed, dest_bank_b_fft_inv_delayed, dest_bank_b_ntt_forw_delayed, dest_bank_b_ntt_inv_delayed;
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT+MOD_ADDER_LAT), .BITWIDTH(1)) dest_bank_a_ntt_delay (.clk(clk), .in(dest_bank_a), .out(dest_bank_a_ntt_delayed));
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT-1), .BITWIDTH(1)) dest_bank_a_ntt_forw_delay (.clk(clk), .in(dest_bank_a), .out(dest_bank_a_ntt_forw_delayed));
  DelayRegister #(.CYCLE_COUNT(ADDER_LAT), .BITWIDTH(1)) dest_bank_a_fft_delay (.clk(clk), .in(dest_bank_a), .out(dest_bank_a_fft_delayed));
  assign dest_bank_a_delayed = is_fft ? dest_bank_a_fft_delayed : (is_dif ? dest_bank_a_ntt_delayed : dest_bank_a_ntt_forw_delayed);
  DelayRegister #(.CYCLE_COUNT(ADDER_LAT+MULT_LAT+2), .BITWIDTH(1)) dest_bank_b_fft_forward_delay (.clk(clk), .in(dest_bank_b), .out(dest_bank_b_fft_forw_delayed));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(1)) dest_bank_b_fft_inverse_delay (.clk(clk), .in(dest_bank_b_fft_forw_delayed), .out(dest_bank_b_fft_inv_delayed));
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT+MOD_MULT_LAT+1), .BITWIDTH(1)) dest_bank_b_ntt_forward_delay (.clk(clk), .in(dest_bank_b), .out(dest_bank_b_ntt_forw_delayed));
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT), .BITWIDTH(1)) dest_bank_b_ntt_inverse_delay (.clk(clk), .in(dest_bank_b_ntt_forw_delayed), .out(dest_bank_b_ntt_inv_delayed));
  assign dest_bank_b_delayed = is_fft ? (is_dif ? dest_bank_b_fft_forw_delayed : dest_bank_b_fft_inv_delayed) : (is_dif ? dest_bank_b_ntt_inv_delayed : dest_bank_b_ntt_forw_delayed);

  logic valid_a_delayed, valid_a_fft_delayed, valid_a_ntt_delayed, valid_a_ntt_forw_delayed, valid_b_delayed, valid_b_fft_forw_delayed, valid_b_fft_inv_delayed, valid_b_ntt_forw_delayed, valid_b_ntt_inv_delayed;
  DelayRegisterReset #(.CYCLE_COUNT(ADDER_LAT), .BITWIDTH(1)) valid_a_fft_delay (.clk(clk), .rst(rst), .in(valid_a), .out(valid_a_fft_delayed));
  DelayRegisterReset #(.CYCLE_COUNT(MOD_ADDER_LAT+MOD_ADDER_LAT), .BITWIDTH(1)) valid_a_ntt_delay (.clk(clk), .rst(rst), .in(valid_a), .out(valid_a_ntt_delayed));
  DelayRegisterReset #(.CYCLE_COUNT(MOD_ADDER_LAT-1), .BITWIDTH(1)) valid_a_ntt_forw_delay (.clk(clk), .rst(rst), .in(valid_a), .out(valid_a_ntt_forw_delayed));
  assign valid_a_delayed = is_fft ? valid_a_fft_delayed : (is_dif ? valid_a_ntt_delayed : valid_a_ntt_forw_delayed);
  DelayRegisterReset #(.CYCLE_COUNT(ADDER_LAT+MULT_LAT+2), .BITWIDTH(1)) valid_b_fft_forward_delay (.clk(clk), .rst(rst), .in(valid_b), .out(valid_b_fft_forw_delayed));
  DelayRegisterReset #(.CYCLE_COUNT(1), .BITWIDTH(1)) valid_b_fft_inverse_delay (.clk(clk), .rst(rst), .in(valid_b_fft_forw_delayed), .out(valid_b_fft_inv_delayed));
  DelayRegisterReset #(.CYCLE_COUNT(MOD_ADDER_LAT+MOD_MULT_LAT+1), .BITWIDTH(1)) valid_b_ntt_forward_delay (.clk(clk), .rst(rst), .in(valid_b), .out(valid_b_ntt_forw_delayed));
  DelayRegisterReset #(.CYCLE_COUNT(MOD_ADDER_LAT), .BITWIDTH(1)) valid_b_ntt_inverse_delay (.clk(clk), .rst(rst), .in(valid_b_ntt_forw_delayed), .out(valid_b_ntt_inv_delayed));
  assign valid_b_delayed = is_fft ? (is_dif ? valid_b_fft_forw_delayed : valid_b_fft_inv_delayed) : (is_dif ? valid_b_ntt_inv_delayed : valid_b_ntt_forw_delayed);

  logic [ADDR_WIDTH-1:0] dest_addr_a_delayed, dest_addr_a_fft_delayed, dest_addr_a_ntt_delayed, dest_addr_a_ntt_forw_delayed, dest_addr_b_delayed, dest_addr_b_fft_forw_delayed, dest_addr_b_fft_inv_delayed, dest_addr_b_ntt_forw_delayed, dest_addr_b_ntt_inv_delayed;
  DelayRegister #(.CYCLE_COUNT(ADDER_LAT), .BITWIDTH(ADDR_WIDTH)) dest_addr_a_fft_delay (.clk(clk), .in(dest_addr_a), .out(dest_addr_a_fft_delayed));
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT+MOD_ADDER_LAT), .BITWIDTH(ADDR_WIDTH)) dest_addr_a_ntt_delay (.clk(clk), .in(dest_addr_a), .out(dest_addr_a_ntt_delayed));
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT-1), .BITWIDTH(ADDR_WIDTH)) dest_addr_a_ntt_forw_delay (.clk(clk), .in(dest_addr_a), .out(dest_addr_a_ntt_forw_delayed));
  assign dest_addr_a_delayed = is_fft ? dest_addr_a_fft_delayed : (is_dif ? dest_addr_a_ntt_delayed : dest_addr_a_ntt_forw_delayed);
  DelayRegister #(.CYCLE_COUNT(ADDER_LAT+MULT_LAT+2), .BITWIDTH(ADDR_WIDTH)) dest_addr_b_fft_forward_delay (.clk(clk), .in(dest_addr_b), .out(dest_addr_b_fft_forw_delayed));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(ADDR_WIDTH)) dest_addr_b_fft_inverse_delay (.clk(clk), .in(dest_addr_b_fft_forw_delayed), .out(dest_addr_b_fft_inv_delayed));
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT+MOD_MULT_LAT+1), .BITWIDTH(ADDR_WIDTH)) dest_addr_b_ntt_forward_delay (.clk(clk), .in(dest_addr_b), .out(dest_addr_b_ntt_forw_delayed));
  DelayRegister #(.CYCLE_COUNT(MOD_ADDER_LAT), .BITWIDTH(ADDR_WIDTH)) dest_addr_b_ntt_inverse_delay (.clk(clk), .in(dest_addr_b_ntt_forw_delayed), .out(dest_addr_b_ntt_inv_delayed));
  assign dest_addr_b_delayed = is_fft ? (is_dif ? dest_addr_b_fft_forw_delayed : dest_addr_b_fft_inv_delayed) : (is_dif ? dest_addr_b_ntt_inv_delayed : dest_addr_b_ntt_forw_delayed);

  logic [`OVERALL_BITS-1:0] b_out_real_1DP, b_out_imag_1DP;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(`OVERALL_BITS)) b_out_real_delay (.clk(clk), .in(b_out_real), .out(b_out_real_1DP));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(`OVERALL_BITS)) b_out_imag_delay (.clk(clk), .in(b_out_imag), .out(b_out_imag_1DP));
  logic [LOGQ-1:0] b_out_1_1DP, b_out_2_1DP;
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(LOGQ)) b_out_1_delay (.clk(clk), .in(b_out_1), .out(b_out_1_1DP));
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(LOGQ)) b_out_2_delay (.clk(clk), .in(b_out_2), .out(b_out_2_1DP));


  always_ff @(posedge clk) assert((dest_bank_a_delayed ^ dest_bank_b_delayed) || rst || !wea_0 || !wea_1);
  
  logic switch_brams;
  assign switch_brams = (dest_bank_a_delayed == 1'd0 && valid_a_delayed) || (dest_bank_b_delayed == 1'd1 && valid_b_delayed);
  assign wea_0 = switch_brams ? valid_a_delayed : valid_b_delayed;
  assign wea_1 = switch_brams ? valid_b_delayed : valid_a_delayed;
  assign write_addr_0 = switch_brams ? dest_addr_a_delayed : dest_addr_b_delayed;
  assign write_addr_1 = switch_brams ? dest_addr_b_delayed : dest_addr_a_delayed;
  assign data_to_bram_0 = switch_brams ? {a_out_real, a_out_imag} : (is_dif ? {b_out_real, b_out_imag} : {b_out_real_1DP, b_out_imag_1DP});
  assign data_to_bram_1 = switch_brams ? (is_dif ? {b_out_real, b_out_imag} : {b_out_real_1DP, b_out_imag_1DP}) : {a_out_real, a_out_imag};
  assign data_to_bram_2 = switch_brams ? a_out_1 : (is_dif ? b_out_1 : b_out_1_1DP);
  assign data_to_bram_3 = switch_brams ? (is_dif ? b_out_1 : b_out_1_1DP) : a_out_1;
  assign data_to_bram_4 = switch_brams ? a_out_2 : (is_dif ? b_out_2 : b_out_2_1DP);
  assign data_to_bram_5 = switch_brams ? (is_dif ? b_out_2 : b_out_2_1DP) : a_out_2;
endmodule