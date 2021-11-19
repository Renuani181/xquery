 for $x in doc("auction.xml")/site/people//person
   where exists($x/profile/interest/@category) = true
  return <person>&#xa;<name>{$x/name/text()}</name>&#xa;<category>{$x/profile/interest}</category>&#xa;</person>