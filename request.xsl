<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

  <xsl:import href="https://github.com/shelterbox/CRMIO-XSLTLib/raw/main/http.xsl"/>

  <xsl:template match="/">
    <xsl:copy>
      <xsl:comment>The stylesheet request.xsl is deprecated. Please use http.xsl instead.</xsl:comment>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
