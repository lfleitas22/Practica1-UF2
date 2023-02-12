<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Les anteriors lineas fan referencia a la declaració del XSL-->
<!-- Amb la següent linea definim una plantilla i on es situa ("/" directori arrel)-->
<xsl:template match="/">
  	<html>
		<body>
			<!--Un titol-->
			<h2>Llista de treballadors</h2>
			<!-- Crea i dona costat a la taula-->
			<table border="1">
			<!-- Canvia el color de la fila-->
			<tr bgcolor="#9acd32">
				<th>Nom</th>
				<th>Cognoms</th>
			</tr>
			<!-- Seleciona les dades dins de empresa/treballador-->
			<xsl:for-each select="empresa/treballador">
			<tr>
				<!-- Mostra les dades nom i cognoms-->
				<td><xsl:value-of select="nom"/></td>
				<td><xsl:value-of select="cognoms"/></td>
			</tr>
			<!-- Tanca la selecció-->
			</xsl:for-each>
			</table>
		</body>
 	</html>
	<!-- Tanca XSL-->
</xsl:template>

</xsl:stylesheet>
