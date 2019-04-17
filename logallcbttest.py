
import urllib2
import os
import sys
import xml.dom.minidom

path="C:/Dev/samples/Inselair_3/flows/log/"

#execfile("ConnectToAzure_inselair_test.py")
execfile("ConnectToAzure_inselair_test.py")
execfile("ConnectToAzure_cbt_test.py")

#echotoken = "f0cde7c1cd644e42807f8a950bd70814"
def save_portal(echotoken):
    
    q1= query_gateway_log_new("select * from gateway_log_new where echo_token='%s' allow filtering;" %(echotoken))
    q1 = sorted(q1, key=lambda student: student.created_on)

    if not os.path.exists(path+echotoken):
        os.mkdir(path+echotoken)
    i=1
    for s in q1:
            
            ff = open(path+echotoken+"/"+str(i)+"-"+s.message_type+"RQ"+".xml", "w")
            a = xml.dom.minidom.parseString(s.xml_request)
            ff.write(a.toprettyxml())
            ff.close()
            i+=1
            ff = open(path+echotoken+"/"+str(i)+"-"+s.message_type+"RS"+".xml", "w")
            #ff.write(a)
            a = xml.dom.minidom.parseString(s.xml_response)
            ff.write(a.toprettyxml())
            ff.close()
            i+=1
            
    session_portal.shutdown()	


def save_pss(echotoken):
       
    q1= query_pss_log_new("select * from pss_log_new where transactionid='%s' allow filtering;" %(echotoken))
    q1 = sorted(q1, key=lambda student: student.rqtimestamp)

    if not os.path.exists(echotoken):
        os.mkdir(path+echotoken)
    if not os.path.exists(echotoken+"/SITA"):
        os.mkdir(path+echotoken+"/SITA")
        
    i=1
    for s in q1:
            
            if s.message_type.endswith("RQ"):
                ff = open(path+echotoken+"/SITA/"+str(i)+"-"+s.message_type+".xml", "w")
            else:
                ff = open(path+echotoken+"/SITA/"+str(i)+"-"+s.message_type+"RQ"+".xml", "w")
            a = xml.dom.minidom.parseString(s.rqxml)
            ff.write(a.toprettyxml())
            ff.close()
            i+=1
            
            if s.message_type.endswith("RQ"):
                ff = open(path+echotoken+"/SITA/"+str(i)+"-"+s.message_type[:-2]+"RS"+".xml", "w")
            else:
                ff = open(path+echotoken+"/SITA/"+str(i)+"-"+s.message_type+"RS"+".xml", "w")
            #ff.write(a)
            a = xml.dom.minidom.parseString(s.rsxml)
            ff.write(a.toprettyxml())
            ff.close()
            i+=1
            
    session_inselair.shutdown()


#save_pss()
#save_portal("0c88a5ebc3fb4acaa6da2e329efb28cc")    
save_pss(sys.argv[1])    
save_portal(sys.argv[1])    
print "OK"














#execfile("ConnectToAzure_inselair.py")
#execfile("ConnectToAzure_core.py")


#q1= query("select * from airline_portal.gateway_log_new where echo_token='f0cde7c1cd644e42807f8a950bd70814' allow filtering")
#print len(q[0].rsxml)

#s= q[0].rsxml

#session.shutdown()

#import zlib
#import base64
#data = base64.b64decode(s)
#ba = bytearray(data)
#ss = zlib.decompress(bytes(ba), zlib.MAX_WBITS|32)
#print(ss)
