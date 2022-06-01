<?php

include('conec.php');
if(isset($_POST['enviar'])){

    $Nombre = $_POST ['Nombre'];
    $apellido_paterno = $_POST ['apellido_paterno'];
    $apellido_materno = $_POST ['apellido_materno'];
    $telefono = $_POST ['telefono'];
    $correo = $_POST ['correo'];
    $Usuario = $_POST ['usuario'];
    $contrasena = $_POST['contrasena'];

    $insertarDatos = "INSERT INTO Datos (nombre,apellido_paterno,apellido_materno,telefono,correo,usuario,contrasena) VALUE (' $Nombre','$apellido_paterno','$apellido_materno','$telefono','$correo','$usuario','$contrasena')";
    $resultado = mysqli_query ($conexion,$insertarDatos);

    if(!$resultado){
        echo '<script>alert("Los datos se insertaron")</script>';
    }
    else{
        echo '<script>alert("Los datos no se insertaron")</script>';
    }
}
header('Location: comprador.php');
?>