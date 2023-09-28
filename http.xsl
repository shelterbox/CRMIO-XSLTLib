<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
  <!--  HTTP GET request  -->
  <xsl:template name="httpGet">
    <xsl:param name="id" select="null" />
    <xsl:param name="uri" />
    <xsl:param name="body" select="null" />
    <xsl:param name="escapebody">true</xsl:param>
    <xsl:param name="contentType">application/xml</xsl:param>
    <xsl:param name="authorization" />
    <xsl:call-template name="httpRequest">
      <xsl:with-param name="id" select="$id" />
      <xsl:with-param name="uri" select="$uri" />
      <xsl:with-param name="method" select="'GET'" />
      <xsl:with-param name="body" select="$body" />
      <xsl:with-param name="escapebody" select="$escapebody" />
      <xsl:with-param name="contentType" select="$contentType" />
      <xsl:with-param name="authorization" select="$authorization" />
    </xsl:call-template>
  </xsl:template>
  <!--  HTTP POST request  -->
  <xsl:template name="httpPost">
    <xsl:param name="id" select="null" />
    <xsl:param name="uri" />
    <xsl:param name="body" select="null" />
    <xsl:param name="escapebody">true</xsl:param>
    <xsl:param name="contentType">application/xml</xsl:param>
    <xsl:param name="authorization" />
    <xsl:call-template name="httpRequest">
      <xsl:with-param name="id" select="$id" />
      <xsl:with-param name="uri" select="$uri" />
      <xsl:with-param name="method" select="'POST'" />
      <xsl:with-param name="body" select="$body" />
      <xsl:with-param name="escapebody" select="$escapebody" />
      <xsl:with-param name="contentType" select="$contentType" />
      <xsl:with-param name="authorization" select="$authorization" />
    </xsl:call-template>
  </xsl:template>
  <!--  Generalised HTTP request  -->
  <xsl:template name="httpRequest">
    <xsl:param name="id" select="null" />
    <xsl:param name="uri" />
    <xsl:param name="method" />
    <xsl:param name="body" select="null" />
    <xsl:param name="escapebody">true</xsl:param>
    <xsl:param name="contentType">application/xml</xsl:param>
    <xsl:param name="authorization" />
    <Request>
      <xsl:choose>
        <xsl:when test="$id">
          <xsl:attribute name="id" select="$id" />
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="id" select="generate-id()" />
        </xsl:otherwise>
      </xsl:choose>
      <Uri>
        <xsl:value-of select="$uri" />
      </Uri>
      <Method>
        <xsl:value-of select="$method" />
      </Method>
      <Content>
        <xsl:if test="not(method='TRACE') and not($body=null)">
          <xsl:choose>
            <xsl:when test="$escapebody = 'true'">
              <xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
              <xsl:copy-of select="$body" />
              <xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:copy-of select="$body" />
            </xsl:otherwise>
          </xsl:choose>
        </xsl:if>
      </Content>
      <Headers>
        <Header>
          <Key>Content-Type</Key>
          <Value>
            <xsl:value-of select="$contentType" />
          </Value>
        </Header>
        <Header>
          <Key>Authorization</Key>
          <Value>
            <xsl:value-of select="$authorization" />
          </Value>
        </Header>
      </Headers>
    </Request>
  </xsl:template>
</xsl:stylesheet>
