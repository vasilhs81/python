# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?
#solved : 1366


def calcSum(num, power):
    s = 0
    calc = int (num ** power)
    cc = 10
    while True:
        mod = calc % cc
        s += mod
        calc /= cc
        if calc == 0: break
    return s

print calcSum(2,1000)









