#!/bin/python3

####################################################
# This generates the memory content for the stored
# FFT twiddle factors.
####################################################

import cmath
from helper import *
from math import log2

# returns the twiddle factors for the FFT in encoding procedure
def FFT_getRoots_encoding(N):
    m = N << 1
    inv_roots = [0+0j] * N
    inv_roots[0] = 1+0j
    j_tmp = (0 + 1j)
    for i in range(1,len(inv_roots)):
        i_br = int_bitreverse(i-1, int(log2(N))) + 1
        inv_roots[i] = (cmath.exp(j_tmp * 2 * cmath.pi * i_br / m)).conjugate()

    return inv_roots

# returns the twiddle factors for the inverse FFT in decoding procedure
def FFT_getRoots_decoding(N):
    m = N << 1
    roots = [0+0j] * N
    roots[0] = 1+0j
    j_tmp = (0 + 1j)
    for i in range(1,len(roots)):
        i_br = int_bitreverse(i, int(log2(N)))
        roots[i] = cmath.exp(j_tmp * 2 * cmath.pi * i_br / m)

    return roots

# Computes the reduced set of n/2 FFT twiddle factors.
# Additionally returns the sequences of all twiddle factors used
# in fft and ifft. 
def FFTRootRelations(roots, iroots):
  N = len(roots)
  roots = roots.copy()[1:]
  iroots = iroots.copy()[1:]

  produced_tw = []      # holds sequence of all twiddle factors in FFT 
  produced_inv_tw = []  # holds sequence of all twiddle factors in inverse FFT

  ## relation between forward and inverse FFT twiddle factors
  for i in range(0,N-1):
    x = -iroots[N-2-i]
    assert abs((roots[i] / x) - 1) < 1e-15

  ## compute reduced set of FFT twiddle factors:
  roots_reduced = []
  roots_it = 0
  gap = 1
  m = N >> 1
  base = 0
  while m >= 1:
      offset = 0
      for i in range(m):
          r = roots[roots_it]
          roots_it += 1
          already_inserted = False
          for _ in range(gap):
              if i >= m//2 and m != 1:
                my_r = roots[base + m - 1 - i]
                my_r = -my_r.real + 1j * my_r.imag
              else:
                my_r = roots[base + i]
                if not already_inserted:
                  roots_reduced += [my_r]
                  already_inserted = True
              # print(i, r, my_r)
              assert abs((r / my_r) - 1) < 1e-15
          
          offset += gap << 1
      base += m
      gap <<= 1
      m >>= 1
  

  ## check reduced set in forward transformation:
  roots_it = 0
  gap = 1
  m = N >> 1
  base = 0
  while m >= 1:
      for i in range(m):
          r = roots[roots_it]
          roots_it += 1

          # print(i, m, base)
          if i >= m//2 and m != 1:
            my_r = roots_reduced[base + m - 1 - i]
            my_r = -my_r.real + 1j * my_r.imag
          else:
            my_r = roots_reduced[base + i]
          # print(r, my_r)
          
          for _ in range(gap):
              assert abs((r / my_r) - 1) < 1e-15
              produced_tw += [my_r]
          
      base += m >> 1
      gap <<= 1
      m >>= 1
  

  ## check reduced set in inverse transformation:
  root_it = 0
  gap = N >> 1
  m = 1
  base = 4095
  while m <= (N >> 1):    
      for i in range(m):
          r = iroots[root_it]
          root_it += 1

          # print(i, m, base)
          if i < m//2 and m != 1:
            my_r = roots_reduced[base + i]
            my_r = -my_r.real + 1j * my_r.imag
          else:
            my_r = roots_reduced[base + m - 1 - i]
          my_r = -my_r
          # print(r, my_r)

          for _ in range(gap):
            assert abs((r / my_r) - 1) < 1e-15
            produced_inv_tw += [my_r]

      base -= m
      gap >>= 1
      m <<= 1

  return roots_reduced, produced_tw, produced_inv_tw


n = 2**13 # polynomial degree
roots = FFT_getRoots_encoding(n)
iroots = FFT_getRoots_decoding(n)

reduced_roots, _, _ = FFTRootRelations(roots, iroots)
f_twiddle = open("../Aloha-HE_Common/MemoryInitializationFiles/FFTStoredTwiddleFactors.coe", "w+")
f_twiddle.write("memory_initialization_radix = 16;\n")
f_twiddle.write("memory_initialization_vector = ")
for e in reduced_roots:
  r = doubleToUint64(e.real)
  i = doubleToUint64(e.imag)
  f_twiddle.write(f"{r:016x}" + f"{i:016x}" + "\n")
f_twiddle.close()