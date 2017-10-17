<?php
//Exportar datos de php a Excel
header("Content-Type: application/vnd.ms-excel");
header("Expires: 0");
header("Cache-Control: must-revalidate, post-check=0, pre-check=0");
header("content-disposition: attachment;filename=diferencias inventario.xls");
?>

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

<?php
	//conexion a BBDD
	$con = mysql_connect("localhost","root","") or die ("Error de conexión");
	mysql_select_db("inventario",$con) or die ("Error de conexión a BBDD");
	
	//mostrar la base de OEP con todos los paquetes que no fueron leidos en el sector
	
	echo "<h2>PAQUETES NO LEIDOS Y QUE FIGURAN EN EL STOCK DEL SISTEMA OEP</h2>";
	echo "<br><br>";
	echo "<table align='center' width='100%' border='2' bordercolor='black'>";
	echo "<tr align='center' bgcolor='green'><th>NRO OEP</th><th>NOMBRE</th><th>CALLE</th><th>LOCALIDAD</th></tr>";

	$insertOEP = "SELECT numero, nombre, calle, localidad FROM oep";
	$cuentaOEP= mysql_query($insertOEP, $con);
	while ($filaOEP = mysql_fetch_array($cuentaOEP))
	{
		echo "<tr><td>'$filaOEP[0]'</td><td>$filaOEP[1]</td><td>$filaOEP[2]</td><td>$filaOEP[3]</td></tr>";
	}

	echo "</table>";

	//mostrar todos los paquetes que fueron leidos en el sector pero que no figuran en el stock de oep
	echo "<br>";
	echo "<br>";
	echo "<h2>PAQUETES LEIDOS EN EL SECTOR Y QUE NO FIGURAN EN EL STOCK DEL SISTEMA OEP</h2>";
	echo "<br><br>";

	$insertLEIDO = "SELECT oepLEIDO FROM leido";
	$cuentaLEIDO= mysql_query($insertLEIDO, $con);
	
	if ($filaLEIDO = mysql_fetch_array($cuentaLEIDO))
	{ 
		echo "<table align='center' width='30%' border='2' bordercolor='black'>";
		echo "<tr align='center' bgcolor='green'><th>NRO OEP QUE FUE LEIDO EN EL SECTOR</th></tr>";
		do 	{ 
			echo "<tr><td align='center'>$filaLEIDO[0]</td></tr>"; 
			} while ($filaLEIDO = mysql_fetch_array($cuentaLEIDO)); 
			echo "</table>"; 
	} 
	else 
	{ 
	echo "<p align='center'><strong>NO SE HA LEIDO NINGUNA PAQUETE EN EL SECTOR</strong></p>"; 
	}
	
	
	//cierra conexion
	mysql_close($con);

?>
</body >
</html>