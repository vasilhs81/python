

# A 30*30 grid of squares contains 900 fleas, initially one flea per square.
# When a bell is rung, each flea jumps to an adjacent square at random (usually 4 possibilities,
# except for fleas on the edge of the grid or at the corners).
#
# What is the expected number of unoccupied squares after 50 rings of the bell? Give your answer
# rounded to six decimal places.


# anadromika
# P50([0,0] un) = P49([0,1]oc)*1/3 + P49([1,0]oc)*1/3 = 1- P([0,1] free and [1,0] free)


# P(1 vac square) = p(899 squares occupied)
# se ka8e xtypo yparxei
# What is the expected number after 1 ring:
# After the first bell, for the first square to be free, there are 2/3 * 2/3 = 4/9 probability
# At the second bell, P(free) = P(free/[0,1] is occupied)* P([0,1] occup)+ P(free/[1,0] is occupied)* P([1,0] occup)+
# P(free/[0,1] is occupied and [1,0] )* P([0,1] occup) * P([1,0] occup)
# simulation? Las Vegas trial.. but only for 50 bells.
# Xwros katastasewn..
# Anti na ypologizeis olo ton xwro katastasewn, mporeis na ypologizeis apla 0,1, opou to "1" shmainei >0 fleas

from operator import mul


A=list()
DIM = 5
A = [[[1.0 if x==0 or x==2 else 1.0 for x in xrange(3)] for i in xrange(DIM)] for j in xrange(DIM)]
# A = [[[0 if x!=1 else 1 for x in xrange(DIM*DIM+1)] for i in xrange(DIM)] for j in xrange(DIM)]

for i in xrange(DIM):
    dirI =2
    if i == DIM - 1 or i == 0:
        dirI -= 1
    for j in xrange(DIM):
        dirJ = 2
        if j == DIM - 1 or j == 0:
            dirJ -= 1
        _dir = dirI + dirJ
        A[i][j][2] = (_dir-1.0)/_dir



import copy
import itertools as it



# # #
# # #
# # #

def printA():
    global A
    global DIM
    print "########### A #############"
    for i in xrange(DIM):
        for j in xrange(DIM):
            print A[i][j], "\t",
        print ""
    print "##############################"


# # # # #
# # # # #
# # # # #
# # # # #
# # # # #


# P(A
import itertools as it

# # #
# # #
# # #
# We must preserve the state... during iterations

def comb(ll):
    R1 = [x[1]*x[2] for x in ll]
    R2 = [x[0] for x in ll]
    _sum = 0.0
    for k in xrange(len(R1) + 1):
        for a1 in it.combinations(R1, k):
            for a2 in it.combinations(R2, len(R2) - k):
                _sum += reduce(mul, a2, 1) * reduce(mul, a1, 1)
    return _sum

