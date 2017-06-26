
#
# Consider equations of the form: a^2 + b^2 = N, 0 <= a <= b, a, b and N integer.
#
# For N=65 there are two solutions:
#
# a=1, b=8 and a=4, b=7.
#
# We call S(N) the sum of the values of a of all solutions of a^2 + b^2 = N, 0 <= a <= b, a, b and N integer.
#
# Thus S(65) = 1 + 4 = 5.
#
# Find sum(S(N)), for all squarefree N only divisible by primes of the form 4k+1 with 4k+1 < 150.

# a <= b => a^2 <= b^2 => a^2 + b^2 <= 2b^2 => N <= 2b^2 => sqrt(N) <= sqrt(2) * b => sqrt(N)/sqrt(2) <= b =>
#  a<= b => a^2 <= b^2 => 2a^2 <= b^2 +a^2 => 2 a^2 <=N => a^2 <= N/2 => a <= sqrt(N)/ sqrt(2)
# A number is said to be squarefree (or sometimes quadratfrei; Shanks 1993) if its prime decomposition
# contains no repeated factors. All primes are therefore trivially squarefree. The number 1 is by convention taken to be squarefree.




################## SOLVED!!!!!!
# 2032447591196869022
# Step 1: Find all possible primes for 4k+1<150 constraint
# Step 2: Solve for all above primes, and all combinations of them.
#           For each combination, (e.g. {5,13}) it's enough to calculate directly a's and b's through a formula:
#   a = abs(b1 *b2 - a1 * a2)
#   b = a1 * b2 + b1 * a2
#  or..
#  a = b1 * b2 + a1 * a2
#  b = abs(a1 * b2 - b1 * a2)

from math import sqrt
from itertools import count, islice
import math
import itertools


def isPrime(n):
    return n > 1 and all(n % i for i in islice(count(2), int(sqrt(n)-1)))


def findPrimes():
    k = 0
    S = 0
    primesList = []

    while True:
        P = 4 * k + 1
        if P >= 150:
            break
        if isPrime(P):
           primesList.append(P)
        k += 1
    return primesList




def squarefree(n):
    """
    Check if n is a square-free number, i.e. is divisible by no other perfect square than 1.

    Args:
        n     positive integer to check
    Returns:
        n     if n is a square-free number
        False else
    """
    for i in range(2, int(round(n**0.5))):
        if n % (i**2) == 0:
            return False
    return n


def is_square(apositiveint):
  if  apositiveint == 1: return True
  if apositiveint == 2: return False

  x = apositiveint // 2
  seen = set([x])
  # seen.update([x])
  while x * x != apositiveint:
    x = (x + (apositiveint // x)) // 2
    if x in seen: return False
    seen.add(x)
  return True

def square_free_sieve(limit):
    """Generator that yields all square free numbers less than limit"""
    a = [True] * limit
    # Needed so we don't mark off multiples of 1^2
    yield 1
    a[0] = a[1] = False
    for i, is_square_free in enumerate(a):
        if is_square_free:
            yield i
            i2 = i * i
            # Start at 2 * i**2 to allow first square free number, like 9
            for n in range(2 * i2, limit, i2):
                a[n] = False





# for a in range(sqrt(N/2)):

# global variables:
sumAs =0L
ss = 0
notsquareBs = set()
squareBs = set()
_dict = {}


def _solve(N):
    global notsquareBs
    global squareBs
    global ss
    global _dict
    # for N in multi:
    _dict[N] = []
    # for a in xrange(N-1):
    for a in xrange(int(math.ceil(sqrt(N)/sqrt(2)))):
        a2 = a*a
        # if a2 >= N: break
        # if a2 > N - a2: continue
        b2 = N - a2
        # if is_square(b2):
        #     dict[N].append({"a": a, "b": int(sqrt(b2))})

        if b2 not in squareBs and b2 not in notsquareBs:
            if is_square(b2):
                squareBs.add(b2)
                _dict[N].append({"a": a, "b": int(sqrt(b2))})
            else:
                notsquareBs.add(b2)
        elif b2 in squareBs:
            _dict[N].append({"a": a, "b": int(sqrt(b2))})




def solveForAll(_list):
    # 1 Mono a8roisma 8a exoume ka8e fora...
    sumA = 0L
    # Na ta swzw ston disko...
    #  find the initial a's
    for x in _list: _solve(x)
    global _dict

    for L in xrange(1, len(_list) + 1):
        print "Solving for L=", L
        for subset in itertools.combinations(_list, L):
            # subset contains all prime factors..
            mylist = []
            for p in subset:
                dic = _dict[p][0]
                if len(mylist) == 0:
                    mylist.append({"a": dic["a"], "b": dic["b"]})
                else:
                    _ll = []
                    for t in mylist:
                        a = abs(dic["b"] * t["b"] - dic["a"] * t["a"])
                        b = dic["a"] * t["b"] + dic["b"] * t["a"]

                        if a < b:
                            _ll.append({"a": a, "b": b})
                        else:
                            _ll.append({"b": a, "a": b})

                        a = dic["b"] * t["b"] + dic["a"] * t["a"]
                        b = abs(dic["a"] * t["b"] - dic["b"] * t["a"])

                        if a < b:
                            _ll.append({"a": a, "b": b})
                        else:
                            _ll.append({"b": a, "a": b})
                    # mylist.append(x for x in _ll)
                    mylist=[]
                    for x in _ll:
                        mylist.append(x)
            sumA += sum(x["a"] for x in mylist)
            # print "sumA=", sumA
    return sumA



# for N in multi:
#     for a2 in xrange(N/2):
#         if is_square(a2) and is_square(N - a2):
#             print "N=", N, "found: ", sqrt(a2), sqrt(N - a2)
#             ss += sqrt(a2)


_list = findPrimes()
print "found: ", len(_list), "primes\n", (_list)


ss = solveForAll(_list)
print ss




