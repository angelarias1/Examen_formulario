<?php
//datos de la base de datos
$hostname = 'localhost';
$username = 'root';
$password = '1234';
$database = 'tienda';


$conexion = mysqli_connect($hostname,$username,$password,$database);

if (mysqli_connect_error()) {
    echo 'conexion fallida';
}else {
    echo 'conexion exitosa';
}
?>