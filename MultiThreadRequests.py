import thread

import random
import copy
import threading

import parseNdc as ndc
import RequestThread as rthread

from concurrent.futures import ThreadPoolExecutor, wait, as_completed
from time import time


from datetime import date, timedelta, datetime

init_time = time()
num_of_threads =8
num_of_requests =10
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
    _r_ = random.randint(0, len(_airports) - 1)
    depart_airport = _airports[_r_]

    del _airports[_r_]
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



pool = ThreadPoolExecutor(num_of_threads)  # for many urls, this should probably be capped at some value.
#futures = [pool.submit(requests.get, url) for url in urls]
#results = [r.result() for r in as_completed(futures)]
#print "Threadpool done in %s" % (time() - then)


#domXml = createRandomRequest()
doXmls = [createRandomRequest() for i in range(num_of_requests)]
threads = []
responses = {}

# Create new threads
#thread1 = rthread.requestThread("AirShopping-1","http://35.187.57.17:8700/ndcgateway", domXml, responses)
then = time()
futures = [pool.submit(rthread.RequestWorker, "AirShopping-%s" %(id),"http://35.187.57.17:8700/ndcgateway", domXml, responses)
           for domXml,id in zip(doXmls,range(num_of_requests))]
results = [r.result() for r in as_completed(futures)]
total_net_duration =time()-then
total_exec_time =time()-init_time

tt =0.0

for key,(xml,t) in responses.iteritems():
    #ndc.writeXmlStringToFile(xml,"output/" + key + ".xml")
    tt += t

print "Total network Time: %s seconds" % (total_net_duration)
print "Total execution Time: %s seconds" % (total_exec_time)
print "(percentage: %f %%)" %(100*(total_net_duration)/total_exec_time)
print "Average time per request %f secs" %(tt/num_of_requests)
print "Throughput %f requests per second " %(num_of_requests/total_net_duration)









#ndc.writeXmlToFile(d,"out.xml")





#print randomDate("1/1/2008 1:30 PM", "1/1/2009 4:50 AM", random.random())



