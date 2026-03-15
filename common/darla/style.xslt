<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" version="5" encoding="UTF-8" indent="yes"/>
<xsl:template match="/doc">
<html>
<head>
<link rel="stylesheet" href="{@style}"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title><xsl:value-of select="@title"/></title>
</head>
<body>
<center>
  <h1><xsl:value-of select="@header"/></h1>
  <xsl:apply-templates/>
  </center>
</body>
</html>
</xsl:template>
<xsl:template match="p">
    <p><xsl:apply-templates/></p>
</xsl:template>

<xsl:template match="a">
  <a href="{@href}" class="sans-serif"><xsl:apply-templates/></a>
</xsl:template>

<xsl:template match="darla-footer">
  <hr/><div class="darla-right"><small><i>Generated using Darla v0.1. <xsl:value-of select="@copyright"/></i></small></div>
</xsl:template>

<xsl:template match="darla-home">
  <a href="/"><img src="/common/HOME.png"/></a><br/>
</xsl:template>

<xsl:template match="hr">
  <hr/>
</xsl:template>

<xsl:template match="img">
  <img src="{@src}" alt="{@alt}"/>
</xsl:template>

<xsl:template match="i">
  <i><xsl:apply-templates/></i>
</xsl:template>

<xsl:template match="b">
  <b><xsl:apply-templates/></b>
</xsl:template>
</xsl:stylesheet>
