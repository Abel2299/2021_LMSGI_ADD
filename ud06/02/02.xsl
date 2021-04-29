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
                
                <xsl:template match="listatickets/ticket">
                    <h1>Informacion de tickets</h1>
                    <h2>Listado de tickets</h2>
                                
                    <xsl:template match="listatickets/ticket">
                        
                        <h3>Ticket:</h3>
                        <table>
                            
                            <xsl:for-each select="listatickets/ticket">
                                <tr>
                                    <td>
                                        <xsl:value-of select="numero"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="fecha"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="hora"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </xsl:template>
                    <xsl:template match="listatickets/ticket">
                        <table>   
                            <tr>
                                <td>Producto</td>
                                <td>Precio</td>
                            </tr>     
                            <xsl:for-each select="listatickets/ticket/producto">
                                <tr>
                                    <td>
                                        <xsl:value-of select="nombre"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="precio"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </table>
                    </xsl:template>
                    
                </xsl:template>  
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
