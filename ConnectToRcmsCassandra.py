from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(
        username='kasimatis', password='ZjBcu9qUtg7WUL6v')
cluster = Cluster(['35.195.223.28'],auth_provider=auth_provider)
session_inselair = cluster.connect('rcms')

def cassandra_query(q):
    rows = session_inselair.execute(q)
    rowSet = []
    for row in rows:
	    rowSet.append(row)
        #print("Returned: " + len(rows) + " Results")
    return rowSet


def close_cassandra():
    session_inselair.shutdown()

    

