

# The number 512 is interesting because it is equal to the sum of its digits raised to some power: 5 + 1 + 2 = 8,
# and 8^3 = 512. Another example of a number with this property is 614656 = 28^4.
#
# We shall define an to be the nth term of this sequence and insist that a
# number must contain at least two digits to have a sum.
#
# You are given that a2 = 512 and a10 = 614656.
#
# Find a30.



# 5 = 512 /100 ,=> 12 = 512%100, 1 = 12 /10 , 2 = 2/1
# once we have all digits , check Q = q1+q2 +q3 +...., if Q^n  == A we have finished.
# Iterate digits. At first check if it can be raised to a power..


#  Another approach is... iterate all digits..

#  q1 + q2 +... + qn = Q, A= Q^n => logA = n logQ => logA = n log(q1 + q2 + ... + qn)
# log(q1 + q2 *10 + q3*100 + ... + qn * 10^n) = n log(q1 + q2 + ... + qn) =>

#  n = log(q1 + q2 *10 + q3*100 + ... + qn * 10^n) / log(q1 + q2 + ... + qn)
#  so iterate q1, q2, q3 etc. find logs, and if n exist and is integer....



# log(q1 + q2 *10 + q3*100 + ... + qn * 10^n) = n log(q1 + q2 + ... + qn) =>
# q1 + q2 + q3 + .... = Q
from math import log

_maxSize =12
_size =2
count =0
_list = [None] * _maxSize
r =0
_list[r+1] =1 # => 10

while True:
    if r == _maxSize -1 and _list[r] == 9:
        break

    qq = sum(_list[x]*(10**i) for x in xrange(_size) for i in xrange(_size))
    qqq = sum(_list[x] for x in xrange(_size) for i in xrange(_size))
    if log(qq) % log(qqq) ==0:
        count += 1
        if count ==30:
            A =

print _list






