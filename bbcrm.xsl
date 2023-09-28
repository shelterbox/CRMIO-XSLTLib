<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:math="http://www.w3.org/2005/xpath-functions/math"
	xmlns:map="http://www.w3.org/2005/xpath-functions/map"
	xmlns:array="http://www.w3.org/2005/xpath-functions/array"
	exclude-result-prefixes="#all"
	version="3.0">
	
	<xsl:template name="DataListLoadRequestResponseCategoryList">
		<xsl:param name="Database">79599s</xsl:param>
		<xsl:param name="ClientAppName">CRM-IO</xsl:param>
		<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:blac="Blackbaud.AppFx.WebService.API.1" xmlns:bb="bb_appfx_dataforms" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
			<soap:Header/>
			<soap:Body>
				<blac:DataListLoadRequest>
					<blac:ClientAppInfo REDatabaseToUse="{$Database}" ClientAppName="{$ClientAppName}" TimeOutSeconds="10" 
						RunAsUserID="00000000-0000-0000-0000-000000000000" ClientUICulture="en-GB" ClientCulture="en-GB" TimeZone="UTC"/>
					<blac:DataListID>00000000-0000-0000-0000-000000000000</blac:DataListID>
					<blac:DataListName>Response Category List</blac:DataListName>
					<blac:RecordIDColumn>ID</blac:RecordIDColumn>
					<blac:ResultsAsXml>true</blac:ResultsAsXml>
				</blac:DataListLoadRequest>
			</soap:Body>
		</soap:Envelope>
	</xsl:template>

	<xsl:template name="DataListLoadRequestResponseCategoryList">
		<xsl:param name="Database">79599s</xsl:param>
		<xsl:param name="ClientAppName">CRM-IO</xsl:param>
		<xsl:param name="ContextRecordID">e621e6c3-5500-4865-bf41-93145f238795</xsl:param>
		<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:blac="Blackbaud.AppFx.WebService.API.1" xmlns:bb="bb_appfx_dataforms" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
			<soap:Header/>
			<soap:Body>
				<blac:DataListLoadRequest>
					<blac:ClientAppInfo REDatabaseToUse="{$Database}" ClientAppName="{$ClientAppName}" TimeOutSeconds="10" 
						RunAsUserID="00000000-0000-0000-0000-000000000000" ClientUICulture="en-GB" ClientCulture="en-GB" TimeZone="UTC"/>
					<blac:DataListID>00000000-0000-0000-0000-000000000000</blac:DataListID>
					<blac:DataListName>Response List</blac:DataListName>
					<blac:ContextRecordID><xsl:value-of select="$ContextRecordID"/></blac:ContextRecordID>
					<blac:RecordIDColumn>ID</blac:RecordIDColumn>
					<blac:ResultsAsXml>true</blac:ResultsAsXml>
				</blac:DataListLoadRequest>
			</soap:Body>
		</soap:Envelope>
	</xsl:template>
	
</xsl:stylesheet>