def bell():
    global A
    global DIM
    _A = copy.deepcopy(A)

    for i in xrange(DIM):
        for j in xrange(DIM):
            if i>1 and i<(DIM-2) and j>1 and j<(DIM-2):
                # _A[i][j][1] = 1-(A[i+1][j][1] * 3/4 * A[i-1][j][1] * 3/4 * A[i][j+1][1] * 3/4 * A[i][j-1][1] * 3/4)
                _A[i][j][0] = comb([A[i+1][j], A[i-1][j], A[i][j+1], A[i][j-1]])

                # _A[i][j][0] = A[i+1][j][1] * 3/4 * A[i-1][j][1] * 3/4 * A[i][j+1][1] * 3/4 * A[i][j-1][1] * 3/4


            #  H pi8anothta na exeis '0' einai h pi8anothta na mhn sou dwsei out o A out o B
            # ###############################
            if 1 < i and i < (DIM-2) and j == (DIM-2):
                _A[i][j][0] = comb((A[i + 1][j], A[i - 1][j], A[i][j + 1], A[i][j - 1]))
                # _A[i][j][1] = 1-(A[i + 1][j][1] * 3/4 * A[i - 1][j][1] * 3/4 * A[i][j + 1][1] * 2/3 * A[i][j - 1][1] * 3/4)

            if 1 < i and i < (DIM-2) and j == (DIM-1):
                # _A[i][j][1] = 1-(A[i + 1][j][1] * 2/3 * A[i - 1][j][1] * 2/3 * A[i][j - 1][1] * 3/4)
                _A[i][j][0] = comb((A[i + 1][j], A[i - 1][j],A[i][j - 1]))

            if 1 < i and i < (DIM-2) and j == 1:
                # _A[i][j][1] = 1-(A[i + 1][j][1] * 3/4 * A[i - 1][j][1] * 3/4 * A[i][j - 1][1] * 2/3 * A[i][j + 1][1] * 3/4)
                _A[i][j][0] = comb((A[i + 1][j], A[i - 1][j], A[i][j - 1],A[i][j + 1]))

            if 1 < i and i < (DIM-2) and j == 0:
                # _A[i][j][1] = 1-(A[i + 1][j][1] * 2/3 * A[i - 1][j][1] * 2/3 * A[i][j + 1][1] * 3/4)
                _A[i][j][0] = comb((A[i + 1][j], A[i - 1][j], A[i][j + 1]))

            #     #########
            if 1 < j and j < (DIM-2) and i == (DIM-2):
                # _A[i][j][1] = 1-(A[i][j+1][1] * 3/4 * A[i][j-1][1] * 3/4 * A[i+1][j][1] * 2/3 * A[i-1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j + 1], A[i][j - 1], A[i + 1][j],  A[i - 1][j]))

            if 1 < j and j < (DIM-2) and i == (DIM-1):
                # _A[i][j][1] = 1-(A[i][j+1][1] * 2/3 * A[i][j-1][1] * 2/3 * A[i-1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j+1], A[i][j-1], A[i-1][j]))

            if 1 < j and j < (DIM-2) and i == 1:
                # _A[i][j][1] = 1-(A[i][j+1][1] * 3/4 * A[i][j-1][1] * 3/4 * A[i-1][j][1] * 2/3 * A[i+1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j+1], A[i][j-1], A[i-1][j], A[i+1][j]))

            if 1 < j and j < (DIM-2) and i == 0:
                # _A[i][j][1] = 1-(A[i][j+1][1] * 2/3 * A[i][j-1][1] * 2/3 * A[i+1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j+1], A[i][j-1], A[i+1][j]))

            # ######## i== DIM-2 ##################################################################################
            if i == (DIM-2) and j == (DIM-2):
                # _A[i][j][1] = 1-(A[i][j + 1][1] * 2/3 * A[i][j - 1][1] * 3/4 * A[i + 1][j][1] * 2/3 * A[i - 1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j + 1], A[i][j - 1], A[i + 1][j], A[i - 1][j]))
                # # # # #
                # # # # #
                # # # # #
                # # # * #
                # # # # #

            if i == (DIM-2) and j == (DIM-1):
                # _A[i][j][1] = 1-(A[i][j - 1][1] * 3/4 * A[i + 1][j][1] * 1/2 * A[i - 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j - 1], A[i + 1][j],A[i - 1][j]))
                # # # # #
                # # # # #
                # # # # #
                # # # # *
                # # # # #

            if i == (DIM-2) and j == 0:
                # _A[i][j][1] = 1- (A[i][j + 1][1] * 3/4 * A[i + 1][j][1] * 1/2 * A[i - 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j + 1],A[i + 1][j], A[i - 1][j]))
                # # # # #
                # # # # #
                # # # # #
