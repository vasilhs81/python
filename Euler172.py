#How many 18-digit numbers n (without leading zeros) are there such that no digit occurs more than three times in n?

total=0
sumtable = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
#table = {}
#table2 = {1:1,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0}
_list = [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]

#for i in range(0, len(num)-1):
import operator as op
from math import factorial as fact

def combinations(N,m):
    if N<m:
        return 0
    if N==m:
        return 1
    return fact(N)//fact(m)//fact(N-m)



def ncr(n, r):
    r = min(r, n-r)
    if r == 0: return 1
    numer = reduce(op.mul, xrange(n, n-r, -1))
    denom = reduce(op.mul, xrange(1, r+1))
    return numer//denom



def checkMyNum():
    table = {0:0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0}

    global _list
    for i in range(0, len(_list)-1):
        r=_list[i]
        #print r
        if table[r]==2:
            return 0
        print "ddd: ",r
        table[r]+=1
    return 1

def calc():
    sums =0
    global _list
    index =0
    while True:
        v = _list[index]
        while v == 9:
            if index==0:
                _list[index] = 1
            else: _list[index] = 0
            index += 1
            if (index > len(_list) - 1):
                return sums
            v = _list[index]
        _list[index] += 1
        check = checkMyNum()
        sums += check
        if check ==1:
            print "found: ", _list

        print _list," index=", index, " sums=", sums
        index = 0


#print calc()



L = 9 * 10 * 10

for i in xrange(4 , 18):
    #L = L *10 - 9* ncr(i-1,3) - ncr(i-2,3)
    L = L * 10 - 9* combinations(i-1,3) - combinations(i-2,3)

print L


# L18 = L17 + K18
# L1 = 9
# L2 = 9 *10 = L1 * 10
# L3 = 9 * 10 * 10 = L2 * 10
# L4 = L3 *10 - (4 3)
#
#1 2 3 4 5 6 7 8 9
#10 11 12 13 ....91 92 93 ...
#100 101 102 103 ...
# gia to 0: +1* L3 - {}
# gia to 1: +1* L3 - {1111}
# gia to 2: +1* L3 - {2222}
#...
# gia to 9:+1* L3 - {9999}
# L4 = L3 *10 - 9*(3 3)
# L5 = L4 *10 - 9*(4 3) - 1* (3 3) sigoura oxi 0 san 1o pshfio, ara
# L6 = L5*10 - 9*(5 3) -1 * (4 3)





















