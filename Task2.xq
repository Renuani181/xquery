  for $x in doc("auction.xml")/site/regions/europe//item
            return <item>&#xa;<name>{$x/name/text()}</name>&#xa;<description>{$x/description}</description>&#xa;</item>