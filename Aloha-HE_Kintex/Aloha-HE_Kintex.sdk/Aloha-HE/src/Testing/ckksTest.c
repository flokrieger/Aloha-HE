/****************************************
 * Testing and Verification Code
 *
 * This file contains extensive functionality
 * for testing the design.
 *
 * The single test cases are executed if the
 * corresponding macro is defined
 * (i.e. uncommented). The reference output
 * is generated via Microsoft SEAL and in the
 * respective header files.
 *
 * Note: Access to BRAMs without DMA
 * (i.e.: with send64() and receive64()) is
 * only supported if PROVIDE_DEBUG_IO set
 * to 1 (ComputeCore.v)
 ***************************************/

#include "xparameters.h"
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <math.h>
#include "xil_cache.h"
#include "../communication.h"
#include "../instruction.h"
#include "../xtime_l.h"
#include "../ckksAccelerator.h"

/* Test and benchmark end-to-end encode+encrypt and decrypt+decode.
 * This uses the DMA and simulates productive use of the software.
 * No intermediate results are verified for correctness.
 */
#define FAST_ENCRYPTION 			// Testing end-to-end encode+encrypt
#define FAST_DECRYPTION 			// Testing end-to-end decrypt+decode

/* Uncommenting these macros execute the corresponding testcase.
 * The FFT result differs slightly depending on the twiddle factor
 * handling due to numerical inaccuracies. Hence, generated and
 * stored twiddle factor designs come with their own testcase.
 */
//#define DOUBLE_FFT_GENERATED		// Tests the FFT with generated twiddle factors
//#define DOUBLE_INV_FFT_GENERATED  // Tests the inverse FFT with generated twiddle factors
//#define DOUBLE_FFT_STORED         // Tests the FFT with stored twiddle factors
//#define DOUBLE_INV_FFT_STORED		// Tests the inverse FFT with stored twiddle factors
//#define RNS						// Tests the RNS
//#define NTT						// Tests the NTT
//#define INV_NTT					// Tests the inverse NTT
//#define INT_TO_FLP_DOUBLE         // Tests the conversion of integers to floating-point numbers
//#define PWM						// Tests the point-wise multiplication
//#define EXPAND					// Tests the Expansion of plaintexts sent to the co-processor
//#define RANDOM_SAMPLING			// Tests the sampling of error sampling using Trivium
//#define KEY_SAMPLING				// Tests the sampling of the public key pk1
//#define DMA						// Tests the DMA

//#define FULL_ENCRYPTION			// Tests a full encode+encrypt procedure using send64 and receive64
//#define FULL_DECRYPTION			// Tests a full decode+decrypt procedure using send64 and receive64
//#define FULL_ENCRYPTION_DMA		// Tests a full encode+encrypt procedure using DMA
//#define FULL_DECRYPTION_DMA		// Tests a full decode+decrypt procedure using DMA

//#define BENCH						// Runs the benchmark code to profile latency of each step
									// Note: undefine the PERFORMANCE macro in communication.c to obtain co-processor cycle counts

#define DO_INTERMEDIATE_TESTS 1 	// Checks every intermediate result for correctness if 1

/***************************************************************************************************/

const uint64_t CPU_FREQ_MHZ = 200;    // clock frequency of host CPU
const uint64_t COPROC_FREQ_MHZ = 200; // clock frequency of co-processor

#define ALIGN __attribute__((aligned(8192)))

#ifdef DOUBLE_FFT_GENERATED
#include "fftInRes.h"
#define DO_FORWARD_TRANSFORM (1)
uint64_t result[8192*2];
#endif
#ifdef DOUBLE_INV_FFT_GENERATED
#include "ifftInRes.h"
#define DO_FORWARD_TRANSFORM (0)
uint64_t result[8192*2];
#endif
#ifdef DOUBLE_FFT_STORED
#include "fftStoredInRes.h"
#define DO_FORWARD_TRANSFORM (1)
uint64_t result[8192*2];
#endif
#ifdef DOUBLE_INV_FFT_STORED
#include "ifftStoredInRes.h"
#define DO_FORWARD_TRANSFORM (0)
uint64_t result[8192*2];
#endif
#ifdef NTT
#include "nttInRes.h"
#define DO_FORWARD_TRANSFORM (1)
uint64_t result_message[8192];
uint64_t result_v[8192];
uint64_t result_e1[8192];
#endif
#ifdef INV_NTT
#include "inttInRes.h"
#define DO_FORWARD_TRANSFORM (0)
uint64_t result_message[8192];
uint64_t result_v[8192];
uint64_t result_e1[8192];
#endif
#ifndef DO_FORWARD_TRANSFORM
#define DO_FORWARD_TRANSFORM (0)
#endif
#ifdef RNS
#include "rns.h"
#include "error_polys.h"
#include "error_rns_results.h"
uint64_t result_message[8192];
uint64_t result_v[8192];
uint64_t result_e1[8192];
#endif
#ifdef PWM
#include "pwm.h"
uint64_t result[8192];
uint64_t result1[8192];
#endif
#ifdef EXPAND
#include "expand.h"
uint64_t result[2*8192];
#endif
#if defined(FULL_ENCRYPTION) || defined(FULL_DECRYPTION) || defined(FULL_ENCRYPTION_DMA) || defined(FULL_DECRYPTION_DMA) || defined(FAST_ENCRYPTION) || defined(FAST_DECRYPTION)
#include "fullEnc.h"
#include "fullDec.h"
#endif
#ifdef RANDOM_SAMPLING
#include "errorSampling.h"
#endif
#ifdef KEY_SAMPLING
#include "keySampling.h"
#endif
#ifdef DMA
uint64_t data[7*8192] ALIGN;
uint64_t* input     = data;
uint64_t* input_m   = data + 8192;
uint64_t* input_key = data + 8192 * 2;
uint64_t* input_v   = data + 8192 * 3;
uint64_t* input_fft = data + 8192 * 4;
uint64_t* result    = data + 8192 * 5;
uint64_t* result1   = data + 8192 * 6;
#endif

uint64_t rand64() { return ((uint64_t)rand() << 62) | ((uint64_t)rand() << 31) | rand(); }
uint64_t rand54() { return rand64() & ((1ull<<54) - 1); }

uint32_t fft_HW(uint64_t *result, uint64_t *input, uint32_t do_forw_transf, int skip, uint64_t seed)
{
	uint32_t poly_degree = 8192;
	uint32_t fpga_cycle_count = 0;
	uint64_t INS[INS_BUFFER_SIZE];

	uint32_t is_dif = do_forw_transf;

	uint64_t ins_word = getFFTTransformationInstructionWord(is_dif);
	initInsBuffer(INS, &ins_word, 1);

	if(input){
		send64(input, do_forw_transf ? poly_degree : poly_degree*2, 0, do_forw_transf ? FFT_BRAM_EXPAND_ID : FFT_BRAM_ID);
	}

	if(!skip){
		send64(INS, INS_BUFFER_SIZE, 1, 0);
		fpga_cycle_count = exeInsWithParameter(seed);
	}

	if(result){
		receive64(result, 2*poly_degree, FFT_BRAM_ID);
	}
	return fpga_cycle_count;
}

