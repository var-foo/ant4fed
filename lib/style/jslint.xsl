<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
	
		<xsl:apply-templates select="jslint/file" />
	
</xsl:template>

<xsl:template match="jslint/file">
	<div class="file">
		<h2><xsl:value-of select="@name" /></h2>
		<xsl:for-each select="issue">
			<p class="issue">	
				Line: <xsl:value-of select="@line" /><br />
				Char: <xsl:value-of select="@char" /><br />
				Severity: <xsl:value-of select="@severity" /><br />
				Reason: <xsl:value-of select="@reason" /><br />
				Evidence: <xsl:value-of select="@evidence" /><br />
			</p>
		</xsl:for-each>
	
	</div>
</xsl:template>

</xsl:stylesheet>