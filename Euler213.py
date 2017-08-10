

# A 30*30 grid of squares contains 900 fleas, initially one flea per square.
# When a bell is rung, each flea jumps to an adjacent square at random (usually 4 possibilities,
# except for fleas on the edge of the grid or at the corners).
#
# What is the expected number of unoccupied squares after 50 rings of the bell? Give your answer
# rounded to six decimal places.


# Solved with help: 330.721154 (run bell3())

# Solution:
# The problem can be restated as a random walk in which each flea has got 900 states
# (the 900 squares). The transition probability matrix can be defined as T(i,j)
# which denotes the probability of going to square j given the flee is at square i.
# The state of the ith flee is s_i=[0,0..1,0..]
# where 1 is at the ith position. The state probability of the ith flee after N rounds is q_{N,i}=s_i*T^N
# the probability that the ith flee will not be there in the jth square is the 1-jth element of q_{N,i} 1-q_{N,i}(j)
# the probability that none of the flees will be in square j would be p(j)=\prod_{i=1}^{900} (1-q_{N,i})(j)
# and the expected number of unoccupied squares is sum_{j}(p(j))


# in Matlab:
# Using this markov chain approach the time complexity becomes logarithmic in the number of bell rings.
# I used Matlab because it's suited perfectly for matrix operations: (pretty short code)

# n = 30;
# x = 50;
#
# a = zeros(n * n, n * n);
#
# for i=1:n
# if (i > 1 & & i < n), H=4;
# else H=3; end
#
# for j=1:n
# if (j > 1 & & j < n), H2=1 / H;
# else H2=1 / (H-1); end
#
# row = (i - 1) * n + j;
# if (i > 1), a(row, (i-2) * n+j)=H2; end
# if (i < n), a(row, (i  ) * n+j)=H2; end
# if (j > 1), a(row, (i-1) * n+j-1)=H2; end
# if (j < n), a(row, (i-1) * n+j+1)=H2; end
# end
# end
#
# answer = sum(prod(1 - a ^ x))




from operator import mul


A=list()
DIM = 30
A = [[[0.0 if x==0 or x==2 else 1.0 for x in xrange(3)] for i in xrange(DIM)] for j in xrange(DIM)]
# A = [[[0 if x!=1 else 1 for x in xrange(DIM*DIM+1)] for i in xrange(DIM)] for j in xrange(DIM)]

# for i in xrange(DIM):
#     dirI =2
#     if i == DIM - 1 or i == 0:
#         dirI -= 1
#     for j in xrange(DIM):
#         dirJ = 2
#         if j == DIM - 1 or j == 0:
#             dirJ -= 1
#         _dir = dirI + dirJ
#         A[i][j][2] = (_dir-1.0)/_dir



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


# for each flea, calculate the probatility to be in a specific square



def bell3(rounds):
    for i in xrange(DIM):
        for j in xrange(DIM):
            _A = [[1.0 if x == i and j == y else 0.0 for x in xrange(DIM)] for y in xrange(DIM)]
            for round in xrange(rounds):
                newA = [[0 for x in xrange(DIM)] for y in xrange(DIM)]
                for ii in xrange(DIM):
                        for jj in xrange(DIM):
                            dirs = 4
                            if _A[ii][jj] == 0.0:
                                continue
                            if ii == DIM - 1 or ii == 0:
                                dirs -= 1
                            if jj == DIM - 1 or jj == 0:
                                dirs -= 1

                            P = _A[ii][jj] * 1.0 / dirs
                            if ii > 0:
                                newA[ii - 1][jj] += P
                            if ii < DIM - 1:
                                newA[ii + 1][jj] += P
                            if jj > 0:
                                newA[ii][jj - 1] += P
                            if jj < DIM - 1:
                                newA[ii][jj + 1] += P
                _A = newA
            for x in xrange(DIM):
                for y in xrange(DIM):
                    A[x][y][1] *= 1.0 - _A[x][y]
    result = 0.0
    for i in xrange(DIM):
        for j in xrange(DIM):
            result += A[i][j][1]
    print("%.6f" % result)






