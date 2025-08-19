# Testbenches for simulating the most important submodules

This folder contains SystemVerilog testbenches for simulating the most important submodules:
- tb_UnifiedTransformation: Tests the FFT/IFFT and NTT/INTT transformation including twiddle factor storage/generation
- tb_RNS: Tests the RNS-mapping from double-precision floating-point values to integers (used in encryption/encoding)
- tb_RandomSampling: Tests the pseudo-random sampling of error and key polynomials
- tb_PWM: Tests the point-wise multiplication
- tb_IntToFlpWrapper: Tests the mapping from integers to double-precision floating-point numbers (used in decryption/decoding)
- tb_ModMul and tb_FFTButterfly: Tests the modular ring datapath and floating-point datapath

The testbenches run the hardware modules and compare the output against the prepared files in the `tv/` folder.

Please note that some module names and interfaces in the testbenches might not match the actual modules due to refactorings.