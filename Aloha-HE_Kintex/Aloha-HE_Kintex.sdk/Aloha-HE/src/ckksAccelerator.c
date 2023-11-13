/*********************************************
 * This file provides the code for CKKS
 * encode+encrypt and decode+decrypt.
 * It is optimized to yield the best performance
 * and was used to gather the latency benchmarks.
 * No checks of intermediate results is done,
 * for verifying intermediate results see
 * Testing/ckksTest.c
*********************************************/

#include "ckksAccelerator.h"
#include "communication.h"
#include "instruction.h"
#include <stdlib.h>
#include <stdio.h>

// Instruction buffers. They are partially set up during ckks_init() and
// contain the instruction buffer data for encode, encrypt and decrypt.
uint64_t instructions_decrypt[INS_BUFFER_SIZE]; // instruction buffer for decrypt+decode
uint64_t instructions_encode[INS_BUFFER_SIZE];  // instruction buffer for encode
uint64_t instructions_encrypt[INS_BUFFER_SIZE]; // instruction buffer for encrypt

// Initializes the instruction buffers.
// Instruction buffers contain constant data. E.g.: the FFT instruction word in encrypt
// is always the same. This function sets up this constant data to save time during operation.
void ckks_init()
{
	uint64_t dummy[16] = { 0 };
	initInsBuffer(instructions_decrypt, dummy, 5);
	instructions_decrypt[4] = getFFTTransformationInstructionWord(0);
	instructions_decrypt[5] = getProjectInstructionWord();
	initInsBuffer(instructions_encode, dummy, 1);
	instructions_encode[1] = getFFTTransformationInstructionWord(1);
	initInsBuffer(instructions_encrypt, dummy, 3);
}

// Performs a CKKS decryption+decoding with one left modulus.
// @param c0_c1_sk: pointer on a consecutive memory region containing c0, c1, sk.
//					c0, c1: ciphertext, sk: secret key
// @param plaintext: an array with poly_size many 64-bit words / double words
//					 the even indices are the real parts, the odd indices are the imaginary parts.
//					 i.e.: x[0] = plaintext[0] + j*plaintext[1], ....,
//						   x[poly_size/2-1] = plaintext[poly_size-2] + j*plaintext[poly_size-1]
//					 Each of the uint64 elements of plaintext can directly be casted to double.
// @param poly_size: the polynomial degree. 2^13 in our case
// @param qm: The 17-bit value of the modulus q = 2^(log_q[i]+46) - (qm << 24) + 1
// @param log_q: Defines bit-width of modulus q.
//				 A value of 0 corresponds to 46-bit modulus, 1 -> 47-bit, ..., 8 -> 54-bit modulus
// @param ntt_modulus_rom_index: Offset of the NTT twiddle factors within the modulus ROM (Twiddle factor cache)
// @param log_scale: The log2 of the scale (Delta) each input operand is divided by
void ckks_decrypt(uint64_t* c0_c1_sk, uint64_t* plaintext, uint32_t poly_size, uint32_t qm, uint8_t log_q,
				  uint8_t ntt_modulus_rom_index, int32_t log_scale)
{
	cdmaDDRtoBRAM(NTT_MSG_BRAM_ID, (size_t)c0_c1_sk, 3*poly_size*sizeof(uint64_t));

	instructions_decrypt[1] = getPWMInstructionWord(log_q, qm);
	instructions_decrypt[2] = getNTTTransformationInstructionWord(1,log_q,ntt_modulus_rom_index,qm);
	instructions_decrypt[3] = getI2FInstructionWord(log_scale,log_q,qm);

	send64(instructions_decrypt, INS_BUFFER_SIZE, 1, 0);
	cdmaWaitForIdle();

	exeIns();

	cdmaBRAMtoDDR((size_t)plaintext, FFT_BRAM_ID, poly_size*sizeof(uint64_t));
	cdmaWaitForIdle();
}

