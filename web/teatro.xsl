<?xml version="1.0" encoding='utf-8'?>
<!-- 
	Autor: Jakoba Gonzalez Marcaida
	Asignatura: LMSGI
	UD_TareaEvaluación: 04_TEv02
	Descripción: Página que muestra un listado de obras de teatro que se interpretan en enero de 2023, ordenadas por fecha descendente y en el que están subrayadas las de coste inferior a 20€.
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
	<xsl:template match='/reservaeventos'>
		<html lang="es">
			<head>
				<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
				<meta charset="utf-8"/>
				<meta name="description" content="Página principal" />
				<title>Iako's Page - Teatro</title>
			</head>
			
			<body>
				<header>
					<img src= "../img/logotipo.png" alt= "Reservas" />
					<a href="teatro.xml">Teatro</a>
					<a href="restaurante.xml">Restaurante</a>
					<a href="festival.xml">Festival</a>
				</header>
				
				<main class="principal">
					<section class="teatro">
						<h1>PROXIMAS OBRAS DE TEATRO</h1>
						<ul>
							<!-- Bucle para mostrar las obras de teatro ordenadas por fecha descendente. Si el precio de la obra es inferior a 20€, se le añadirá la clase subrayado. -->
							<xsl:for-each select="teatro/obra">
								<xsl:sort select="../fechahora/@dia" order="descending"/>
								<xsl:choose>
									<xsl:when test="../precio&lt;20">
										<li class="subrayado"><xsl:value-of select="../fechahora/@dia"/>: <xsl:value-of select="."/></li>
									</xsl:when>
									<xsl:otherwise>
										<li><xsl:value-of select="../fechahora/@dia"/>: <xsl:value-of select="."/></li>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:for-each>
						</ul>
					</section>
				</main>
				<footer>
					<address>&#169; 2020 desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>