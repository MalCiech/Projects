<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:template match="/">
<html>
	<head>
		<title>Wyjazdy</title>
	</head>
	<body>
		<table width="100%" border="1">
				<tr>
					<td width="50%">Samochód</td>
					<td width="50%">Kierowca</td>
				</tr>
				<tr>
					<td>
						<xsl:apply-templates select="wyjazdy/samochod"/>
					</td>
					<td>
						<xsl:call-template name="kierowca" />
					</td>	
				</tr>
				<tr>
					<td colspan="2">
							<table border="1" width="100%">
								<tr>
									<td>Lp.</td>
									<td>Cel</td>
									<td>Miejsce</td>
									<td>Odległość</td>
								</tr>
								
								<xsl:apply-templates select="wyjazdy/pozycje/pozycja"/>
								
							</table>
					</td>
				</tr>
			</table>
	</body>
</html>

</xsl:template>

<xsl:template match="samochod">
	
	<table width="100%">
		<tr>
			<td>Marka:</td>
			<td>
				<xsl:value-of select="marka"/>
			</td>
		</tr>
		<tr>
			<td>Model:</td>
			<td>
				<xsl:value-of select="model"/>
			</td>
		</tr>
		<tr>
			<td>Numer:</td>
			<td>
				<xsl:value-of select="numer"/>
			</td>
		</tr>
	</table>
	
</xsl:template>

<xsl:template name="kierowca">

	<table width="100%">
		<tr>
			<td>Imię:</td>
			<td>
				<xsl:value-of select="wyjazdy/kierowca/imie"/>
			</td>
		</tr>
		<tr>
			<td>Nazwisko:</td>
			<td>
				<xsl:value-of select="wyjazdy/kierowca/nazwisko"/>
			</td>
		</tr>
		<tr>
			<td>Numer slużbowy:</td>
			<td>
				<xsl:value-of select="wyjazdy/kierowca/numer_sluzbowy"/>
			</td>
		</tr>
	</table>


</xsl:template>

<xsl:template match="pozycja">
<tr>
	<td>
		<xsl:value-of select="@nr"/>
	</td>
	<td>
		<xsl:value-of select="cel"/>
	</td>
	<td>
		<xsl:value-of select="miejsce"/>
	</td>
	<td>	
		<xsl:value-of select="odleglosc"/>
	</td>

</tr>
</xsl:template>

</xsl:stylesheet>
	