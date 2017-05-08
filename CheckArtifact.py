# s= ShowSubFolders("C:\\dev\\work",">DTO<")
from os.path import join
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

    
