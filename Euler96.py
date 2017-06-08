# The 6K text file, sudoku.txt (right click and 'Save Link/Target As...'), contains fifty different Su Doku puzzles ranging in difficulty,
# but all with unique solutions (the first puzzle in the file is the example above).
#
# By solving all fifty puzzles find the sum of the 3-digit numbers found in the top left corner of each solution grid;
# for example, 483 is the 3-digit number found in the top left corner of the solution grid above.

#Solved. Just run

import time
f= open("eulerData/p096_sudoku.txt","r")
grids = []
thisGrid = []
thisLine = []
for line in f:
    if line.startswith("Grid"):
        if len(thisGrid)>0:
            grids.append(thisGrid)
        thisGrid = []
    else:
        thisLine = []
        for j in range(len(line)):
            if line[j].isdigit():
                thisLine.append(int(line[j]))
        thisGrid.append(thisLine)
grids.append(thisGrid)

tuple = (1,2,3,4,5,6,7,8,9)
_set = set(tuple)


def reduceGrid(grid):
    for i in xrange(len(grid)):
        for j in xrange(len(grid[i])):
            if grid[i][j] == 0:
                grid[i][j] = set(tuple)
                for l in xrange(len(grid[i])):
                    if type(grid[i][l]) == int:
                        grid[i][j].discard(grid[i][l])
                for l in xrange(len(grid)):
                    if type(grid[l][j]) == int:
                        grid[i][j].discard(grid[l][j])

    reduceQuadr(grid, 0, 3, 0, 3)
    reduceQuadr(grid, 0, 3, 3, 6)
    reduceQuadr(grid, 0, 3, 6, 9)

    reduceQuadr(grid, 3, 6, 0, 3)
    reduceQuadr(grid, 3, 6, 3, 6)
    reduceQuadr(grid, 3, 6, 6, 9)

    reduceQuadr(grid, 6, 9, 0, 3)
    reduceQuadr(grid, 6, 9, 3, 6)
    reduceQuadr(grid, 6, 9, 6, 9)


def reduceQuadr(grid, k, l, m, n):
    s = set()
    for i in xrange(k,l):
        for j in xrange(m,n):
            if type(grid[i][j]) == int:
                s.add(grid[i][j])

    for i in xrange(k,l):
            for j in xrange(m,n):
                if type(grid[i][j]) == set:
                    grid[i][j] = grid[i][j].difference(s)


def reduceCols(grid, i, j):
    if j % 3 == 0:
        for l in xrange(i + 1, i + 3):
            for m in xrange(j + 1, j + 3):
                if type(grid[l][m]) == int:
                    grid[i][j].discard(grid[l][m])


def checkColRowsQuadrBasic(grid, row, column):
    for i in range(row) + range(row+1, len(grid)):
        if type(grid[i][column]) == int:
            if grid[i][column] == grid[row][column]:
                return False
    # print "Not found in rows"

    for j in range(column) + range(column+1, len(grid)):
            if type(grid[row][j]) == int:
                if grid[row][j] == grid[row][column]:
                    return False
    # print "Not found in columns"

    k = row//3
    l = row//3 + 3
    m = column // 3
    n = column//3 + 3
    for i in range(k, row) + range(row + 1, l):
        for j in range(m, column) + range(column + 1, n):
            if type(grid[i][j]) == int:
                if grid[i][j] == grid[row][column]:
                    return False
    # print "Not found in quadr "
    return True

def checkColRowsQuadr(grid, row, column, val):
    for i in range(row) + range(row + 1, len(grid)):
        if type(grid[i][column]) == int:
            if grid[i][column] == val:
                return False
    # print "Not found in rows"

    for j in range(column) + range(column + 1, len(grid)):
        if type(grid[row][j]) == int:
            if grid[row][j] == val:
                return False
    # print "Not found in columns"

    k = (row // 3) * 3
    l = k + 3
    m = (column // 3) * 3
    n = m + 3
    # for i in range(k, row) + range(row + 1, l):
    #     for j in range(m, column) + range(column + 1, n):
    for i in range(k, l):
        for j in range(m, n):
            if i == row and j == column:
                continue
            if type(grid[i][j]) == int and grid[i][j] == val:
                return False
    return True

def checkGridIsSolved(grid):
    for i in xrange(len(grid)):
        for j in xrange(len(grid[i])):
            if not checkColRowsQuadrBasic(grid, i, j):
                return False
    return True






def solveGrid(grid):
    stack = []
    i = 0
    j = 0
    # for i in xrange(len(grid)):
    #     for j in xrange(len(grid[i])):
    while i< len(grid):
        while j < len(grid[i]):
            if type(grid[i][j]) == set:
                    m = grid[i][j]
                    for k in m:
                        if checkColRowsQuadr(grid, i, j, k):
                            stack.append({"row": i, "column": j, "value": grid[i][j], "exclude": [k]})
                            grid[i][j] = k
                            break
                    if type(grid[i][j]) == set: # That means we didn't find any good value
                        while True: # Roll back
                            if len(stack) == 0:
                                break
                            m = stack.pop()
                            i = m["row"]
                            j = m["column"]
                            grid[i][j] = m["value"]
                            for k in m["value"].difference(m["exclude"]):
                                if checkColRowsQuadr(grid, i, j, k):
                                    grid[i][j] = k
                                    m["exclude"].append(k)
                                    stack.append(m)
                                    break
                            if type(grid[i][j]) == int: # Found at least one possible good value
                                break
            j += 1
        i += 1
        j = 0





sum = 0

print len(grids)


start = time.time()


for grid in grids:
    reduceGrid(grid) # Reduce possible solutions for each cell
    solveGrid(grid)
    sum += int(str(grid[0][0]) + str(grid[0][1]) + str(grid[0][2]))

end = time.time()
print "Time: ", (end - start), "secs" #Time:  20. secs
print sum #24702
