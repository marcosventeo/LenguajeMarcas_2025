<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Listado de libros</title>
                <link rel="stylesheet" href="style.css"/>
            </head>        
            <body>
                <h2>Listado de libros</h2>
                <table >
                <tr>
                    <th>Titulo</th>
                    <th>autor</th>
                </tr>
                <xsl:for-each select="catalogo/libro">
                    <tr>
                        <td> 
                            <xsl:value-of select="titulo"></xsl:value-of>     
                        </td>
                        <td> 
                            <xsl:value-of select="autor"></xsl:value-of>     
                        </td>
                    </tr>
                </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>