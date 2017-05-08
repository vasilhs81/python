from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='developer', password='c@ssandra28')
cluster = Cluster(['10.10.10.195'],auth_provider=auth_provider)
session = cluster.connect('sandbox')

def query(q):
    rows = session.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet



    

