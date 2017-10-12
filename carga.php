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

//echo strftime("Hoy es %A y son las %H:%M");
//echo strftime("Hoy es %A y son las %H:%M");
//echo date("l, dS \of F Y H:i:s");
?>

<h1> INVENTARIO OEP</H1>


<H3>LEER PIEZAS PARA INVENTARIO</H3>

<input type="text" name="leerPIE"  onclick="location.href='leeInv.php';"class="button" value="LEER INVENTARIO">

<H3>VISUALIZAR DIFERENCIAS DE INVENTARIO</H3>

<input type="text" name="verDIF" onclick="location.href='diferencias.php';" class="button" value="VER DIFERENCIAS">


</body >
</html>