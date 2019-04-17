from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='cbt_application', password='TXdQGn3TjQBCdhVg')
cluster = Cluster(['52.166.246.98','52.166.18.180', '52.166.8.122'],auth_provider=auth_provider)
session_portal = cluster.connect('cbt')

def query_gateway_log_new(q):
    rows = session_portal.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet



    

