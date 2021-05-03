<?xml version="1.0"?>

<!--
    Document   : 04.xsl
    Created on : 2021 May 3, 20:31
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
        <factura>
            <n_factura>
                <xsl:value-of select="@n_factura"/>
            </n_factura>
        </factura>
    </xsl:template>

</xsl:stylesheet>