// Performs a CKKS encoding+encryption.
// @param ciphertext: array of num_moduli pointers. Each pointer indicates an array with
//					  2*poly_size many 64-bit elements. Each array stores a (c0,c1)-pair of one modulus
// @param plaintext: an array with poly_size many 64-bit words / double words
//					 the even indices are the real parts, the odd indices are the imaginary parts.
//					 i.e.: x[0] = plaintext[0] + j*plaintext[1], ....,
//						   x[poly_size/2-1] = plaintext[poly_size-2] + j*plaintext[poly_size-1]
//					 Each of the uint64 elements of plaintext can directly be casted from double.
// @param poly_size: the polynomial degree. 2^13 in our case
// @param error_polys_seed: the 64-bit high entropy seed for generating the error polynomials
// @param pk1_seeds: array with num_moduli 64-bit seeds. Each seed generates one pk1 polynomial residue
// @param num_moduli: number of moduli involved in encryption
// @param ntt_modulus_rom_indices: Array with num_moduli offsets of the NTT twiddle factors within
//								   the modulus ROM (Twiddle factor cache). One offset for each modulus
//								   involved in encryption.
// @param rns_modulus_rom_indices: Array with num_moduli offsets of the RNS constants within
//								   the modulus ROM. One offset for each modulus involved in encryption.
// @param pk0: Array with num_moduli pointers. Each pointer indicates an array with poly_size elements
//			   representing one of the pk0 residues.
// @param log_scale: The log2 of the scale (Delta) multiplied with each input operand
// @param log_q: Array with num_moduli many bit-widths of the moduli q.
//				 A value of 0 corresponds to 46-bit modulus, 1 -> 47-bit, ..., 8 -> 54-bit modulus
// @param qm: Array with num_moduli values defining the num_moduli many primes q.
//			  each array element is a 17-bit value such that q[i] = 2^(log_q[i]+46) - (qm[i] << 24) + 1
void ckks_encrypt(uint64_t** ciphertext, uint64_t* plaintext, uint32_t poly_size, uint64_t error_polys_seed,
				  uint64_t* pk1_seeds, uint8_t num_moduli, uint32_t* ntt_modulus_rom_indices,
				  uint32_t* rns_modulus_rom_indices, uint64_t** pk0, int32_t log_scale, uint32_t* qm,
				  uint32_t* log_q)
{
	cdmaDDRtoBRAM(FFT_BRAM_ID, (size_t)plaintext, poly_size*sizeof(uint64_t));

	log_scale = log_scale - 52 - 1023 - 13; // -13 for scaling factor of 1/N
	if(log_scale < 0)
		log_scale += 4096;

	send64(instructions_encode, INS_BUFFER_SIZE, 1, 0);
	cdmaWaitForIdle();

	exeInsWithParameter(error_polys_seed);

	for(uint8_t modulus_index = 0; modulus_index < num_moduli; ++modulus_index)
	{
		cdmaDDRtoBRAM(NTT_KEY_BRAM_ID, (size_t)pk0[modulus_index], poly_size*sizeof(uint64_t));

		instructions_encrypt[1] = getRNSInstructionWord(log_scale, log_q[modulus_index], rns_modulus_rom_indices[modulus_index], qm[modulus_index]);
		instructions_encrypt[2] = getNTTTransformationInstructionWord(0, log_q[modulus_index], ntt_modulus_rom_indices[modulus_index], qm[modulus_index]);
		instructions_encrypt[3] = getPWMInstructionWord(log_q[modulus_index], qm[modulus_index]);

		send64(instructions_encrypt, INS_BUFFER_SIZE, 1, 0);
		cdmaWaitForIdle();

		exeInsWithParameter(pk1_seeds[modulus_index]);

		cdmaBRAMtoDDR((size_t)ciphertext[modulus_index], NTT_MSG_BRAM_ID, poly_size*sizeof(uint64_t)*2);
		cdmaWaitForIdle();
	}
}
