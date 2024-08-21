/*********************************************
 * This file is responsible for generating
 * instruction words. Each instruction word
 * is 42 bit wide, contains an opcode and
 * may have various operands.
*********************************************/

#include<stdio.h>
#include "instruction.h"


// Opcode definition. Must comply with hardware (see ComputeCore.v)
// The opcode 0 is reserved.
#define OPC_TRANSFORMATION (1)
#define OPC_RNS            (2)
#define OPC_I2F            (3)
#define OPC_PWM            (4)
#define OPC_PROJECT		   (5)

// Switch this for debug functionality:
//#define assert(x) while(!(x)) { printf("ERROR: Assertion violation!\n"); }
#define assert(x) ;

// Returns an instruction word to perform FFT
// @param isDIF: 1 executes a DIF FFT (forward FFT for encoding)
//				 0 executes a DIT FFT (inverse FFT for decoding)
uint64_t getFFTTransformationInstructionWord(uint8_t isDIF)
{
	assert(isDIF < (1<<1));
	return (1ull<<40) | (1<<4) | (isDIF<<3) | OPC_TRANSFORMATION;
}

// Returns an instruction word to perform NTT
// @param isDIF: 1 executes a DIF FFT (inverse NTT for decryption)
//				 0 executes a DIT FFT (forward NTT for encryption)
// @param log_q: Defines bit-width of modulus q.
//				 A value of 0 corresponds to 46-bit modulus, 1 -> 47-bit, ..., 8 -> 54-bit modulus
// @param modulus_rom_index: Offset of the twiddle factors within the modulus ROM (Twiddle factor cache)
// @param qm: The 17-bit value of the modulus q = 2^(log_q[i]+46) - (qm << 24) + 1
uint64_t getNTTTransformationInstructionWord(uint8_t isDIF, uint8_t log_q, uint8_t modulus_rom_index, uint32_t qm)
{
	assert(isDIF < (1<<1));
	assert(log_q < (1<<4));
	assert(modulus_rom_index < (1<<4));
	assert(qm < (1<<17));
	qm = (-qm) & ((1<<17) - 1);
	return (1ull<<40) | (qm<<13) | (modulus_rom_index<<9) | (log_q<<5) | (isDIF<<3) | OPC_TRANSFORMATION;
}

// Returns an instruction word to perform RNS
// @param log_scale: The log2 of the scale (Delta) multiplied with each input operand
// @param log_q: Defines bit-width of modulus q.
//				 A value of 0 corresponds to 46-bit modulus, 1 -> 47-bit, ..., 8 -> 54-bit modulus
// @param modulus_rom_index: Offset of the RNS constants within the modulus ROM
// @param qm: The 17-bit value of the modulus q = 2^(log_q[i]+46) - (qm << 24) + 1
uint64_t getRNSInstructionWord(uint16_t log_scale, uint8_t log_q, uint8_t modulus_rom_index, uint32_t qm)
{
	assert(log_scale < (1<<12));
	assert(log_q < (1<<4));
	assert(modulus_rom_index < (1<<4));
	assert(qm < (1<<17));

	uint64_t scale_high, scale_low, scale_mid;
	scale_high = log_scale >> 5;
	scale_mid = (log_scale >> 3) & 0x3;
	scale_low = log_scale & 0x7;

	qm = (-qm) & ((1<<17) - 1);
	return (1ull<<40) | (scale_high<<33) | (scale_low<<30) | (qm<<13) | (modulus_rom_index<<9) | (log_q<<5) | (scale_mid<<3) | OPC_RNS;
}

// Returns an instruction word to perform IntToFloat conversion
// @param log_scale: The log2 of the scale (Delta) each input operand is divided by
// @param log_q: Defines bit-width of modulus q.
//				 A value of 0 corresponds to 46-bit modulus, 1 -> 47-bit, ..., 8 -> 54-bit modulus
// @param qm: The 17-bit value of the modulus q = 2^(log_q[i]+46) - (qm << 24) + 1
uint64_t getI2FInstructionWord(int16_t log_scale, uint8_t log_q, uint32_t qm)
{
	assert(!(log_scale < -(1<<8) || log_scale >= (1<<8)));
	assert(log_q < (1<<4));
	assert(qm < (1<<17));

	uint64_t scale_high, scale_mid, scale_low;
	scale_high = (log_scale >> 5) & 0xf;
	scale_mid  = (log_scale >> 3) & 0x3;
	scale_low  =  log_scale & 0x7;

	qm = (-qm) & ((1<<17) - 1);
	return (1ull<<40) | (scale_high<<33) | (scale_low<<30) | (qm<<13) | (log_q<<5) | (scale_mid<<3) | OPC_I2F;
}

// Returns an instruction word to perform Point-Wise Mulitplication (PWM)
// @param log_q: Defines bit-width of modulus q.
//				 A value of 0 corresponds to 46-bit modulus, 1 -> 47-bit, ..., 8 -> 54-bit modulus
// @param qm: The 17-bit value of the modulus q = 2^(log_q[i]+46) - (qm << 24) + 1
uint64_t getPWMInstructionWord(uint8_t log_q, uint32_t qm)
{
	assert(log_q < (1<<4));
	assert(qm < (1<<17));
	qm = (-qm) & ((1<<17) - 1);
	return (1ull<<40) | (qm<<13) | (log_q<<5) | OPC_PWM;
}

// Returns an instruction word to perform Projection
uint64_t getProjectInstructionWord()
{
	return (1ull<<40) | OPC_PROJECT;
}

// This function gets ins_words, an array of num_instructions many instruction words
// and prepares the array ins_buffer with INS_BUFFER_SIZE elements to be sent to the
// co-processor. It essentially adds instructions to reset the co-processor.
void initInsBuffer(uint64_t* ins_buffer, uint64_t* ins_words, uint8_t num_instructions)
{
	assert(INS_BUFFER_SIZE >= num_instructions+4);
	uint8_t i;

	ins_buffer[0] = 0x0ull;
	for(i = 1; i <= num_instructions; ++i)
	{
		ins_buffer[i] = ins_words[i-1];
	}
	ins_buffer[i++] = (1ull<<40);
	ins_buffer[i++] = 0x0ull;
	ins_buffer[i++] = 0x1full;
	for(; i < INS_BUFFER_SIZE; ++i)
	{
		ins_buffer[i] = 0;
	}
}



