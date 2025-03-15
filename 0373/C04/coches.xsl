<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Mis coches</title>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <h2>Mis coches USADOS</h2>

                <table>
                    <tr>
                        <th>Marca</th>
                        <th>Modelo</th>
                        <th>Foto</th>
                        <th>Matricula</th>
                    </tr>
                    <!-- <xsl:for-each select="coches/coche[estado='Usado']"> -->
                    <xsl:for-each select="coches/coche">
                        <xsl:sort select="marca" order="ascending" />
                        <!-- <xsl:if test="estado='Usado'">
                            <tr class="usado">
                                <td>
                                    <xsl:value-of select="marca"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="modelo"></xsl:value-of>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="estado='Nuevo'">
                        <tr class="nuevo">
                                <td>
                                    <xsl:value-of select="marca"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="modelo"></xsl:value-of>
                                </td>
                            </tr>
                        </xsl:if> -->

                        <xsl:choose>
                            <xsl:when test="estado='Usado'">
                                <tr class="usado">
                                    <td>
                                        <xsl:value-of select="marca"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="modelo"></xsl:value-of>
                                    </td>
                                    <td>

                                    <img src="imgs/{foto}"/>
                                    </td>
                                </tr>
                            </xsl:when>
                            <xsl:when test="estado='Seminuevo'">
                                <tr class="seminuevo">
                                    <td>
                                        <xsl:value-of select="marca"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="modelo"></xsl:value-of>
                                    </td>
                                    <td>
                                       <img src="imgs/{foto}"/>
                                       <p><a href="{web}">Más información</a></p>
                                    </td>
                                    <td><xsl:value-of select="@matricula"/></td>
                                </tr>
                            </xsl:when>

                            <xsl:otherwise>
                                <tr class="nuevo">
                                    <td>
                                        <xsl:value-of select="marca"></xsl:value-of>
                                    </td>
                                    <td>
                                        <xsl:value-of select="modelo"></xsl:value-of>
                                    </td>

                                    <td>
                                       <img src="imgs/{foto}"/>
                                    </td>
                                </tr>
                            </xsl:otherwise>
                        </xsl:choose>


                    </xsl:for-each>
                </table>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>