<?php 
include 'ConexionDB.php';


$insertQuery = "INSERT INTO usuario (correo, contraseña, peso, estatura, edad) VALUES (?,?,?,?,?)";

if(isset($_GET['correo']) && isset($_GET['pwd']) && isset($_GET['peso']) && isset($_GET['estatura']) && isset($_GET['edad'])){
	$correo = $_GET['correo'];
	$pwd = $_GET['pwd'];
	$peso = $_GET['peso'];
	$estatura = $_GET['estatura'];
	$edad = $_GET['edad'];
	if($stmt = $con->prepare($insertQuery)){
		$stmt->bind_param("ssiii",$correo,$pwd,$peso,$estatura,$edad);
		$stmt->execute();
		$response->status = 0;
		$response->msg = "User created";
		$stmt->close();
	}else{
		$response->status = 1;
		$response->msg = "error de conexion";
	}
}else{
	$response->status = 1;
	$response->msg = "No se encontraron los parametros";
}
echo json_encode($response);
?>
