<?xml version="1.0"?>

<!--
    Document   : 06.xsl
    Created on : 2021 May 3, 20:25
    Author     : Abel
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <body>
            <xsl:for-each select="root/row">
                <row>
                    <anyo>
                        <xsl:value-of select="@Anyo"/>
                    </anyo>
                    <concepto>
                        <xsl:value-of select="@Concepto"/>
                    </concepto>
                    <usuarios>
                        <xsl:value-of select="@Usuarios_registrados"/>
                    </usuarios>
                </row>
            </xsl:for-each>
        </body>
    </xsl:template>

</xsl:stylesheet>
