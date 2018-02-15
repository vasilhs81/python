import os
from os import listdir
from os.path import isdir,join
from FileUtilities import get_directory_size
import shutil

mypath ="C:\\Users\\v.kasimatis\\.jrt\\log"
dirs = [f for f in listdir(mypath) if isdir(join(mypath, f))]
_size =0
max_size = 0
max_size_dir =""
for d in dirs:
     _size  = get_directory_size(join(mypath, d)) / 1024
     if _size >max_size:
         max_size = _size
         max_size_dir =d
     if _size <= 8:
        print(d,_size)
        shutil.rmtree(join(mypath, d), ignore_errors=True)
        #os.remove(join(mypath, d))

print "Max size folder:",max_size_dir,"(",max_size,")"



