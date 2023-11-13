`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

// generates twiddle factors for FFT and NTT
(* keep_hierarchy = `KEEP_HIERARCHY *)
module UnifiedTwFctGen #(
    FFT_ON_THE_FLY_GENERATION = 1,
    N = 8192, // 2^13
    COMPLEX_MULT_LAT = 14,
    ADDR_WIDTH_ROM = 9,
    LOGQ_MAX = 54,
    M = 17
  )
  (
    input clk,
    input rst,
    input is_DIF, // DIF: fFFT & iNTT; DIT: iFFT & fNTT
    input is_FFT,
    input [3:0] current_k,
    input [M-1:0] qm,
    input [2:0] constants_sel,

    output [`OVERALL_BITS-1:0] tw_real,
    output [`OVERALL_BITS-1:0] tw_imag,

    output [LOGQ_MAX-1:0] tw_ntt,

    // Twiddle factor ROM:
    output [ADDR_WIDTH_ROM-1:0] rom_addr,
    input [2*`OVERALL_BITS-1:0] rom_data,

    // integer multiplier interface
    output [53:0] mult_a,
    output [53:0] mult_b,
    input [107:0] int_mult_result,
    input [23:0] int_mult_result_low
  );

  localparam NR_BF_PER_STAGE = N / 2;
  localparam ADDR_W_32 = 6'd31; // is the address of w^32 in the ROM

  // counters to keep track of the transformation progress:
  logic [$clog2($clog2(N)) + $clog2(N) - 2:0] overall_counter;
  logic [$clog2($clog2(N))-1:0] stage_counter;
  logic [$clog2(N)-2:0] butterfly_counter;
  logic stall;
  assign stage_counter = is_DIF ? overall_counter[15:12] : 4'd 12 - overall_counter[15:12];
  assign butterfly_counter = overall_counter[11:0];
  always_ff @(posedge clk)begin
  if(rst)
    overall_counter <= 0;
  else if(~stall)
    overall_counter <= overall_counter + 1'd1;
  end

  logic [$clog2(COMPLEX_MULT_LAT)-1:0] stall_counter;
  assign stall = is_DIF ? (stall_counter < COMPLEX_MULT_LAT) && (stage_counter == 1) && (butterfly_counter == 0) : 
                                  (stall_counter < COMPLEX_MULT_LAT+1) && (overall_counter == 'hc000);
  always_ff @(posedge clk) begin
    if (rst || ~stall)
      stall_counter = 0;
    else
      stall_counter = stall_counter + 1;
  end

  // ROM address generation:
  logic [5:0] rom_addr_DP, rom_addr_ifft_DN, rom_addr_next_w_c_DP;
  logic [`OVERALL_BITS-1:0] rom_data_real, rom_data_imag, rom_data_real_tmp, rom_data_imag_tmp;
  logic [LOGQ_MAX-1:0] rom_data_modring;
  assign rom_data_modring = is_DIF ? rom_data[2*LOGQ_MAX-1:LOGQ_MAX] : rom_data[LOGQ_MAX-1:0];
  assign {rom_data_real_tmp, rom_data_imag_tmp} = rom_data;
  
  logic [5:0] rom_offset;
  logic [ADDR_WIDTH_ROM-1:0] rom_base_DP;
  assign rom_offset[5:0] = rst ? ADDR_W_32 : butterfly_counter == NR_BF_PER_STAGE - 4 ? rom_addr_next_w_c_DP : rom_addr_DP;
  always_ff @(posedge clk) begin
    rom_base_DP <= FFT_ON_THE_FLY_GENERATION && is_FFT ? 'd0 : constants_sel == 0 ? 9'd129 + 0 :  // ROM layout has room for improvements 
                                                               constants_sel == 1 ? 9'd129 + 40 :
                                                               constants_sel == 2 ? 9'd129 + 80 :
                                                               constants_sel == 3 ? 9'd129 + 120 :
                                                               constants_sel == 4 ? 9'd129 + 160 :
                                                               constants_sel == 5 ? 9'd129 + 200 :
                                                               constants_sel == 6 ? 9'd129 + 240 : 9'd129 + 280; 
  end
  assign rom_addr = rom_base_DP + rom_offset;

  assign rom_data_real = rom_data_real_tmp;
  assign rom_data_imag = {is_DIF ? rom_data_imag_tmp[`OVERALL_BITS-1] : ~rom_data_imag_tmp[`OVERALL_BITS-1], rom_data_imag_tmp[`OVERALL_BITS-2:0]}; // conjugate complex if iFFT

  logic advance_rom_addr;
  always_ff @(posedge clk) begin
    if(rst)
      rom_addr_DP <= is_DIF ? 6'd0 : 6'd38;
    else if(advance_rom_addr)
      rom_addr_DP <= is_DIF ? rom_addr_DP + 1'd1 : rom_addr_ifft_DN;

    rom_addr_next_w_c_DP <= is_DIF ? rom_addr_DP + 2'd2 : rom_addr_DP;
  end

  always_comb begin
    if (rom_addr_DP > 6'd30)
      rom_addr_ifft_DN = rom_addr_DP - 1'd1;
    else begin
      case(rom_addr_DP)
        6'd30: rom_addr_ifft_DN = 6'd28;
        6'd29: rom_addr_ifft_DN = 6'd24;
        6'd27: rom_addr_ifft_DN = 6'd16;
        6'd23: rom_addr_ifft_DN = 6'd0;
        default: rom_addr_ifft_DN = rom_addr_DP + 1'd1;
      endcase
    end
  end

  always_comb begin
    advance_rom_addr = 1'd0;
    case(stage_counter)
      4'd0: if (butterfly_counter < 4'd15 && !stall) advance_rom_addr = 1'd1;
      4'd1: if (butterfly_counter < 4'd15 && butterfly_counter[0] == 1'd1) advance_rom_addr = 1'd1;
      4'd2: if (butterfly_counter < 4'd15 && butterfly_counter[1:0] == 2'd3) advance_rom_addr = 1'd1;
      4'd3: if (butterfly_counter < 4'd15 && butterfly_counter[2:0] == 3'd7) advance_rom_addr = 1'd1;
    endcase
    if (butterfly_counter == NR_BF_PER_STAGE - 2) 
      advance_rom_addr = 1'd1;
  end
  
  // logic when to update w_c
  logic update_w_c;
  assign update_w_c = butterfly_counter == NR_BF_PER_STAGE - 2 && ((is_DIF && stage_counter > 4'd3) || (~is_DIF && stage_counter > 4'd4));
  logic [`OVERALL_BITS-1:0] w_c_real_DP, w_c_imag_DP;
  logic [LOGQ_MAX-1:0] w_c_modring_DP;
  always_ff @(posedge clk) begin
    if (rst || update_w_c) begin
      w_c_real_DP <= rom_data_real;
      w_c_imag_DP <= rom_data_imag;
      w_c_modring_DP <= rom_data_modring;
    end
  end

  // halting logic:
  logic halt, halt_delayed;
  always_comb begin
    halt = 1'd1;
    case(stage_counter)
      4'd0: halt = 1'd0;
      4'd1: halt = 1'd0;
      4'd2: halt = 1'd0;
      4'd3: halt = 1'd0;
      4'd4: halt = 1'd0;
      4'd5:  if(butterfly_counter[4:0] == 5'h1f) halt = 1'd0;
      4'd6:  if(butterfly_counter[5:0] == 6'h3f) halt = 1'd0;
      4'd7:  if(butterfly_counter[6:0] == 7'h7f) halt = 1'd0;
      4'd8:  if(butterfly_counter[7:0] == 8'hff) halt = 1'd0;
      4'd9:  if(butterfly_counter[8:0] == 9'h1ff) halt = 1'd0;
      4'd10: if(butterfly_counter[9:0] == 10'h3ff) halt = 1'd0;
      4'd11: if(butterfly_counter[10:0] == 11'h7ff) halt = 1'd0;
      4'd12: if(butterfly_counter[11:0] == 12'hfff || (butterfly_counter[11:0] == 12'h0 && ~is_DIF)) halt = 1'd0;
    endcase
  end
  DelayRegister #(.CYCLE_COUNT(2), .BITWIDTH(1)) halt_delay(.clk(clk), .in(halt), .out(halt_delayed));

  // combination of all things above:
  logic [`OVERALL_BITS-1:0] mult_out_real, mult_out_imag, mult_out_real_1DP, mult_out_imag_1DP;
  logic [`OVERALL_BITS-1:0] out_real, out_imag;
  logic [LOGQ_MAX-1:0] mult_out_modring, mult_out_modring_1DP;
  logic [LOGQ_MAX-1:0] out_modring;
  
  logic take_from_rom, take_from_rom_delayed;
  assign take_from_rom = butterfly_counter < 5'd16;
  DelayRegister #(.CYCLE_COUNT(2), .BITWIDTH(1)) take_from_rom_delay(.clk(clk), .in(take_from_rom), .out(take_from_rom_delayed));
  assign out_real = take_from_rom_delayed ? rom_data_real : mult_out_real_1DP;
  assign out_imag = take_from_rom_delayed ? rom_data_imag : mult_out_imag_1DP;
  assign out_modring = ~rst && take_from_rom_delayed ? rom_data_modring : mult_out_modring_1DP;

  logic [`OVERALL_BITS-1:0] out_real_DP, out_imag_DP;
  logic [LOGQ_MAX-1:0] out_modring_DP;

  always_ff @(posedge clk) begin
    out_real_DP <= out_real;
    out_imag_DP <= out_imag;
    out_modring_DP <= out_modring;

    if(!halt_delayed || rst) begin
      mult_out_real_1DP    <= butterfly_counter == 12'd1 || (butterfly_counter == 12'd2 && ~is_DIF) ? rom_data_real : mult_out_real;
      mult_out_imag_1DP    <= butterfly_counter == 12'd1 || (butterfly_counter == 12'd2 && ~is_DIF) ? rom_data_imag : mult_out_imag;
      mult_out_modring_1DP <= butterfly_counter == 12'd1 || (butterfly_counter == 12'd2 && ~is_DIF) ? rom_data_modring : mult_out_modring;
    end
  end
  
  if (FFT_ON_THE_FLY_GENERATION) begin
    logic [53:0] int_mult_a [0:3];
    logic [53:0] int_mult_b [0:3];
    logic [107:0] int_mult_result [0:3];
    ComplexMultiplier complex_multiplier(
      .clk(clk),
      .a_real(w_c_real_DP),
      .a_imag(w_c_imag_DP),
      .b_real(out_real_DP),
      .b_imag(out_imag_DP),
      .a_x_b_real(mult_out_real),
      .a_x_b_imag(mult_out_imag),
      // unused:
      .start(), 
      .done(),

      // integer multiplier interface:
      .mult_a(int_mult_a),
      .mult_b(int_mult_b),
      .int_mult_result(int_mult_result)
    );

    IntMultPool int_mult(
      .clk(clk),
      .grant_to_fft(1'd1),
      .a_fft(int_mult_a),
      .b_fft(int_mult_b),
      .result(int_mult_result),
      // unused:
      .a_ntt(),
      .b_ntt(),
      .result_low()
    );
  end else begin
    assign mult_out_real = 'd0;
    assign mult_out_imag = 'd0;
  end

  ModMul modular_multiplier(    
    .clk(clk),
    .ina(w_c_modring_DP),
    .inb(out_modring), // modular multiplier has 1cc more latency than complex mult
    .q_m(qm),
    .current_k(current_k),
    .out(mult_out_modring),

    .mult_a(mult_a),
    .mult_b(mult_b),
    .int_mult_result(int_mult_result),
    .int_mult_result_low(int_mult_result_low)
  );

  assign tw_real = out_real_DP;
  assign tw_imag = out_imag_DP;
  assign tw_ntt = out_modring_DP;



endmodule