
#
# Consider equations of the form: a^2 + b^2 = N, 0 <= a <= b, a, b and N integer.
#
# For N=65 there are two solutions:
#
# a=1, b=8 and a=4, b=7.
#
# We call S(N) the sum of the values of a of all solutions of a2 + b2 = N, 0 <= a <= b, a, b and N integer.
#
# Thus S(65) = 1 + 4 = 5.
#
# Find sum(S(N)), for all squarefree N only divisible by primes of the form 4k+1 with 4k+1 < 150.



from math import sqrt; from itertools import count, islice
import math

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

def collectAllPrimesMulti(_list):
    ll=[]
    for i in xrange(len(_list)):
        for j in xrange(i+1, len(_list)):
            ll.append(_list[i] * _list[j])

    return ll



def squarefree_(n):
    for i in range(2, int(math.ceil(math.sqrt(math.sqrt(n))))):
        if n % (i ** 2) == 0:
            return False
    return True



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

print squarefree(12)

test1 = [n for n in range(100) if squarefree(n)]
test2 = list(square_free_sieve(100))
# test3 = [n for n in range(100) if squarefree_(n)]
print test1
print test2
# print test3
assert test1 == test2
# assert test1 == test3



_list = findPrimes()
print(_list)
print collectAllPrimesMulti(_list)



