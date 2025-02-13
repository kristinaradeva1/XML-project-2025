<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Информация за автобуси</title>
            </head>
            <body>
                <h1>Автобуси</h1>
                <table border="1">
                    <tr>
                        <th>Автобус</th>
                        <th>Капацитет</th>
                    </tr>
                    <xsl:for-each select="busStationReservationSystem/buses/bus">
                        <tr>
                            <td><xsl:value-of select="busNumber"/></td>
                            <td><xsl:value-of select="@capacity"/> места</td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>