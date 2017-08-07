# s= ShowSubFolders("C:\\dev\\work",">DTO<")
from os.path import join
import os
from xml.dom.minidom import parse, parseString, Node
def ShowSubFolders(rootdir, artifactid):
	ll = ""
	
	for subdir in os.listdir(rootdir):
		if os.path.isdir(join(rootdir,subdir)):
			if 'pom.xml' in os.listdir(join(rootdir,subdir)):
				f=open(os.path.join(rootdir,subdir,'pom.xml'))
				tx = f.read()
				f.close()
				if artifactid in tx:
					ll += subdir + '\n'
	return ll

    
def changePomVersions(oldVersion, newVersion, parentDir):
	artifacts = []

	if 'pom.xml' in os.listdir(parentDir):
		f = open(os.path.join(parentDir,'pom.xml'))
		tx = f.read()
		f.close()
		dom1 = parseString(tx)
		nlist = dom1.documentElement.childNodes
		for n in nlist:
			if n.nodeType == n.ELEMENT_NODE:
				if n.tagName == "artifactId":
					artifacts.append(n.firstChild.nodeValue)

	for subdir in os.listdir(parentDir):
		if os.path.isdir(join(parentDir, subdir)):
			if 'pom.xml' in os.listdir(join(parentDir, subdir)):
				f = open(os.path.join(parentDir, subdir, 'pom.xml'))
				tx = f.read()
				f.close()
				dom1 = parseString(tx)
				nlist = dom1.documentElement.childNodes
				for n in nlist:
					if n.nodeType == n.ELEMENT_NODE :
							if n.tagName == "artifactId":
								artifacts .append(n.firstChild.nodeValue)

	#Now that we have all pom, we can change them recursively
	if 'pom.xml' in os.listdir(parentDir):
		f = open(os.path.join(parentDir, 'pom.xml'))
		tx = f.read()
		f.close()
		dom1 = parseString(tx)
		dependencies = dom1.getElementsByTagName("dependency")
		dependencies += dom1.getElementsByTagName("parent")
		dependencies += (dom1.documentElement,)
		for dep in dependencies:
			depObj = {}
			nn = dep.childNodes
			for n in nn:
				if n.nodeType == n.ELEMENT_NODE:
					if n.tagName == "artifactId" :
						print "#" + n.firstChild.nodeValue
						depObj["artifactId"] = n.firstChild.nodeValue
					elif n.tagName == "version":
						depObj["version"] = n.firstChild.nodeValue
						depObj["versionNode"] = n
			if depObj.has_key("artifactId") and  depObj["artifactId"] in artifacts:
				if depObj.has_key("version") and depObj["version"] == oldVersion:
					print "found artifacti: " + depObj["artifactId"] + " oldValue: "+ depObj["version"]
					depObj["versionNode"].firstChild.nodeValue = newVersion

		f = open(os.path.join(parentDir, 'pom.xml'),"w")
		f.write(dom1.toxml())
		f.close()

	for subdir in os.listdir(parentDir):
		if os.path.isdir(join(parentDir, subdir)):
			if 'pom.xml' in os.listdir(join(parentDir, subdir)):
				f = open(os.path.join(parentDir, subdir, 'pom.xml'))
				tx = f.read()
				f.close()
				dom1 = parseString(tx)
				dependencies = dom1.getElementsByTagName("dependency")
				dependencies += dom1.getElementsByTagName("parent")
				dependencies += (dom1.documentElement,)
				for dep in dependencies:
					depObj = {}
					nn = dep.childNodes
					for n in nn:
						if n.nodeType == n.ELEMENT_NODE:
							if n.tagName == "artifactId":
								print "#" + n.firstChild.nodeValue
								depObj["artifactId"] = n.firstChild.nodeValue
							elif n.tagName == "version":
								depObj["version"] = n.firstChild.nodeValue
								depObj["versionNode"] = n
					if depObj.has_key("artifactId") and depObj["artifactId"] in artifacts:
						if depObj.has_key("version") and depObj["version"] == oldVersion:
							print "found artifacti: " + depObj["artifactId"] + " oldValue: " + depObj["version"]
							depObj["versionNode"].firstChild.nodeValue = newVersion
				#print dom1.toxml()
				f = open(os.path.join(parentDir, subdir, 'pom.xml'), "w")
				f.write(dom1.toxml())
				f.close()
	return artifacts

a= changePomVersions("1.0.4","1.0.5-SNAPSHOT","C:\\Dev\\SCIM\\scim-data")
print a
a= changePomVersions("1.0.4","1.0.5-SNAPSHOT","C:\\Dev\\SCIM\\jr-charon-server-v1.0")
print a
