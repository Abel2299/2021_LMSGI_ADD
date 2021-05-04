<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 04.xsl
    Created on : 4 de mayo de 2021, 13:19
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"  omit-xml-declaration="no"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="factura">
        <factura>
            <n_factura>
                <xsl:value-of select="@n_factura"/>
            </n_factura>
            
            <xsl:template match="factura/datos_emisor">
                <datos_emisor>
                   <!-- <xsl:for-each select="datos_emisor">
                    <cod_postal>
                        <xsl:value-of select="@cod_postal"/>
                    </cod_postal>
                    </xsl:for-each>-->
                </datos_emisor>
            </xsl:template>
            
            <xsl:template match="factura/datos_receptor">
                <datos_receptor>
                    <xsl:value-of select="@datos_receptor"/>
                </datos_receptor>
                <datos_receptor>
                    <cod_postal>
                        <xsl:value-of select="@cod_postal"/>
                    </cod_postal>
                </datos_receptor>
            </xsl:template>
            
            <xsl:template match="factura/datos_factura">
                <datos_factura>
                    <n_ped>
                        <xsl:value-of select="@n_ped"/>
                    </n_ped>
                    <iva>
                        <xsl:value-of select="@iva"/>
                    </iva> 
                    <f_pago>
                        <xsl:value-of select="@f_pago"/>
                    </f_pago>
                    <moneda>
                        <xsl:value-of select="@moneda"/>
                    </moneda>                 
                </datos_factura>
            </xsl:template>
        </factura>
    </xsl:template>

</xsl:stylesheet>
