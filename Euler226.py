# The blancmange curve is the set of points (x,y) such that 0<=x<=1 and y = sum from 1 to inf S(2^n * x) / 2^n
# where s(x) = the distance from x to the nearest integer.
#
# The area under the blancmange curve is equal to 1/2, shown in pink in the diagram below.
# Let C be the circle with centre (1/4,1/2) and radius 1/4, shown in black in the diagram.
#
# What area under the blancmange curve is enclosed by C?
# Give your answer rounded to eight decimal places in the form 0.abcdefgh




# circle equation: (x-1/4)^2 + (y-1/2)^2 = 1/4 ^2
# x=rcost + 1/4
# y = rsint + 1/2
# all circles will have the same center. (x-1/4)^2 + (y-1/2)^2 <= 1/4 ^2
# x range: 0.. 1/4 +1/4 = 0.. 1/2
# y range: 1/2-1/4 .. 1/2 + 1/4 = 1/4 .. 3/4
# I(b) - I(a)
# I(x) = I(2x)/4 + (x^2)/2
# |2^n * x - m| = min
# II (rcost)= 4* I(r(sinp/2 - sin0)) = 4* R^2/2= 2R^2
#  y(r,t) = rsint, r:0-R, t:0-p/2 rsint drdt | = I(r*[1]) = R^2 /2
#  4 I (0..R, sqrt(R^2 - x^2)),
# taugh