`timescale 1ns / 1ps

/*
  Program controller. It executes a program instruction-by-instruction.
*/
module ISA_control(clk, rst, start, done_ins_computation,
                                    address_ext, dina_ext, wea_ext,
									command_in,	command_we,
									done_all_computation,
									cycle_count);

input clk;
input rst;		// 1 is for reseting the FSM
input start; 	// 1 for the FSM to proceed
input done_ins_computation;

input [3:0] address_ext;
input [41:0] dina_ext; 
input wea_ext;

output [39:0] command_in;
output command_we;
output done_all_computation;
output reg [30:0] cycle_count;

wire command_we1;

reg [2:0] state, nextstate;

reg [3:0] IR_address;
reg inc_IR_address;
wire [41:0] IR_data;
wire non_instruction, last_instruction;


INS_RAM IR( .clk(clk), .a(address_ext), .d(dina_ext), .we(wea_ext), .dpra(IR_address), .qdpo_clk(clk), .qdpo(IR_data));


assign non_instruction = (command_we1==1'b1 || IR_data[4:0]==5'b0) ? 1'b1 : 1'b0; 
assign last_instruction = (IR_data[4:0]==5'b11111) ? 1'b1 : 1'b0;
assign {command_we1,command_we,command_in} = IR_data;

always @(posedge clk)
begin	
	if(rst==1'b1 || start==1'b0)
		IR_address <= 4'd0;
	else if(inc_IR_address)
		IR_address <= IR_address + 1'b1;
	else
		IR_address <= IR_address;
end		

always @(posedge clk)
begin
    if(rst)
        cycle_count <= 31'd0;
    else if(state != 3'd0 ||  state!=3'd7 ) 
        cycle_count <= cycle_count + 1'b1;
    else
        cycle_count <= cycle_count;
end
                    	
always @(posedge clk)
begin
	if(rst)
		state <= 3'd0;
	else
		state <= nextstate;
end
		
always @(state or done_ins_computation)
begin
	case(state)
	3'd0: begin 
					inc_IR_address <= 1'b1;	
				end
	3'd1: begin // set instruction_rom address
					inc_IR_address <= 1'b0;	
				end
	3'd2: begin // send instruction to core
					inc_IR_address <= 1'b0;	
				end				
	3'd3: begin // Wait 1 cycle
					inc_IR_address <= 1'b0;	
				end
	3'd4: begin // Wait 1 cycle
					inc_IR_address <= 1'b0;	
				end				
	3'd5: begin // Wait for done_ins_computation or proceed to next for non-instruction command
					inc_IR_address <= 1'b0;	
				end
	3'd6: begin // increment IR_address
					inc_IR_address <= 1'b1;	
				end
	3'd7: begin 
					inc_IR_address <= 1'b0;	
				end
	default: begin 
					inc_IR_address <= 1'b0;	
				end				
	endcase
end
	
always @(state or done_ins_computation or non_instruction or last_instruction)
begin
	case(state)
	3'd0:	nextstate <= 3'd1;
	3'd1:	nextstate <= 3'd2;	
	3'd2:	nextstate <= 3'd3;	
	3'd3:	nextstate <= 3'd4;	
	3'd4:	nextstate <= 3'd5;	
	3'd5:	begin	
					if(done_ins_computation==1'b1 || non_instruction==1'b1  || last_instruction==1'b1)
						nextstate <= 3'd6;
					else
						nextstate <= 3'd5;
				end
	3'd6:	begin	
					if(last_instruction==1'b1)
						nextstate <= 3'd7;
					else
						nextstate <= 3'd1;
				end
	3'd7: nextstate <= 3'd7;
	default: nextstate <= 3'd7;
	endcase
end

assign done_all_computation = (state==3'd7) ? 1'b1 : 1'b0;

endmodule
	