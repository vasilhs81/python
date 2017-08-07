

# The Fibonacci sequence is defined by the recurrence relation:
#

#
# Hence the first 12 terms will be:
#
#     F1 = 1
#     F2 = 1
#     F3 = 2
#     F4 = 3
#     F5 = 5
#     F6 = 8
#     F7 = 13
#     F8 = 21
#     F9 = 34
#     F10 = 55
#     F11 = 89
#     F12 = 144
#
# The 12th term, F12, is the first term to contain three digits.
#
# What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
# #######
# Fn = Fn-1 + Fn-2 = 2Fn-2 + Fn-3 ...
#  Closed form of fibonnaci numbers: Fn = [(1+ sqrt(5))^n - (1- sqrt(5))^n]/2^n/sqrt(5)
#  Fn >= 10^1000 => [(1+ sqrt(5))^n - (1- sqrt(5))^n]/2^n/sqrt(5) >= 10^1000 =>
# [(1+ sqrt(5))^n - (1- sqrt(5))^n]/2^n >= sqrt(5) *10^1000


# Solved. try2() method. We use lookup table, to save intermediate fibo numbers

from math import sqrt
import math
sq5 = sqrt(5)
sqa = 1 + sq5
sqb = 1 - sq5
sqqq = sqb
curentA = sqa
curentB = sqb
currentN = 2
maxLimit = 10**1000

# maxLimit = sq5 * int(10**1000)

#
#

def findNumOfDigits(n):
    digits = int(math.log10(n)) + 1
    return digits




def try1():
    sq5 = sqrt(5)
    sqa = 1 + sq5
    sqb = 1 - sq5
    sqqq = sqb
    curentA = sqa
    curentB = sqb
    currentN = 2
    maxLimit = 10 ** 1000

    n = 1
    f = (sqa - sqb)/2
    while True:
        print "current f=", f, "strlen=", findNumOfDigits(f), "maxlimit=", maxLimit
        if f >= maxLimit:
            print "n=",n,"f=",f
            break
        else:
            curentB *= sqb
            curentA *= sqa
            currentN *= 2
            f = (curentA - curentB)*sq5/currentN
            n = n+1


# giati na mplexw me floating point numbers?

F = {}
F[1] =1
F[2] =1

def fibo2(n):
    F[n] = F[n-1] + F[n-2]
    return F[n]
    # return fibo(n-1) + fibo(n-2)



def fibo(n):
    if n == 1 or n == 2: return 1
    return fibo(n-1) + fibo(n-2)

def try2():
    n = 3
    while True:
        f = fibo2(n)
        if findNumOfDigits(f) >= 1000:
            print n
            break
        n = n + 1


try2()


