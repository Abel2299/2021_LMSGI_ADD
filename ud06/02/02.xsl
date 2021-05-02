<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02.xsl
    Created on : 29 de abril de 2021, 8:44
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <body>
                <xsl:template match="listatickets">
                    <h1>Informacion de tickets</h1>
                    <h2>Listado de tickets</h2>
                                
                    <xsl:template match="listatickets/ticket">
                        
                       
                        <table>
                            
                            <xsl:for-each select="//ticket">
                                <tr>
                                    <td>
                                        Ticket: 
                                        <xsl:value-of select="numero"/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Producto</td>
                                    <td>Precio</td>
                                </tr>
                                <xsl:for-each select="producto">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="nombre"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="precio"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                                <tr>  
                                    <td>
                                        Fecha del Ticket: 
                                        <xsl:value-of select="fecha"/> - 
                                        <xsl:value-of select="hora"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                            <tr>
                                <td>
                                    Numero de tickets:
                                    <xsl:value-of select="count(/listatickets/ticket)"/>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Total de tickets:
                                    <xsl:value-of select="sum(/listatickets/ticket/total)"/>
                                </td>
                            </tr>
                        </table>
                    </xsl:template>
                </xsl:template>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
