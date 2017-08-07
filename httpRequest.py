import urllib2
import requests
def sendXmlRequest(url,data):
    req = urllib2.Request(url=url, 
                      data=data, 
                      headers={'Content-Type': 'application/xml'})
    
    response = urllib2.urlopen(req)
    return response.read()



