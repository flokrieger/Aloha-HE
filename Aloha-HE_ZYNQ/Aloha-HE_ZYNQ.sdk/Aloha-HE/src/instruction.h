#ifndef SRC_INSTRUCTION_H_
#define SRC_INSTRUCTION_H_

// Number of max number of instructions in the buffer.
#define INS_BUFFER_SIZE 16

uint64_t getFFTTransformationInstructionWord(uint8_t isDIF);
uint64_t getNTTTransformationInstructionWord(uint8_t isDIF, uint8_t log_q, uint8_t modulus_rom_index, uint32_t qm);
uint64_t getRNSInstructionWord(uint16_t log_scale, uint8_t log_q, uint8_t modulus_rom_index, uint32_t qm);
uint64_t getI2FInstructionWord(int16_t log_scale, uint8_t log_q, uint32_t qm);
uint64_t getPWMInstructionWord(uint8_t log_q, uint32_t qm);
uint64_t getProjectInstructionWord();
void initInsBuffer(uint64_t* ins_buffer, uint64_t* ins_words, uint8_t num_instructions);

#endif /* SRC_INSTRUCTION_H_ */
