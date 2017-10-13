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

	//conexion a BBDD
	$con = mysql_connect("localhost","root","") or die ("Error de conexión");
	mysql_select_db("inventario",$con) or die ("Error de conexión a BBDD");
	
	$insertLEIDO = "SELECT oepLEIDO FROM leido";
	$cuentaLEIDO = mysql_query($insertLEIDO,$con);
	while ($filaLEIDO = mysql_fetch_array($cuentaLEIDO))
	{
		$leido = $filaLEIDO['oepLEIDO'];
		
		$insertOEP = "SELECT numero FROM oep";
		$cuentaOEP = mysql_query($insertOEP, $con);
		while ($filaOEP = mysql_fetch_array($cuentaOEP))
		{
			$oep = $filaOEP['numero'];
		
			if ($leido == $oep)
			{				
				mysql_query("UPDATE oep SET controlOEP= '1' Where numero='$oep'", $con);
				mysql_query("UPDATE leido SET controlLEIDO= '1' Where oepLEIDO='$leido'",$con);
			}
		}
	}

	//cierra conexion
	mysql_close($con);
?>

<h1> INVENTARIO OEP</H1>


<H3>DIFERENCIAS EN LA LECTURA DEL INVENTARIO</H3>


<input type="text" name:"imprimir" class="button"  value="IMPRIMIR DIFERENCIAS">





</body >
</html>