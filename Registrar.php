<?php 
include 'ConexionDB.php';

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$insertQuery = "INSERT INTO usuario (correo, contrasena, peso, estatura, edad) VALUES (:correo, :pwd, :peso, :estatura, :edad)";
$response = new stdClass();

if(isset($input['correo']) && isset($input['pwd']) && isset($input['peso']) && isset($input['estatura']) && isset($input['edad'])){
	$stmt = $dbConn->prepare($insertQuery);
		$stmt->bindparam(':correo',$input['correo']);
        $stmt->bindparam(':pwd',$input['pwd']);
        $stmt->bindparam(':peso',$input['peso']);
        $stmt->bindparam(':estatura',$input['estatura']);
        $stmt->bindparam(':edad',$input['edad']);
        $stmt->execute();
    $response['msg'] = "exito";
}else{
    $response['msg'] = "Fallo";
}
echo json_encode($response);
?>
