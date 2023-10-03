<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <xsl:import href="https://github.com/shelterbox/CRMIO-XSLTLib/raw/main/http.xsl"/>
  
  <xsl:template name="soapRequest">
    <xsl:call-template name="httpPost">
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