#               * # # # #
                # # # # #
            if i == (DIM-2) and j == 1:
                # _A[i][j][1] = 1- (A[i][j - 1][1] * 2/3 * A[i][j + 1][1] * 3/4 * A[i - 1][j][1] * 3/4 * A[i + 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j - 1], A[i][j + 1], A[i - 1][j], A[i + 1][j]))
                # # # # #
                # # # # #
                # # # # #
                # * # # #
                # # # # #

            # ######## i== DIM-1 ##################################################################################

            if i == (DIM-1) and j == (DIM-1):
                # _A[i][j][1] = 1-(A[i][j - 1][1] * 2/3 * A[i - 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j - 1],A[i - 1][j]))
                # # # # #
                # # # # #
                # # # # #
                # # # # #
                # # # # *

            if i == (DIM-1) and j == (DIM-2):
                # _A[i][j][1] = 1- (A[i][j - 1][1] * 2/3 * A[i][j + 1][1] * 1/2 * A[i - 1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j - 1], A[i][j + 1], A[i - 1][j]))
                # # # # #
                # # # # #
                # # # # #
                # # # # #
                # # # * #

            if i == (DIM - 1) and j == 0:
                # _A[i][j][1] = 1 - (A[i][j + 1][1] * 2/3 * A[i - 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j + 1], A[i - 1][j]))
                # # # # #
                # # # # #
                # # # # #
                # # # # #
#               * # # # #

            if i == (DIM - 1) and j == 1:
                # _A[i][j][1] = 1 - (A[i][j - 1][1] * 1/2 * A[i][j + 1][1] * 2/3 * A[i - 1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j - 1], A[i][j + 1], A[i - 1][j]))
                # # # # #
                # # # # #
                # # # # #
                # # # # #
                # * # # #


            # ######## i == 1 ##################################################################################

            if i == 1 and j == 1:
                # _A[i][j][1] = 1 - (A[i][j - 1][1] * 2/3 * A[i][j + 1][1] * 3/4 * A[i - 1][j][1] * 2/3 * A[i + 1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j - 1], A[i][j + 1], A[i - 1][j], A[i + 1][j]))

            if i == 1 and j == 0:
                # _A[i][j][1] = 1 - (A[i][j + 1][1] * 3/4 * A[i - 1][j][1] * 1 / 2 * A[i + 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j + 1], A[i - 1][j], A[i + 1][j]))

            if i == 1 and j == (DIM - 1):
                # _A[i][j][1] = 1 - (A[i][j - 1][1] * 3/4 * A[i - 1][j][1] * 1/2 * A[i + 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j - 1], A[i - 1][j], A[i + 1][j]))
                # # # # #
                # # # # *
                # # # # #
                # # # # #
                # # # # #

            if i == 1 and j == (DIM - 2):
                # _A[i][j][1] = 1 - (A[i][j - 1][1] * 3/4 * A[i][j + 1][1] * 2/3 * A[i - 1][j][1] * 2/3 * A[i + 1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j - 1],A[i][j + 1],A[i - 1][j], A[i + 1][j]))
                # # # # #
                # # # * #
                # # # # #
                # # # # #
                # # # # #

            # ######## i == 0 ##################################################################################

            if i == 0 and j == 0:
                # _A[i][j][1] = 1 - (
                    # A[i][j + 1][1] * 2/3 * A[i + 1][j][1] * 2/3
                     # + A[i][j + 1][1] * 2/3 * A[i + 1][j][0] + A[i][j + 1][0] * A[i + 1][j][1] * 2/3 + A[i][j + 1][0] * A[i + 1][j][0]
                # )
                _A[i][j][0] = comb((A[i][j + 1], A[i + 1][j]))
