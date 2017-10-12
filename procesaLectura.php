

<?php

if (!is_numeric($_POST['leeInv']))
{
	echo "<script>alert('Ingresó LETRAS o no leyó ningún número de OEP');</script>";
	echo "<script>location.href ='http://www.inventario.inv:8000/leeInv.php';</script>";
}

else
	
{
//conexion a BBDD
$con=mysql_connect("localhost","root","") or die ("Error de conexión");
mysql_select_db("inventario",$con) or die ("Error de conexión a BBDD");

$leido= $_POST['leeInv'];

//busco el OEP leido si ya està en la BBDD del inventario
$result = mysql_query("SELECT * FROM leido WHERE oepLEIDO LIKE '%$leido%'", $con);

//Verifico si ya fue cargado el OEP leido
if ($row = mysql_fetch_array($result))
	{	
	echo "<script>alert('Este OEP ya fue leido');</script>";
	echo "<script>location.href ='http://www.inventario.inv:8000/leeInv.php';</script>";	
	}
else
	{
	mysql_query("INSERT INTO leido (oepLEIDO) VALUES ('$leido')",$con);

	echo "<script>location.href ='http://www.inventario.inv:8000/leeInv.php';</script>";
	}

//cierra conexion
mysql_close($con);

}


?>
