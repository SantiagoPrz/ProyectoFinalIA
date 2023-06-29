<?php

include("Conexion.php"); //IMPORTAMOS EL ARCHIVO DE CONEXION A LA BD
$con=conectar(); //OBTENEMOS LA MANERA EN LA QUE CONECTAREMOS LA BD Y LA PAGINA

$datos = "SELECT * FROM `evaluar`"; //CREAMOS LA CONSULTA PARA OBTENER LOS DATOS DE LA TABLA "evaluar"

$query = mysqli_query($con, $datos); //EJECUTAMOS LA CONSULTA
$d = mysqli_fetch_array($query); //GUARDAMOS LA RESPUESTA EN UN ARREGLO

$usuario = $d['usuario']; //EXTRAEMOS EL USUARIO QUE MODIFICAREMOS

$v1 = floatval($_POST['v1']); //RECIBIR LOS VALORES DEL HTML
$v2 = floatval($_POST['v2']); //RECIBIR LOS VALORES DEL HTML
$v3 = floatval($_POST['v3']); //RECIBIR LOS VALORES DEL HTML
$v4 = floatval($_POST['v4']); //RECIBIR LOS VALORES DEL HTML
$v5 = floatval($_POST['v5']); //RECIBIR LOS VALORES DEL HTML
$v6 = floatval($_POST['v6']); //RECIBIR LOS VALORES DEL HTML
$v7 = floatval($_POST['v7']); //RECIBIR LOS VALORES DEL HTML
$v8 = floatval($_POST['v8']); //RECIBIR LOS VALORES DEL HTML
$v9 = floatval($_POST['v9']); //RECIBIR LOS VALORES DEL HTML
$v10 = floatval($_POST['v10']); //RECIBIR LOS VALORES DEL HTML
$v11 = floatval($_POST['v11']); //RECIBIR LOS VALORES DEL HTML
$v12 = floatval($_POST['v12']); //RECIBIR LOS VALORES DEL HTML
$v13 = floatval($_POST['v13']); //RECIBIR LOS VALORES DEL HTML
$v14 = floatval($_POST['v14']); //RECIBIR LOS VALORES DEL HTML
$v15 = floatval($_POST['v15']); //RECIBIR LOS VALORES DEL HTML

//SI ALGUN DATO NO SE PROPORCIONA EN EL HTML EL VALOR POR DEFECTO ES "0"

$actualizar = "UPDATE `evaluar` SET 
                        `valor1` = '$v1', 
                        `valor2` = '$v2', 
                        `valor3` = '$v3', 
                        `valor4` = '$v4', 
                        `valor5` = '$v5', 
                        `valor6` = '$v6', 
                        `valor7` = '$v7', 
                        `valor8` = '$v8', 
                        `valor9` = '$v9', 
                        `valor10` = '$v10', 
                        `valor11` = '$v11', 
                        `valor12` = '$v12', 
                        `valor13` = '$v13', 
                        `valor14` = '$v14', 
                        `valor15` = '$v15'"; //SE CREA LA CONSULTA PARA ASIGNAR LOS VALORES QUE LLEGARON DEL HTML A LOS CAMPOS DE LA BD

$query = mysqli_query($con, $actualizar); //SE EJECUTA LA CONSULTA

$datos = "SELECT * FROM `evaluar` WHERE usuario = '$usuario'"; //CONSULTA PARA EXTRAER CAMPOS DE INFORMACION DE LA TABLA "evaluar"

$query = mysqli_query($con, $datos); //EJECUTAMOS LA CONSULTA
$d = mysqli_fetch_array($query); //SE GUARDA EL RESULTADO COMO ARREGLO

//EXTRAEMOS LOS DATOS QUE NOS INTERESAN Y LOS ALMACENAMOS EN VARIABLES
$nombre = $d['nombre']; $usuario = $d['usuario']; $edad = $d['edad']; $telefono = $d['telefono'];

//SE CREA LA CONSULTA PARA AÑADIR LA INFORMACION DEL NUEVO USUARIO A LA DB GENERAL
$insertar = "INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `edad`, `telefono`, `valor1`, `valor2`, `valor3`, `valor4`, `valor5`, `valor6`, `valor7`, `valor8`, `valor9`, `valor10`, `valor11`, `valor12`, `valor13`, `valor14`, `valor15`) 
        VALUES (
        NULL,
        '$nombre', 
        '$usuario', 
        '$edad',
        '$telefono',
        '$v1', 
        '$v2', 
        '$v3', 
        '$v4', 
        '$v5', 
        '$v6', 
        '$v7', 
        '$v8', 
        '$v9', 
        '$v10', 
        '$v11', 
        '$v12', 
        '$v13', 
        '$v14', 
        '$v15')";

$query = mysqli_query($con, $insertar); //SE EJECUTA LA CONSULTA PARA AÑADIR LA INFORMACION A LA BD GENERAL

header("Location: http://localhost/ProyectoIA/login.html"); //REDIRECCIONAREMOS A LA PAGINA QUE MOSTRARA LAS MEJORES COINCIDENCIAS DE AMIGOS
exit;

?>