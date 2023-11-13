#!/bin/python3

####################################################
# This generates primes for Aloha-HE
# Primes q have the form q = 2**k - q_m*2**w + 1
# k is the bit-width of the prime and q_m has m=17
# bits. w=24 is the word size used.
# The primes generated satisfy q = 1 mod 2*n, where
# n=2**13 is the polynomial degree used.
####################################################

from helper import *
from primalityTest import is_prime
from math import log2, ceil

# generates num_primes many k-bit wide NTT friendly primes 
def genPrimes(k, num_primes):
  # Fixed parameters in Aloha-HE:
  n = 2**13     # polynomial degree
  w = 24        # word size
  m = 17        # bit-width of q_m
  R = 2**(w*3)  # Montgomery constant

  q_all  = []
  qm_all = [] 
  q_elm  = [] # primes not eligible
  R_all = []
  Rinv_all = []

  qt = [2**(k) - j*(2**w) + 1 for j in range(1,2**m)]
  for i in range(num_primes):
      p_found = False
      p_index = 0
      while (not(p_found)):
          q = qt[p_index]
          if is_prime(q) and not(q in q_elm) and not(q in q_all):
              p_found, psi = find_min_primitive_root(2*n,q)
              qm_all.append(qt.index(q)+1)
              q_all.append(q)
              R_all.append(R%q)
              Rinv_all.append(modinv(R,q))
          else:
              q_elm.append(q)
          p_index += 1

  return q_all, qm_all, R_all, Rinv_all



# Fixed parameters in Aloha-HE:
n = 2**13     # polynomial degree
w = 24        # word size
m = 17        # bit-width of q_m
R = 2**(w*3)  # Montgomery constant

# Variable parameters in Aloha-HE:
k = int(input("Enter k: "))
if k < 46 or k > 54:
  print("Invalid input!")
  exit(-1)

num_primes = int(input("Enter number of primes you need: "))
if num_primes < 0:
  print("Invalid input!")
  exit(-1)

q_all, qm_all, R_all, Rinv_all = genPrimes(k, num_primes)
for i in range(num_primes):
  assert q_all[i] % (2*n) == 1
  assert ceil(log2(q_all[i])) == k
  print("Prime", i, "q = " + hex(q_all[i]), "q_m = "+hex(qm_all[i]), "R = "+hex(R_all[i]), "Rinv = "+hex(Rinv_all[i]))
