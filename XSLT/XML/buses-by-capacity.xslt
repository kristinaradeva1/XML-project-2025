<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <busesByCapacity>
            <xsl:for-each select="busStationReservationSystem/buses/bus">
                <bus capacity="{@capacity}">
                    <busNumber><xsl:value-of select="busNumber"/></busNumber>
                    <driver><xsl:value-of select="driver/name"/></driver>
                </bus>
            </xsl:for-each>
        </busesByCapacity>
    </xsl:template>
</xsl:stylesheet>