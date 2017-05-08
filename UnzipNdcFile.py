import zlib
import base64
def unzip_decode(data):
    data = base64.b64decode(data)
    ba = bytearray(data)
    ss = zlib.decompress(bytes(ba), zlib.MAX_WBITS|32)
    return ss

def unzip_log(transactionid,mesageid):
    q = query("select * from ndcgatewaylog where transactionid='%s' and messageid=%d" %(transactionid,mesageid))
    if len(q)>0 and len(q[0].rsxml)>0:
        return unzip_decode(q[0].rsxml)
    return ""


