<?php 
include 'ConexionDB.php';

function post(PDO $dbConn, $input){
    $insertQuery = "INSERT INTO usuario (correo, contrasena, peso, estatura, edad, nivel) VALUES (:correo, :pwd, :peso, :estatura, :edad, :nivel)";
    $insertFacebookUser = "Insert into usuario (id, peso, Estatura, edad, nivel) value (:id, :peso, :estatura, :edad, :nivel)";
    $query = "Select ID, Nivel from usuario where Correo = :correo and Contrasena = :pwd";
    if (isset($input['facebook'])) {
        $stmt = $dbConn->prepare($insertFacebookUser);
        $stmt->bindParam(':id', $input['id']);
        $stmt->bindparam(':peso', $input['peso']);
        $stmt->bindparam(':estatura', $input['estatura']);
        $stmt->bindparam(':edad', $input['edad']);
        $stmt->bindParam(':nivel', $input['nivel']);
        $stmt->execute();
        $response['msg'] = "exito";
    } elseif (isset($input['correo']) && isset($input['contrasena']) && isset($input['peso']) && isset($input['estatura']) && isset($input['edad'])) {
        $stmt = $dbConn->prepare($insertQuery);
        $stmt->bindparam(':correo', $input['correo']);
        $stmt->bindparam(':pwd', $input['contrasena']);
        $stmt->bindparam(':peso', $input['peso']);
        $stmt->bindparam(':estatura', $input['estatura']);
        $stmt->bindparam(':edad', $input['edad']);
        $stmt->bindParam(':nivel', $input['nivel']);
        $stmt->execute();
        $stmt = $dbConn->prepare($query);
        $stmt->bindparam(':correo', $input['correo']);
        $stmt->bindparam(':pwd', $input['contrasena']);
        $stmt->execute();
        $result = $stmt->fetch();
        $response['msg'] = "exito";
        $response['id'] = $result['ID'];
        $response['nivel'] = $result{'Nivel'};
    } else {
        $response['msg'] = "Fallo";
    }
    return json_encode($response);
}

function get($dbConn, $idUsuario){
    $facebookIdQuery = "Select id, Nivel from usuario where ID = :id";
    $stmt = $dbConn->prepare($facebookIdQuery);
    $stmt->bindParam(':id', $idUsuario);
    $stmt->execute();
    if ($stmt->fetch()) {
        $response['register'] = true;
        $response['nivel'] = $stmt['Nivel'];
    }else {
        $response['register'] = false;
    }
    return json_encode($response);
}

function asignaRutina($input, PDO $dbConn){
    $query = "Select ID from usuario where Correo = :correo and Contrasena = :pwd";
    if (isset($input['facebook'])){
        $id = $input['id'];
    }else{
        $stmt = $dbConn->prepare($query);
        $stmt->bindparam(':correo', $input['correo']);
        $stmt->bindparam(':pwd', $input['contrasena']);
        $stmt->execute();
        $result = $stmt->fetch();
        $id = $result['ID'];
        echo $id;
    }

    $file = file_get_contents($input['nivel'].'.json');
    $file = json_decode($file, true);

    foreach ($file as $ejercicio) {
        $insertQuery = "INSERT INTO rutinas (idusuario, idejercicio, dia, repeticiones) VALUES  (:idUsuario, :idEjercicio, :dia, :repeticiones)";
            $stmt = $dbConn->prepare($insertQuery);
            $stmt->bindParam(":idUsuario", $id);
            $stmt->bindParam(":idEjercicio", $ejercicio["idEjercicio"]);
            $stmt->bindParam(":dia", $ejercicio["dia"]);
            $stmt->bindParam(":repeticiones", $ejercicio["repeticiones"]);
            $stmt->execute();
    }
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
    asignaRutina($input, $dbConn);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn, $_GET["idUsuario"]);
}
?>
