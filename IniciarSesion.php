<?php
include 'ConexionDB.php';
    $inputJSON = file_get_contents('php://input');
    $input = json_decode($inputJSON, TRUE);
    $logQuery = "Select ID, Nivel from usuario where Contrasena = :pwd and Correo = :correo";

    if(isset($input['correo']) && isset($input['pwd'])){
        $input['pwd'] = md5($input['pwd']);
        $stmt = $dbConn->prepare($logQuery);
        $stmt->bindParam(":pwd", $input['pwd']);
        $stmt->bindParam(":correo", $input['correo']);
        $stmt->execute();
        $result = $stmt->fetch();
        if($result) {
            $response['logIn'] = true;
            $response['id'] = $result['ID'];
            $response['nivel'] = $result['Nivel'];
            echo json_encode($response);
        }else{
            $response['logIn'] = false;
            echo json_encode($response);
        }
    }
?>