# Aloha-HE

This repository provides the source code of **Aloha-HE**, a hardware accelerator for client-side operations in homomorphic encryption. Aloha-HE targets the CKKS scheme and supports all operations required during encode+encrypt and decode+decrypt in hardware. We publish the source code for the Xilinx ZYNQ-7000 and Kintex-7 FPGA platforms.

The according paper "Aloha-HE: A Low-Area Hardware Accelerator for Client-Side Operations in Homomorphic Encryption" with a detailed explanation of Aloha-HE has been accepted for the DATE'24 conference. You can find the conference paper [here](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=10546608) and the preprint [here](https://eprint.iacr.org/2023/1736).

All content of this repo is for academic research use only. It does not come with any support, warranty, or responsibility.

## Structure of this Repo
We implemented Aloha-HE using Vivado 2019.1. This repo provides these implementations for ZYNQ-7000 (PYNQ-z2 board) and Kintex-7 (Genesys2 board) in their respective directories. In addition to that, users can select between stored FFT twiddle factors and on-the-fly generated FFT twiddle factors. Optional testing functionality allows to read and write all BRAMs in the FPGA. These settings are configured using flags in `Aloha-HE_Common/ComputeCore.v`. We provide synthesis and implementation results for each of the possible feature combinations. The following tags refer to the corresponding commits:

| Tag Name | FFT Twiddle Factors | Debug Functionality Instantiated
| ----------- | ----------- | ----------- |
| `stored` | stored | no |
| `stored_debug` | stored | yes |
| `generated`      | generated | no |
| `generated_debug`      | generated | yes |

The folders `Aloha-HE_Kintex` and `Aloha-HE_ZYNQ` contain the ready-to-use Vivado 2019.1 and the SDK projects for the Kintex-7 and the ZYNQ-7000 FPGA respectively. The folder `Aloha-HE_Common` contains the (System-)Verilog files for Aloha-HE. The folder `Scripts` provides Python scripts to generate primes and constants as well as to set up ROM contents. The ROM contents are defined in .coe files stored in `Aloha-HE_Common/MemoryInitializationFiles/`.

## Running Aloha-HE
We provide ready-to-use implementations of Aloha-HE for the PYNQ-z2 and the Genesys2 boards. Follow these steps to run Aloha-HE using Vivado 2019.1 and its SDK environment.

1) Plug in the board and connect the serial port via a terminal. Corresponding scripts for Ubuntu are in the `Scripts` folder. Use e.g. Putty for Windows.
2) Check out the desired configuration according to the table above. Use `git checkout <tag name>`.
3) Open the respective Aloha-HE project for the targeted board. The bitstream file may be displayed as out-of-date. This is due to different timestamps caused by git. Just using the provided bitstream is fine, but you can re-run the implementation if you want to.
4) Open the SDK: Go to File -> Launch SDK and click OK.
5) The main testing software is located in `ckksTest.c`. Uncomment the defines according to the tests you want to run. Productive code (i.e. the code configuration with the best performance and no intermediate checks) is activated by uncommenting `FAST_ENCRYPTION` and `FAST_DECRYPTION`.
6) Make sure the software is compiled by saving all files.
7) For ZYNQ-7000 (PYNQ-z2 board): Click Run -> Run Configurations... Then double-click on "GDB Debugger on Local" in the opened window. 
For Kintex-7 (Genesys 2 board): Click on Xilinx -> Program FPGA -> Program.
This flashes the FPGA and the software. 
8) We finally are able to execute the just flashed software. For ZYNQ-7000, right-click on the "Aloha-HE" application folder, select Run As..., and click on "Launch on Hardware (System Debugger)". For Kintex-7, right-click on the "Aloha-HE" application folder, select Run As..., and click on "Launch on Hardware (GDB)". This starts software execution and the board will return the results via the serial port. 


## Contributors
Florian Krieger  -  `florian.krieger (at) tugraz.at`

Florian Hirner  -  `florian.hirner (at) tugraz.at`

Ahmet Can Mert  -  `ahmet.mert (at) tugraz.at`

Sujoy Sinha Roy  -  `sujoy.sinharoy (at) tugraz.at`

-----

[Institute of Information Security](https://www.isec.tugraz.at/), Graz University of Technology, Austria

-----

If you use Aloha-HE in your research/study, please cite our work:

```
@INPROCEEDINGS{aloha_he,
  author={Krieger, Florian and Hirner, Florian and Mert, Ahmet Can and Roy, Sujoy Sinha},
  booktitle={2024 Design, Automation & Test in Europe Conference & Exhibition (DATE)}, 
  title={Aloha-HE: A Low-Area Hardware Accelerator for Client-Side Operations in Homomorphic Encryption}, 
  year={2024},
  volume={},
  number={},
  pages={1-6},
  doi={},
  url = {https://ieeexplore.ieee.org/document/10546608}
}
```