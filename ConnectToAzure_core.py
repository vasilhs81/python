from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='ndc_core_application', password='QmkbEfYDUUMB69hJ')
cluster = Cluster(['52.166.246.98','52.166.18.180', '52.166.8.122'],auth_provider=auth_provider)
session_ndc_core = cluster.connect('ndc_core')

def query_ndcgatewaylog(q):
    rows = session_ndc_core.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet



    

