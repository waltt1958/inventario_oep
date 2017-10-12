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
   <br>
   <br>
<form align="center" action="importar.php" enctype="multipart/form-data" method="post">
   <input id="archivo" accept=".csv" name="archivo" type="file" /> 
   <input name="MAX_FILE_SIZE" type="hidden" value="200000" /> 
   <br>
   <br>
   <br>
   <input name="enviar" type="submit" value="Importar" />
</form>


</body >
</html>