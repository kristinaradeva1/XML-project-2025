<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Автогара Информация</title>
            </head>
            <body>
                <h1>Информация за Автогарата</h1>
                <table border="1">
                    <tr>
                        <th>Име на Автогара</th>
                        <th>Град</th>
                        <th>Адрес</th>
                        <th>Телефон за контакт</th>
                    </tr>
                    <tr>
                        <td><xsl:value-of select="busStationReservationSystem/stationInfo/stationName"/></td>
                        <td><xsl:value-of select="busStationReservationSystem/stationInfo/location/city"/></td>
                        <td><xsl:value-of select="busStationReservationSystem/stationInfo/location/address"/></td>
                        <td><xsl:value-of select="busStationReservationSystem/stationInfo/contactNumber"/></td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>