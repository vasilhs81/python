billion = 1000000000
# choose f so that  prob(v>= billion) = max
tosses = 1000
Inv =1
p = 0.5 #always




#p = 0.99977883988695
#p=0.999826149811766
#p = 0.999719729059539
#p = 0.99977883988695
#print round(p,12)
#after 1000 toses..
# L(n) = L(n-1) + 2*L(n-1)*f*0.5 - f*P(n-1)*0.5
# L(n) = L(n-1) + f*L(n-1) -0.5 * f* L(n-1)
# L(n) = L(n-1)(1+f- 0.5*f)
# L(n) = L(n-1)*(1 + 0.5*f)

#L(1) =1
#L(1000) = L(1)* k^(1000-1)
#L(1000) = 1* k^(1000-1)

#find f , such that L(1000) > 1000000000
#L(1) = 1 + 2* 0.25 *1 - 0.25 *1


#
# Ln = Ln-1 + Kn * Ln-1 =>
# Ln = Ln-1(1+Kn) =>
# Ln = L0*(1+K1)* (1+K2) * ... *(1+Kn)
# where Kn = 2*f with p=1/2 or Kn = -f with p=1/2
# We except in average case, with many iterations, about half of the cases
# will be tosses, so L1000 ~ [(1+2*f)^500] * [(1-f)^500]
# L1000= [(1+2*f)(1-f)]^500
# Let f(x) = (1+2x)(1-x) => f(x) = 1 - x +2x - 2x^2 =>
# f(x) = -2x^2 +x +1, f'(x) = -4x +1, f'(x)=0 => x=1/4, f''(x) = -4 so
# for x=1/4 we have the maximum output.
# so it makes sense to choose x optimum = 1/4 . In this case
# L1000 ~ [3/2 * 3/4]^500 = (9/8)^500.
# To calculate the probability that P(L1000>= 10^9)=
# P[3/2^m * 3/4^(1000-m)>=10^9]. The experiments are independent,
# 3/2 ^m * 3/4^(1000-m) >= 10^9 =>
# 3/2 ^m * [3/4^1000]/[3/4^m] >=10^9 =>
# [12/6 ^m ] * 3/4^1000 >= 10^9 =>
# 2^m >=10^9 / (3/4^1000) =>
# => x>= 444.935 i.e. x>=445 because x must be integer.
# So P(L1000>=10^9) = P(m>=445). This is just Binomial - Bernoulli
# distribution , and the probability is given...
# P = 0.99977883988695
# Number of integer solutions: 556, so P=556
# 1000 - 445 =
# if i have m=1 successes which is the optimum f?
# L1000 = [(1 + 2 * f) ^ m][(1 - f) ^ (1000 - m)]
# [(1 + 2 * f) ^ m] * [(1 - f) ^ (1000 - m)] >= 10 ^ 9, 1 <= m <= 1000, 0 < f < 1
# choose f to maximize the chances to win  at least 10 ^ 9 for m =1 successes the optimum
#  (1+2*f)*[(1-f)^999] >= 10^9
#  [(1+2f)^m]*[1-f]^(1000-m) - 10^9 >=0
#  {[(1+2f)/(1-f)]^m} * (1-f)^1000 - 10^9 >=0
# {[(1+2f)/(1-f)]^m} * (1-f)^1000 >= 10^9
#{[(1+2f)/(1-f)]^m} >= (10^9)/[(1-f)^1000]
# f'(x) = m(1+2f)^(m-1)

from math import factorial as fac
from math import fabs as abs
from math import log
from math import ceil
def binomial(N, m, s):
    try:
        binom = fac(N) // (fac(m) // fac(N - m))
        #binom = fac(N) / (fac(m) * fac(N - m))
        #binom = binom * s**m * (1-s)**(N-m)
        binom = binom * s ** N
    except ValueError:
        binom = 0
    return binom


def deriv(L,start, step, end):
    f = start
    alpha = end
    fold = 0

    while abs(f - fold) > end:

        fdev = (L(f + step) - L(f)) / step
        fold = f
        f -= alpha * fdev
    return f




def myfunc(f):
    return (9 * log(10) - 1000 * log(1 - f)) / (log(1 + 2 * f) - log(1 - f))






def P(m,f):
    Popt = 10 ** 9
    #a = (((2*m//(1000-m))**m) * (((3000-3*m)//2000)**1000))
    a= (1.0+2.0*f)**m * (1.0-f)**(1000.0-m)
    #print f
    if a>= Popt:
        return binomial(1000, m, 0.5)
    else:
        return 0



def try2():
    f1=deriv(myfunc, 0.5, 1e-6, 1e-4)
    print f1

    m = (int) (ceil (myfunc(f1)))
    sum =0
    for i in range(m,1000):
         sum += binomial(1000,i,0.5)
    print round(sum,12)

try2()














def factorial(n):
    if n < 2: return 1
    return reduce(lambda x, y: x*y, xrange(2, int(n)+1))

def prob(s, p, n):
    x = 1.0 - p

    a = n - s
    b = s + 1

    c = a + b - 1

    prob = 0.0

    for j in xrange(a, c + 1):
        prob += factorial(c) / (factorial(j)*factorial(c-j)) \
                * x**j * (1 - x)**(c-j)

    return prob




