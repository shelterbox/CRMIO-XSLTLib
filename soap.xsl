<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <xsl:import href="https://github.com/shelterbox/CRMIO-XSLTLib/raw/main/http.xsl"/>
  
  <xsl:template name="soapRequest">
    <xsl:param name="id" select="null" />
    <xsl:param name="request"/>
    <xsl:param name="uri" />
    <xsl:param name="authorization" />
    <xsl:call-template name="httpPost">
      <xsl:with-param name="id" select="$id" />
      <xsl:with-param name="uri" select="$uri"/>
      <xsl:with-param name="authorization" select="$authorization" />
      <xsl:with-param name="contentType">application/soap+xml;charset=UTF-8</xsl:with-param>
      <xsl:with-param name="body">
        <soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope">
          <soap:Header/>
          <soap:Body>
            <xsl:copy-of select="$request"/>
          </soap:Body>
        </soap:Envelope>
      </xsl:with-param>
    </xsl:call-template>
  </xsl:template>
  
</xsl:stylesheet>
