<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
        <html>
            <head>
                <title>Zestawienie</title>
            </head>
            <body>
                <table border="1">
                    <tbody>
                        <tr>
                            <th colspan="4" align="center">
                                Zestawienia
                            </th>
                        </tr>
                        <tr align="left" style="font-weight:bold">
                            <td colspan="4">Ksiegowe:</td>
                        </tr>    
                                      
                        <xsl:for-each select="zestawienia/zestawienie[@typ='ks' and @typ='ka' and @typ='ma']">
                            <li><xsl:apply-templates/></li>                              
                        </xsl:for-each>
                        
                        <xsl:apply-templates select="zestawienia/zestawienie[@typ='ks']">  
                            <xsl:sort data-type="number" select="okres"/>                  
                        </xsl:apply-templates>
                        
                        <tr align="left" style="font-weight:bold">
                            <td colspan="4">Kasowe:</td>
                        </tr>
                        
                        <xsl:apply-templates select="zestawienia/zestawienie[@typ='ka']"> 
                            <xsl:sort data-type="number" select="okres"/>   
                        </xsl:apply-templates>
                        
                        <tr align="left" style="font-weight:bold">
                            <td colspan="4">Marketingowe:</td>
                        </tr>
                        
                        <xsl:apply-templates select="zestawienia/zestawienie[@typ='ma']">
                            <xsl:sort data-type="number" select="okres"/>
                        </xsl:apply-templates>     
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="zestawienia/zestawienie">
        <tr>
            <td align="left">
                <xsl:value-of select="position()"/>
            </td>  
            <td>
             <xsl:choose>
                <xsl:when test="@typ='ks'">ksiegowe</xsl:when>   
                <xsl:when test="@typ='ka'">kasowe</xsl:when>   
                <xsl:when test="@typ='ma'">marketingowe</xsl:when>     
             </xsl:choose>
            </td>
            <td>
                <xsl:value-of select="okres"/>
            </td>
            <td>
                <xsl:value-of select="tytul"/>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
