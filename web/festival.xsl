<?xml version="1.0" encoding='utf-8'?>
<!-- 
	Autor: Jakoba Gonzalez Marcaida
	Asignatura: LMSGI
	UD_TareaEvaluación: 04_TEv02
	Descripción: Página que muestra los festivales en los que el tipo de musica sea el "rock".
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
	<xsl:template match='/reservaeventos'>
		<html lang="es">
			
			<head>
				<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
				<meta charset="utf-8"/>
				<meta name="description" content="Página principal" />
				<title>Iako's Page - Festival</title>
			</head>
			
			<body>
				<header>
					<img src= "../img/logotipo.png" alt= "Reservas" />
					<a href="teatro.xml">Teatro</a>
					<a href="restaurante.xml">Restaurante</a>
					<a href="festival.xml">Festival</a>
				</header>
				
				<section class="festival">
					<h1>Festivales de rock</h1>
					<table>
						<tr>
							<th>FESTIVAL</th>
							<th>CONCIERTO</th>
							<th>FECHA</th>
							<th>HORA</th>
							<th>LUGAR</th>
						</tr>
						<!-- Apply-template a través del que se muestran los diferentes conciertos, de los diferentes festivales, filtrados por tipo de musica a 'rock' -->
						<xsl:apply-templates select="/reservaeventos/festival/conciertos/concierto[grupo/@tipomusica='rock']"/>
					</table>			
				</section>
				<footer>
					<address>&#169; 2020 desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
	</xsl:template>
	
	<!-- Template de festivales y conciertos -->
	<xsl:template match="festival/conciertos/concierto">
		<tr>
			<td><xsl:value-of select="../../nombrefesti" /></td>
			<td><xsl:value-of select="grupo" /></td>
			<td><xsl:value-of select="fecha" /></td>
			<td><xsl:value-of select="hora" /></td>
			<td><xsl:value-of select="carpa" /></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>



