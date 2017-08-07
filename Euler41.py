# We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n exactly once.
# For example, 2143 is a 4-digit pandigital and is also prime.
#
# What is the largest n-digit pandigital prime that exists?

# Solved: 7652413

import itertools as it
# import itertools.permutations as it
import EulerCommon as eu

l0 = [1,2,3,4,5,6,7,8,9]
l1 = [1,2,3,4]



def findLargestPand(ll):
    while len(ll) > 0:
        _max = 0
        for subset in it.permutations(ll, len(ll)):
            j = int("".join(["%d" % k for k in subset]))
            if eu.isPrime(j) and j > _max:
                _max = j
        if _max != 0:
            return _max
        ll = ll[:-1]


print findLargestPand(l0)



