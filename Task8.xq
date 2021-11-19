 for $x in doc("auction.xml")/site/open_auctions/open_auction 
            where $x/bidder/personref/@person = 'person3'
            return <reserve>&#xa;{$x/reserve/text()}</reserve>