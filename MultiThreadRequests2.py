import thread
import time
import random
import copy
import threading
import time
import parseNdc as ndc
import RequestThread as rthread

from concurrent.futures import ThreadPoolExecutor, wait, as_completed
from time import time


from datetime import date, timedelta, datetime


num_of_threads =3
num_of_requests =100
today = date.today()
airports = ['ARN','MUC','PRG','RIX','LHR','TXL','FRA','CDG','DXB','BCN']
#execfile("parseNdc.py")

dom = ndc.getFileAsDom("AirShoppingRQ.xml")


def createRandomRequest():
    #start_day = today + timedelta(days=1)
    #end_day = today + timedelta(days=60)
    _airports = list(airports)
    r_d = random.randint(1, 60)
    r_a = random.randint(r_d, 60)
    r_depart_day = today + timedelta(days=r_d)
    r_return_day = today + timedelta(days=r_a)
    _r_ = random.randint(0, len(airports) - 1)
    depart_airport = _airports[_r_]

    del airports[_r_]
    _r_ = random.randint(0, len(_airports) - 1)
    arrival_airport = _airports[_r_]
    dom1 = copy.deepcopy(dom)
    dom1.getElementsByTagName("Departure")[0].getElementsByTagName("AirportCode")[0].\
        firstChild.replaceWholeText(depart_airport)
    dom1.getElementsByTagName("Departure")[0].getElementsByTagName("Date")[0]. \
        firstChild.replaceWholeText(r_depart_day)
    dom1.getElementsByTagName("Arrival")[0].getElementsByTagName("AirportCode")[0]. \
        firstChild.replaceWholeText(arrival_airport)

    dom1.getElementsByTagName("Departure")[1].getElementsByTagName("AirportCode")[0]. \
        firstChild.replaceWholeText(arrival_airport)
    dom1.getElementsByTagName("Departure")[1].getElementsByTagName("Date")[0]. \
        firstChild.replaceWholeText(r_return_day)
    dom1.getElementsByTagName("Arrival")[1].getElementsByTagName("AirportCode")[0]. \
        firstChild.replaceWholeText(depart_airport)

    return dom1


    #print r_depart_day, r_return_day, depart_airport, arrival_airport


then = time()
pool = ThreadPoolExecutor(num_of_threads)  # for many urls, this should probably be capped at some value.


domXml = createRandomRequest()
threads = []
responses = {}

# Create new threads
thread1 = rthread.requestThread("AirShopping-1","http://35.187.57.17:8700/ndcgateway", domXml, responses)
#thread2 = rthread.requestThread(2, "Thread-2", 2)

# Start new Threads
thread1.start()
#thread2.start()

# Add threads to thread list
threads.append(thread1)
#threads.append(thread2)

# Wait for all threads to complete
for t in threads:
    t.join()
print "Exiting Main Thread"

for key,xml in responses.iteritems():
    ndc.writeXmlStringToFile(xml,key + ".xml")











#ndc.writeXmlToFile(d,"out.xml")





#print randomDate("1/1/2008 1:30 PM", "1/1/2009 4:50 AM", random.random())



