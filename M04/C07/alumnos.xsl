<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <html>
            <head>
                <title>Notas de los alumnos</title>
                <link rel="stylesheet" href="style.css" />
            </head>
            <body>
                <h2>Listado de alumnos</h2>
                <table>
                    <tr>
                        <th>nombre</th>
                        <th>curso</th>
                        <th>ciclo</th>
                        <th>nota</th>
                    </tr>

                    <xsl:for-each select="alumnos/alumno">
                        <xsl:sort select="curso" order="ascending"/>

                        <xsl:choose>
                            <xsl:when test="ciclo=DAW">
                             <!-- 
                                Se aplica si es DAW
                             -->
                            </xsl:when>
                            <xsl:when test="ciclo=DAM">
                            <!-- 
                                Se aplica si es DAM
                             -->
                            </xsl:when>
                            <xsl:otherwise>
                            <!-- 
                                Se aplica para el resto de ciclos
                             -->

                            </xsl:otherwise>
                        </xsl:choose>



                        <xsl:if test="nota &lt; 5">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre" />
                                </td>
                                <td>
                                    <xsl:value-of select="curso" />
                                </td>
                                <td>
                                    <xsl:value-of select="ciclo" />
                                </td>
                                <td class="suspendidos">
                                    <xsl:value-of select="nota" />
                                </td>
                            </tr>
                        </xsl:if>

                         <xsl:if test="nota >= 5">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre" /> 
                                    [<xsl:value-of select="@estado"/>]
                                </td>
                                <td>
                                    <xsl:value-of select="curso" />
                                </td>
                                <td>
                                    <xsl:value-of select="ciclo" />
                                </td>
                                <td class="aprobados">
                                    <xsl:value-of select="nota" />
                                </td>
                            </tr>

                        </xsl:if>
                    </xsl:for-each>
                </table>

            </body>
        </html>

    </xsl:template>
</xsl:stylesheet>