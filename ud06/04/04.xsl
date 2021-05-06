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
    <xsl:template match="/factura">
        <factura>
            <n_factura>
                <xsl:value-of select="@n_factura"/>
            </n_factura>
            <xsl:template match="datos_emisor">
                <datos_emisor>
                <xsl:apply-templates  select="datos_emisor/*"/> 
                
                    <cod_postal>
                        <xsl:value-of select="@cod_postal"/>
                    </cod_postal>
                    
                </datos_emisor>
            </xsl:template>
            
            <!--<xsl:template match="datos_receptor">
                <datos_receptor>
                    
                    <n_cli>
                        <xsl:value-of select="@n_cli"/>
                    </n_cli>
                    <cod_postal>
                        <xsl:value-of select="@cod_postal"/>
                    </cod_postal>
                </datos_receptor>
            </xsl:template>-->
             <datos_receptor>
                <xsl:apply-templates select="datos_receptor/@*"/>
                <xsl:apply-templates select="datos_receptor/*"/>
            </datos_receptor>
            
            <xsl:template match="datos_factura">
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
                    <xsl:for-each select="//linea">
                        <xsl:element name='{name()}'>
                            <xsl:for-each select="*">
                                <xsl:element name='{name()}'>
                                    <xsl:value-of select="."/>
                                </xsl:element>
                            </xsl:for-each>   
                        </xsl:element>
                    </xsl:for-each>    
                    <xsl:element name='base'>
                        <xsl:value-of select="base"/>
                    </xsl:element>      
                    <xsl:element name='cuota_iva'>
                        <xsl:value-of select="cuota_iva"/>
                    </xsl:element>      
                    <xsl:element name='total'>   
                        <xsl:value-of select="total"/>
                    </xsl:element>       
    
                </datos_factura>
            </xsl:template>
        </factura>
    </xsl:template>
     
</xsl:stylesheet>
