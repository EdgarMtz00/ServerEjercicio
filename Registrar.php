<?php 
include 'ConexionDB.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$insertQuery = "INSERT INTO usuario (correo, contraseña, peso, estatura, edad) VALUES (?,?,?,?,?)";

if(isset($input['correo']) && isset($input['pwd']) && isset($input['peso']) && isset($input['estatura']) && isset($input['edad'])){
	$correo = $input['correo'];
	$pwd = $input['pwd'];
	$peso = $input['peso'];
	$estatura = $input['estatura'];
	$edad = $input['edad'];
	if($stmt = $con->prepare($insertQuery)){
		$stmt->bind_param("sssss",$correo,$pwd,$peso,$estatura,$edad);
		$stmt->execute();
		$response["status"] = 0;
		$response["msg"] = "User created";
		$stmt->close();
	}else{
		$response["status"] = 1;
		$response["msg"] = "error de conexion";
	}
}else{
	$response["status"] = 1;
	$response["msg"] = "No se encontraron los parametros";
}
echo json_encode($response);
?>
