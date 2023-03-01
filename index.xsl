<?xml version="1.0" encoding="UTF-8"?>
<!-- 
	Autor: Jakoba Gonzalez Marcaida
	Asignatura: LMSGI
	UD_TareaEvaluación: 04_TEv02
	Descripción: Página de presentación para la tarea de evaluación 02 de la unidad 04 de LMSGI, a través de la que se podrá navegar a las diferentes páginas del proyecto.
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="utf-8" method="html" doctype-system="about:legacy-compat" />
	
	<xsl:template match="/">
		<html lang="es">
			
			<head>
				<link href="./css/estilo.css" rel="stylesheet" type="text/css" />
				<meta charset="utf-8"/>
				<meta name="description" content="Página principal" />
				<title>Iako's Page</title>
			</head>
			
			<body>
				<header>
					<img src= "./img/logotipo.png" alt= "Reservas" />
					<a href="web/teatro.xml">Teatro</a>
					<a href="web/restaurante.xml">Restaurante</a>
					<a href="web/festival.xml">Festival</a>
				</header>
				
				<main class="principal">
					<h1>TRABAJANDO CON PLANTILLAS XSLT</h1>
				</main>
				
				<footer>
					<address>&#169; Desarrollado por info@birt.eus</address>
				</footer>
			</body>
		</html>
		
		
		
	</xsl:template>
</xsl:stylesheet>