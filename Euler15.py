# Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down,
# there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20x20 grid?
# Solved
# # #
# # #
# # #

DIM = 21


def rec(i, j):
    global DIM

    if i == DIM-1 and j == DIM-1:
        return 1
    elif i == DIM-1 and j < DIM - 1:
        return rec(i, j+1)
    elif i< DIM - 1 and j == DIM - 1:
        return rec(i+1, j)

    return rec(i+1, j) + rec(i, j+1)



# print rec (0,0)



# #
# #


def noRec():
    sum_of_routes = 0
    _table = [[0 for x in xrange(DIM)] for y in xrange(DIM)]
    # grid = [[[0.0 if x == 0 or x == 2 else 1.0 for x in xrange(3)] for i in xrange(DIM)] for j in xrange(DIM)]
    i = 0
    j = 0
    for i in xrange(DIM):
        for j in xrange(DIM):
            if i == 0 and j == 0:
                _table[i][j] += 1
            elif i == 0 and j > 0:
                _table[i][j] += _table[i][j-1]
            elif i > 0 and j == 0:
                _table[i][j] += _table[i-1][j]
            else:
                _table[i][j] += _table[i - 1][j] + _table[i][j-1]
    return _table[DIM-1][DIM-1]



print noRec()








