<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
	 <xsl:value-of select="'&#10;'"/>
        <xsl:text>ID_ART,NAME,CODE,USERNAME,GUID</xsl:text>
		 <xsl:value-of select="'&#10;'"/>
            <xsl:for-each select="articles/article">
                <xsl:value-of select="id_art" />
                <xsl:text>,</xsl:text>

                <xsl:value-of select="name" />
                <xsl:text>,</xsl:text>

                <xsl:value-of select="code" />
				<xsl:text>,</xsl:text>

                <xsl:value-of select="username" />
                <xsl:text>,</xsl:text>

                <xsl:value-of select="guid" />
                <xsl:value-of select="'&#13;'"/>
            </xsl:for-each>
			     <xsl:value-of select="'&#13;'"/>
    </xsl:template>
</xsl:stylesheet>