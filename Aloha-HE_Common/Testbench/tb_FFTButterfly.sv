`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

module tb_FFTButterfly();
  int fd, fd_result, i = 5;
  int get_from_file = 0;
  
  logic clk = 1'b0;
  always #5 clk = ~clk;

  logic [`OVERALL_BITS-1:0] dummy;
  logic start = 1'b0, done, use_ct;
  logic [`OVERALL_BITS-1:0] a_in_real, a_in_imag, a_in_real_delayed1, a_in_imag_delayed1, b_in_real, b_in_imag, tw_real, tw_imag, a_out_real, a_out_real_delayed, a_out_imag_delayed, a_out_imag, b_out_real, b_out_imag;
  logic [`OVERALL_BITS-1:0] a_out_real_expected, a_out_imag_expected, b_out_real_expected, b_out_imag_expected;
  logic [`OVERALL_BITS-1:0] tw_real_delayed, tw_imag_delayed, tw_real_delayed1, tw_imag_delayed1, a_in_real_delayed,a_in_imag_delayed;

  // integer multiplier interface:
  logic  [53:0] mult_a [0:3];
  logic  [53:0] mult_b [0:3];
  logic [107:0] int_mult_result [0:3];
  FFTButterfly dut(.clk(clk), .start(start), .done(done), .use_ct(use_ct),
                    .a_in_real(use_ct ? a_in_real_delayed : a_in_real_delayed1),
                    .a_in_imag(use_ct ? a_in_imag_delayed : a_in_imag_delayed1),
                    .b_in_real(b_in_real),
                    .b_in_imag(b_in_imag),
                    .tw_real(use_ct ? tw_real_delayed1 : tw_real_delayed),
                    .tw_imag(use_ct ? tw_imag_delayed1 : tw_imag_delayed),
                    .a_out_real(a_out_real),
                    .a_out_imag(a_out_imag),
                    .b_out_real(b_out_real),
                    .b_out_imag(b_out_imag),
                    // integer multiplier interface:
                    .mult_a(mult_a),
                    .mult_b(mult_b),
                    .int_mult_result(int_mult_result));

  IntMultPool mult(
    .clk(clk),
    .grant_to_fft(1),
    .a_fft(mult_a),
    .b_fft(mult_b),
    .a_ntt(),
    .b_ntt(),
    .result(int_mult_result),
    .result_low()
  );

  DelayRegister #(.CYCLE_COUNT(`DELAY_FLP_ADDER+2), .BITWIDTH(`OVERALL_BITS)) tw_real_delay (
    .clk(clk), 
    .in(tw_real), 
    .out(tw_real_delayed)
  );
  DelayRegister #(.CYCLE_COUNT(`DELAY_FLP_ADDER+2), .BITWIDTH(`OVERALL_BITS)) tw_imag_delay (
    .clk(clk), 
    .in(tw_imag), 
    .out(tw_imag_delayed)
  );
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(`OVERALL_BITS)) tw_real_delay1 (
    .clk(clk), 
    .in(tw_real), 
    .out(tw_real_delayed1)
  );
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(`OVERALL_BITS)) tw_imag_delay1 (
    .clk(clk), 
    .in(tw_imag), 
    .out(tw_imag_delayed1)
  );
  DelayRegister #(.CYCLE_COUNT(`DELAY_COMPLEX_MULT+2), .BITWIDTH(`OVERALL_BITS)) a_in_real_delay (
    .clk(clk), 
    .in(a_in_real), 
    .out(a_in_real_delayed)
  );
  DelayRegister #(.CYCLE_COUNT(`DELAY_COMPLEX_MULT+2), .BITWIDTH(`OVERALL_BITS)) b_in_imag_delay (
    .clk(clk), 
    .in(a_in_imag), 
    .out(a_in_imag_delayed)
  );
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(`OVERALL_BITS)) a_in_real_delay1 (
    .clk(clk), 
    .in(a_in_real), 
    .out(a_in_real_delayed1)
  );
  DelayRegister #(.CYCLE_COUNT(1), .BITWIDTH(`OVERALL_BITS)) b_in_imag_delay1 (
    .clk(clk), 
    .in(a_in_imag), 
    .out(a_in_imag_delayed1)
  );

  DelayRegister #(.CYCLE_COUNT(`DELAY_COMPLEX_MULT+1), .BITWIDTH(`OVERALL_BITS)) a_out_real_delay (
    .clk(clk), 
    .in(a_out_real), 
    .out(a_out_real_delayed)
  );
  DelayRegister #(.CYCLE_COUNT(`DELAY_COMPLEX_MULT+1), .BITWIDTH(`OVERALL_BITS)) a_out_imag_delay (
    .clk(clk), 
    .in(a_out_imag), 
    .out(a_out_imag_delayed)
  );

  logic [`OVERALL_BITS-1:0] a_out_real_result, a_out_imag_result;
  assign a_out_real_result = use_ct ? a_out_real : a_out_real_delayed;
  assign a_out_imag_result = use_ct ? a_out_imag : a_out_imag_delayed;
  always @(posedge clk) begin
    if(done) begin
      if(get_from_file) begin
        if($fscanf(fd_result, "%x %x %x %x %x %x %x %x %x %x\n", 
                    dummy, dummy, dummy, dummy, dummy, dummy, 
                    a_out_real_expected, a_out_imag_expected, b_out_real_expected, b_out_imag_expected) != 10)
          $display("Error: reference result could not be read!\n");
      end
      assert(a_out_real_expected == a_out_real_result);
      assert(a_out_imag_expected == a_out_imag_result);
      assert(b_out_real_expected == b_out_real);
      assert(b_out_imag_expected == b_out_imag);
    end
  end

  initial begin

    /////////////////////// GS Butterfly ///////////////////////////////

    `ifdef SINGLE_PRECISION // not implemented yet
      fd = $fopen("../../../../../testvectors/float_gs_nosub_testvec.txt", "r");
      fd_result = $fopen("../../../../../testvectors/float_gs_nosub_testvec.txt", "r");
    `else
      fd = $fopen("../../../../../testvectors/double_gs_nosub_testvec.txt", "r");
      fd_result = $fopen("../../../../../testvectors/double_gs_nosub_testvec.txt", "r");
    `endif
    if(fd == 0 || fd_result == 0) begin
      $display("Error: Failed opening file!\n");
      $finish;
    end

    use_ct = 1'd0;
    
    #20;
        
    // first i vectors from file, unpipelined:
    get_from_file = 1;
    while(i-- && $fscanf(fd, "%x %x %x %x %x %x %x %x %x %x\n", 
                    a_in_real, a_in_imag, b_in_real, b_in_imag, tw_real, tw_imag, 
                    dummy, dummy, dummy, dummy) == 10) begin
          start = 1'd1;
          @(posedge clk);
          #1;
          a_in_real = `OVERALL_BITS'd0;
          a_in_imag = `OVERALL_BITS'd0;
          b_in_real = `OVERALL_BITS'd0;
          b_in_imag = `OVERALL_BITS'd0;
          tw_real = `OVERALL_BITS'd0;
          tw_imag = `OVERALL_BITS'd0;
          start = 1'd0;
          @(posedge clk iff done == 1'b1);
          #1;
    end
    
    #50;
    
    // remaining vectors from file, pipelined:
    while($fscanf(fd, "%x %x %x %x %x %x %x %x %x %x\n", 
                    a_in_real, a_in_imag, b_in_real, b_in_imag, tw_real, tw_imag, 
                    dummy, dummy, dummy, dummy) == 10) begin
          start = 1'd1;
          @(posedge clk);
          #1;
    end
    start = 1'b0;

    #500;

    /////////////////////// CT Butterfly ///////////////////////////////

    `ifdef SINGLE_PRECISION // not implemented yet
      fd = $fopen("../../../../../testvectors/float_ct_nosub_testvec.txt", "r");
      fd_result = $fopen("../../../../../testvectors/float_ct_nosub_testvec.txt", "r");
    `else
      fd = $fopen("../../../../../testvectors/double_ct_nosub_testvec.txt", "r");
      fd_result = $fopen("../../../../../testvectors/double_ct_nosub_testvec.txt", "r");
    `endif
    if(fd == 0 || fd_result == 0) begin
      $display("Error: Failed opening file!\n");
      $finish;
    end

    use_ct = 1'd1;
    i = 5;
    
    #20;
        
    // first i vectors from file, unpipelined:
    get_from_file = 1;
    while(i-- && $fscanf(fd, "%x %x %x %x %x %x %x %x %x %x\n", 
                    a_in_real, a_in_imag, b_in_real, b_in_imag, tw_real, tw_imag, 
                    dummy, dummy, dummy, dummy) == 10) begin
          start = 1'd1;
          @(posedge clk);
          #1;
          a_in_real = `OVERALL_BITS'd0;
          a_in_imag = `OVERALL_BITS'd0;
          b_in_real = `OVERALL_BITS'd0;
          b_in_imag = `OVERALL_BITS'd0;
          tw_real = `OVERALL_BITS'd0;
          tw_imag = `OVERALL_BITS'd0;
          start = 1'd0;
          @(posedge clk iff done == 1'b1);
          #1;
    end
    
    #50;
    
    // remaining vectors from file, pipelined:
    while($fscanf(fd, "%x %x %x %x %x %x %x %x %x %x\n", 
                    a_in_real, a_in_imag, b_in_real, b_in_imag, tw_real, tw_imag, 
                    dummy, dummy, dummy, dummy) == 10) begin
          start = 1'd1;
          @(posedge clk);
          #1;
    end
    start = 1'b0;
    #100;
    $finish;
  end

endmodule