#               * # # # #
                # # # # #
                # # # # #
                # # # # #
                # # # # #

            if i == 0 and j == 1:
                # at least one of the neighboors must give the "1" =>
                # 1- none of the neighboors give the "1"
                # _A[i][j][1] = 1 - (
                #     A[i][j + 1][1] * 2/3 * A[i][j - 1][1] * 1 / 2 * A[i + 1][j][1] * 3/4
                #     + A[i][j + 1][1] * 2/3 * A[i][j - 1][1] * 1 / 2 * A[i + 1][j][0]
                #     + A[i][j + 1][1] * 2 / 3 * A[i][j - 1][0] * A[i + 1][j][1] * 3 / 4
                #     + A[i][j + 1][0] * A[i][j - 1][1] * 1 / 2 * A[i + 1][j][1] * 3 / 4
                #     + A[i][j + 1][1] * 2/3 * A[i][j - 1][0] * A[i + 1][j][0]
                #     + A[i][j + 1][0] * A[i][j - 1][1] * 1 / 2 * A[i + 1][j][0]
                #     + A[i][j + 1][0] * A[i][j - 1][0] * A[i + 1][j][1] * 3/4
                #     + A[i][j + 1][0] * A[i][j - 1][0] * A[i + 1][j][0]
                #
                #                    )
                _A[i][j][0] = comb((A[i][j + 1],A[i][j - 1],A[i + 1][j]))


                # * # # #
                # # # # #
                # # # # #
                # # # # #
                # # # # #
            if i == 0 and j == (DIM - 1):
                # _A[i][j][1] = 1 - (A[i][j - 1][1] * 2/3 * A[i + 1][j][1] * 2/3)
                _A[i][j][0] = comb((A[i][j - 1],A[i + 1][j]))
                # # # # *
                # # # # #
                # # # # #
                # # # # #
                # # # # #

            if i == 0 and j == (DIM - 2):
                # _A[i][j][1] = 1 - (A[i][j - 1][1] * 2/3 * A[i][j + 1][1] * 1/2 * A[i + 1][j][1] * 3/4)
                _A[i][j][0] = comb((A[i][j - 1], A[i][j + 1],A[i + 1][j]))
                # # # * #
                # # # # #
                # # # # #
                # # # # #
                # # # # #
            # ######## i== DIM-2 ##################################################################################

            # _A[i][j][0] = 1.0 - _A[i][j][1]
            _A[i][j][1] = 1.0 - _A[i][j][0]
    A = _A




# # # # #
# # # # #
# # # # #
# # # # #
# # # # #

def bell2():
    global A
    global DIM
    # _A = copy.deepcopy(A)
    _A = [[[0.0 for x in xrange(2)] for i in xrange(DIM)] for j in xrange(DIM)]




    for i in xrange(DIM):
        directionsI = 2
        if i == DIM-1 or i == 0:
            directionsI -= 1
        for j in xrange(DIM):
            directionsJ = 2
            if j == DIM-1 or j == 0:
                directionsJ -= 1
            # P1 = 1.0 / (directionsI + directionsJ)
            # P1 = ((directionsI + directionsJ)-1.0) / (directionsI + directionsJ)
            P1 = A[i][j][1] * 1.0 / (directionsI + directionsJ)
            if i > 0: _A[i-1][j][1] += P1
            if i < DIM-1: _A[i+1][j][1] += P1
            if j > 0: _A[i][j-1][1] += P1
            if j < DIM-1: _A[i][j+1][1] += P1
            # _A[i][j][1] -=1
    A = _A

# examines each flea , intead of each square...

for j in xrange(1):
    bell2()

printA()

exp0 = 0
exp1 = 0

for i in xrange(DIM):
    for j in xrange(DIM):
        exp1 += A[i][j][1]
        exp0 += 1-A[i][j][1]

print("Exp '0's: %.6f" % exp0)
print("Exp '>1's: %.6f" % exp1)
print("Total: %.6f" % (exp1 + exp0))

# print A[0][0][0] # P(1) =  1/3 + 1/3 = 2/3 => P(0)= 1-2/3 = 1/3 = 0.33333
# print A[2][2][0] # P(1) =  1/3 + 1/3 = 2/3 => P(0)= 1-2/3 = 1/3 = 0.33333


# # #
# # #
# # #


# print A[0][1][0]
# print A[0][1][1]



                # # # # #
                # # # # #
                # # # # #
                # # # # #
                # # # # #







# print (A[0][0])
