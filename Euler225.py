
# The sequence 1, 1, 1, 3, 5, 9, 17, 31, 57, 105, 193, 355, 653, 1201 ...
# is defined by T1 = T2 = T3 = 1 and Tn = Tn-1 + Tn-2 + Tn-3.
#
# It can be shown that 27 does not divide any terms of this sequence.
# In fact, 27 is the first odd number with this property.
#
# Find the 124th odd number that does not divide any terms of the above sequence.


# odd numbers: 2n+1

#  all the terms of tribonacci are odds! Tn = 2n+1
#  2n+1 / 2k+1 . It suffices to find all odd numbers, not included in sequence.Or multiples of that..
#  e.g. 7 not included. but 3*7= 21 not included, but 5*7 = 35 not included, 49,
#  the product of two odd, are still odd
#  15 * 7 = 105
#  27 = 3 * 9 ,
#  We have a sequence of odd numbers. A subset of them are tribbonachi.
# if all multipliers
import math as ma
_l = [1, 1, 1, 3, 5, 9, 17, 31, 57, 105, 193, 355, 653, 1201, 2209, 4063, 7473, 13745, 25281, 46499, 85525, 157305, 289329, 532159, 978793, 1800281, 3311233, 6090307, 11201821]
# K = 2n+1
# K =7, does 7 divide any term of the sequence?
# if it does, then N/7 = r which will be again an odd number ..
#  e.g. 105 / 7 = 15. So 15 also is odd and also divides 105.
# Maybe we should find all divisors of Tribonacci numbers, and exclude them from the list..

# (2n+1)*(2k+1) = 4nk +2n +2k +1 = 2(2nk+n+k) +1 =>odd

# t = 1.0 /3 *
# precompute a large sequence of trib numbers.
# then..
# just take all combinations of odd numbers.
#  but any of the terms.
# how can be shown that 27 does not divide any term of the sequence?
# If it does, then for some T, T/27 should be integer and odd number again. so
# The problem persists: for all??????



# import itertools as IT
# import numpy
#
# M = numpy.matrix([[1, 1, 0], [1, 0, 1], [1, 0, 0]], dtype=float)
#
#
# def tribonacci():
#     a, b, c = 0, 0, 1
#     while 1:
#         yield c
#         a, b, c = b, c, a + b + c
#
#
# def tripow(N):
#     return int((M ** N)[0, 0])
#
#
# print list(IT.islice(tribonacci(), 10))  # -> [1, 1, 2, 4, 7, 13, 24, 44, 81, 149]
# print tripow(9)  # -> 149
# x = list(IT.islice(tribonacci(), 1000))
# print x[-1] / float(x[-2])  # -> 1.83928675521