#ifndef SRC_COMMUNICATION_H_
#define SRC_COMMUNICATION_H_

#include <stdint.h>
#include <stdlib.h>

// Makros for BRAM ID values.
// This must comply with hardware (see ComputeCore.v)
// Names according to paper are in the comments.
#define FFT_BRAM_ID         0	// "Complex BRAM"
#define NTT_MSG_BRAM_ID     1	// "Modular Ring BRAM 0"
#define NTT_E1_BRAM_ID      2	// "Modular Ring BRAM 1"
#define NTT_V_BRAM_ID       3	// "Modular Ring BRAM 2"
#define ERROR_BRAM_ID       4	// "Error Poly BRAM"
#define NTT_KEY_BRAM_ID     5	// "Modular Ring BRAM 3"
#define FFT_BRAM_EXPAND_ID  6	// Complex BRAM with expand when writing to it
#define FFT_IM_BRAM_ID      7	// "Imag BRAM" (imaginary parts of complex BRAM)

void send64(uint64_t *p, uint32_t num_words, uint32_t INS_flag, uint32_t bram_sel);
void receive64(uint64_t *p, uint32_t num_words, uint32_t bram_sel);
void receive64Project(uint64_t *p);
void swProject(uint64_t* result, uint64_t* input);

void cdmaWaitForIdle();
void cdmaDDRtoBRAM(size_t dest_bram_id, size_t source_addr, uint32_t num_bytes);
void cdmaBRAMtoDDR(size_t dest_addr, size_t source_bram_id, uint32_t num_bytes);

uint32_t exeIns();
uint32_t exeInsWithParameter(uint64_t param);

uint32_t delay(uint32_t d);


#endif /* SRC_COMMUNICATION_H_ */
