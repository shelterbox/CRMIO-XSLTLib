<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

  <xsl:template name="cm_sentcampaigns">
    <xsl:param name="authorization"/>
    <xsl:param name="clientId"/>
    <xsl:param name="id"/>
    <xsl:param name="sentFromDate"/>
    <xsl:param name="sentToDate"/>
    <xsl:param name="tags"/>
    <xsl:param name="page"/>
    <xsl:param name="pageSize"/>
    <xsl:param name="orderDirection"/>
    <!--https://api.createsend.com/api/v3.3/clients/{clientid}/campaigns.xml?sentFromDate={YYYY-MM-DD}&sentToDate={YYYY-MM-DD}&tags={tags}&page={page}&pagesize={pagesize}&orderdirection={asc|desc}-->
    <xsl:variable name="_sentFromDate"><xsl:if test="$sentFromDate!=''">sentFromDate=<xsl:value-of select="$sentFromDate"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_sentToDate"><xsl:if test="$sentToDate!=''">sentToDate=<xsl:value-of select="$sentToDate"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_tags"><xsl:if test="$tags!=''">tags=<xsl:value-of select="$tags"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_page"><xsl:if test="$page!=''">page=<xsl:value-of select="$page"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_pageSize"><xsl:if test="$pageSize!=''">pageSize=<xsl:value-of select="$pageSize"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_orderDirection"><xsl:if test="$orderDirection!=''">orderDirection=<xsl:value-of select="$orderDirection"/>&amp;</xsl:if></xsl:variable>
    <xsl:call-template name="httpGet">
      <xsl:with-param name="uri">https://api.createsend.com/api/v3.3/clients/<xsl:value-of select="$clientId"/>/campaigns.xml?<xsl:value-of select="$_sentFromDate"/>
        <xsl:value-of select="$_sentToDate"/>
        <xsl:value-of select="$_tags"/>
        <xsl:value-of select="$_page"/>
        <xsl:value-of select="$_pageSize"/>
        <xsl:value-of select="$_orderDirection"/>
      </xsl:with-param>
      <xsl:with-param name="contentType">text/xml</xsl:with-param>
      <xsl:with-param name="authorization" select="$authorization"/>
      <xsl:with-param name="escapebody">false</xsl:with-param>
      <xsl:with-param name="id" select="$id"/>
    </xsl:call-template>
  </xsl:template>
  
  <xsl:template name="cm_campaignbounces">
    <xsl:param name="authorization"/>
    <xsl:param name="id"/>
    <xsl:param name="campaignId"/>
    <xsl:param name="date"/>
    <xsl:param name="page"/>
    <xsl:param name="pageSize"/>
    <xsl:param name="orderField"/>
    <xsl:param name="orderDirection"/>
    <!-- https://api.createsend.com/api/v3.3/campaigns/{campaignid}/bounces.xml?date={YYYY-MM-DD HH:MM}&page={pagenumber}&pagesize={pagesize}&orderfield={email|list|date}&orderdirection={asc|desc} -->
    <xsl:variable name="_date"><xsl:if test="$date!=''">date=<xsl:value-of select="$date"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_page"><xsl:if test="$page!=''">page=<xsl:value-of select="$page"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_pageSize"><xsl:if test="$pageSize!=''">pageSize=<xsl:value-of select="$pageSize"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_orderField"><xsl:if test="$orderField!=''">orderField=<xsl:value-of select="$orderField"/>&amp;</xsl:if></xsl:variable>
    <xsl:variable name="_orderDirection"><xsl:if test="$orderDirection!=''">orderDirection=<xsl:value-of select="$orderDirection"/>&amp;</xsl:if></xsl:variable>
    <xsl:call-template name="httpGet">
      <xsl:with-param name="uri">https://api.createsend.com/api/v3.3/campaigns/<xsl:value-of select="$campaignId"/>/bounces.xml?<xsl:value-of select="$_date"/>
        <xsl:value-of select="$_page"/>
        <xsl:value-of select="$_pageSize"/>
        <xsl:value-of select="$_orderField"/>
        <xsl:value-of select="$_orderDirection"/>
      </xsl:with-param>
      <xsl:with-param name="contentType">text/xml</xsl:with-param>
      <xsl:with-param name="authorization" select="$authorization"/>
      <xsl:with-param name="escapebody">false</xsl:with-param>
      <xsl:with-param name="id" select="$id"/>
    </xsl:call-template>
  </xsl:template>
  
</xsl:stylesheet>
