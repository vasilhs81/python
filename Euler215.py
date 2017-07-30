

# Consider the problem of building a wall out of 2*1 and 3*1 bricks (horizontal*vertical dimensions)
# such that, for extra strength, the gaps between horizontally-adjacent bricks never line up in consecutive layers,
# i.e. never form a "running crack".
#
# For example, the following 9*3 wall is not acceptable due to the running crack shown in red:
#
# There are eight ways of forming a crack-free 9*3 wall, written W(9,3) = 8.
#
# Calculate W(32,10).


# When are they to line up? It depends where are the lines..
#  9 * 3 wall , Brickes can be 2*1 or 3*1, so in how many ways can be the vertical lines?
# Brute force ? If we are to use only 2*1 then lines would be in the following positions:
# 2,4,6,8
# How to form the wall using the bricks.. Line can be every two or every 3 points.
# | | | | | | | | |
# First split it into groups of 3 => (| | |)(| | |)(| | |) 3*n = 9 => n = 3 groups
# Then (n-1) groups of 3 and 1 or more group of 2 => impossible: 3 + 3 + 2*n = 9 => 2*n = 3 Impossible, n:integer
# Then 1 group of 3 and 1 or more group of 2 => 3 + n*2 = 9 => n*2 = 6 => n=3 groups.
#     groups must be consecutive. How many different ways we have for group3?


#  3n + 2K =9 n,k:integers 3n = 9-2k => n = (9-2k)/3 , n>=1 => 9-2k>=3 => 6>=2k => 3 >=k ,
# (K<=3) n<= 9/3=3 => 9-2k <=9 => (k>=0)
#  The lines occur at

# k=0 => n=3 => there is only 1 way to accomplish this.
# k=1 => n = 7/3 X
# k=2 => n = 5/3 X
# k=3 => n= 1 , we have
#  The problem is how to slice the list of items, into groups of three and 2
# (| | |) (| |) (| |) (| |)
# Not  | (| | |) (| |) (| |) |

# (| |) (| | |) (| |) (| |)
# (| |) | (| | |) (| |) | Aporiptetai
#  must be concecutive items
# (| |) (| |) (| | |) (| |)
# (| |) (| |) (| | ) (| | |)
# We have 9/3 = 3 choices for 3wall item
# for the triple, we have 9 - 2 - 1 = 6 cases.
# It must be in such a way that the rest sum to be multiple of 2.
#  If we had two triples and multiple 2ples and 3ples, the rest must be multiples of 2 or three.

# W(9x3) W(32,10)
# 3k + 2n =9
# k = (9-2n)/3 , n<=3 => (9 - 3k)/2 <= 3 -> 9 - 3n <=6 => 3n >= 3 => k>=1
import  math
import itertools as it

walls = []

def WW(n, k):
    nk = n + k
    ll = []
    global walls
    for i in xrange(n): ll.append(2)
    for i in xrange(k): ll.append(3)

    # ll=[2,2,2,3]

    a = it.permutations(ll, nk)
    ss = a
    # ss = set(a)
    # print "ss", ss
    # how many of them violate?
    su = 0
    _sums = []
    for l in ss:
        # for j in xrange(4):
        _sums.append([sum(l[:j + 1]) for j in xrange(nk - 1)])

    print "sums = ", _sums
    print "zip sums=", zip(*_sums)
    for s in _sums:
        walls.append(s)

    #  There might be different amount of elements
    # (| | |) (| | |) (| | |)
    # (| |) (| |) (| |) (| | |)
    # in how many ways we can arrange them so there is no break free?
    #  for the 1st row we have 4 cases etc..
    # 4 * 3 - the cases that overlap i.e. 12 - Diat(4 3) - D(4 2) - Diat(4 3)
    #  12 -4 -6 -4 =
    # must be 8..
    # how to exlcude them
    # [[2, 4, 7], [3, 5, 7], [2, 5, 7], [2, 4, 6]]


def _filter(Length,Height):
    global walls
    _set = set()
    print "QQQQQQQQQQQQQQQQQ"

    sa = []
    print "walls",walls
    for aa in it.permutations(walls, Height):
        print "checking..", aa
        # za = zip(*aa)
        # if any(set(a).intersection(b)!=[] for a, b in zip(aa, aa[1:])):
        check = False
        for j in xrange(len(aa) -1):
            # check if sums have common / double element inside..
            if len(set(aa[j]).intersection(aa[j+1])) > 0:
                check = True
                break

        if check ==False:
            sa.append(aa)
    print "Found:",sa
    # print "AAAA",set(tuple(i) for i in sa)



            # print zip(za, za[1:])
            # if any(i == j for i, j in zip(zaa, zaa[1:])):

                # check = True
                # break
        # if check == False:



def W(Length, Height):
    n=0
    k = 0
    while True:
        if (Length-2*n) % 3 == 0:
            k = int((Length-2*n)/3)
            WW(n,k)
        n += 1
        if 2*n >= Length:
            break
    _filter(Length, Height)

W(9, 3)







#  The total cases are : (n+m n). e.g. (1+3 1)= 4!/(1! * 3!) = 4 correct
#  But how can we find now the lines to exclude.
# e.g.
# (| |) (| |) (| | |) (| |)
# (| |) (| |) (| |) (| | |) apporiptetai
# einai oi periptwses pou exoume
# Me posous tropous mporoume na ftiksoume a8roisma 9, kai posoi apo autous exoun koino prefix
# an exoume 1 3ple and 3 2ple

# (| | |) (| |) (| |) (| |)
# (| |) (| |) (| |) (| | |) dekto
#  posa dynata a8roismata mporoume na exoume me 3diple kai 1 triple?


def subset_sum(numbers, target, partial=[]):
    s = sum(partial)

    # check if the partial sum is equals to target
    if s == target:
        print "sum(%s)=%s" % (partial, target)
    if s >= target:
        return  # if we reach the number why bother to continue

    for i in range(len(numbers)):
        n = numbers[i]
        remaining = numbers[i+1:]
        subset_sum(remaining, target, partial + [n])

# every one must be repeated

# subset_sum([2,2,2,3],9)

#  just take all combinations of the four elements, and find the cases were the overlapp
#  they can be repeated 3 times..

#
# 2 2 2 3 ->2 4 6
# 3 2 2 2 -> 3 5 7
# 2 2 2 3 -> 2 4 6