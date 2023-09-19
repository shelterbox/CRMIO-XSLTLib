<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  
  <xsl:template name="soapRequest">
    <xsl:param name="header"/>
    <xsl:param name="body"/>
    <soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope">
      <soap:Header>
        <xsl:copy-of select="$header"/>
      </soap:Header>
      <soap:Body>
        <xsl:copy-of select="$body"/>
      </soap:Body>
    </soap:Envelope>
  </xsl:template>
  
</xsl:stylesheet>
