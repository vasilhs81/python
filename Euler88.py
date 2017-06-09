# Product-sum numbers
# Problem 88
#
# A natural number, N, that can be written as the sum and product of a given set of at least two natural numbers, {a1, a2, ... , ak}
# is called a product-sum number: N = a1 + a2 + ... + ak = a1 * a2 * ... * ak.
#
# For example, 6 = 1 + 2 + 3 = 1 * 2 * 3.
#
# For a given set of size, k, we shall call the smallest N with this property a minimal product-sum number.
# The minimal product-sum numbers for sets of size, k = 2, 3, 4, 5, and 6 are as follows.
#
# k=2: 4 = 2 * 2 = 2 + 2
# k=3: 6 = 1 * 2 * 3 = 1 + 2 + 3
# k=4: 8 = 1 * 1 * 2 * 4 = 1 + 1 + 2 + 4
# k=5: 8 = 1 * 1 * 2 * 2 * 2 = 1 + 1 + 2 + 2 + 2
# k=6: 12 = 1 * 1 * 1 * 1 * 2 * 6 = 1 + 1 + 1 + 1 + 2 + 6
#
# Hence for 2=k=6, the sum of all the minimal product-sum numbers is 4+6+8+12 = 30;
# note that 8 is only counted once in the sum.
#
# In fact, as the complete set of minimal product-sum numbers for 2=k=12 is {4, 6, 8, 12, 15, 16}, the sum is 61.
#
# What is the sum of all the minimal product-sum numbers for 2<=k<=12000?



# prepei na kanoume analysh paragontwn, alla ta ksanaxrisimopoioume
#  a + b + c = abc ->


def primes(n):
    primfac = []
    d = 2
    while d*d <= n:
        while (n % d) == 0:
            primfac.append(d)  # supposing you want multiple factors repeated
            n //= d
        d += 1
    if n > 1:
       primfac.append(n)
    return primfac

print primes(8)


#  for k = 6 find them...
_list = (1,2,3,4,5,6,7,8,9)
_table = []
_dict = dict()

def tt1(k):

    ll = [_list[0] for x in range(k)]
    dd = []
    sum = k * _list[0]
    prod = _list[0] ** k

    index = 0
    while True:
        if sum == prod:
            dd.append({"list": ll, "value": sum})
            break
        if ll[index] == 9:
            ll[index] = 1
            sum -= 8
            prod /= 9
            index += 1
        else:
            prod /= ll[index]
            ll[index] += 1
            sum += 1
            prod *= ll[index]
        if index == k:
            break

    print dd



# L.append([1])
L = []
L = [[] for x in range(12)]
L[0] = [1]


def LL(n):
    global L

    if len(L[n-1]) == 0:
        for i in xrange(n//2):
            L[n-1].append(L[i] + L[n-i-2])
        L[n - 1] .append([n])

    return L[n-1]



for i in xrange(1,12 + 1):
    print LL(i)


# tt1(5)




# S3 = {1,1,1}, {1,2} den mporei na einai ola 1, oxi (1, 1, ... X)
# There must be at least one 1. How many '1's must be there?
# Anadromh L(N) = U(from i=1 till N/2) {L(i) + L(N-i)} U {N}



