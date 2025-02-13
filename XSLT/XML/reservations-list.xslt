<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <reservationsList>
            <xsl:for-each select="busStationReservationSystem/reservations/reservation">
                <reservation>
                    <customerName><xsl:value-of select="customer/name"/></customerName>
                    <busID><xsl:value-of select="busID"/></busID>
                    <seatNumber><xsl:value-of select="seatNumber"/></seatNumber>
                    <status><xsl:value-of select="@status"/></status>
                </reservation>
            </xsl:for-each>
        </reservationsList>
    </xsl:template>
</xsl:stylesheet>