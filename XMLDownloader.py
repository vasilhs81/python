from BeautifulSoup import BeautifulSoup
import urllib2
import os

def downloadAllXml():

    response = urllib2.urlopen('https://support.travelport.com/webhelp/uapi/Content/SampleWeb/Samples_Air-Galileo.htm#001')
    html = response.read()
    # soup.findAll('a', attrs={'href': re.compile("^http://")})
    soup = BeautifulSoup(html)

    for link in soup.findAll('a'):
    # for link in filter(lambda x: x.endswith(".xml"), soup.findAll('a')):
        if link is not None and link.get('href') is not None and link.get('href').endswith(".xml"):
            print "https://support.travelport.com/webhelp/uapi/Content/SampleWeb/" + link.get('href')
            a = "https://support.travelport.com/webhelp/uapi/Content/SampleWeb/" + link.get('href')
            response2 = urllib2.urlopen(a)
            html2 = response2.read()
            if link.string is not None:
                if not link.string.endswith(".xml"):
                    f = open("Travelport/" + link.string + ".xml", "w")
                else:
                    f = open("Travelport/" + link.string, "w")
                f.write(html2)
                f.close()


def indendAllXmlFiles():
    for subdir, dirs, files in os.walk("Travelport/"):
        for f in files:
            path = os.path.join(subdir,f)
            ff= open(path, "r")
            soup = BeautifulSoup(ff.read())
            ff.close()
            a = soup.prettify()
            ff = open(path, "w")
            ff.write(a)
            ff.close()
            print f

indendAllXmlFiles()