uint32_t rns_HW(uint64_t *result_message, uint64_t* result_v, uint64_t* result_e1, uint64_t *input, int skip_rns, uint32_t modulus_select, int32_t scale, uint32_t qm, uint32_t current_k)
{
	while(scale < -(1<<8) || scale >= (1<<8))
		printf("Scale out of bounds!\n");

	uint32_t poly_degree = 8192;
	uint64_t INS[INS_BUFFER_SIZE];
	uint32_t fpga_cycle_count = 0;

	scale = scale - 52 - 1023 - 13; // -13 bc of scaling factor of 1/N
	if(scale < 0)
		scale += 4096; // 2^12

	uint64_t ins_word = getRNSInstructionWord(scale, current_k, modulus_select, qm);
	initInsBuffer(INS, &ins_word, 1);

	if(input != NULL){
		send64(input, 2*poly_degree, 0, FFT_BRAM_ID);
	}


	if(!skip_rns){
		send64(INS, INS_BUFFER_SIZE, 1, 0);
		fpga_cycle_count = exeIns();
	}

	if(result_message){
		receive64(result_message, poly_degree, NTT_MSG_BRAM_ID);
	}
	if(result_v){
		receive64(result_v, poly_degree, NTT_V_BRAM_ID);
	}
	if(result_e1){
		receive64(result_e1, poly_degree, NTT_E1_BRAM_ID);
	}

	return fpga_cycle_count;
}

uint32_t ntt_HW(uint64_t *result, uint64_t *input, uint32_t qm, uint32_t current_k, uint32_t constants_select, uint32_t do_forw_transf, uint32_t bram_sel, int skip, uint64_t seed)
{
	uint32_t poly_degree = 8192;
	uint32_t fpga_cycle_count = 0;
	uint64_t INS[INS_BUFFER_SIZE];

	uint32_t is_dif = do_forw_transf ? 0 : 1;

	uint64_t ins_word = getNTTTransformationInstructionWord(is_dif, current_k, constants_select, qm);
	initInsBuffer(INS, &ins_word, 1);

	if(input) {
		send64(input, poly_degree, 0, bram_sel);
	}

	if(!skip){
		send64(INS, INS_BUFFER_SIZE, 1, 0);
		fpga_cycle_count = exeInsWithParameter(seed);
	}

	if(result){
		receive64(result, poly_degree, bram_sel);
	}

	return fpga_cycle_count;
}

uint32_t i2f_HW(uint64_t *result, uint64_t *input, uint32_t qm, uint32_t current_k, int32_t scale)
{
	while(scale < -(1<<8) || scale >= (1<<8))
		printf("Scale out of bounds!\n");

	uint32_t poly_degree = 8192;
	uint32_t fpga_cycle_count = 0;
	uint64_t INS[INS_BUFFER_SIZE];

	uint64_t ins_word = getI2FInstructionWord(scale, current_k, qm);
	initInsBuffer(INS, &ins_word, 1);

	if(input){
		send64(input, poly_degree, 0, NTT_MSG_BRAM_ID);
	}


	send64(INS, INS_BUFFER_SIZE, 1, 0);
	fpga_cycle_count = exeIns();

	if(result){
		receive64(result, 2*poly_degree, FFT_BRAM_ID);
	}

	return fpga_cycle_count;
}

uint32_t pwm_HW(uint64_t *result_c0_m, uint64_t *result_c1, uint64_t *v_sk_poly, uint64_t *pk0_c1_poly, uint64_t *pk1_poly, uint64_t *msg_c0_poly, uint64_t *e1_poly, uint32_t qm, uint32_t current_k)
{
	uint32_t fpga_cycle_count = 0;
	uint32_t poly_degree = 8192;
	uint64_t INS[INS_BUFFER_SIZE];

	uint64_t ins_word = getPWMInstructionWord(current_k, qm);
	initInsBuffer(INS, &ins_word, 1);

	if(v_sk_poly){
		send64(v_sk_poly, poly_degree, 0, NTT_V_BRAM_ID);
	}
	if(pk0_c1_poly){
		send64(pk0_c1_poly, poly_degree, 0, NTT_KEY_BRAM_ID);
	}
	if(pk1_poly){
		send64(pk1_poly, poly_degree, 0, FFT_IM_BRAM_ID);
	}
	if(msg_c0_poly){
		send64(msg_c0_poly, poly_degree, 0, NTT_MSG_BRAM_ID);
	}
	if(e1_poly){
		send64(e1_poly, poly_degree, 0, NTT_E1_BRAM_ID);
	}

	send64(INS, INS_BUFFER_SIZE, 1, 0);
	fpga_cycle_count = exeIns();

	if(result_c1){
		receive64(result_c1, poly_degree, NTT_KEY_BRAM_ID);
	}
	if(result_c0_m){
		receive64(result_c0_m, poly_degree, NTT_MSG_BRAM_ID);
	}

	return fpga_cycle_count;
}

uint32_t prj_HW(uint64_t* result, uint64_t* input)
{
	uint32_t poly_degree = 8192;

	uint64_t INS[INS_BUFFER_SIZE];
	uint64_t instr = getProjectInstructionWord();
	initInsBuffer(INS, &instr, 1);
	if(input)
		send64(input, 2*poly_degree, 0, FFT_BRAM_ID);

	send64(INS, INS_BUFFER_SIZE, 1, 0);
	uint32_t fpga_cycle_count = exeIns();

	if(result)
	{
		uint64_t tmp[2*poly_degree];
		receive64(tmp, 2*8192, FFT_BRAM_ID);
		for(uint32_t i = 0; i < poly_degree; ++i)
			result[i] = tmp[i+poly_degree];
	}
	return fpga_cycle_count;
}

void sendErrorPolys_HW(uint64_t *v, uint64_t *e0, uint64_t* e1)
{
	uint32_t poly_degree = 8192;
	uint64_t combined[poly_degree];
	for (uint32_t i = 0; i < poly_degree; ++i)
	{
		combined[i] = (v[i] << 12) | (e0[i] << 6) | e1[i];
	}

	send64(combined, poly_degree, 0, ERROR_BRAM_ID);
}

void recvErrorPolys_HW(uint64_t *v, uint64_t *e0, uint64_t* e1)
{
	uint32_t poly_degree = 8192;
	uint64_t combined[poly_degree];

	receive64(combined, poly_degree, ERROR_BRAM_ID);

	for (uint32_t i = 0; i < poly_degree; ++i)
	{
		v[i] = (combined[i] >> 12) & 0x3;
		e0[i] = (combined[i] >> 6) & 0x3f;
		e1[i] = (combined[i]) & 0x3f;
	}
}

