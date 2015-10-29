<?xml version="1.0" encoding="UTF-8"?>

<!-- This is a Test -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">

    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes"/>
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template>

    <!-- Ordina la collection CarCollection tramite Manufacturer e Model -->
    <xsl:template match="MyDoc/MyList/CarCollection">
        <xsl:copy>
            <xsl:apply-templates select="Car">
                <xsl:sort select="@Manufacturer"/>
                <xsl:sort select="@Model"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
    
    <!-- Ordina la collection RecordCollection tramite Name -->
    <xsl:template match="MyDoc/MyList/RecordCollection">
        <xsl:copy>
            <xsl:apply-templates select="Record">
                <xsl:sort select="@Name"/>
            </xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
