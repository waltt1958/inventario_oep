<html>
<head>
<link rel="stylesheet" title="estilos.css" type="text/css" href="estilos.css">

<script Language="javascript">
function validar() {
if (window.document.fleer.leeInv.value=="") {

window.document.fleer.leeInv.focus();
return;
}
if (isNaN(window.document.fleer.leeInv.value)) {
window.document.fleer.leeInv.focus();
return;
}
window.document.fleer.submit();
}
</script>

</head>
<body>
<p class="hora">

<?php

setlocale(LC_TIME, 'spanish');
date_default_timezone_set ('America/Argentina/Buenos_Aires');		
echo strftime ("%A, %d de %B de %Y - %H:%M hs.");

//conexion a BBDD
$con=mysql_connect("localhost","root","") or die ("Error de conexión");
mysql_select_db("inventario",$con) or die ('<center><table bgcolor="#999999# border="2"><tr><td>Error de conexión a BBDD</td></tr>
	<tr><td>Consulte con el administrador del sistema</td><tr></table><input type="text" onclick=location.href="index.php" class="button" value="VOLVER AL INICIO"></center>');



//cierra conexion
mysql_close($con);

session_start();


?>

<h1> INVENTARIO OEP</h1>
<br>
<hr size="3" color="black">
<br>
<form align="center" name="fleer"  action="procesaLectura.php" method="post">
<p><font size="20%"><b>Ingrese el nro de OEP</b></font><br><br>
<INPUT TYPE="TEXT" NAME="leeInv" onblur="validar()" OnKeyPress="if (event.keyCode==32) event.returnValue= false;" maxlength="19" autofocus >
<br>
<br>
<table	align="center" width="30%" border="1" bordercolor="black">
<tr><td align="center"><strong>ANTERIOR OEP LEIDO:   </strong>
<?php 

if (isset($_SESSION["anterior"]))
{ 
echo $_SESSION["anterior"];
}
	
?>
</strong></td></tr>
</table>
</form>

<br>
<hr size="3" color="black">
<br>

<H3>VISUALIZAR DIFERENCIAS DE INVENTARIO</H3>

<input type="text" name="verDIF" onclick="location.href='diferencias.php';" class="button" value="VER DIFERENCIAS">
</body>
</html>