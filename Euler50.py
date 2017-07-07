
# The prime 41, can be written as the sum of six consecutive primes:
# 41 = 2 + 3 + 5 + 7 + 11 + 13
#
# This is the longest sum of consecutive primes that adds to a prime below one-hundred.
#
# The longest sum of consecutive primes below one-thousand that adds to a prime, contains 21 terms, and is equal to 953.
#
# Which prime, below one-million, can be written as the sum of the most consecutive primes?
import EulerCommon as eu



## first off all, find all primes, that are sum of consecutive primes
# enterprise architect

# make a map of the consecutive sums..

limit = 1000000
_listOfPrimes = eu.getListOfPrimesBelow(limit)
print "just extracted list of primes:", len(_listOfPrimes)
index = 0
biggestPrime = 0
biggestNumOfConsecutivePrimes = 0
while True:
    _sum = 0
    consecutive = 0
    for i in xrange(index, len(_listOfPrimes)):
        _sum += _listOfPrimes[i]
        consecutive += 1
        if _sum >= limit:
            _sum = 0
            consecutive = 0
            break
        elif _sum in _listOfPrimes:
            # if _sum > biggestPrime:
            if consecutive > biggestNumOfConsecutivePrimes:
                biggestPrime = _sum
                biggestNumOfConsecutivePrimes = consecutive
    index += 1
    if index >= len(_listOfPrimes):
        break



print "Terms",biggestNumOfConsecutivePrimes,"sum=",biggestPrime