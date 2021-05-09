<?xml version="1.0"?>

<!--
    Document   : factura.xsl
    Created on : 2021 May 9, 20:41
    Author     : Alex
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/factura">
        <html>
            <head>
                <title>factura.xsl</title>
                <style>
                    td{}
                </style>
            </head>
            <body>
                <table border="1" style="border-collapse: collapse" bordercolor="#111111">
                    <camption>
                        FACTURA NUMERO
                        <xsl:value-of select="n_factura"/>
                    </camption>
                    <tr>
                        <td colspan="3">DATOS EMISOR</td>
                    </tr>
                    <tr>
                        <td>
                            RAZON SOCIAL: 
                            <xsl:value-of select="datos_emisor/nombre"/>
                        </td>
                        <td>
                            NIF/CIF
                            <xsl:value-of select="datos_emisor/cif"/>
                        </td>
                    </tr>
                    <tr>
                        <td>DIRECCION</td>
                        <td>
                            <xsl:value-of select="datos_emisor/dir"/>
                            <br></br>
                            <xsl:value-of select="datos_emisor/cod_postal"/>
                            <xsl:value-of select="datos_emisor/poblacion"/>
                            <br></br>
                            <xsl:value-of select="datos_emisor/provincia"/>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">DATOS DE CONTACTO</td>
                    </tr>
                    <tr>
                        <td>
                            TELEFONO
                            <xsl:value-of select="datos_emisor/num_tel"/>
                        </td>
                        <td>
                            FAX
                            <xsl:value-of select="datos_emisor/num_fax"/>                            
                        </td>
                    </tr>
                    <tr>
                        <td>DATOS RECEPTOR</td>
                    </tr>
                    <tr>
                        <td>
                            Num Cliente: 
                            <xsl:value-of select="datos_receptor/n_cli"/>
                        </td>
                    </tr>
                    <tr>
                        <td>DIRECCION: </td>
                        <td>
                            <xsl:value-of select="datos_receptor/dir"/>
                            <br></br>
                            <xsl:value-of select="datos_receptor/cod_postal"/>
                            <xsl:value-of select="datos_receptor/poblacion"/>
                            <br></br>
                            <xsl:value-of select="datos_receptor/provincia"/>
                        </td>
                    </tr>
                    <tr>
                        
                        <td>RESUMEN FACTURA</td>
                    </tr>
                    <tr>
                        <td>Numero pedido: 
                            <xsl:value-of select="datos_factura/n_ped"/>
                        </td>
                        <td>
                            IVA: 
                            <xsl:value-of select="datos_factura/iva"/>
                        </td>
                        <td>
                            Forma de pago: 
                            <xsl:value-of select="datos_factura/f_pago"/>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Moneda: 
                            <xsl:value-of select="datos_factura/moneda"/>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="3">DETALLES FACTURA</td>
                        <tr>
                            <td>
                                <table border="1" style="border-collapse: collapse" bordercolor="#111111">
                                    <tr> 
                   
                                        <td>
                                            Ref
                                        </td>
                                        <td>
                                            Descripcion
                                        </td>
                                        <td>
                                            Cantidad
                                        </td>
                                        <td>
                                            Precio
                                        </td>
                                        <td>
                                            Importe
                                        </td>
                                    </tr>
                                    <xsl:for-each select="//linea">
                                        <tr>
                                            <td>
                                  
                                                <xsl:value-of select="ref"/>
                            
                                            </td>
                                            <td> 
                                                <xsl:value-of select="desc"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="cant"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="precio"/>
                                            </td>
                                            <td>
                                                <xsl:value-of select="importe"/>
                                            </td>
                                        </tr>
                            
                                    </xsl:for-each>
                                </table>
                            </td>
                        </tr>
                    </tr>
                    <tr>
                        IMPORTES FACTURA
                    </tr>
                    <tr>
                        <td>
                            Base: 
                            <xsl:value-of select="datos_factura/base"/>
                        </td>
                        <td>
                            Cuota IVA: 
                            <xsl:value-of select="datos_factura/cuota_iva"/>
                        </td>
                        <td>
                            Total factura: 
                            <xsl:value-of select="datos_factura/total"/>
                        </td>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
