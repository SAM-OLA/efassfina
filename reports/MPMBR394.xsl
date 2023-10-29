<?xml version="1.0" encoding="UTF-8"?>

<!-- File was generated by XSLfast 3.1.13 -->
<!-- Please leave unchanged; manage layouts unstead -->
<!DOCTYPE xsl:stylesheet [
<!ENTITY XML "http://www.w3.org/TR/REC-xml">
<!ENTITY XMLNames "http://www.w3.org/TR/REC-xml-names">
<!ENTITY XSLT.ns "http://www.w3.org/1999/XSL/Transform">
<!ENTITY XSLTA.ns "http://www.w3.org/1999/XSL/TransformAlias">
<!ENTITY XSLFO.ns "http://www.w3.org/1999/XSL/Format">
<!ENTITY copy "&#169;">
<!ENTITY trade "&#8482;">
<!ENTITY deg "&#x00b0;">
<!ENTITY gt "&#62;">
<!ENTITY sup2 "&#x00b2;">
<!ENTITY frac14 "&#x00bc;">
<!ENTITY quot "&#34;">
<!ENTITY frac12 "&#x00bd;">
<!ENTITY euro "&#x20ac;">
<!ENTITY Omega "&#937;">
]>

<xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon" >

<xsl:template match="RETURN">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
<fo:layout-master-set>
<fo:simple-page-master master-name="pagemaster1" page-height="845.53891pt" page-width="713.8731pt" margin-top="10.0pt" margin-left="10.0pt" margin-bottom="10.0pt" margin-right="10.0pt">
<fo:region-body margin-left="28.0pt" margin-top="165.0pt" margin-bottom="10.0pt" margin-right="13.0pt"/>
<fo:region-before extent="165.0pt" precedence="true"/>
<fo:region-after extent="10.0pt" precedence="true"/>
<fo:region-start extent="28.0pt" precedence="false"/>
<fo:region-end extent="13.0pt" precedence="false"/>
</fo:simple-page-master>
</fo:layout-master-set>
<fo:page-sequence master-name="pagemaster1" master-reference="pagemaster1">
<xsl:attribute name="force-page-count">no-force</xsl:attribute>
<fo:static-content flow-name="xsl-region-before">
<fo:block-container  position="absolute" top="11.0pt" left="31.0pt" height="50.0pt" width="445.0pt">
<fo:block  text-align="start">
<xsl:variable name="filename">C:/New Bk Up/Neximcbnefass/15-11-2007/neximlogo.JPG</xsl:variable>
<fo:external-graphic src="{$filename}" position="relative" top="13.0pt" left="31.0pt" height="50.0pt"/>
</fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="68.0pt" left="202.0pt" height="26.0pt" width="359.0pt">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" position="relative" top="68.0pt" left="202.0pt" height="26.0pt" width="359.0pt" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="HEADER/RETURNCODE"/>
</fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="71.0pt" left="27.0pt" height="22.0pt" width="175.0pt">
<fo:block line-height="16.8pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" position="relative" top="71.0pt" left="27.0pt" height="22.0pt" width="175.0pt" color="#000000" font-family="Arial" font-size="14.0pt" font-weight="bold">
<xsl:text>Report ID :</xsl:text></fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="99.0pt" left="27.0pt" height="22.0pt" width="175.0pt">
<fo:block line-height="16.8pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" position="relative" top="99.0pt" left="27.0pt" height="22.0pt" width="175.0pt" color="#000000" font-family="Arial" font-size="14.0pt" font-weight="bold">
<xsl:text>Report Title :</xsl:text></fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="99.0pt" left="201.0pt" height="25.0pt" width="366.0pt">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" position="relative" top="99.0pt" left="201.0pt" height="25.0pt" width="366.0pt" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="HEADER/RETURNNAME"/>
</fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="131.0pt" left="266.0pt" height="25.0pt" width="306.0pt">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" position="relative" top="131.0pt" left="266.0pt" height="25.0pt" width="306.0pt" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="HEADER/BANKNAME"/>
</fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="132.0pt" left="27.0pt" height="22.0pt" width="175.0pt">
<fo:block line-height="16.8pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" position="relative" top="132.0pt" left="27.0pt" height="22.0pt" width="175.0pt" color="#000000" font-family="Arial" font-size="14.0pt" font-weight="bold">
<xsl:text>Reporting Institution :</xsl:text></fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="132.0pt" left="202.0pt" height="25.0pt" width="51.0pt">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" position="relative" top="132.0pt" left="202.0pt" height="25.0pt" width="51.0pt" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="HEADER/BANKCODE"/>
</fo:block>
</fo:block-container>
<fo:block-container position="absolute" top="133.0pt" left="252.0pt" height="23.0pt" width="14.0pt">
<fo:block line-height="14.399999999999999pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="center" position="relative" top="133.0pt" left="252.0pt" height="23.0pt" width="14.0pt" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:text>-</xsl:text></fo:block>
</fo:block-container>
</fo:static-content>
<fo:static-content flow-name="xsl-region-after"/>
<fo:static-content flow-name="xsl-region-start"/>
<fo:static-content flow-name="xsl-region-end"/>
<fo:flow flow-name="xsl-region-body">
<fo:block/>
<fo:block-container position="absolute" top="4pt" left="2pt" height="752.0pt" width="536.0pt" border-width="1.0pt"> <fo:block span="none" white-space-collapse="false" font-family="Helvetica" font-size="12pt" text-align="start" position="relative" top="44pt" left="27pt" height="752.0pt" width="536.0pt"><fo:instream-foreign-object xmlns:xlink="http://www.w3.org/1999/xlink"><svg xmlns="http://www.w3.org/2000/svg" xml:space="preserve" width="600" height="600" viewBox="0 0 1000 1000"> <g id="test-body-content"><text x="0" y="250" style="opacity:.1; font-family:Arial; font-size:200pt; fill:rgb(200,200,200)"></text><text x="50" y="420" style="opacity:.1; font-family:Arial; font-size:200pt; fill:rgb(200,200,200)"></text></g></svg></fo:instream-foreign-object></fo:block></fo:block-container><fo:block span="none"><!-- GENERATE TABLE START-->

