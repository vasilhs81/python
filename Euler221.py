# We shall call a positive integer A an "Alexandrian integer", if there exist integers p, q, r such that:
#
# For example, 630 is an Alexandrian integer (p = 5, q = -7, r = -18)
# In fact, 630 is the 6th Alexandrian integer, the first 6 Alexandrian integers being: 6, 42, 120, 156, 420 and 630.
#
# Find the 150000th Alexandrian integer.
# A = p * q * r    and   	1/A = 1/p +1/q +1/r
#  A>0 , 1/pqr = 1/p + 1/q + 1/r -> 1 = qr + pr + qp
#  = (q+p)r + qp
#  just find integer such that a + b + c = 1
# A = p * q * r    and   	1/A = 1/p +1/q +1/r
# r = A/pq , 1/A = 1/p + 1/q + pq/A, 1 = A(1/p + 1/q) + pq , 1-pq = A(1/p +1/q), A= (1-pq)/(1/p +1/q),
# A= (1-pq)pq / (p+q)
# A: Integer, >0, so find pq such that A integer and A > 0
# -pq^2 + pq =x , p+q =y , if p,q >0 , then 1-qp <0 and p + q >0 so aporiptetai.
#  Symmetry, so p > 0 , q < 0. If p=-q then A = (1-a^2)/(2/a)


def a1():
    a = []
    mm = 64
    for p in xrange(1, mm ,2):
        for q in xrange(-2, -mm,-2):
            if p!=-q:
                if ((1.0 -p*q)*p*q) % (p+q) == 0 and ((1.0 - p*q)*p*q)/(p+q) > 0:
                    A = ((1.0-p*q)*p*q)/(p+q)
                    a.append(A)
                    print A, p, q

    print sorted(a)

def a2():
    a = []
    mm = 64
    for p in xrange(1, mm ,2):
        for q in xrange(-2, -mm,-2):
            if p!=-q:
                if ((1.0 -p*q)*p*q) % (p+q) == 0 and ((1.0 - p*q)*p*q)/(p+q) > 0:
                    A = ((1.0-p*q)*p*q)/(p+q)
                    a.append(A)
                    print A, p, q

    print sorted(a)

a1()