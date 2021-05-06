<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : listado.xsl
    Created on : 6 de mayo de 2021, 9:23
    Author     : daw1
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="curso" select="'DAW1'"/>
    

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Listado Profesores / Asignaturas</title>
            </head>
            <body>
                <h1>curso<xsl:value-of select ="$curso"/></h1>
                <table>
                    <tr>
                        <td>Modulos</td>
                        <td>Profesor</td>
                    </tr>
                </table>
                <div>Numero de modulos
                <xsl:value-of select="count(document('modulos.xml)/modulos/modulo)"/>
                </div>
            </body>
            
            <xsl:template match="asignatura">
                <tr>
                    <td><xsl:value-of select="document('modulos.xml)//modulo[@codM=current()/@codM"/></td>
                    <td><xsl:value-of select="document('profesores.xml')//profesor[contains(current()/@codProfesor,@codP)]"/></td>
                </tr>
            </xsl:template>
        </html>
    </xsl:template>

</xsl:stylesheet>
