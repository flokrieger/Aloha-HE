
// set this to "true" for gathering area utilization results
`define KEEP_HIERARCHY  "false"

// Uncomment this for single precision floating-point unit. 
// However, Aloha-HE is built for double precision. So switching
// to single precision will require various adaptions in BRAM width, RNS etc.
//`define SINGLE_PRECISION

`ifdef SINGLE_PRECISION
  // IEEE 754 single precision:
  `define SIGNIFICANT_BITS 23
  `define EXPONENT_BITS 8
  `define OVERALL_BITS 32
  `define EXPONENT_BIAS 8'd127
  
  `define DELAY_FLP_MULT 5
`else
  // IEEE 754 double precision:
  `define SIGNIFICANT_BITS 52
  `define EXPONENT_BITS 11
  `define OVERALL_BITS 64
  `define EXPONENT_BIAS 11'd1023
  
  `define DELAY_FLP_MULT 7
`endif

`define DELAY_FLP_ADDER 7
`define DELAY_COMPLEX_MULT (`DELAY_FLP_ADDER + `DELAY_FLP_MULT)