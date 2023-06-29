<?php

include("Conexion.php"); //SE IMPORTAN LOS METODOS DEL ARCHIVO CONEXION
$con=conectar(); //SE OBTIENE LA MANERA DE COMUNICAR BD Y PAGINA WEB

$nombre = $_POST['nombres']; //RECIBIR LOS VALORES DEL HTML
$usuario = $_POST['username']; //RECIBIR LOS VALORES DEL HTML
$edad = $_POST['edades']; //RECIBIR LOS VALORES DEL HTML
$telefono = $_POST['numero']; //RECIBIR LOS VALORES DEL HTML
$pass = $_POST['pass']; //RECIBIR LOS VALORES DEL HTML

$comprobar = "SELECT * FROM `perfiles` WHERE usuario = '$usuario'"; //CREAR CONSULTA PARA SABER SI EL NOMBRE DE USUARIO ESTA OCUPADO

$query = mysqli_query($con, $comprobar); //EJECUTAR LA CONSULTA

if(mysqli_num_rows($query)==0){ //ESTA COMPARACION ES PARA SABER SI EXISTE ALGUN REGISTRO CON EL MISMO NOMBRE DE USUARIO

    $insertar = "INSERT INTO `perfiles` (`nombre`, `usuario`, `edad`, `telefono`, `pass`) VALUES(
        '$nombre', 
        '$usuario', 
        '$edad',
        '$telefono',
        '$pass')"; //CONSULTA QUE CREARA UN NUEVO USUARIO EN LA PAGINA WEB
    
    $query = mysqli_query($con, $insertar);//EJECUTAR LA CONSULTA 
    
    $idusuario = "SELECT * FROM `perfiles` WHERE usuario = '$usuario'"; //CONSULTA PARA EXTRAER EL NUMERO ID DEL USUARIO

    $query = mysqli_query($con, $idusuario); //SE EJECUTA LA CONSULTA
    $id = mysqli_fetch_array($query); //SE GUARDAN LOS RESULTADOS EN UN ARREGLO
    $id = $id['id']; //SE EXTRAE EL DATO "id"

    $borrar = "DELETE FROM `evaluar`"; //CONSULTA PARA LIMPIAR LA TABLA QUE AYUDA A SABER QUE INFORMACION SE EVALUARA
    
    $query = mysqli_query($con, $borrar); //EJECUTAR LA CONSULTA

    $insertar = "INSERT INTO `evaluar` (`id`, `nombre`, `usuario`, `edad`, `telefono`) VALUES(
        '$id',
        '$nombre', 
        '$usuario', 
        '$edad',
        '$telefono')"; //CONSULTA QUE INSERTARA EN LA TABLA DE VALORES A EVALUAR LA INFORMACION QUE SE ACABA DE OBTENER
    
    $query = mysqli_query($con, $insertar); //SE EJECUTA LA CONSULTA

    header("Location: http://localhost/ProyectoIA/quest.html"); //REDIRECCIONAR A LA PAGINA QUE LE COLOCARA LAS PREGUNTAS PAR AOBTENER CONINCIDENCIAS
    exit; //LIBERAR MEMORIA QUE USA EL PHP

}else{ //ESTO SE EJECUTARA EN CASO DE QUE EL NOMBRE DE USUARIO YA ESTE EN USO

    header("Location: http://localhost/ProyectoIA/mainE.html"); //REDIRECCIONAR A LA PAGINA DE REGISTROS PARA DECIRLE QUE EL NOMBRE DE USUARIO YA ESTA OCUPADO
    exit; ///LIBERAR MEMORIA QUE USA EL PHP
}

?>