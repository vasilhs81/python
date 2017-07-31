

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
A=list()
DIM = 30
A = [[[0.0 if x!=1 else 1.0 for x in xrange(2)] for i in xrange(DIM)] for j in xrange(DIM)]
# A = [[[0 if x!=1 else 1 for x in xrange(DIM*DIM+1)] for i in xrange(DIM)] for j in xrange(DIM)]


# # # # #
# # # # #
# # # # #
# # # # #
# # # # #
def bell():
    global A
    global DIM
    for i in xrange(DIM):
        for j in xrange(DIM):
            if i>1 and i<(DIM-2) and j>1 and j<(DIM-2):
                #First calculate zero:
                A[i][j][0] = A[i+1][j][1] * 3/4 + A[i-1][j][1] * 3/4 + A[i][j+1][1] * 3/4 + A[i][j-1][1] * 3/4

            # ####
            elif 1 < i < (DIM-2) and j == (DIM-2):
                A[i][j][0] = A[i + 1][j][1] * 3 / 4 + A[i - 1][j][1] * 3 / 4 + A[i][j + 1][1] * 2 / 3 \
                             + A[i][j - 1][1] * 3 / 4

            elif 1 < i < (DIM-2) and j == (DIM-1):
                A[i][j][0] = A[i + 1][j][1] * 2 / 3 + A[i - 1][j][1] * 2 / 3 + A[i][j - 1][1] * 3 / 4

            elif (DIM-2) > i > 1 == j:
                A[i][j][0] = A[i + 1][j][1] * 3 / 4 + A[i - 1][j][1] * 3 / 4 + A[i][j - 1][1] * 2 / 3 + A[i][j + 1][1] * 3 / 4

            elif (DIM-2) > i > 0 == j:
                A[i][j][0] = A[i + 1][j][1] * 2 / 3 + A[i - 1][j][1] * 2 / 3 + A[i][j + 1][1] * 3 / 4

            #     #########
            elif 1 < j < (DIM-2) and i == (DIM-2):
                A[i][j][0] = A[i ][j+1][1] * 3 / 4 + A[i][j-1][1] * 3 / 4 + A[i+1][j][1] * 2 / 3 \
                             + A[i-1][j][1] * 3 / 4

            elif 1 < j < (DIM-2) and i == (DIM-1):
                A[i][j][0] = A[i ][j+1][1] * 2 / 3 + A[i ][j-1][1] * 2 / 3 + A[i-1][j][1] * 3 / 4

            elif (DIM-2) > j > 1 == i:
                A[i][j][0] = A[i ][j+1][1] * 3 / 4 + A[i][j-1][1] * 3 / 4 + A[i-1][j][1] * 2 / 3 + A[i+1][j][1] * 3 / 4

            elif (DIM-2) > j > 0 == i:
                A[i][j][0] = A[i ][j+1][1] * 2 / 3 + A[i][j-1][1] * 2 / 3 + A[i+1][j][1] * 3 / 4

            # ######
            elif i == (DIM-2) and j == (DIM-2):
                A[i][j][0] = A[i][j + 1][1] * 2 / 3 + A[i][j - 1][1] * 3 / 4 + A[i + 1][j][1] * 2 / 3 + A[i - 1][j][1] * 3 / 4

            elif i == (DIM-2) and j == (DIM-1):
                A[i][j][0] = A[i][j - 1][1] * 3 / 4 + A[i + 1][j][1] * 1 / 2 + A[i - 1][j][1] * 2 / 3

            elif i == (DIM-1) and j == (DIM-1):
                A[i][j][0] = A[i][j - 1][1] * 2 / 3 + A[i - 1][j][1] * 2 / 3

            elif i == (DIM-1) and j == (DIM-2):
                A[i][j][0] = A[i][j - 1][1] * 2 / 3 + A[i][j + 1][1] * 1 / 2 + A[i - 1][j][1] * 3 / 4
            # ########
            elif i == 1 and j == 1:
                A[i][j][0] = A[i][j - 1][1] * 2 / 3 + A[i][j + 1][1] * 3 / 4 + A[i - 1][j][1] * 2 / 3 + A[i + 1][j][1] * 3 / 4

            elif i == 1 and j == 0:
                A[i][j][0] = A[i][j + 1][1] * 3 / 4 + A[i - 1][j][1] * 1 / 2 + A[i + 1][j][1] * 2 / 3

            elif i == 0 and j == 0:
                A[i][j][0] = A[i][j + 1][1] * 2 / 3 + A[i + 1][j][1] * 2 / 3

            elif i == 0 and j == 1:
                A[i][j][0] = A[i][j + 1][1] * 2 / 3 + A[i][j - 1][1] * 1 / 2 + A[i + 1][j][1] * 3 / 4

for j in xrange(50):
    bell()


exp = 0
for i in xrange(30):
    for j in xrange(30):
        exp += A[i][j][0]

print exp

                # # # # #
                # # # # #
                # # # # #
                # # # # #
                # # # # #







# print (A[0][0])
