def problem81():
	matrix = [map(int, line.split(',')) for line in file('problem081.txt', 'r').xreadlines()]

	for y in xrange(len(matrix)):
		for x in xrange(len(matrix[y])):
			if y > 0:
				if x > 0:
					matrix[y][x] += min(matrix[y][x - 1], matrix[y - 1][x])
				else:
					matrix[y][x] += matrix[y - 1][x]
			else:
				if x > 0:
					matrix[y][x] += matrix[y][x - 1]
	return matrix[-1][-1]
	