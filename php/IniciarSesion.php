<?php

include("Conexion.php"); //SE IMPORTA LA CONECCION A LA BD
$con=conectar(); //SE OBTIENE LA MANERA DE CONECTARSE A LA BD

$usuario = $_POST['username']; //RECIBIR LOS VALORES DEL HTML
$pass = $_POST['pass']; //RECIBIR LOS VALORES DEL HTML

$comprobar = "SELECT * FROM `perfiles` WHERE usuario = '$usuario' AND pass = '$pass'"; //CONSULTA PARA COMPROBAR LA EXISTENCIA DE LOS USUARIOS

$query = mysqli_query($con, $comprobar); //EJECUTAR LA CONSULTA

if(mysqli_num_rows($query)==0){ //IF PARA COMPROBAR SI EL USUARIO AL QUE SE INTENTA ACCEDER EXISTE O NO

    header("Location: http://localhost/ProyectoIA/loginE.html"); //REDIRECCIONAR A LA PAGINA QUE NOS MOSTRARA QUE HUBO UN ERROR AL INICIAR SESION
    exit;

}else{

    //SACAR VALORES DE LA BD PARA ACTUALIZARLOS EN LA TABLA QUE SIRVE PARA SABER CUAL EVALUAR
    $datos = "SELECT * FROM `usuarios` WHERE usuario = '$usuario'"; //SE CREA LA CONSULTA

    $query = mysqli_query($con, $datos); //SE EJECUTA LA CONSULTA
    $d = mysqli_fetch_array($query); //SE GUARDA EL RESULTADO EN FORMA DE ARREGLO
    
    //SE GUARDA CADA CAMPO EN UNA VARIABLE PARA USAR DESPUES
    $id = $d['id']; $nombre = $d['nombre']; $usuario = $d['usuario']; $edad = $d['edad']; $telefono = $d['telefono'];
    $v1 = $d['valor1']; $v2 = $d['valor2']; $v3 = $d['valor3']; $v4 = $d['valor4']; $v5 = $d['valor5'];
    $v6 = $d['valor6']; $v7 = $d['valor7']; $v8 = $d['valor8']; $v9 = $d['valor9']; $v10 = $d['valor10'];
    $v11 = $d['valor11']; $v12 = $d['valor12']; $v13 = $d['valor13']; $v14 = $d['valor14']; $v15 = $d['valor15'];
    //FIN DE SACAR VALORES DE LA BD PARA ACTUALIZARLOS EN LA TABLA QUE SIRVE PARA SABER CUAL EVALUAR

    $borrar = "DELETE FROM `evaluar`"; //CREAR LA SENTENCIA PARA LIMPIAR LA TABLA Y EVITAR ERRORES
    $query = mysqli_query($con, $borrar); //EJECUTAR SENTENCIA

    //CREAR LA SENTENCIA SQL CON LOS NUEVOS VALORES
    $insertar = "INSERT INTO `evaluar` (`id`, `nombre`, `usuario`, `edad`, `telefono`, `valor1`, `valor2`, `valor3`, `valor4`, `valor5`, `valor6`, `valor7`, `valor8`, `valor9`, `valor10`, `valor11`, `valor12`, `valor13`, `valor14`, `valor15`) 
        VALUES (
        '$id',
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
    
    $query = mysqli_query($con, $insertar); //EJECUTAR LA SENTENCIA

    header("Location: http://localhost/ProyectoIA/answer.php"); //REDIRECCIONAR A LA SIGUIENTE PAGINA WEB
    exit; //LIBERAR LA MEMORIA QUE USA EL PHP

}