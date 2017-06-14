
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


# we must find all multi combinations
def collectAllPrimesMulti(_list):
    mylist= [1 for x in xrange(len(_list))]
    mylist[0] = [1, _list[0]]
    index = 1
    s = set(_list)

    while True:
        if index == len(mylist):
            break
        if mylist[index] == 1:
            mylist[index] = []
            a1 = [x*_list[index] for x in mylist[index-1]]
            a2 = [1*_list[index] for x in mylist[index-1]]
            mylist[index] += a1
            mylist[index] += a2
            s.update(mylist[index])
        index += 1


    # ll = []
    # for i in xrange(len(_list)):
    #     for j in xrange(i+1, len(_list)):
    #         ll.append(_list[i] * _list[j])

    return s




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
ss = 0
notsquareBs = set()
squareBs = set()
dict = {}


def _solve(N):
    global notsquareBs
    global squareBs
    global ss
    global dict
    # for N in multi:
    for a in xrange(int(sqrt(N/2))):
        a2 = a*a
        b2 = N - a2
        dict[N] = []
        if b2 not in squareBs and b2 not in notsquareBs:
            if is_square(b2):
                # print "N=", N, "found: ", a, sqrt(b2)
                # ss += a
                squareBs.add(b2)
                # return (a,sqrt(b2))
                dict[N].append({"a":a, "b":sqrt(b2)})
            else:
                notsquareBs.add(b2)
        elif b2 in squareBs:
            dict[N].append({"a": a, "b": sqrt(b2)})
            # return (a, sqrt(b2))
            # print "N=", N, "found: ", a, sqrt(b2)
            # ss += a

def collectAllPrimesMultiAndSolve(_list):
    mylist = [1 for x in xrange(len(_list))]
    mylist[0] = [1, _list[0]]
    _solve(_list[0])
    global dict
    index = 1
    s = set(_list)
    dict = {}
    # N = N1 * N2 => N= (a1^2 +b1^2)(a2^2 + b2^2) = (a1a2)^2 + (a1b2)^2 + (b1a2)^2 +(b1b2)^2 = a^2 + b^2
    # (a^2+b^2)(c^2+d^2)=(ac-bd)^2+(ad+bc)^2
    # (a^2+b^2)(c^2+d^2)=(bd - ac)^2+(ad+bc)^2

    while True:
        if index == len(mylist):
            break
        _solve(_list[index])
        if mylist[index] == 1:
            mylist[index] = []

            # a1 = [x * _list[index] for x in mylist[index - 1]]
            a1 = []
            for x in mylist[index - 1]:
                dict[x * _list[index]] = []
                for y in dict[x]:
                    q1 = (dict[_list[index]]["b"] * y["b"] - dict[_list[index]]["a"] * y["a"])
                    q2 = (dict[_list[index]]["a"] * y["b"] + dict[_list[index]]["b"] * y["a"])
                    if q1<q2:
                        dict[x*_list[index]].append({
                            "a": q1, "b": q2
                        })
                    else:
                        dict[x * _list[index]].append({
                            "b": q1, "a": q2
                        })

            a1.append(x*_list[index])

            a2= []

            for x in mylist[index - 1]:
                a2.append(x * 1)


            # a2 = [1 * x for x in mylist[index - 1]]


            mylist[index] += a1
            mylist[index] += a2
            s.update(mylist[index])
        index += 1

    # ll = []
    # for i in xrange(len(_list)):
    #     for j in xrange(i+1, len(_list)):
    #         ll.append(_list[i] * _list[j])

    return s


# for N in multi:
#     for a2 in xrange(N/2):
#         if is_square(a2) and is_square(N - a2):
#             print "N=", N, "found: ", sqrt(a2), sqrt(N - a2)
#             ss += sqrt(a2)


_list = findPrimes()
print "found: ", len(_list),"primes\n",(_list)
multi = collectAllPrimesMultiAndSolve(_list)
print "reducing: ", len(multi)
print multi
print dict



print ss



