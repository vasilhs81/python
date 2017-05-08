execfile("ConnectToSandBox.py")
q= query("select * from ndcgatewaylog where transactionid='a103ebe2b3c04491b9a6daca0a7e5625' and messageid=102")
print len(q[0].rsxml)

s= q[0].rsxml
# print s
session.shutdown()

import zlib
import base64
data = base64.b64decode(s)
ba = bytearray(data)
ss = zlib.decompress(bytes(ba), zlib.MAX_WBITS|32)
print(ss)
