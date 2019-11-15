from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='southern_airlines_developer', password='5Rhq97d9z5XADpFD')
cluster = Cluster(['40.118.1.217'],auth_provider=auth_provider)
session_portal = cluster.connect('dev_mw9x_cbt')
session_adapter = cluster.connect('dev_mw9x_adapter')
session_core = cluster.connect('dev_mw9x_ndc_core')


def query_portal(q):
    rows = session_portal.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet


def query_adapter(q):
    rows = session_adapter.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet

    
def query_core(q):
    rows = session_core.execute(q)
    rowSet = []
    for row in rows:
	rowSet.append(row)
    #print("Returned: " + len(rows) + " Results")
    return rowSet


