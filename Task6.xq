 for $x in doc("auction.xml")/site/regions/europe/item
            for $y in doc("auction.xml")/site/closed_auctions/closed_auction
            for $z in doc("auction.xml")/site/people/person
            where ($x/@id = $y/itemref/@item) and ($y/buyer/@person = $z/@id)
            return <item>&#xa;<itemname>&#xa;{$x/name/text()}</itemname><personname>&#xa;{$z/name/text()}</personname></item>