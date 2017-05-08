import random
from datetime import date, timedelta, datetime
import json
import sys
sys.path.insert(0, 'scim/')
import ScimRequestThread as scim
from termcolor import colored, cprint

num_of_threads =3
num_of_requests =100
today = date.today()
user_names= ['ARNAAA','MUCAAAA','PRGAAAA','RIXAAAAA','LHRAAAAA','TXLAAAAA','FRAAAAA','CDGAAAA','DXBAAAA','BCNAAAA']
id = None


def getServiceProviderConfig():
    request1 = scim.ServiceProviderConfigs()
    response = request1.sendRequest()
    #if response.status_code != 200:
    parsed = json.loads(response.content)
    with open('scim-output/ServiceProviderConfig.json', 'w+') as f:
        f.write(json.dumps(parsed, indent=4, sort_keys=True))
    return response.status_code

def getSchemasUsers():
    request1 = scim.SchemasUsers()
    response = request1.sendRequest()
    # if response.status_code != 200:
    parsed = json.loads(response.content)
    with open('scim-output/SchemasUsers.json', 'w+') as f:
        f.write(json.dumps(parsed, indent=4, sort_keys=True))
    return response.status_code

def postCreateUser():
    with open('scim-input/user.json', 'r') as handle:
        parsed = json.load(handle)

    request1 = scim.CreateUser(json.dumps(parsed))
    response = request1.sendRequest()
    # if response.status_code != 200:
    with open('scim-output/CreateUser.json', 'w+') as f:
        if(response.status_code == 201):
            parsed = json.loads(response.content)
            global id
            id = parsed['id']
            cprint ("Created User with ID: "  + id,'green')
            f.write(json.dumps(parsed, indent=4, sort_keys=True))

        else:
            f.write (response.content)

    return response.status_code


def getUser(id):
    request1 = scim.GetUser(id)
    response = request1.sendRequest()
    with open('scim-output/GetUser.json', 'w+') as f:
        if response.status_code == 200:
            parsed = json.loads(response.content)
            f.write(json.dumps(parsed, indent=4, sort_keys=True))
        else:
            f.write(response.content)

    return response.status_code

def deleteUser(id):
    request1 = scim.DeleteUser(id)
    response = request1.sendRequest()
    if (response.status_code == 200):
        cprint("User with id: " +id +" deleted" , "magenta")
    return response.status_code


def updateUser(id):
    with open('scim-input/user.json', 'r') as handle:
        parsed = json.load(handle)

    _r_ = random.randint(0, len(user_names) - 1)
    parsed['userName'] = user_names[_r_]
    request1 = scim.UpdateUser(id, json.dumps(parsed))
    response = request1.sendRequest()
    print response.content, response.status_code
    # if response.status_code != 200:
    with open('scim-output/UpdateUser.json', 'w+') as f:
        if(response.status_code == 200):
            r_parsed = json.loads(response.content)
            id = r_parsed['id']
            if r_parsed['userName'] == user_names[_r_]:
                cprint ("Updated User with ID: "  + id,'green')
            else:
                cprint ("Unable to update User with ID: " + id, "red")
                print r_parsed['userName'], user_names[_r_]
            f.write(json.dumps(r_parsed, indent=4, sort_keys=True))
        else:
            f.write (response.content)

    return response.status_code


print "ServiceProviderConfig Status:" + str(getServiceProviderConfig())
print "Schemas Users Status:" + str(getSchemasUsers())
print "Create User Status:" + str(postCreateUser())
if id != None:
    print "Get User Status:" + str(getUser(id))
if id != None:
    print "Update User Status:" + str(updateUser(id))
if id != None:
    print "Delete User Status:" + str(deleteUser(id))







#ndc.writeXmlToFile(d,"out.xml")





#print randomDate("1/1/2008 1:30 PM", "1/1/2009 4:50 AM", random.random())



