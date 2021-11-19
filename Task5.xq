for $x in doc("auction.xml")/site/people/person
            group by $x/profile/interest[1]/@category
            where exists($x/profile/interest/@category) = true
            return <person>&#xa;<count>{count($x/name)}</count>&#xa;</person>