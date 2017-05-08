import threading
import requests
from time import time
import httpRequest as http
import xml.dom.minidom
threadLock = threading.Lock()

auth = ("bill", "b!ll@$")
headers={"content-type":"application/json"}
headers2={"content-type":"application/json","Accept":"application/json"}

class ScimObject(object):
    def __init__(self, endPoint, id, data):
        self.endPoint = endPoint
        self.data = data
        self.response = None
        self.id = id
        self.baseUrl = "http://localhost:8080"

    def sendRequest(self):
        if isinstance(self,ServiceProviderConfigs) or isinstance(self,SchemasUsers) :
            response = requests.get(self.baseUrl + self.endPoint, auth=auth, headers=headers, data = self.data)
        elif isinstance(self,CreateUser):
            response = requests.post(self.baseUrl + self.endPoint, auth=auth, headers=headers2, data = self.data)
        elif isinstance(self, GetUser):
            response = requests.get(self.baseUrl + self.endPoint + "/" + self.id, auth=auth, headers=headers2)
        elif isinstance(self, UpdateUser):
            response = requests.put(self.baseUrl + self.endPoint + "/" + self.id, auth=auth, headers=headers2, data=self.data)
        elif isinstance(self, DeleteUser):
            response = requests.delete(self.baseUrl + self.endPoint + "/" + self.id, auth=auth, headers=headers)


        return response

        #self.species = species


class ServiceProviderConfigs(ScimObject):
    def __init__(self):
        ScimObject.__init__(self, "/v1/ServiceProviderConfigs", id=None, data = None)
        #self.name = name
        #self.species = species

class SchemasUsers(ScimObject):
    def __init__(self):
        ScimObject.__init__(self, "/v1/Schemas/Users", id=None, data = None)


class CreateUser(ScimObject):
    def __init__(self, data):
        ScimObject.__init__(self, "/v1/Users", id=None, data = data)

class GetUser(ScimObject):
    def __init__(self, id):
        ScimObject.__init__(self, "/v1/Users", id=id, data = None)

class UpdateUser(ScimObject):
    def __init__(self, id, data):
        ScimObject.__init__(self, "/v1/Users", id=id, data = data)

class DeleteUser(ScimObject):
    def __init__(self, id):
        ScimObject.__init__(self, "/v1/Users", id=id, data = None)




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


