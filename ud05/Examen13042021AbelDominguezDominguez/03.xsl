<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 03.xsl
    Created on : 22 de abril de 2021, 8:41
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
                <title>XSLT 03 Abel Dominguez</title>
                <style>
                    table, tr, td, th{border: 1px solid grey;}
                </style>
            </head>
            <body>
                <h1>HORARIOS DEL CURSO <xsl:value-of select="./@curso"></xsl:value-of></h1>
                
              
                <table>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:template match="modulo/modulos">
                        <tr>
                            <td>
                                <abbr>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="current()/text()"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="@codM"/>
                                </abbr>
                            </td>
                            <td>
                                <xsl:value-of select="current()/text()"/>
                            </td>
                        </tr>
                    </xsl:template>
                </table>
                <!-- Mostrar profesores-->
                 <table>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:template match="profesores/profesor">
                        <tr>
                            <td>
                                <abbr>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="current()/text()"/>
                                    </xsl:attribute>
                                    <xsl:value-of select="@codP"/>
                                </abbr>
                            </td>
                            <td>
                                <xsl:value-of select="current()/text()"/>
                            </td>
                        </tr>
                    </xsl:template>
                 </table>
                 
                <!-- Mostrar horario-->
                <h2>Horario del grupo <xsl:value-of select="grupo/@idgrupo"></xsl:value-of></h2>
                
                <table>
                    <tr>
                        <th>Horas</th>
                        <th>LUNES</th>
                        <th>MARTES</th>
                        <th>MIERCOLES</th>
                        <th>JUEVES</th>
                        <th>VIERNRES</th>
                    </tr>
                    <xsl:apply-templates select="grupo/hora"/>
                </table>
            </body>
        </html>
    </xsl:template>
        <!-- Mostrar horas del horario-->
    <xsl:template match="grupo/hora">
        <tr>
            <td>
                <xsl:value-of select="concat('De ',@entrada,' a ' ,@salida)"/></td>
            <xsl:apply-templates select="dia_sem"/>
        </tr>
    </xsl:template>
    <!-- Mostrar los dias de la semana -->  
    <xsl:template match="dia_sem">
        <td>
            <xsl:attribute name="rowspan">
                <xsl:value-of select="@num"/>
            </xsl:attribute>   
            <abbr>
                <xsl:attribute name="title">
                    <xsl:value-of select="//modulos/modulo[@codM=current()]/text()"/>
                </xsl:attribute>
                <xsl:value-of select="current()"/>
            </abbr>
            <br/>
            <abbr>
                <xsl:attribute name="title">
                    <xsl:value-of select=""/>
                </xsl:attribute>
                <xsl:value-of select="//asignatura[@codM=current()]/@codProfesor"/>
            </abbr>
        </td>
    </xsl:template>  
</xsl:stylesheet>