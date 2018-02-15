from itertools import count, islice
import math
from math import sqrt
import operator as op
from math import factorial as fact

def getListOfPrimesBelow(n):
    _list =[]
    _list.append(2)
    for num in range(3,n,2):
        if all(num % i != 0 for i in range(2,int(math.sqrt(num))+1)):
           _list.append(num)
    return _list

def getNextPrime(n):
    num = n+2
    while True:
        if all(num % i != 0 for i in xrange(2, int(math.sqrt(num))+1)):
           return num
        num += 2



def is_perfect_power(a, b):
  while a % b == 0:
    a = a / b
  if a == 1:
    return True
  return False


def is_square(apositiveint):
  if  apositiveint == 1: return True
  if apositiveint == 2: return False

  x = apositiveint // 2
  seen = set([x])
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

def isPrime(n):
    return n > 1 and all(n % i for i in islice(count(2), int(sqrt(n)-1)))


def combinations(N,m):
    if N < m:
        return 0
    if N == m:
        return 1
    return fact(N)//fact(m)//fact(N-m)


def multiCombinations(a, b):
    sum = 0
    while True:
        comb = combinations(a, b)
        sum += comb
        if comb == 1 or comb == 0:
            return sum
        b += 1


def factors(n):
    return set(reduce(list.__add__,
                ([i, n//i] for i in range(1, int(n**0.5) + 1) if n % i == 0)))

def factorsIfPrime(n):
    step = 2 if n % 2 else 1
    return set(reduce(list.__add__,
                      ([i, n // i] for i in range(1, int(sqrt(n)) + 1, step) if n % i == 0)))


def ncr(n, r):
    r = min(r, n-r)
    if r == 0: return 1
    numer = reduce(op.mul, xrange(n, n-r, -1))
    denom = reduce(op.mul, xrange(1, r+1))
    return numer//denom

def findNumOfDigits(n):
    digits = int(math.log10(n)) + 1
    return digits