#!/bin/python3

from math import log2, ceil
import cmath
from helper import doubleToUint64, modinv, find_min_primitive_root

####################################################
# This sets up the content of the "Constants ROM".
# It contains the twiddle factor cache for FFT and NTT
# twiddle factor generation and the RNS constants. 
# 
# Primes q have the form q = 2**k - q_m*2**w + 1
# k is the bit-width of the prime and q_m has m=17
# bits. w=24 is the word size used.
# The primes generated satisfy q = 1 mod 2*n, where
# n=2**13 is the polynomial degree used.
# Enter primes in corresponding arrays below.
####################################################

N = 2**13 # polynomial degree
w = 24 # word size
m = 17 # bit-width of q_m
k_min = 46 # min bit-width of moduli
k_max = 54 # max bit-width of moduli

def fft_getLines():
  lines = []
  m = 2*N

  for stage in range(ceil(log2(N))):
    gap = 2 << stage
    for i in range(1<<stage,32,gap):
      r = (cmath.exp( 2j * cmath.pi * i / m)).conjugate()
      real = doubleToUint64(r.real)
      imag = doubleToUint64(r.imag)
      lines.append(hex(real)[2:] + hex(imag)[2:])
      #print(i, r, hex(real), hex(imag))

    if stage >= 5:
      i = 1<<stage
      r = (cmath.exp( 2j * cmath.pi * i / m)).conjugate()
      real = doubleToUint64(r.real)
      imag = doubleToUint64(r.imag)
      lines.append(hex(real)[2:] + hex(imag)[2:])
      #print(i, r, hex(real), hex(imag))

  return lines

def generateTwFctCache(q, N):
  q_found, min_prim_root = find_min_primitive_root(2*N,q)
  assert q_found
  min_prim_root_inverse = modinv(min_prim_root,q)

  tw_forward_BRAM = []
  tw_inverse_BRAM = []
  for stage in range(ceil(log2(N))):
    gap = 2 << stage
    for i in range(1<<stage,32,gap):
      rf = (min_prim_root**i) % q
      ri = (min_prim_root_inverse**i) % q
      # print(i, "f:", hex(rf), "i:", hex(ri))

      tw_forward_BRAM += [rf]
      tw_inverse_BRAM += [ri]

    if stage >= 5:
      i = 1<<stage
      rf = (min_prim_root**i) % q
      ri = (min_prim_root_inverse**i) % q
      # print(i, "f:", hex(rf), "i:", hex(ri))

      tw_forward_BRAM += [rf]
      tw_inverse_BRAM += [ri]
    # print("---------")

  # print("===============================")
  # rf = (min_prim_root**32)%q
  # ri = (min_prim_root_inverse**32)%q
  # print("w_c:", "f:", hex(rf), "i:", hex(ri))
  # print("===============================")

  return tw_forward_BRAM, tw_inverse_BRAM

def ntt_getLines(moduli):
  lines = []

  for i,q in enumerate(moduli):
    # k = ceil(log2(q))
    # print("k:", k, "q:",hex(q), "qm:", hex(qm[i]))

    tw_forward_BRAM, tw_inverse_BRAM = generateTwFctCache(q, N)
    R = 2**(w*3)

    lines.append("0") # empty memory location
    for i in range(len(tw_forward_BRAM)):
      t1 = (tw_inverse_BRAM[i] * R) % q
      t2 = (tw_forward_BRAM[i] * R) % q
      val = (t1 << k_max) | t2
      lines.append(hex(val)[2:])
  
  return lines


def rns_getLines(moduli):
  R = 2**(w*3)
  lines = []

  for q in moduli:
    lines.append(hex((R*R)%q)[2:])
    lines.append(hex((R*R*2**40)%q)[2:])
    lines.append(hex((R*R*2**80)%q)[2:])
    lines.append(hex((R*R*2**120)%q)[2:])
   
  return lines


f_target = open("../Aloha-HE_Common/MemoryInitializationFiles/TwFctrCache_RNSConsts_new.coe","w")
lines_written = 0
f_target.write("memory_initialization_radix = 16;\nmemory_initialization_vector = ")

for line in fft_getLines():
    f_target.write(line + "\n")
    lines_written += 1

# enter moduli for RNS ( at most 16 ) here: 
moduli = [0x3ffff7000001, 0x7fffff000001, 0xffffd8000001, 0x1fffffb000001, 0x3ffffe4000001, 0x7fffff9000001, 0xffffff3000001, 0x1ffffff6000001, 0x3fffffff000001]
assert len(moduli) <= 16
lines = rns_getLines(moduli)

i = 0
while i < len(lines):
    high = int(lines[i+1], 16)
    low = int(lines[i], 16)
    f_target.write(hex((high<<k_max) | low)[2:] + "\n")
    lines_written += 1
    i += 2

for i in range(lines_written, 128):
   f_target.write("0\n")

# enter moduli for NTT ( at most 8 ) here: 
moduli = [0x3ffff7000001, 0x7fffff000001, 0xffffd8000001, 0x1fffffb000001, 0x3ffffe4000001, 0x7fffff9000001, 0xffffff3000001, 0x3fffffff000001]
assert len(moduli) <= 8
for line in ntt_getLines(moduli):
    f_target.write(line + "\n")

f_target.close()