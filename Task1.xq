
for $x in doc("auction.xml")/site/regions/*
            return <count>&#xa;{count($x/item)}</count>