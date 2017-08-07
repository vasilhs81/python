#
#
# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
#
# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.


#  one, two, three, four, five, six, seven, eight, nine,


# python -m  pip install inflect




#solved 21124
import inflect
p = inflect.engine()
print p.number_to_words(342)
s= p.number_to_words(342)
print

print len(s)

count = 0
for i in xrange(1,1000+1):
    s = p.number_to_words(i)
    count += len(s)-s.count(" ")-s.count("-")

print count



