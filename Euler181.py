

# Having three black objects B and one white object W they can be grouped in 7 ways like this:
# (BBBW)	(B,BBW)	(B,B,BW)	(B,B,B,W) 	(B,BB,W)	(BBB,W)	(BB,BW)
#
# In how many ways can sixty black objects B and forty white objects W be thus grouped?


#  Prepei na ksexwrisw an 8a eina se B to komma, h se W..
# No Komms: 1
#  Me ena komma: (4 1) = 4 -1 = 3
# Me 2 kommata: (4 2) = 4! // 2! // 2! = 12 / 2 = 6

# 1 Total Chunk, or 2 chunks , or 3 chunks etc..
# 1 chunk: 1 way [BBBW]
# 2 chunks:  [B, BBW], [BB, BW], [BBB,W]
    # Gia to 1o chunk , exeis 1 tropo an exei to 1o mono B kai to 2o mono W.
    # An to 1o exei mono B kai to 2o Mono W tote exoume: => 1 Way
    # An to 1o exei mono B kai to 2o exei B kai W: BW,BBW => 2 ways

# #junks of 2 :
# Programming: for every 'B': combine 'W', 'WW' etc..
#  The first digit can be (Nb+Nw)

# **********************************
# 1 Chunk N: Nb + Nw = 1 way
# 2 Chunks:
#  1st chunk 1, 2ond chunk N-1= 99 => 2 ways
#  1st chunk 2, 2ond chunk N-2 = 98 =>  BB, BW, WW => 2+1 = 3
# 3 Chunks:
#   1st chunk 1, 2ond chunk 1, 3nd chunk N-2 => (1+1)*(1+1) = 3 {B,B,...}, {B,W,...}, {w,w,...} 1 + 1 + 1 = 3
#   1st chunk 1, 2ond chunk 2, 3nd chunk N-3 => (2) * (3) = 6 {B,BB,...}, {B,WW,...},{B,BW,...},{W, BB,...}, {W, WW,...},{W, BW,...}
#   1st chunk 1, 2ond chunk 3,...   => 2 * (1 + 1 + )
# @@@@@@@
#  Genika gia ka8e chunk, metras ta black mono: gia chunk twn 3, mporeis na exeis 0,1,2,3 'B's => 4 ways, gia chunk twn 2 mporeis na
#  exeis 0,1,2 'B's  => 3 genika n+1. Mexri ta 40
#  Apo ta 40 kai meta?
#  Den prepei na ypologizw kai posa exoun meinei?
# Dyskolo san 8ewria, mono simulation.
#  Apla prepei na to spaseis se n = 1 ,2 ,3,...., 100 chunks
#  Omws se posa chunks kai to mege8os twn chunks. P.x. an exw 3 chunks, exw 100-3 epiloges mege8ous gia to 1o, *

# ***********************************






# 3 Chunks: [B, B, BW], [B, BB, W]
    # An to 1 exei mono B , to 2o mono B kai to 3o mono W: [B, BB,W]
    # An to 1 exei mono B , to 2o B,W kai to 3o mono W: [B, BB,W]
    #An einai mix mporei na exoume gia to 1o chunk 1,2,3,4,.... ews

# 4 chunks: [B, B, B, W] => Total 7 ways.

# B:60 , W:40
#  Ara exoume:
# 1 chunk: 1 way
# 99 chunks: 1 way
# n chunks: gia ka8e ena chunk exoume:
#  gia to 1o chunk:



#  Not Solved Yet
total = 0
sumtable = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
#table = {}
#table2 = {1:1,2:0,3:0,4:0,5:0,6:0,7:0,8:0,9:0}
_list = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

#for i in range(0, len(num)-1):
import operator as op
from math import factorial as fact


def test1():
    A = fact()







def combinations(N,m):
    if N < m:
        return 0
    if N == m:
        return 1
    return fact(N)//fact(m)//fact(N-m)


def multiCombinations(a, b):
    sum = 0
    while True:
        comb = combinations(a, b)
        sum += comb
        if comb == 1 or comb == 0:
            return sum
        b += 1





def ncr(n, r):
    r = min(r, n-r)
    if r == 0: return 1
    numer = reduce(op.mul, xrange(n, n-r, -1))
    denom = reduce(op.mul, xrange(1, r+1))
    return numer//denom



def checkMyNum():
    table = {0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0}

    global _list
    for i in range(0, len(_list)-1):
        r=_list[i]
        #print r
        if table[r] == 2:
            return 0
        print "ddd: ", r
        table[r] += 1
    return 1





















