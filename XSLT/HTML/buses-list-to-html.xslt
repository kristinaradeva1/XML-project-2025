<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Списък на Автобусите</title>
            </head>
            <body>
                <h1>Списък на Автобусите</h1>
                <table border="1">
                    <tr>
                        <th>Регистрационен номер</th>
                        <th>Шофьор</th>
                        <th>Капацитет</th>
                        <th>Достъпност</th>
                    </tr>
                    <xsl:for-each select="busStationReservationSystem/buses/bus">
                        <tr>
                            <td><xsl:value-of select="busNumber"/></td>
                            <td><xsl:value-of select="driver/name"/></td>
                            <td><xsl:value-of select="@capacity"/></td>
                            <td>
                                <xsl:choose>
                                    <xsl:when test="@available='true'">Да</xsl:when>
                                    <xsl:otherwise>Не</xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>