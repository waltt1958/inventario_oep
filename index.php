<html>
<head>
<link rel="stylesheet" title="estilos.css" type="text/css" href="estilos.css">
</head>
<body>
<p class="hora">
<?php

setlocale(LC_TIME, 'spanish');
date_default_timezone_set ('America/Argentina/Buenos_Aires');		
echo strftime ("%A, %d de %B de %Y - %H:%M hs.");

?>

<h1> INVENTARIO OEP</H1>


<H3>INVENTARIO NUEVO</H3>

<input type="text" name="nuevo" onclick="location.href='cargaarchivo.php';" class="button" value="INVENTARIO NUEVO">

<H3>CONTINUA INVENTARIO ANTERIOR</H3>

<input type="text" name="continua"  onclick="location.href='carga.php';" class="button" value="CONTINUA INVENTARIO">
<BR>
<BR>


</body >
</html>