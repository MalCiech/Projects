<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Klient</title>
            </head>
            <body>
                <table width="200" border="1">                    
                    <tbody>                     
                        <tr bgcolor="rgb(0, 120, 0)">
                            <th>Imie:</th>
                            <th>Nazwisko:</th> 
                            <th>Data urodzenia:</th>
                            <th>PESEL:</th>
                            <th>Wiek:</th>
                            <th>Typ:</th>
                            <th>Zdjęcie:</th>
                        </tr>
                        <xsl:for-each select="klienci/klient">
                            <tr>
                                <xsl:attribute name="bgcolor">
                                    <xsl:value-of select="kolor"/>
                                </xsl:attribute>
                                <td align="center">
                                    <xsl:value-of select="imie"/>
                                </td>
                                <td align="center">
                                    <xsl:value-of select="nazwisko"/>
                                </td>
                                <td align="center">
                                    <xsl:value-of select="data_urodzenia"/>
                                </td>
                                <td align="center">
                                    <xsl:value-of select="pesel"/>
                                </td>
                                <td align="center">
                                    <xsl:value-of select="wiek"/>
                                </td>
                                <td align="center">
                                    <xsl:value-of select="@typ"/>
                                </td>
                                <td>
                                    <xsl:element name="img">
                                        <xsl:attribute name="width">
                                            100
                                        </xsl:attribute>
                                        <xsl:attribute name="height">
                                            100
                                        </xsl:attribute>
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="obraz"/>
                                        </xsl:attribute>
                                    </xsl:element>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>