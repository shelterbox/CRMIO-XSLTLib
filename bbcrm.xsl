<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:array="http://www.w3.org/2005/xpath-functions/array"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema"
	xmlns:blac="Blackbaud.AppFx.WebService.API.1" xmlns:bb="bb_appfx_dataforms" 
	exclude-result-prefixes="#all" version="3.0">
	<xsl:import href="https://github.com/shelterbox/CRMIO-XSLTLib/raw/main/http.xsl"/>
	<xsl:import href="https://github.com/shelterbox/CRMIO-XSLTLib/raw/main/soap.xsl"/>
	
	<xsl:template name="DataListLoadRequest" xmlns:blac="Blackbaud.AppFx.WebService.API.1">
		<xsl:param name="id"/>
		<xsl:param name="uri" />
		<xsl:param name="Database">79599s</xsl:param>
		<xsl:param name="ClientAppName">CRM-IO</xsl:param>
		<xsl:param name="DataListID">00000000-0000-0000-0000-000000000000</xsl:param>
		<xsl:param name="DataListName"/>
		<xsl:param name="authorization"/>
		<xsl:param name="ContextRecordID"/>
		<xsl:call-template name="soapRequest">
			<xsl:with-param name="id" select="$id"/>
			<xsl:with-param name="uri" select="$uri"/>
			<xsl:with-param name="authorization" select="$authorization"/>
			<xsl:with-param name="request">
				<blac:DataListLoadRequest>
					<blac:ClientAppInfo REDatabaseToUse="{$Database}" ClientAppName="{$ClientAppName}" TimeOutSeconds="10" 
						RunAsUserID="00000000-0000-0000-0000-000000000000" ClientUICulture="en-GB" ClientCulture="en-GB" TimeZone="UTC"/>
					<blac:DataListID><xsl:value-of select="$DataListID"/></blac:DataListID>
					<xsl:if test="$DataListName">
						<blac:DataListName><xsl:value-of select="$DataListName"/></blac:DataListName>
					</xsl:if>
					<xsl:if test="$ContextRecordID">
						<blac:ContextRecordID><xsl:value-of select="$ContextRecordID"/></blac:ContextRecordID>
					</xsl:if>
					<blac:RecordIDColumn>ID</blac:RecordIDColumn>
					<blac:ResultsAsXml>true</blac:ResultsAsXml>
				</blac:DataListLoadRequest>
			</xsl:with-param>
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template name="DataListLoadRequestResponseCategoryList">
		<xsl:param name="Database">79599s</xsl:param>
		<xsl:param name="ClientAppName">CRM-IO</xsl:param>
		<xsl:param name="id"/>
		<xsl:param name="uri"/>
		<xsl:param name="authorization"/>
		<xsl:call-template name="DataListLoadRequest">
			<xsl:with-param name="id" select="$id" />
			<xsl:with-param name="uri" select="$uri"/>
			<xsl:with-param name="Database" select="$Database"/>
			<xsl:with-param name="ClientAppName">CRM-IO</xsl:with-param>
			<xsl:with-param name="DataListName">Response Category List</xsl:with-param>
			<xsl:with-param name="authorization" select="$authorization" />
		</xsl:call-template>
	</xsl:template>
	
	<xsl:template name="DataListLoadRequestResponseList">
		<xsl:param name="Database">79599s</xsl:param>
		<xsl:param name="ClientAppName">CRM-IO</xsl:param>
		<xsl:param name="id"/>
		<xsl:param name="uri"/>
		<xsl:param name="authorization"/>
		<xsl:param name="ContextRecordID"/>
		<xsl:call-template name="DataListLoadRequest">
			<xsl:with-param name="id" select="$id" />
			<xsl:with-param name="uri" select="$uri"/>
			<xsl:with-param name="Database" select="$Database"/>
			<xsl:with-param name="ClientAppName">CRM-IO</xsl:with-param>
			<xsl:with-param name="DataListName">Response List</xsl:with-param>
			<xsl:with-param name="authorization" select="$authorization" />
			<xsl:with-param name="ContextRecordID" select="$ContextRecordID"/>
		</xsl:call-template>
	</xsl:template>
	
</xsl:stylesheet>