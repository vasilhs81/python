from cassandra.cluster import Cluster
from cassandra.auth import PlainTextAuthProvider

auth_provider = PlainTextAuthProvider(username='inselair_developer', password='ins@devel@per')
cluster = Cluster(['216.226.146.241'], auth_provider=auth_provider, port=9042, compression="snappy")


# auth_provider = PlainTextAuthProvider(username='manolis', password='yL!2v9-Vaz')
# cluster = Cluster(['216.226.146.240'], auth_provider=auth_provider, port=9042, compression="snappy")

session = cluster.connect('inselair')



def simplequery(q):
    rows = session.execute(q)
    rowSet = []
    for row in rows:
        rowSet.append(row)
    # print("Returned: " + len(rows) + " Results")
    return rowSet


def batchInsert():
    insert_user = session.prepare("INSERT INTO users (name, age) VALUES (?, ?)")
    batch = BatchStatement(consistency_level=ConsistencyLevel.QUORUM)

    for (name, age) in users_to_insert:
        batch.add(insert_user, (name, age))

    session.execute(batch)




rs=query("select * from sita_log")
print rs






