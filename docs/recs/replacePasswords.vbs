

Set regex=new regexp
regex.ignorecase=true
regex.global=true

Set fso = CreateObject("Scripting.FileSystemObject")


F= "airline.properties"
Set MyFile = fso.OpenTextFile(F, 1)
  strText = MyFile.ReadAll
  msgbox strText
  'MyFile.WriteLine("This is a test.")
  MyFile.Close


regex.pattern="(cassandra.username\s*\=)\s*.+"
strText=regex.replace(strText, "$1inselair_application" )

regex.pattern="(cassandra.password\s*\=)\s*.+"
strText=regex.replace(strText, "$1uRqjYY8mXt3DXvwX" )


regex.pattern="(arr\.api\-key\s*\=)\s*.+"
strText=regex.replace(strText, "$1bb82253bff639e7b4987759717821486" )

regex.pattern="(arr\.service\-url\s*\=)\s*.+"
strText=regex.replace(strText, "$1https://sws.qa.sita.aero/arr2b/" )


Set MyFile = fso.OpenTextFile(F, 2)
  MyFile.write strText

MyFile.Close

'''''Gateway properties.

F= "gateway.properties"
Set MyFile = fso.OpenTextFile(F, 1)
  strText = MyFile.ReadAll
  msgbox strText
  'MyFile.WriteLine("This is a test.")
  MyFile.Close


regex.pattern="(cassandra.username\s*\=)\s*.+"
strText=regex.replace(strText, "$1ndc_core_application" )

regex.pattern="(cassandra.password\s*\=)\s*.+"
strText=regex.replace(strText, "$1QmkbEfYDUUMB69hJ" )


Set MyFile = fso.OpenTextFile(F, 2)
  MyFile.write strText

MyFile.Close


'''PSS.Properties
F= "../pss/pss.properties"
Set MyFile = fso.OpenTextFile(F, 1)
  strText = MyFile.ReadAll
  msgbox strText
  'MyFile.WriteLine("This is a test.")
  MyFile.Close


regex.pattern="(pim.Auth\s*\=)\s*.+"
strText=regex.replace(strText, "$1VmFzaWxpczp2YXMxMjM=" )

Set MyFile = fso.OpenTextFile(F, 2)
  MyFile.write strText

MyFile.Close


'''Cybs.Properties
F= "ibe.cybs.properties"
Set MyFile = fso.OpenTextFile(F, 1)
  strText = MyFile.ReadAll
  msgbox strText
  'MyFile.WriteLine("This is a test.")
  MyFile.Close


regex.pattern="(keyPassword\s*\=)\s*.+"
strText=regex.replace(strText, "$1jrtechnologies" )

Set MyFile = fso.OpenTextFile(F, 2)
  MyFile.write strText

MyFile.Close






msgbox strText