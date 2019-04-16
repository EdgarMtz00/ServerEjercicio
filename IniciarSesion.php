<?php
include 'ConexionDB.php';
    $inputJSON = file_get_contents('php://input');
    $input = json_decode($inputJSON, TRUE);
    $logQuery = "Select ID from usuario where Contrasena = :pwd and Correo = :correo";

    if(isset($input['correo']) && isset($input['pwd'])){
        $stmt = $dbConn->prepare($logQuery);
        $stmt->bindParam(":pwd", $input['pwd']);
        $stmt->bindParam(":correo", $input['correo']);
        $stmt->execute();
        $result = $stmt->fetch();
        if($result) {
            $response['logIn'] = true;
            $response['id'] = $result['ID'];
            echo json_encode($response);
        }else{
            $response['logIn'] = false;
            echo json_encode($response);
        }
    }
?>