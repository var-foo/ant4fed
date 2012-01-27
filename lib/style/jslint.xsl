<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
<html>
<head>
<title>JS Lint</title>
<style>
<![CDATA[
ul{
	margin:5px 0;
	padding:5px;
}
ul:nth-child(even){
	background-color:#eee;
}
li{
	line-height:1.5;
	list-style-type:none;
	overflow:hidden;
}
span{
	display:block;
	float:left;
	margin-right:20px;
}
div{
	padding-bottom:15px;
	border-bottom:20px solid #ff0000;
}
h2{
	color:#0000ff;
	font-size:28px;
}
]]>
</style>
</head>
<body>
<h1>JS Lint Report</h1>

		<xsl:apply-templates select="jslint/file" />
</body>
</html>	
</xsl:template>

<xsl:template match="jslint/file">
	<div>
		<h2>
			<xsl:element name="a">
				<xsl:attribute name="href">../../<xsl:value-of select="@name" /></xsl:attribute>
				<xsl:value-of select="@name" />
			</xsl:element>
		</h2>
		<xsl:for-each select="issue">
			<ul>	
				<li><span><strong>Line: </strong> <xsl:value-of select="@line" /></span><span> <strong>Char: </strong> <xsl:value-of select="@char" /></span><span> <strong>Severity: </strong> <xsl:value-of select="@severity" /></span> <span><strong>Reason: </strong> <xsl:value-of select="@reason" /></span></li>
				<li><xsl:value-of select="@evidence" /></li>
			</ul>
		</xsl:for-each>
	</div>
</xsl:template>

</xsl:stylesheet>