<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Klient</title>
            </head>
            <body>
                <xsl:for-each select="klienci/klient">
                    <table width="200" border="1">
                        <tbody>
                            <tr>
                                <th colspan="2" align="center">
                                    <xsl:value-of select="@typ" />
                                </th>
                            </tr>
                            <tr>
                                <td align="right">Imie:</td>
                                <td align="center">
                                    <xsl:value-of select="imie" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">Nazwisko:</td>
                                <td align="center">
                                    <xsl:value-of select="nazwisko" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">Data urodzenia:</td>
                                <td align="center">
                                    <xsl:value-of select="data_urodzenia" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">PESEL:</td>
                                <td align="center">
                                    <xsl:value-of select="pesel" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">Wiek:</td>
                                <td align="center">
                                    <xsl:value-of select="wiek" />
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <br />
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>