from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='inselair_application', password='uRqjYY8mXt3DXvwX')
cluster = Cluster(['52.166.246.98','52.166.18.180', '52.166.8.122'],auth_provider=auth_provider)
session_inselair = cluster.connect('inselair')

def query_pss_log_new(q):
    rows = session_inselair.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet



    

