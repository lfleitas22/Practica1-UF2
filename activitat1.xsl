<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<!--Les anteriors lineas fan referencia a la declaració del XSL-->
<!-- Amb la següent linea definim una plantilla i on es situa ("/" directori arrel)-->
<xsl:template match="/">
    <html>
        <body>
            <!-- Edicio dels estils d'un text a color verd-->
            <text style="color:green;">
            <!-- El value-of selecciona dintre del title el text-->
            <xsl:value-of select="title/text"/></text>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>