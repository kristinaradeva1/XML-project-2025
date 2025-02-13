<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Маршрути на Автобусите</title>
            </head>
            <body>
                <h1>Маршрути</h1>
                <table border="1">
                    <tr>
                        <th>Начална Точка</th>
                        <th>Крайна Точка</th>
                        <th>Час на Тръгване</th>
                        <th>Час на Пристигане</th>
                    </tr>
                    <xsl:for-each select="busStationReservationSystem/buses/bus/routes/route">
                        <tr>
                            <td><xsl:value-of select="startPoint"/></td>
                            <td><xsl:value-of select="endPoint"/></td>
                            <td><xsl:value-of select="departureTime"/></td>
                            <td><xsl:value-of select="arrivalTime"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>