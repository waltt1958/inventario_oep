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


<H3>LEER PIEZAS PARA INVENTARIO</H3>

<input type="text" name="leerPIE"  onclick="location.href='leeInv.php';"class="button" value="LEER INVENTARIO">

<H3>VISUALIZAR O GENERAR ARCHIVO EXCEL CON DIFERENCIAS</H3>

<table width="80%">
<tr><td align="center"><input type="text" name="verDIF" onclick="location.href='diferencias.php';" class="button" value="VER DIFERENCIAS"></td>
<td align="center"><input type="text" name="generarExc" onclick="location.href='difExcel.php';" class="button" value="EXCEL CON DIFERENCIAS"></td></tr>
</table>
<input type="text" name="inicio" onclick="location.href='index.php';" class="button" value="VOLVER AL INICIO">

</body >
</html>