int compareDouble(double a, double b, double eps)
{
	if(a == 0.0 || a == -0.0)
		return b < eps;
	else if(b == 0.0 || b == -0.0)
		return a < eps;
	else
	{
		double tmp = b/a - 1.0;
		tmp = tmp < 0.0 ? -tmp : tmp;
		return tmp < eps;
	}
}

int checkPoly(uint64_t* res, uint64_t* ref, int size, const char* poly_name, int modulus_nr, int64_t delta_max)
{
	int error = 0;
	for(int i = 0; i < size; ++i)
	{
		int64_t delta = res[i] - ref[i];
		if(delta > delta_max || delta < -delta_max){
			if(error<10)
				printf("Error: modulus %d: %s[%d]: result: %llx, expected: %llx\n",modulus_nr,poly_name,i,res[i], ref[i]);
			error++;
		}
	}
	return error != 0;
}

#if defined(FULL_ENCRYPTION) || defined(FULL_DECRYPTION) || defined(FULL_ENCRYPTION_DMA) || defined(FULL_DECRYPTION_DMA) || defined(FAST_ENCRYPTION) || defined(FAST_DECRYPTION)
int checkPolyFFT(uint64_t* res, uint64_t* ref, int size, int is_forward_fft, const char* poly_name, double eps)
{
	int error = 0;
	if(is_forward_fft){
		for(int i = 0; i < size; ++i)
		{
			double a = *(double*)&(res[i*2]);
			a *= pow(2.0, 1.0*scale) / size;
			double b = *(double*)&(ref[i*2]);
			if(!compareDouble(a, b, eps)){
				if(error<10)
					printf("Error FFT: %s[%d]: result: %llx (%lf), expected: %llx (%lf)\n",poly_name,i,res[i*2],a, ref[i*2],b);
				error++;
			}
		}
	}
	else
	{
		for(int i = 0; i < size*2; ++i)
		{
			double a = *(double*)&(res[i]);
			double b = *(double*)&(ref[i]);
			if(!compareDouble(a, b, eps)){
				if(error<10)
					printf("Error FFT: %s[%d] %s : result: %llx (%lf), expected: %llx (%lf)\n",poly_name,i/2, i % 2 ? "im" : "re", res[i],a, ref[i],b);
				error++;
			}
		}
	}
	return error != 0;
}

void getMessageAfterRns(int poly_size)
{
	static char already_done = 0;
	if(already_done)
		return;

	uint64_t* e0 = e0_poly;
	for(uint32_t j = 0; j < num_moduli; ++j)
	{
		uint64_t q = (1ull << (46+current_k[j])) - (qm[j] << 24) + 1;
		int64_t* m = (int64_t*)message_after_rns[j];
		for(int i = 0; i < poly_size; i++)
		{
			if(e0[i] & (1<<5))
				m[i] = m[i] - (e0[i] & 0x1f);
			else
				m[i] = m[i] + (e0[i] & 0x1f);

			if(m[i] >= (int64_t)q)
				m[i] -= q;
			else if(m[i] < 0)
				m[i] += q;
		}
	}
	already_done = 1;
}
#endif

