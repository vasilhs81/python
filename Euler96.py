# The 6K text file, sudoku.txt (right click and 'Save Link/Target As...'), contains fifty different Su Doku puzzles ranging in difficulty,
# but all with unique solutions (the first puzzle in the file is the example above).
#
# By solving all fifty puzzles find the sum of the 3-digit numbers found in the top left corner of each solution grid;
# for example, 483 is the 3-digit number found in the top left corner of the solution grid above.

f= open("eulerData/p096_sudoku.txt","r")

#grids = [[] for line in filter(lambda x: x.startswith("Grid"), f)]
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




def solveGrid(grid):
    for i in xrange(len(grid)):
        for j in xrange(len(grid[i])):
            if grid[i][j]==0:
                grid[i][j] = set(tuple)
                for l in xrange(len(grid[i])):
                    if type(grid[i][l])==int:
                        grid[i][j].discard(grid[i][l])
                for l in xrange(len(grid)):
                    if type(grid[l][j])==int:
                        grid[i][j].discard(grid[l][j])

    checkQuadr(grid, 0, 3, 0, 3)
    checkQuadr(grid, 0, 3, 3, 6)
    checkQuadr(grid, 0, 3, 6, 9)

    checkQuadr(grid, 3, 6, 0, 3)
    checkQuadr(grid, 3, 6, 3, 6)
    checkQuadr(grid, 3, 6, 6, 9)

    checkQuadr(grid, 6, 9, 0, 3)
    checkQuadr(grid, 6, 9, 3, 6)
    checkQuadr(grid, 6, 9, 6, 9)

#  and now trial and error...
# i.e. dialekse gia ola set mia tyxaia timh, kai trekse ksana apo thn arxh olo to script..
#  an kapoia stigmh kapoio set size ginei 0.. tote akyrwse thn diadikasia




def checkQuadr(grid, k,l, m,n):
    s= set()
    for i in xrange(k,l):
        for j in xrange(m,n):
            if type(grid[i][j]) == int:
                s.add(grid[i][j])

    for i in xrange(k,l):
            for j in xrange(m,n):
                if type(grid[i][j])==set:
                    grid[i][j]=grid[i][j].difference(s)





# if i % 3 == 0:
#     if j % 2 == 1:
#         for l in xrange(i+1, i+3):
#             for m in xrange(j+1, j+3):
#                 if type(grid[l][m]) == int:
#                     grid[i][j].discard(grid[l][m])


def reduceCols(grid, i, j):
    if j % 3 == 0:
        for l in xrange(i + 1, i + 3):
            for m in xrange(j + 1, j + 3):
                if type(grid[l][m]) == int:
                    grid[i][j].discard(grid[l][m])
    # elif j % 3 ==1:




                    # grid[i][j] = []
                # grid[i][j].append(tuple)
                # grid[i][j]= [x for xs in grid[i][j] for x in xs]






# print grids
print len(grids)
print grids[0]
solveGrid(grids[0])
print grids[0]

