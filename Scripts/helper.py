from random import randint
import struct

# Check if input w is m-th (could be n or 2n) primitive root of unity of q
def is_primitive_root(w,m,q):
    if w == 0:
        return False
    elif pow(w,m//2,q) == (q-1):
        return True
    else:
        return False

# Returns a m-th primitive root of q (if there is any)
def find_primitive_root(m,q):
    g = (q-1)//m

    if (q-1) != g*m:
        return False,0

    attempt_ctr = 0
    attempt_max = 100

    while(attempt_ctr < attempt_max):
        a = randint(2,q-1)
        b = pow(a,g,q)
        # check
        if is_primitive_root(b,m,q):
            return True,b
        else:
            attempt_ctr = attempt_ctr+1

    return False,0

# Returns the minimum m-th primitive root of q (if there is any)
def find_min_primitive_root(m,q):
    p_found, g = find_primitive_root(m,q)

    if not(p_found):
        return False,0

    g_sq = (g*g) % q
    cg   = g

    for i in range(m):
        if (cg < g):
            g = cg
        cg = (cg*g_sq) % q

    return True,g


# Modular inverse of an integer
def egcd(a, b):
    if a == 0:
        return (b, 0, 1)
    else:
        g, y, x = egcd(b % a, a)
        return (g, x - (b // a) * y, y)

def modinv(a, m):
    g, x, y = egcd(a, m)
    if g != 1:
        raise Exception('Modular inverse does not exist')
    else:
        return x % m

# GCD of two integers
def gcd(n1, n2):
    a = n1
    b = n2
    while b != 0:
        a, b = b, a % b
    return a

# Bit-Reverse integer
def int_bitreverse(a,n):
    b = ('{:0'+str(n)+'b}').format(a)
    return int(b[::-1],2)

def doubleToUint64(x):
    return int.from_bytes(struct.pack("d", x), 'little')