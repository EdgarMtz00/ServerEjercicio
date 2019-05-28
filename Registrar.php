<?php 
include 'ConexionDB.php';

function post(PDO $dbConn, $input){
    $insertQuery = "INSERT INTO usuario (correo, contrasena, peso, estatura, edad) VALUES (:correo, :pwd, :peso, :estatura, :edad)";
    $insertFacebookUser = "Insert into usuario (id, peso, Estatura, edad) value (:id, :peso, :estatura, :edad)";
    $query = "Select ID from usuario where Correo = :correo and Contrasena = :pwd";
    if (isset($input['facebook'])) {
        $stmt = $dbConn->prepare($insertFacebookUser);
        echo $input['id'];
        $stmt->bindParam(':id', $input['id']);
        $stmt->bindparam(':peso', $input['peso']);
        $stmt->bindparam(':estatura', $input['estatura']);
        $stmt->bindparam(':edad', $input['edad']);
        $stmt->execute();
        $response['msg'] = "exito";
    } elseif (isset($input['correo']) && isset($input['contrasena']) && isset($input['peso']) && isset($input['estatura']) && isset($input['edad'])) {
        $stmt = $dbConn->prepare($insertQuery);
        $stmt->bindparam(':correo', $input['correo']);
        $stmt->bindparam(':pwd', $input['contrasena']);
        $stmt->bindparam(':peso', $input['peso']);
        $stmt->bindparam(':estatura', $input['estatura']);
        $stmt->bindparam(':edad', $input['edad']);
        $stmt->execute();
        $stmt = $dbConn->prepare($query);
        $stmt->bindparam(':correo', $input['correo']);
        $stmt->bindparam(':pwd', $input['contrasena']);
        $stmt->execute();
        $result = $stmt->fetch();
        $response['msg'] = "exito";
        $response['id'] = $result['ID'];
    } else {
        $response['msg'] = "Fallo";
    }
    return json_encode($response);
}

function get($dbConn, $idUsuario){
    $facebookIdQuery = "Select id from usuario where ID = :id";
    $stmt = $dbConn->prepare($facebookIdQuery);
    $stmt->bindParam(':id', $idUsuario);
    $stmt->execute();
    if ($stmt->fetch()) {
        $response['register'] = true;
    }else {
        $response['register'] = false;
    }
    return json_encode($response);
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn, $_GET["idUsuario"]);
}
?>