<fo:table table-layout="fixed">
<fo:table-column column-width="66.0pt"/>
<fo:table-column column-width="466.0pt"/>
<fo:table-column column-width="108.0pt"/>
<fo:table-header>

<fo:table-row>
<fo:table-cell border-left-style="solid" border-left-width="0.99997pt" border-left-color="#000000" border-top-style="solid" border-top-width="0.99997pt" border-top-color="#000000" number-rows-spanned="2" display-align="center">
<fo:block line-height="19.2pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" color="#000000" font-family="Arial" font-size="16.0pt">
<xsl:text>CODE</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell border-left-style="solid" border-left-width="0.99997pt" border-left-color="#000000" border-top-style="solid" border-top-width="0.99997pt" border-top-color="#000000" number-rows-spanned="2" display-align="center">
<fo:block line-height="19.2pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" color="#000000" font-family="Arial" font-size="16.0pt">
<xsl:text>DESCRIPTION</xsl:text></fo:block>
</fo:table-cell>
<fo:table-cell border-left-style="solid" border-left-width="0.99994pt" border-left-color="#000000" border-right-style="solid" border-right-width="0.99994pt" border-right-color="#000000" border-top-style="solid" border-top-width="0.99994pt" border-top-color="#000000" number-rows-spanned="2" display-align="center">
<fo:block line-height="19.2pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="end" color="#000000" font-family="Arial" font-size="16.0pt">
<xsl:text>AMOUNT</xsl:text></fo:block>
</fo:table-cell>
</fo:table-row>

<fo:table-row>
</fo:table-row>
</fo:table-header>
<fo:table-footer>

<fo:table-row>
<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" number-columns-spanned="3" display-align="before">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start">
</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-footer>
<fo:table-body>
<xsl:for-each select="BODY/ITEMS_INFO">

<fo:table-row>
<fo:table-cell border-left-style="solid" border-left-width="1.0pt" border-left-color="#000000" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" display-align="center">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="ITEM_CODE"/>
</fo:block>
</fo:table-cell>
<fo:table-cell border-left-style="solid" border-left-width="1.0pt" border-left-color="#000000" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" display-align="center">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="start" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="ITEM_DESC"/>
</fo:block>
</fo:table-cell>
<fo:table-cell border-left-style="solid" border-left-width="1.0pt" border-left-color="#000000" border-right-style="solid" border-right-width="1.0pt" border-right-color="#000000" border-top-style="solid" border-top-width="1.0pt" border-top-color="#000000" display-align="center">
<fo:block line-height="14.5pt" white-space-collapse="false"  linefeed-treatment="preserve"  text-align="end" color="#000000" font-family="Arial" font-size="12.0pt">
<xsl:value-of disable-output-escaping="no" select="AMOUNT"/>
</fo:block>
</fo:table-cell>
</fo:table-row>
</xsl:for-each></fo:table-body>
</fo:table>
</fo:block></fo:flow>
</fo:page-sequence>
</fo:root>
</xsl:template>
</xsl:stylesheet>
