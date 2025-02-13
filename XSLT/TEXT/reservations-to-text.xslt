<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Списък на Резервации</title>
            </head>
            <body>
                <h1>Резервации</h1>
                <table border="1">
                    <tr>
                        <th>Клиент</th>
                        <th>Резервация</th>
                        <th>Място</th>
                    </tr>
                    <xsl:for-each select="busStationReservationSystem/reservations/reservation">
                        <tr>
                            <td><xsl:value-of select="customer/name"/></td>
                            <td><xsl:value-of select="@status"/></td>
                            <td><xsl:value-of select="seatNumber"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>