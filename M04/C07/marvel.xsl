<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">


        <html>
            <head>
                <title>
                    mis susperheroes
                </title>
                <link rel="stylesheet" href="marvel.css" />
            </head>

            <body>
                <h2>Listado de Marvel</h2>

                <xsl:for-each select="marvel/superheroe">

                    <div>
                        <h4><xsl:value-of select="nombre" /> <br />[<xsl:value-of select="poder" />]</h4>
                        <p>
                            <img src="{foto}" alt="" />
                        </p>
                        <p>
                            <a href="{url}">Ver más info</a>
                        </p>
                    </div>

                </xsl:for-each>
            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>