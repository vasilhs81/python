from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='developer', password='vk4vvD93Ba6dG2hN')
cluster = Cluster(['52.233.154.9',          '52.174.180.36',     '52.232.78.54'],auth_provider=auth_provider)
session_portal = cluster.connect('cbt')

def query_gateway_log_new(q):
    rows = session_portal.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet



    

