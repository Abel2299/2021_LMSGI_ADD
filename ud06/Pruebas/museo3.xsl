<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : museo3.xsl
    Created on : 27 de abril de 2021, 13:50
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
     <xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>

    <xsl:template match="/">
        <xsl:apply-templates select="museos/museo"/>
    </xsl:template>
    <xsl:template match="museo">
        <xsl:element name="museo"> 
           <!-- <xsl:element name="nombre">
                <xsl:value-of select="nombre"/>
            </xsl:element>   -->
            <xsl:copy-of select="nombre"/>
            <xsl:element name="ciudad">
                <xsl:attribute name="pais">
                    <xsl:value-of select="pais"/>
                </xsl:attribute>
                <xsl:value-of select="ciudad"/>
            </xsl:element>
        </xsl:element>
    </xsl:template>

</xsl:stylesheet>
