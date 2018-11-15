from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='airline_portal_application', password='BE64Y3rY9tVAkbcj')
cluster = Cluster(['52.166.246.98','52.166.18.180', '52.166.8.122'],auth_provider=auth_provider)
session_portal = cluster.connect('airline_portal')

def query_gateway_log_new(q):
    rows = session_portal.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet



    

