/* This hardware implementation of Trivium PRNG is based on the software
 * of Charles Bouillaguet: https://github.com/cbouilla/trivium
 */


`timescale 1ns / 1ps
`include "CommonDefinitions.vh"

(* keep_hierarchy = `KEEP_HIERARCHY *)
module trivium64_update(input clk,
                        input load_seed, enable,
                        input [63:0] seed,
                        output[63:0] tout);

// Assuming 'seq' is 0

reg [63:0] s11,s12,s21,s22,s31,s32;

wire[63:0] s66,s93,s162,s177,s243,s288,s91,s92,s171,s175,s176,s264,s286,s287,s69;

wire[63:0] t1,t2,t3;
wire[63:0] t1_next,t2_next,t3_next;

assign s66  = {s12[ 1:0],s11[63:2 ]};
assign s93  = {s12[28:0],s11[63:29]};
assign s162 = {s22[ 4:0],s21[63:5 ]};
assign s177 = {s22[19:0],s21[63:20]};
assign s243 = {s32[ 1:0],s31[63:2 ]};
assign s288 = {s32[46:0],s31[63:47]};
assign s91  = {s12[26:0],s11[63:27]};
assign s92  = {s12[27:0],s11[63:28]};
assign s171 = {s22[13:0],s21[63:14]};
assign s175 = {s22[17:0],s21[63:18]};
assign s176 = {s22[18:0],s21[63:19]};
assign s264 = {s32[22:0],s31[63:23]};
assign s286 = {s32[44:0],s31[63:45]};
assign s287 = {s32[45:0],s31[63:46]};
assign s69  = {s12[ 4:0],s11[63:5 ]};

assign t1 = s66 ^ s93;	/* update */
assign t2 = s162 ^ s177;
assign t3 = s243 ^ s288;

assign t1_next = t1 ^ (s91 & s92) ^ s171;
assign t2_next = t2 ^ (s175 & s176) ^ s264;
assign t3_next = t3 ^ (s286 & s287) ^ s69;

always @(posedge clk) begin
    if(load_seed) begin
        s11 <= seed;
        s12 <= 0;
        s21 <= 0;
        s22 <= 0;
        s31 <= 0;
        s32 <= 64'h0000_7000_0000_0000;
    end
    else if(enable) begin
        s11 <= t3_next;
        s12 <= s11;
        s21 <= t1_next;
        s22 <= s21;
        s31 <= t2_next;
        s32 <= s31;        
    end
    else begin
        s11 <= s11;
        s12 <= s12;
        s21 <= s21;
        s22 <= s22;
        s31 <= s31;
        s32 <= s32;
    end
end

assign tout = t1 ^ t2 ^ t3;

endmodule