<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
 <xsl:template match="/">
  <html>
   <head>
    <title>88 memoir</title>
    <style>tr{vertical-align:bottom;
               background-color:beige;}</style>
   </head>
   <body>
    <xsl:apply-templates select="articles" />
   </body>
  </html>
 </xsl:template>
 <xsl:template match="articles">
  <xsl:value-of select="prolog" />
  <xsl:for-each select="article">
   <table>
   <tr>
   <td>
   <xsl:element name="img">
    <xsl:attribute name="src">
pc88/<xsl:value-of select="picture" />
    </xsl:attribute>
    <xsl:attribute name="width">
     100
    </xsl:attribute>
   </xsl:element>
   </td><td width="600">
   <xsl:apply-templates select="caption" />
   </td></tr></table>
   <xsl:value-of select="text" />
  </xsl:for-each>
 </xsl:template>
   <xsl:template match="caption">
    <h3><xsl:value-of select="title" /></h3>
    Category:<xsl:value-of select="category" /><br />
    Maker:<xsl:value-of select="maker" />
   </xsl:template>

</xsl:stylesheet>