import threading
from time import time
import httpRequest as http
import xml.dom.minidom
threadLock = threading.Lock()


def RequestWorker(threadID, url, xml, responses):
    print "Sending Request " + threadID
    # Get lock to synchronize threads
    # threadLock.acquire()
    # print_time(self.name, self.counter, 3)
    # Free lock to release next thread
    # threadLock.release()
    _then = time()
    response = http.sendXmlRequest(url, xml.toxml())
    duration  = time() - _then
    threadLock.acquire()

    print "Got :" + str(len(response)) + " for thread: " + threadID + " in %f secs" %(duration)
    responses[threadID] = (response, duration)
    threadLock.release()


class requestThread (threading.Thread):
    def __init__(self, threadID, url, xml, responses):
        threading.Thread.__init__(self)
        self.threadID = threadID
        self.url = url
        self.xml = xml
        self.responses = responses
    def run(self):
        print "Sending Request " + self.threadID
        # Get lock to synchronize threads
        #threadLock.acquire()
        #print_time(self.name, self.counter, 3)
        # Free lock to release next thread
        #threadLock.release()
        if isinstance(self.xml, xml.dom.minidom.Node):
            response = http.sendXmlRequest(self.url,self.xml.toxml())
        threadLock.acquire()
        print "Got :" + str(len(response)) +" for thread: " + self.threadID
        self.responses[self.threadID] = response
        threadLock.release()


def print_time(threadName, delay, counter):
    while counter:
        time.sleep(delay)
        print "%s: %s" % (threadName, time.ctime(time.time()))
        counter -= 1


