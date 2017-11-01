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

<hr size="3" color="black">

<form align="center" name="fleer"  action="procesaLectura.php" method="post">
<p><font size="6"><b>Ingrese el nro de OEP</b></font><br><br>
<INPUT TYPE="TEXT" class="forma" style="width:330px;height: 40px; font-size:30px; border: 3px solid;bordercolor: black" NAME="leeInv" onblur="validar()" OnKeyPress="if (event.keyCode==32) event.returnValue= false;" maxlength="19" autofocus >
<br>
<br>
<br>
<br>
<table	align="center" width="30%" border="3" bordercolor="black">
<tr><td align="center"><strong><font size="5"><u> ANTERIOR OEP LEIDO:   </u></font><br>
<?php 

if (isset($_SESSION["anterior"]))
{ 
$anteriorOEP = $_SESSION["anterior"];

echo "<br><font size='5'><b>$anteriorOEP</b></font>";
}
	
?>
</strong></td></tr>
</table>
</form>

<hr size="3" color="black">
<H3>VISUALIZAR DIFERENCIAS DE INVENTARIO</H3>
<input type="text" name="verDIF" onclick="location.href='diferencias.php';" class="button" value="VER DIFERENCIAS">
</body>
</html>