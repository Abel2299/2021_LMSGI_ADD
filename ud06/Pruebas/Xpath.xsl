<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : Xpath.xsl
    Created on : 8 de abril de 2021, 9:51
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Xpath.xsl</title>
            </head>
            <body>
                <h2>Informacion de las viviendas</h2>
                
                <xsl:for-each select="vivienda">
                    <div>
                        <xsl:value-of select="piso"/>
                        <xsl:value-of select="puerta"/>
                    </div>
                </xsl:for-each>
                
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
