<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Les anteriors lineas fan referencia a la declaració del XSL-->
<!-- Amb la següent linea definim una plantilla i on es situa ("/" directori arrel)-->

<xsl:template match="/">
<html>
	<body>
		<!-- Titol de la taula-->
		<h2>Llista de treballadors</h2>
		<!-- Crea y dona costats a la taula-->
		<table border="1">
			<!-- Crea un fila i la canvia de color-->
			<tr bgcolor = "#00FF00">
				<!-- Posa titol a la columna-->
				<th>DNI</th>
				<th>Nom</th>
				<th>Cognoms</th>
				<th>Entrada</th>
				<th>SeguretatS</th>
				<th>Altura</th>
			</tr>
			<!-- Selecciona totes les dades dintre de /empresa/treballador-->
			<xsl:for-each select="empresa/treballador">
				<!-- Organitza la taula per el nom-->
				<xsl:sort select ="nom"/>
				<!-- Comprova la condició de que l'altura ha de ser major a 130-->
				<xsl:if test="altura > 130">
					<tr>
						<!-- Es crean noves files i afegexen els valors -->
						<td><xsl:value-of select="dni"/></td>
						<td><xsl:value-of select="nom"/></td>
						<td><xsl:value-of select="cognoms"/></td>
						<td><xsl:value-of select="entrada"/></td>
						<td><xsl:value-of select="SeguretatS"/></td>
						<td><xsl:value-of select="altura"/></td>
					</tr>
					<!-- Tanca el condicional-->
				</xsl:if>
				<!-- Acaba la selecció-->
			</xsl:for-each>
		</table>
	</body>
</html>
</xsl:template>
</xsl:stylesheet>
