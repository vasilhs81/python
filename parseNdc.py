import xml.etree.ElementTree as ET
from xml.dom.minidom import parse, parseString
def parseNdcFile(f):
        #ET.register_namespace("ns", "http://www.iata.org/IATA/EDIST/2017.1")
        tree = ET.ElementTree()
        tree.parse(f)
        #ET.dump(tree)
        return tree

def parseNdcString(s):
	root = ET.fromstring(s)
	return root


ns = "{http://www.iata.org/IATA/EDIST/2017.1}"
def xpath(tree, path):
        p = path.replace("/","/{http://www.iata.org/IATA/EDIST/2017.1}")
        if not p.startswith("/"):
             p = "{http://www.iata.org/IATA/EDIST/2017.1}" + p   
        print p
        return tree.findall(p)
    
    
        
def getAsString(tree):
		return ET.tostring(tree.getroot(), encoding='utf8', method='xml');
		
def getFileAsDom(f):
	dom1 = parse(f)
	return dom1
	
def getStringAsDom(tx):
	dom1 = parseString(tx)
	return dom1	
		
def writeXmlDomToFile(dom, f):
    f=open(f, "w")
    f.write(dom.toxml())
    f.close()

def writeXmlStringToFile(xml, f):
    f=open(f, "w")
    f.write(xml)
    f.close()

