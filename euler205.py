pyramids = [1,1,1,1,1,1,1,1,1]
_pyramids = [1,1,1]
pyramidValues = (1,2,3,4)

cubes = [1,1,1,1,1,1]
cubeValues=(1,2,3,4,5,6)

pyramidSums = []
cubeSums = []

def calcSum(arr):
    sum =0
    for i in arr:
        sum += i
    return sum

def calcPyaramidSum(_list, maxValue):
    sums = []
    index = 0
    sums.append(calcSum(_list))

    while True:
        v = _list[index]
        while v == maxValue:
            _list[index] = 1
            index +=1
            if(index>len(_list)-1):
                return sums
            v = _list[index]
        _list[index] += 1
        index = 0
        sums.append(calcSum(_list))

    return sums







p= calcPyaramidSum(pyramids, 4) #262144
print len(p)
c= calcPyaramidSum(cubes, 6) #46656
print len(c)

favorResults = 0
dt = {}
for ip in p:
    if dt.has_key(ip) :
        favorResults += dt[ip]
    else:
        dd = 0
        for ic in c:
            if ip > ic:
                dd +=1
        favorResults += dd
        dt[ip] = dd
#favorResults = 7009890480
print favorResults #224139633
print round(float(favorResults) / float(len(p)*len(c)),7) #0.5731441