void runLatencyBench()
{
	const int avg_cnt = 4;
	XTime tStart,tEnd,dt = 0;
	uint32_t poly_degree = 8192;
	uint64_t array[2*poly_degree] ALIGN;
	uint32_t fpga_cycle_count;

	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		send64(array, poly_degree, 0, FFT_BRAM_EXPAND_ID);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("Sending N/2 FlP values took %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		receive64Project(array);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("Recving N/2 FlP values took %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		send64(array, poly_degree, 0, NTT_MSG_BRAM_ID);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("Sending N   int values took %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		receive64(array, poly_degree, NTT_MSG_BRAM_ID);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("Recving N   int values took %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		cdmaDDRtoBRAM(NTT_MSG_BRAM_ID, (size_t)array,8192*8);
		cdmaWaitForIdle();
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("Sending N   DMA values took %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		cdmaBRAMtoDDR((size_t)array, NTT_MSG_BRAM_ID, 8192*8);
		cdmaWaitForIdle();
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("Recving N   DMA values took %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	fpga_cycle_count = dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		fpga_cycle_count += fft_HW(NULL, NULL, 1, 0, 0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("fFFT took:      %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
	printf("     comp only: %9lluk CPU cc and %9luk FPGA cc -> (%5.0lf us)\n",fpga_cycle_count*CPU_FREQ_MHZ/COPROC_FREQ_MHZ/avg_cnt/1000,fpga_cycle_count/avg_cnt/1000, 1.0*fpga_cycle_count/avg_cnt/COPROC_FREQ_MHZ);

	fpga_cycle_count = dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		fpga_cycle_count += fft_HW(NULL, NULL, 0, 0, 0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("iFFT took:      %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
	printf("     comp only: %9lluk CPU cc and %9luk FPGA cc -> (%5.0lf us)\n",fpga_cycle_count*CPU_FREQ_MHZ/COPROC_FREQ_MHZ/avg_cnt/1000,fpga_cycle_count/avg_cnt/1000, 1.0*fpga_cycle_count/avg_cnt/COPROC_FREQ_MHZ);

	fpga_cycle_count = dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		fpga_cycle_count += rns_HW(NULL, NULL, NULL, NULL, 0, 0, 0, 0 ,0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("RNS  took:      %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
	printf("     comp only: %9lluk CPU cc and %9luk FPGA cc -> (%5.0lf us)\n",fpga_cycle_count*CPU_FREQ_MHZ/COPROC_FREQ_MHZ/avg_cnt/1000,fpga_cycle_count/avg_cnt/1000, 1.0*fpga_cycle_count/avg_cnt/COPROC_FREQ_MHZ);

	fpga_cycle_count = dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		fpga_cycle_count += ntt_HW(NULL, NULL, 0, 0, 0, 0, 0, 0, 0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("fNTT took:      %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
	printf("     comp only: %9lluk CPU cc and %9luk FPGA cc -> (%5.0lf us)\n",fpga_cycle_count*CPU_FREQ_MHZ/COPROC_FREQ_MHZ/avg_cnt/1000,fpga_cycle_count/avg_cnt/1000, 1.0*fpga_cycle_count/avg_cnt/COPROC_FREQ_MHZ);
	fpga_cycle_count = dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		fpga_cycle_count += ntt_HW(NULL, NULL, 0, 0, 0, 0, 0, 0, 0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("iNTT took:      %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
	printf("     comp only: %9lluk CPU cc and %9luk FPGA cc -> (%5.0lf us)\n",fpga_cycle_count*CPU_FREQ_MHZ/COPROC_FREQ_MHZ/avg_cnt/1000,fpga_cycle_count/avg_cnt/1000, 1.0*fpga_cycle_count/avg_cnt/COPROC_FREQ_MHZ);

	fpga_cycle_count = dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		fpga_cycle_count += pwm_HW(NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("PWM  took:      %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
	printf("     comp only: %9lluk CPU cc and %9luk FPGA cc -> (%5.0lf us)\n",fpga_cycle_count*CPU_FREQ_MHZ/COPROC_FREQ_MHZ/avg_cnt/1000,fpga_cycle_count/avg_cnt/1000, 1.0*fpga_cycle_count/avg_cnt/COPROC_FREQ_MHZ);

	fpga_cycle_count = dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		fpga_cycle_count += i2f_HW(NULL, NULL, 0, 0, 0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("I2F  took:      %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
	printf("     comp only: %9lluk CPU cc and %9luk FPGA cc -> (%5.0lf us)\n",fpga_cycle_count*CPU_FREQ_MHZ/COPROC_FREQ_MHZ/avg_cnt/1000,fpga_cycle_count/avg_cnt/1000, 1.0*fpga_cycle_count/avg_cnt/COPROC_FREQ_MHZ);

	dt = 0;
	uint64_t INS[INS_BUFFER_SIZE];
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		send64(INS, INS_BUFFER_SIZE, 1, 0);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("INS send  took: %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	uint64_t instr = getProjectInstructionWord();
	initInsBuffer(INS, &instr, 1);
	send64(INS, INS_BUFFER_SIZE, 1, 0);
	dt = 0;
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		exeIns();
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("HW proj  took:  %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);

	dt = 0;
	uint64_t tmp1[8192];
	uint64_t tmp2[8192];
	for(int i = 0; i < avg_cnt; ++i) {
		XTime_GetTime(&tStart);
		swProject(tmp1, tmp2);
		XTime_GetTime(&tEnd);
		dt += 2*(tEnd-tStart);
	}
	printf("SW proj  took:  %9lluk CPU cc and %9lluk FPGA cc -> (%5.0lf us)\n",dt/avg_cnt/1000, dt*COPROC_FREQ_MHZ/CPU_FREQ_MHZ/avg_cnt/1000, 1.0*dt/avg_cnt/CPU_FREQ_MHZ);
}

void test_hardware(){
	XTime tStart = 0, tEnd = 0;
	const int poly_size = 8192; // 2^13
	const double eps_fft = pow(2,-30); // ~0.9e-9%
	double eps_fft_tw_storage = pow(2,-30);
	int64_t rns_delta_max = 1; // +/- 1
	char error = 0;

#if defined(DOUBLE_FFT_GENERATED) || defined(DOUBLE_INV_FFT_GENERATED) || defined(DOUBLE_FFT_STORED) || defined(DOUBLE_INV_FFT_STORED)

	int skip_fft = 0; // just used to check sending / receiving data
	printf("Start\n");
	XTime_GetTime(&tStart);
	fft_HW(result, input, DO_FORWARD_TRANSFORM, skip_fft, 0);
	XTime_GetTime(&tEnd);
	printf("test in HW took %llu clock cycles \n",2*(tEnd-tStart));

	uint64_t* ref = skip_fft ? input : expected;
	printf("some results: ======== \n");
	printf("%llx\n",result[0]);
	printf("%llx\n",result[1]);
	printf("%llx\n",result[2]);
	printf("%llx\n",result[3]);
	printf("=======================\n");
	for(int i=0; i < poly_size*2; i += 2){
		if(result[i] != ref[i] && (result[i] != (1ull<<63) || result[i] != (1ull<<63))){
			printf("Error at coeff %d real: result: %llx expected: %llx\n",i/2,result[i],ref[i]);
			error = 1;
		}
		if(result[i+1] != ref[i+1] && (result[i+1] != (1ull<<63) || result[i+1] != (1ull<<63))){
			printf("Error at coeff %d imag: result: %llx expected: %llx\n",i/2,result[i+1],ref[i+1]);
			error = 1;
		}
	}
#endif

#if defined(RNS)

	sendErrorPolys_HW(v_poly_sam, e0_poly_sam, e1_poly_sam);
	receive64(result_message, poly_size, ERROR_BRAM_ID);

	int ok = 1;
	for (int i = 0; i < poly_size; ++i)
	{
		if(result_message[i] != ((v_poly_sam[i] << 12) | (e0_poly_sam[i] << 6) | e1_poly_sam[i]))
		{
			printf("Error sending error polys at %d!\n",i);
			ok = 0;
			error = 1;
		}
	}
	if(!ok){
		printf("Failed error poly sending or receiving!\n");
		return;
	}


	uint32_t modulus_select = 4;
	sendErrorPolys_HW(v_poly_sam, e0_poly_sam, e1_poly_sam);

	for(modulus_select = 0; modulus_select < num_testvec; modulus_select++){
		printf("======= Start with modulus %ld =======\n",modulus_select);
		XTime_GetTime(&tStart);
		rns_HW(result_message, result_v, result_e1, input + 2*poly_size*modulus_select, 0, modulus_select, scale_powers[modulus_select], qm[modulus_select], k_array[modulus_select]);
		XTime_GetTime(&tEnd);
		printf("test in HW took %llu clock cycles \n",2*(tEnd-tStart));

		uint64_t* ref_message = expected + poly_size*modulus_select;
		uint64_t* ref_v = expected_v + poly_size*modulus_select;
		uint64_t* ref_e1 = expected_e1 + poly_size*modulus_select;
		for(int i=0; i < poly_size; i++){
			if(result_message[i] != ref_message[i]){
				printf("Error at msg coeff %d real: result: %llx expected: %llx\n",i,result_message[i],ref_message[i]);
				error = 1;
			}
			if(result_v[i] != ref_v[i]){
				printf("Error at v coeff %d real: result: %llx expected: %llx\n",i,result_v[i],ref_v[i]);
				error = 1;
			}
			if(result_e1[i] != ref_e1[i]){
				printf("Error at e1 coeff %d real: result: %llx expected: %llx\n",i,result_e1[i],ref_e1[i]);
				error = 1;
			}
		}
	}
#endif

#if defined(NTT) || defined(INV_NTT)
	uint32_t skip_ntt = 0;
	uint32_t dest_brams[] = {NTT_MSG_BRAM_ID,NTT_V_BRAM_ID,NTT_E1_BRAM_ID};

	for(int i = 0; i < 3; ++i){
		uint32_t dest_bram = dest_brams[i];
		for (uint32_t constants_sel = 0; constants_sel < num_testvec; ++constants_sel) {
			printf("======= Start NTT with modulus %ld: qm= 0x%llx, log(q)= %llu, bram %lu =======\n", constants_sel, qm[constants_sel], current_k[constants_sel] + 46, dest_bram);
			XTime_GetTime(&tStart);
			ntt_HW(result_message, input, qm[constants_sel], current_k[constants_sel], constants_sel, DO_FORWARD_TRANSFORM, dest_bram, skip_ntt, 0);
			XTime_GetTime(&tEnd);
			printf("test in HW took %llu clock cycles \n",2*(tEnd-tStart));

			uint64_t* ref_message = skip_ntt ? input : expected + poly_size*constants_sel;
			for(int i=0; i < poly_size; i++){
				if(result_message[i] != ref_message[i]){
					printf("Error at msg coeff %d real: result: %llx expected: %llx\n",i,result_message[i],ref_message[i]);
					error = 1;
				}
			}
		}
	}

#endif

#if defined(INT_TO_FLP_DOUBLE)
	srand(5678);

	uint64_t qm_array[] = {0x9,0x1,0x28,0x5,0x1c,0x7,0xd,0xa,0x1};
	uint64_t k_array[] = {0x0,0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8};
	uint64_t num_primes = sizeof(qm_array) / sizeof(qm_array[0]);

	uint64_t input[poly_size];
	uint64_t result[2*poly_size];
	for(uint64_t i = 0; i < num_primes; ++i){
		int32_t scale = (int32_t)((uint32_t)rand() % (1<<6)) - (1<<5);
		uint64_t current_q = (1ull << (46+k_array[i])) - (qm_array[i] << 24) + 1;
		printf("======= Start I2F with modulus %lld: qm= 0x%llx, log(q)= %llu, q=%llx, scale = %ld =======\n", i, qm_array[i], k_array[i] + 46, current_q,scale);

		for(int j = 0; j < poly_size; ++j){
			if(j == 0)
				input[j] = 0;
			else if(j == 1)
				input[j] = current_q - 1;
			else if(j == 2)
				input[j] = current_q / 2;
			else if(j == 3)
				input[j] = current_q / 2 +1;
			else
				input[j] = ((uint64_t)rand() << 32) | (uint64_t)rand();
			input[j] %= current_q;
		}

		XTime_GetTime(&tStart);
		i2f_HW(result, input, qm_array[i], k_array[i], scale);
		XTime_GetTime(&tEnd);
		printf("test in HW took %llu clock cycles \n",2*(tEnd-tStart));

		for(int j = 0; j < poly_size; ++j){
			double expected;
            if(input[j] > current_q / 2)
            {
                uint64_t tmp = current_q - input[j];
                expected = -((double)tmp);
            }
            else
            {
            	expected = (double)input[j];
            }

            if(scale < 0)
            	expected /= (double)(1ull << -scale);
            else
            	expected *= (double)(1ull << scale);

            uint64_t expected_int = *(uint64_t*)&expected;
            if(result[j*2] != expected_int){
				printf("Error at real coeff %d real: result: %llx expected: %llx\n",j,result[j*2],expected_int);
				error = 1;
			}
            if(result[j*2+1] != 0){
				printf("Error at imag coeff %d real: result: %llx expected: %x\n",j,result[j*2+1],0);
				error = 1;
			}
		}
	}

#endif

#if defined(PWM)


	for(uint64_t i = 0; i < num_testvec; ++i){
		printf("======= Start PWM with modulus %lld: qm= 0x%llx, log(q)= %llu =======\n", i, qm[i], current_k[i] + 46);

		XTime_GetTime(&tStart);
		pwm_HW(result, result1, a_input + poly_size*i,
					   b_input + poly_size*i,
					   b_input + poly_size*i,
					   c_input + poly_size*i,
					   c_input + poly_size*i, qm[i], current_k[i]);
		XTime_GetTime(&tEnd);
		printf("test in HW took %llu clock cycles \n",2*(tEnd-tStart));

		uint64_t* ref = expected + poly_size*i;
		for(int i=0; i < poly_size; i++){
			if(result[i] != ref[i]){
				printf("Error at msg coeff %d real: result: %llx expected: %llx\n",i,result[i],ref[i]);
				error = 1;
			}
			if(result1[i] != ref[i]){
				printf("Error at msg1 coeff %d real: result: %llx expected: %llx\n",i,result1[i],ref[i]);
				error = 1;
			}
		}
	}

#endif

#if defined(EXPAND)
	uint64_t tmp[2*poly_size];
	fft_HW(result, input_exp, 1, 1, 0);
	error |= checkPoly(result, expected_exp,2*poly_size,"expand result0", 0, 0);
	fft_HW(result, input_exp, 1, 1, 0);
	error |= checkPoly(result, expected_exp,2*poly_size,"expand result1", 0, 0);
	ntt_HW(tmp, input_exp, 0, 0, 0, 0, NTT_MSG_BRAM_ID, 0, 0);
	fft_HW(result, input_exp, 1, 1, 0);
	error |= checkPoly(result, expected_exp,2*poly_size,"expand result2", 0, 0);

	fft_HW(NULL, input_proj, 0, 1, 0);
	receive64Project(result);
	error |= checkPoly(result, expected_proj,poly_size,"project result", 0, 0);

	uint64_t INS[INS_BUFFER_SIZE];
	uint64_t instr = getProjectInstructionWord();
	initInsBuffer(INS, &instr, 1);
	send64(expected_exp, 2*8192, 0, FFT_BRAM_ID);
	send64(INS, INS_BUFFER_SIZE, 1, 0);
	exeIns();
	receive64(tmp, 2*8192, FFT_BRAM_ID);
	error |= checkPoly(tmp+8192, expected_proj,poly_size,"project result HW", 0, 0);

	cdmaDDRtoBRAM(FFT_BRAM_ID, (size_t)input_exp, 8192*8);
	cdmaWaitForIdle();
	send64(INS, INS_BUFFER_SIZE, 1, 0);
	exeIns();
	cdmaBRAMtoDDR((size_t)result, FFT_BRAM_ID, 8192*8);
	cdmaWaitForIdle();
	error |= checkPoly(result, expected_proj,poly_size,"project result HW DMA", 0, 0);


#endif

#ifdef RANDOM_SAMPLING
	uint64_t e0_result[poly_size];
	uint64_t e1_result[poly_size];
	uint64_t v_result[poly_size];

	for(uint32_t i = 0; i < num_testvec; ++i)
	{
		fft_HW(NULL, NULL, 1, 0, seeds[i]);
		//sendErrorPolys_HW(v+i*poly_size,e0+i*poly_size,e1+i*poly_size);
		recvErrorPolys_HW(v_result, e0_result, e1_result);
		error |= checkPoly(v_result, v+i*poly_size, poly_size, "v", 0, 0);
		error |= checkPoly(e0_result, e0+i*poly_size, poly_size, "e0", 0, 0);
		error |= checkPoly(e1_result, e1+i*poly_size, poly_size, "e1", 0, 0);
	}
#endif

#ifdef KEY_SAMPLING
	uint64_t pk1_result[poly_size];

	for(uint32_t i = 0; i < num_testvec; ++i)
	{
		ntt_HW(NULL, NULL, qm[i], k_array[i], 0, 1, NTT_MSG_BRAM_ID, 0, seeds[i]);
		receive64(pk1_result, poly_size, FFT_IM_BRAM_ID);
		error |= checkPoly(pk1_result, pk1+i*poly_size, poly_size, "pk1", 0, 0);
	}
#endif

#ifdef DMA
	uint32_t num_bytes = poly_size*8, error_partial = 0;

	uint64_t time;
	XTime_GetTime(&time);
	int seed = time;
	srand(seed);
	printf("Seed: %x\n",seed);

	printf("================== Testing old bram interface... ======================\n");
	for(int i = 0; i < 8192; ++i)
	{
		input_m[i] = rand54();
		input_v[i] = rand54();
		input_key[i] = rand54();
		input_fft[i] = rand64();
		result[i] = 0;
	}


	send64(input_m, 8192, 0, NTT_MSG_BRAM_ID);
	receive64(result,8192, NTT_MSG_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_m, poly_size, "old m", 0, 0);

	send64(input_key, 8192, 0, NTT_KEY_BRAM_ID);
	receive64(result,8192, NTT_KEY_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_key, poly_size, "old key", 0, 0);

	send64(input_v, 8192, 0, NTT_V_BRAM_ID);
	receive64(result,8192, NTT_V_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_v, poly_size, "old v", 0, 0);

	send64(input_fft, 8192, 0, FFT_BRAM_EXPAND_ID);
	receive64Project(result);
	error |= error_partial |= checkPoly(result, input_fft, poly_size, "old fft", 0, 0);

	if(!error_partial)
		printf("Old interface works!\n\n");
	///////////////////////////////////////////////////////////////////////////////////////

	printf("================ Testing DMA: DDR to BRAM: ========================\n");
	error_partial = 0;
	srand(seed+500);
	for(int i = 0; i < 8192; ++i)
	{
		input_m[i] = rand54();
		input_v[i] = rand54();
		input_key[i] = rand54();
		input_fft[i] = i>>1;
		result[i] = 0;
	}
	printf("%llx %llx %llx\n",input_m[0],input_key[0],input_v[0]);
	send64(result, 8192, 0, NTT_MSG_BRAM_ID);

	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)input_m, 8192*8);

	cdmaDDRtoBRAM(NTT_MSG_BRAM_ID, (size_t)input_m, num_bytes);
	cdmaWaitForIdle();

	receive64(result, 8192, NTT_MSG_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_m, poly_size, "ddr to bram m", 0, 0);

	for(int i = 0; i < 8192; ++i)
		result[i] = 0;

	send64(result, 8192, 0, NTT_V_BRAM_ID);

	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)input_key, 8192*8);

	cdmaDDRtoBRAM(NTT_KEY_BRAM_ID, (size_t)input_key, num_bytes);
	cdmaWaitForIdle();

	receive64(result, 8192, NTT_KEY_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_key, poly_size, "ddr to bram key", 0, 0);
	receive64(result, 8192, NTT_MSG_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_m, poly_size, "ddr to bram key hit m", 0, 0);

	for(int i = 0; i < 8192; ++i)
		result[i] = 0;

	send64(result, 8192, 0, NTT_V_BRAM_ID);

	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)input_v, 8192*8);

	cdmaDDRtoBRAM(NTT_V_BRAM_ID, (size_t)input_v, num_bytes);
	cdmaWaitForIdle();

	receive64(result, 8192, NTT_V_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_v, poly_size, "ddr to bram v", 0, 0);
	receive64(result, 8192, NTT_KEY_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_key, poly_size, "ddr to bram v hit key", 0, 0);
	receive64(result, 8192, NTT_MSG_BRAM_ID);
	error |= error_partial |= checkPoly(result, input_m, poly_size, "ddr to bram v hit m", 0, 0);

	for(int i = 0; i < 8192; ++i)
		result[i] = 0;

	send64(result, 8192, 0, FFT_BRAM_EXPAND_ID);

	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)input_fft, 8192*8);

	cdmaDDRtoBRAM(FFT_BRAM_ID, (size_t)input_fft, num_bytes);
	cdmaWaitForIdle();

	receive64Project(result);
	error |= error_partial |= checkPoly(result, input_fft, poly_size, "ddr to bram fft", 0, 0);

	if(!error_partial)
		printf("DDR to BRAM works!\n\n");


	///////////////////////////////////////////////////////////////////////////////////////

	printf("================ Testing DMA: BRAM to DDR: ========================\n");
	error_partial = 0;
	srand(seed+1000);

	send64(input_m, 8192, 0, NTT_MSG_BRAM_ID);
	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)input_m, 8192*8);

	cdmaBRAMtoDDR((size_t)result, (size_t)NTT_MSG_BRAM_ID, num_bytes);
	cdmaWaitForIdle();
	error |= error_partial |= checkPoly(result, input_m, poly_size, "bram to ddr m", 0, 0);

	send64(input_key, 8192, 0, NTT_KEY_BRAM_ID);
	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)input_key, 8192*8);

	cdmaBRAMtoDDR((size_t)result, (size_t)NTT_KEY_BRAM_ID, num_bytes);
	cdmaWaitForIdle();
	error |= error_partial |= checkPoly(result, input_key, poly_size, "bram to ddr key", 0, 0);

	send64(input_fft, 8192, 0, FFT_BRAM_EXPAND_ID);
	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)input_fft, 8192*8);

	prj_HW(NULL, NULL);

	cdmaBRAMtoDDR((size_t)result, (size_t)FFT_BRAM_ID, num_bytes);
	cdmaWaitForIdle();
	error |= error_partial |= checkPoly(result, input_fft, poly_size, "bram to ddr fft", 0, 0);

	send64(input_m, 8192, 0, NTT_MSG_BRAM_ID);
	send64(input_key, 8192, 0, NTT_KEY_BRAM_ID);
	Xil_DCacheFlushRange((size_t)result, 8192*8);
	Xil_DCacheFlushRange((size_t)result1, 8192*8);
	Xil_DCacheFlushRange((size_t)input_m, 8192*8);
	Xil_DCacheFlushRange((size_t)input_key, 8192*8);

	cdmaBRAMtoDDR((size_t)result, (size_t)NTT_MSG_BRAM_ID, 2*num_bytes);
	cdmaWaitForIdle();
	error |= error_partial |= checkPoly(result, input_m, 2*poly_size, "bram to ddr 2 polys", 0, 0);

	if(!error_partial)
		printf("BRAM to DDR works!\n\n");

#endif

#if defined(FULL_ENCRYPTION)
	uint64_t result_fft[2*poly_size];
	uint64_t result[poly_size];
	uint64_t result1[poly_size];
	getMessageAfterRns(poly_size);

	XTime_GetTime(&tStart);
	fft_HW(DO_INTERMEDIATE_TESTS ? result_fft : NULL, input, 1, 0, error_polys_seed);
	//sendErrorPolys_HW(v_poly, e0_poly, e1_poly);

	if(DO_INTERMEDIATE_TESTS)
	{
		error |= checkPolyFFT(result_fft, fft_expected,poly_size,1,"fft result", eps_fft_tw_storage);
		recvErrorPolys_HW(result, result_fft, result1);
		error |= checkPoly(result, v_poly,poly_size,"v result", 0, 0);
		error |= checkPoly(result_fft, e0_poly,poly_size,"e0 result", 0, 0);
		error |= checkPoly(result1, e1_poly,poly_size,"e1 result", 0, 0);
	}

	for(uint32_t modulus_index = 0; modulus_index < num_moduli; ++modulus_index)
	{
		rns_HW(DO_INTERMEDIATE_TESTS ? result : NULL, NULL, NULL, NULL, 0, modulus_select[modulus_index], scale, qm[modulus_index], current_k[modulus_index]);
		if(DO_INTERMEDIATE_TESTS)
			error |= checkPoly(result, message_after_rns[modulus_index],poly_size,"encoded_message",modulus_index, rns_delta_max);
		ntt_HW(DO_INTERMEDIATE_TESTS ? result : NULL, DO_INTERMEDIATE_TESTS ? message_after_rns[modulus_index] : NULL, qm[modulus_index], current_k[modulus_index], constants_select[modulus_index], 1, NTT_MSG_BRAM_ID, 0, pk1_seeds[modulus_index]);
		if(DO_INTERMEDIATE_TESTS)
		{
			ntt_HW(result, NULL, 0, 0, 0, 0, NTT_V_BRAM_ID, 1, 0); // this just receives the ntt transformed v poly
			error |= checkPoly(result, v_poly_ntt[modulus_index],poly_size,"v_poly_ntt",modulus_index, 0);
			ntt_HW(result, NULL, 0, 0, 0, 0, NTT_E1_BRAM_ID, 1, 0); // this just receives the ntt transformed e1 poly
			error |= checkPoly(result, e1_poly_ntt[modulus_index],poly_size,"e1_poly_ntt",modulus_index, 0);
		}
		// check generated pk1:
		if(DO_INTERMEDIATE_TESTS)
		{
			receive64(result1, poly_size, FFT_IM_BRAM_ID);
			error |= checkPoly(result1, pk1[modulus_index],poly_size,"sampled pk1",modulus_index, 0);
		}
		pwm_HW(result_c0[modulus_index], result_c1[modulus_index], NULL, pk0[modulus_index], NULL, NULL, NULL, qm[modulus_index], current_k[modulus_index]);
	}
	XTime_GetTime(&tEnd);



	for(uint32_t modulus_index = 0; modulus_index < num_moduli; ++modulus_index)
	{
		error |= checkPoly(result_c1[modulus_index], expected_c1[modulus_index], poly_size, "C1", modulus_index, 0);
		error |= checkPoly(result_c0[modulus_index], expected_c0[modulus_index], poly_size, "C0", modulus_index, 0);
	}
#endif

#if defined(FULL_DECRYPTION)
#ifndef FULL_ENCRYPTION
	uint64_t result_fft[2*poly_size];
	uint64_t result[poly_size];
#endif

	XTime_GetTime(&tStart);

	pwm_HW(DO_INTERMEDIATE_TESTS ? result : NULL, NULL, sk, c1_to_decrypt, NULL, c0_to_decrypt, NULL, qm[0], current_k[0]);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPoly(result, decrypted_m_ntt, poly_size, "decrypted msg", 0, 0);

	ntt_HW(DO_INTERMEDIATE_TESTS ? result : NULL, NULL, qm[0], current_k[0], constants_select[0], 0, NTT_MSG_BRAM_ID, 0, 0);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPoly(result, intt_m_reference, poly_size, "intt result", 0, 0);

	i2f_HW(DO_INTERMEDIATE_TESTS ? result_fft : NULL, NULL, qm[0], current_k[0], -scale);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPolyFFT(result_fft, ifft_input, poly_size,0, "ifft input", eps_fft);

	fft_HW(DO_INTERMEDIATE_TESTS ? result_fft : NULL, NULL, 0, 0, 0);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPolyFFT(result_fft, ifft_reference, poly_size,0, "ifft output", eps_fft);

	prj_HW(result_fft, NULL);

	XTime_GetTime(&tEnd);

	error |= checkPolyFFT(result_fft, projected_reference, poly_size/2,0, "projected output", eps_fft);

#endif

#if defined(FULL_ENCRYPTION_DMA)
	uint64_t result_fft[2*poly_size] ALIGN;
	uint64_t result[poly_size];
	uint64_t result1[poly_size];
	getMessageAfterRns(poly_size);

	XTime_GetTime(&tStart);
	cdmaDDRtoBRAM(FFT_BRAM_ID, (size_t)input, poly_size*sizeof(uint64_t));
	cdmaWaitForIdle();

	if(DO_INTERMEDIATE_TESTS)
	{
		receive64(result_fft, 2*poly_size, FFT_BRAM_ID);
		error |= checkPoly(result_fft, expanded_input,poly_size*2,"expand result",0, 0);
	}

	fft_HW(DO_INTERMEDIATE_TESTS ? result_fft : NULL, NULL, 1, 0, error_polys_seed);

	if(DO_INTERMEDIATE_TESTS)
	{
		error |= checkPolyFFT(result_fft, fft_expected,poly_size,1,"fft result", eps_fft_tw_storage);
		recvErrorPolys_HW(result, result_fft, result1);
		error |= checkPoly(result, v_poly,poly_size,"v result", 0, 0);
		error |= checkPoly(result_fft, e0_poly,poly_size,"e0 result", 0, 0);
		error |= checkPoly(result1, e1_poly,poly_size,"e1 result", 0, 0);
	}

	for(uint32_t modulus_index = 0; modulus_index < num_moduli; ++modulus_index)
	{
		cdmaDDRtoBRAM(NTT_KEY_BRAM_ID, (size_t)pk0[modulus_index], poly_size*sizeof(uint64_t));
		cdmaWaitForIdle();
		rns_HW(DO_INTERMEDIATE_TESTS ? result : NULL, NULL, NULL, NULL, 0, modulus_select[modulus_index], scale, qm[modulus_index], current_k[modulus_index]);
		if(DO_INTERMEDIATE_TESTS)
			error |= checkPoly(result, message_after_rns[modulus_index],poly_size,"encoded_message",modulus_index, rns_delta_max);
		ntt_HW(DO_INTERMEDIATE_TESTS ? result : NULL, DO_INTERMEDIATE_TESTS ? message_after_rns[modulus_index] : NULL, qm[modulus_index], current_k[modulus_index], constants_select[modulus_index], 1, NTT_MSG_BRAM_ID, 0, pk1_seeds[modulus_index]);
		if(DO_INTERMEDIATE_TESTS)
		{
			ntt_HW(result, NULL, 0, 0, 0, 0, NTT_V_BRAM_ID, 1, 0); // this just receives the ntt transformed v poly
			error |= checkPoly(result, v_poly_ntt[modulus_index],poly_size,"v_poly_ntt",modulus_index, 0);
			ntt_HW(result, NULL, 0, 0, 0, 0, NTT_E1_BRAM_ID, 1, 0); // this just receives the ntt transformed e1 poly
			error |= checkPoly(result, e1_poly_ntt[modulus_index],poly_size,"e1_poly_ntt",modulus_index, 0);
		}
		// check generated pk1:
		if(DO_INTERMEDIATE_TESTS)
		{
			receive64(result1, poly_size, FFT_IM_BRAM_ID);
			error |= checkPoly(result1, pk1[modulus_index],poly_size,"sampled pk1",modulus_index, 0);
		}
		pwm_HW(NULL, NULL, NULL, NULL, NULL, NULL, NULL, qm[modulus_index], current_k[modulus_index]);
		while(result_c0[modulus_index] + poly_size != result_c1[modulus_index])
			printf("Error!");

		cdmaBRAMtoDDR((size_t)result_c0[modulus_index], NTT_MSG_BRAM_ID, poly_size*sizeof(uint64_t)*2);
		cdmaWaitForIdle();
	}
	XTime_GetTime(&tEnd);


	for(uint32_t modulus_index = 0; modulus_index < num_moduli; ++modulus_index)
	{
		error |= checkPoly(result_c1[modulus_index], expected_c1[modulus_index], poly_size, "C1", modulus_index, 0);
		error |= checkPoly(result_c0[modulus_index], expected_c0[modulus_index], poly_size, "C0", modulus_index, 0);
	}
#endif

#if defined(FULL_DECRYPTION_DMA)
#ifndef FULL_ENCRYPTION_DMA
	uint64_t result_fft[2*poly_size] ALIGN;
	uint64_t result[poly_size];
#endif

	XTime_GetTime(&tStart);
	cdmaDDRtoBRAM(NTT_MSG_BRAM_ID, (size_t)c0_to_decrypt, 3*poly_size*sizeof(uint64_t));
	cdmaWaitForIdle();

	if(DO_INTERMEDIATE_TESTS)
	{
		receive64(result,8192,NTT_MSG_BRAM_ID);
		error |= checkPoly(result, c0_to_decrypt, poly_size, "sent c0", 0, 0);
		receive64(result,8192,NTT_KEY_BRAM_ID);
		error |= checkPoly(result, c1_to_decrypt, poly_size, "sent c1", 0, 0);
		receive64(result,8192,NTT_V_BRAM_ID);
		error |= checkPoly(result, sk, poly_size, "sent sk", 0, 0);
	}

	pwm_HW(DO_INTERMEDIATE_TESTS ? result : NULL, NULL, NULL, NULL, NULL, NULL, NULL, qm[0], current_k[0]);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPoly(result, decrypted_m_ntt, poly_size, "decrypted msg", 0, 0);

	ntt_HW(DO_INTERMEDIATE_TESTS ? result : NULL, NULL, qm[0], current_k[0], constants_select[0], 0, NTT_MSG_BRAM_ID, 0, 0);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPoly(result, intt_m_reference, poly_size, "intt result", 0, 0);

	i2f_HW(DO_INTERMEDIATE_TESTS ? result_fft : NULL, NULL, qm[0], current_k[0], -scale);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPolyFFT(result_fft, ifft_input, poly_size,0, "ifft input", eps_fft);

	fft_HW(DO_INTERMEDIATE_TESTS ? result_fft : NULL, NULL, 0, 0, 0);
	if(DO_INTERMEDIATE_TESTS)
		error |= checkPolyFFT(result_fft, ifft_reference, poly_size,0, "ifft output", eps_fft);

	prj_HW(NULL, NULL);

	cdmaBRAMtoDDR((size_t)result_fft, FFT_BRAM_ID, poly_size*sizeof(uint64_t));
	cdmaWaitForIdle();
	XTime_GetTime(&tEnd);

	error |= checkPolyFFT(result_fft, projected_reference, poly_size/2,0, "projected output", eps_fft);

#endif

#if defined(FAST_ENCRYPTION)
	uint64_t result_fft[2*poly_size] ALIGN;

	XTime_GetTime(&tStart);
	ckks_encrypt(result_c0, input, poly_size, error_polys_seed, pk1_seeds, num_moduli, constants_select, modulus_select, pk0, scale, qm, current_k);
	XTime_GetTime(&tEnd);

	for(uint32_t modulus_index = 0; modulus_index < num_moduli; ++modulus_index)
	{
		error |= checkPoly(result_c1[modulus_index], expected_c1[modulus_index], poly_size, "C1", modulus_index, 0);
		error |= checkPoly(result_c0[modulus_index], expected_c0[modulus_index], poly_size, "C0", modulus_index, 0);
	}
#endif

#ifdef FAST_DECRYPTION
#ifndef FAST_ENCRYPTION
	uint64_t result_fft[2*poly_size] ALIGN;
#endif
	while(c0_to_decrypt + poly_size != c1_to_decrypt || c1_to_decrypt + poly_size != sk)
		printf("Error!");

	XTime_GetTime(&tStart);
	ckks_decrypt(c0_to_decrypt, result_fft, poly_size, qm[0], current_k[0], constants_select[0], -scale);
	XTime_GetTime(&tEnd);
	error |= checkPolyFFT(result_fft, projected_reference, poly_size/2,0, "projected output", eps_fft);
#endif

#ifdef BENCH
	runLatencyBench();
#endif

	printf("test in HW took %llu CPU cc -> %.0lf us\n",2*(tEnd-tStart), 2.0*(tEnd-tStart)/CPU_FREQ_MHZ);
	if(error){
		printf("#################################\n");
		printf("# ERRORS OCCURED DURING TESTING #\n");
		printf("#################################\n");
	}
	else{
		printf("#################################\n");
		printf("#              OK!              #\n");
		printf("#################################\n");
	}
}

// Simple test to verify correct timer configuration.
void test_timing()
{
	printf("\n\nStart timing test\n\n");
	XTime start, end;
	XTime_GetTime(&start);
	for(uint32_t i = 0; i < (1<<27); ++i)
		;
	XTime_GetTime(&end);
	printf("Time consumed: %llu cpu cc, %.0f us\n",2*(end-start), 2.0*(end-start)/CPU_FREQ_MHZ);
}
