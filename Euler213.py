

# A 30*30 grid of squares contains 900 fleas, initially one flea per square.
# When a bell is rung, each flea jumps to an adjacent square at random (usually 4 possibilities,
# except for fleas on the edge of the grid or at the corners).
#
# What is the expected number of unoccupied squares after 50 rings of the bell? Give your answer
# rounded to six decimal places.

# # # # #
# # # # #
# # # # #
# # # # #
# # # # #

# anadromika
# P50([0,0] un) = P49([0,1]oc)*1/3 + P49([1,0]oc)*1/3 = 1- P([0,1] free and [1,0] free)


# P(1 vac square) = p(899 squares occupied)
# se ka8e xtypo yparxei
# What is the expected number after 1 ring:
# After the first bell, for the first square to be free, there are 2/3 * 2/3 = 4/9 probability
# At the second bell, P(free) = P(free/[0,1] is occupied)* P([0,1] occup)+ P(free/[1,0] is occupied)* P([1,0] occup)+
# P(free/[0,1] is occupied and [1,0] )* P([0,1] occup) * P([1,0] occup)
# simulation? Las Vegas trial.. but only for 50 bells.
