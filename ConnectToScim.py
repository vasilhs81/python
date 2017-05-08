from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='manolis', password='yL!2v9-Vaz')
cluster = Cluster(['216.226.146.240'],auth_provider=auth_provider)
session = cluster.connect('scim')

def query(q):
    rows = session.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet



    