def bell2():
    global A
    global DIM
    # _A = copy.deepcopy(A)
    _A = [[[0.0 if x == 1 else 1.0 for x in xrange(2)] for i in xrange(DIM)] for j in xrange(DIM)]




    for i in xrange(DIM):
        directionsI = 2.0
        if i == DIM-1 or i == 0:
            directionsI -= 1.0
        for j in xrange(DIM):
            directionsJ = 2
            if j == DIM-1 or j == 0:
                directionsJ -= 1.0
            # P1 = 1.0 / (directionsI + directionsJ)
            # P1 = ((directionsI + directionsJ)-1.0) / (directionsI + directionsJ)
            directions = directionsI + directionsJ
            P1 = A[i][j][1] * 1.0 / directions
            P0 = A[i][j][1] * (directions - 1.0) / directions
            # P0 = A[i][j][0] * 1.0 / directions
            print "i=", i, "j=", j, " _A[0][0][0]=", _A[0][0][0]," P0=",P0, " P1=",P1, " A[i][j][1]=",A[i][j][1]
            if i > 0:
                _A[i-1][j][1] += P1
                _A[i - 1][j][0] *= P0
            if i < DIM-1:
                _A[i+1][j][1] += P1
                _A[i + 1][j][0] *= P0
            if j > 0:
                _A[i][j-1][1] += P1
                _A[i][j - 1][0] *= P0
            if j < DIM-1:
                _A[i][j+1][1] += P1
                _A[i][j + 1][0] *= P0
            print "i=",i,"j=",j," _A[0][0]=", _A[0][0][0]
            # _A[i][j][1] -=1
    A = _A



def bell4():
    # lets find the transition matrix for each flea, and multiple it 50 times..


    import numpy as np
    from numpy.linalg import inv
    from numpy import linalg as LA
    # N = np.array([[0 for x in xrange(DIM)] for i in xrange(DIM)])
    directions =4
    P = np.zeros(DIM*DIM, DIM*DIM)
    for i in xrange(DIM):
        if i == DIM-1:
            directions -= 1
        for j in xrange(DIM):
            if j == DIM-1:
                directions -= 1
                row = (i ) * DIM + j
                col = (i) * DIM + j

                # if (i > 1): P[row, (i-2) * DIM+j] = 1.0/directions
                # if (i < n): P[row, (i  ) * n+j)=H2; end
                
                # if (j > 1), a(row, (i-1) * n+j-1)=H2; end
                # if (j < n), a(row, (i-1) * n+j+1)=H2; end



            # # # # #
            # # # # #
            # # # # #
            # # # # #
            # # # # #




    # x = np.array(((2, 3), (3, 5)))
    # y = np.array(((1, 2), (5, -1)))
    # return LA.matrix_power(inv(x * y), 3)








def init():
    global DIM
    global A
    for j in xrange(2):
        bell2()

    printA()

    exp0 = 0
    exp1 = 0

    for i in xrange(DIM):
        for j in xrange(DIM):
            exp1 += A[i][j][1]
            exp0 += A[i][j][0]
            # exp0 += 1-A[i][j][1]

    print("Exp '0's: %.6f" % exp0)
    print("Exp '>1's: %.6f" % exp1)
    print("Total: %.6f" % (exp1 + exp0))

# print A[0][0][0] # P(1) =  1/3 + 1/3 = 2/3 => P(0)= 1-2/3 = 1/3 = 0.33333
# print A[2][2][0] # P(1) =  1/3 + 1/3 = 2/3 => P(0)= 1-2/3 = 1/3 = 0.33333
# Tis prwtes pi8anothtes tis ypologiza swsta.

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
# He makes a grid, for each flea..


bell3(50)
# a = bell4()
# print a