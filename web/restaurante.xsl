<?xml version="1.0" encoding='utf-8'?>
<!-- 
					Autor: Jakoba Gonzalez Marcaida
					Asignatura: LMSGI
					UD_TareaEvaluación: 04_TEv02
					Descripción: Página que muestra los menús de un determinado restaurante y que si se modifica el nombre del restaurante todos sus datos se modifican con él.
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
	<xsl:template match='/reservaeventos'>
		<html lang="es">
			<head>
				<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
				<meta charset="utf-8"/>
				<meta name="description" content="Página principal" />
				<title>Iako's Page - Restaurante</title>
			</head>
			
			<body>
				<header>
					<img src= "../img/logotipo.png" alt= "Reservas" />
					<a href="teatro.xml">Teatro</a>
					<a href="restaurante.xml">Restaurante</a>
					<a href="festival.xml">Festival</a>
				</header>
				
				<main>
					<!-- Variable que guarda el nombre del restaurante para poder modificarlo y mostrar los datos de otro -->
					<xsl:variable name="restaurante">Eneko</xsl:variable>
					
					<!-- Atributo para lincarlo con la página oficial del restaurante -->
					<h1><a><xsl:attribute name="href">
								<xsl:value-of select="//restaurante[nombrerestaurante=$restaurante]/informacion"/>
							</xsl:attribute>
							<xsl:value-of select="$restaurante"/></a> - <xsl:value-of select="//restaurante[nombrerestaurante=$restaurante]/ciudad"/></h1>
					
					<!-- Bucle para mostrar los tipos de menú y sus platos -->
					<xsl:for-each select="restaurante[nombrerestaurante=$restaurante]/menu/@tipo">
						<article class="restaurante">
							<h3><xsl:value-of select="."/></h3>
							<xsl:for-each select="../plato">
								<p><xsl:value-of select="."/></p>
							</xsl:for-each>
						</article>
					</xsl:for-each>
				</main>
				
				<footer>
					<address>&#169; 2020 desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>