 for $x in doc("auction.xml")/site/regions//item
            order by $x/name
            return <item>&#xa;<name>{$x/name/text()}</name>&#xa;<location>{$x/location/text()}</location>&#xa;</item>