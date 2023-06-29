<?PHP
  echo shell_exec("python python/MejoresAmigos.py"); //EJECUTAMOS EL ARCHIVO PYTHON "MejoresAmigos.py"

  $con=mysqli_connect('localhost', 'root', '', 'datosamigos'); //CREAMOS UNA CONEXION A LA BD "datosamigos"
?>

<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Perfil-PANITAS</title>
  <link rel="stylesheet" type="text/css" href="styles/answer.css">
  <link rel="shortcut icon" href="IMG/logo.png">
</head>
<body>

	<img class = "logo" src="IMG/logo.png">

	<section class="content">
		<h4>#MOMENTODELMATCH!</h4>
		<img class = "banner" src="IMG/IMG01.jpg">
			<div class="tabla">
					<table>
						<thead>
							<tr>
								<th>Usuario</th>
								<th>Nombre</th>
								<th>Edad</th>
							</tr>
						</thead>
						<tbody>

							<?php 
								$sql = "SELECT * FROM `amigos`"; //CREAMOS LA CONSULTA PARA EXTRAER LA INFORMACION DE LA TABLA "amigos"
								$select = mysqli_query($con, $sql); //EJECUTAMOS LA CONSULTA
						
								while($d=mysqli_fetch_array($select)){ //ESTE CICLO ES PARA VACIAR EN UNA TABLA TODOS LOS VALORES QUE SE EXTRAGERON DE LA BD
							
						  	?>

							<tr>
								<td><?php echo $d['usuario'] //MOSTRAR USUARIO DEL AMIGO?></td>

								<td><?php echo $d['nombre'] //MOSTRAR NOMBRE DEL AMIGO?></td>
							
								<td><?php echo $d['edad'] //MOSTRAR EDAD DEL AMIGO?></td>
							</tr>

							<?php 
								} //SE CIERRA EL CICLO WHILE
							?>
						</tbody>
					</table>
			</div>

	</section>

		<section class="down">
		<div><p style="text-align:center">Proyecto Final - Inteligencia Artificial - TS Developers</p></div>
	</section>

	<div class="cuadrado2"></div>

	<section class="Texto1">
		<h4>#WHOISSHE/HE?</h4>
	</section>


</table>
</body>
</html>