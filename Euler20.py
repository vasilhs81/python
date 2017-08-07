# n!= n * (n-1) * ... *1
# Find the sum of the number 100!

# Solved : 648

import EulerCommon as eu

a = eu.fact(100)
s= str(a)
print sum(int(s[i]) for i in xrange(len(s)))



