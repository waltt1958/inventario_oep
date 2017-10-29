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

<?php

if (isset($_POST['enviar']))

{

//conexion a BBDD
$con=mysql_connect("localhost","root","") or die ("Error de conexión");
mysql_select_db("inventario",$con) or die ('<center><table bgcolor="#999999# border="2"><tr><td>Error de conexión a BBDD</td></tr>
	<tr><td>Consulte con el administrador del sistema</td><tr></table><input type="text" onclick=location.href="index.php" class="button" value="VOLVER AL INICIO"></center>');

//borra datos cargados en la tabla OEP que tiene los datos de OEP
$borraOEP="DELETE FROM oep";
mysql_query($borraOEP, $con);

//borra datos cargados en la tabla LEIDO que tiene las piezas que se leyero para el inventario
$borraLEIDO="DELETE FROM leido";
mysql_query($borraLEIDO, $con);


 
//obtenemos el archivo .csv 
$tipo = $_FILES['archivo']['type'];

$tamanio = $_FILES['archivo']['size'];
 
$archivotmp = $_FILES['archivo']['tmp_name'];

//verifico si el archivo tiene registros 
if (!empty($tamanio))
{

//cargamos el archivo
$lineas = file($archivotmp);

//verifico si fue cargado el archivo con registros
if ($lineas>0)
{
//inicializamos variable a 0, esto nos ayudará a indicarle que no lea la primera línea
$i=0;



//Recorremos el bucle para leer línea por línea
foreach ($lineas as $linea_num => $linea)
{ 
   //abrimos bucle
   /*si es diferente a 0 significa que no se encuentra en la primera línea 
   (con los títulos de las columnas) y por lo tanto puede leerla*/
   if($i != 0) 
   { 
       //abrimos condición, solo entrará en la condición a partir de la segunda pasada del bucle.
       /* La funcion explode nos ayuda a delimitar los campos, por lo tanto irá 
       leyendo hasta que encuentre un ; */
       $datos = explode(",",$linea);
 
       //Almacenamos los datos que vamos leyendo en una variable
       $diasVisita = $datos[0];
	   $idPieza = $datos[1];
       $numero = $datos[2];
	   $diasRestantes = $datos[3];
       $siglaCli = $datos[4];
       $operativa = $datos[5];
	   $dia= substr($datos[6],0,2);
	   $mes= substr($datos[6],3,2);
	   $ano= substr($datos[6],6,4);
	   $fecha=$ano.$mes.$dia;
	   $nombre = $datos[7];
       $calle = $datos[8];
	   $localidad =$datos[9];
       $provincia = $datos[10];
	   $nada = [11];
	   $final = $datos[12];
       
       //guardamos en base de datos la línea leida
       mysql_query("INSERT INTO oep(diasVisita, idPieza, numero, diasRestantes, siglaCli, operativa, fecha, nombre, calle, localidad, provincia, nada, final) 
	   VALUES('$diasVisita', '$idPieza', $numero, '$diasRestantes', '$siglaCli', '$operativa', '$fecha', '$nombre', '$calle', '$localidad', '$provincia', 0, 0)",$con);
	   
       //cerramos condición
   }
 
   /*Cuando pase la primera pasada se incrementará nuestro valor y a la siguiente pasada ya 
   entraremos en la condición, de esta manera conseguimos que no lea la primera línea.*/
   $i++;
   //cerramos bucle
}

$cuenta= $i-1;
echo "<br><br><br><br><h1>La cantidad de registros ingresados es de: $cuenta </h1>";
echo "<br><br><br><br><input type='text' name='carga' onclick=location.href='carga.php'; class='button' value='CARGA INVENTARIO'>";

}
}
else
{
echo "<br><br><br><br><h1>No eligió ningún archivo</h1>";
echo "<br><br><br><br><input type='text' name='errorArchivo' onclick=location.href='cargaarchivo.php'; class='button' value='CARGAR ARCHIVO'>";
}
//cierra conexion
mysql_close($con);

}

else
{
?>

<h1> INVENTARIO OEP</H1>
   <br>
   <br>
<form align="center" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>" enctype="multipart/form-data" method="post">
   <input id="archivo" accept=".csv" name="archivo" type="file" /> 
   <input name="MAX_FILE_SIZE" type="hidden" value="200000" /> 
   <br>
   <br>
   <br>
   <input name="enviar" class="button" type="submit" onclick="alert('ESPERE QUE CARGUE EL ARCHIVO. LE AVISARÁ CUANDO TERMINE');">

</form>

<?php

 }
?>
</body >
</html>