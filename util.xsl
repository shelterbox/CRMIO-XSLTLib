<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

  <!--  Appends element to the end of parent  -->
  <xsl:template name="append">
    <xsl:param name="parent"/>
    <xsl:param name="element"/>
    <xsl:copy select="$parent">
      <xsl:copy-of select="@*|node()"/>
      <xsl:copy-of select="$element"/>
    </xsl:copy>
    </xsl:template>
  
</xsl:stylesheet>
