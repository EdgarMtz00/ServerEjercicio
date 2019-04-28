<?php
include "ConexionDB.php";

function post($dbConn, $input){
    $insertQuery = "INSERT INTO rutinas VALUES  (:idUsuario, :idEjercicio)";
    if(isset($input["idUsuario"]) && isset($input["idEjercicio"])){
        $stmt = $dbConn->prepare($insertQuery);
        $stmt = $stmt->bindParam(":idUsuario", $input["idUsuario"]);
        $stmt = $stmt->bindParam("idEjercicio", $input["idEjercicio"]);
        $stmt->execute();
        $response['msg'] = "exito";
    }else {
        $response['msg'] = "Fallo";
    }
    return $response;
}

function get($dbConn, $input){
    $selectQuery = "Select * from rutinas inner join ejercicios 
                    on rutinas.IDEjercicio = ejercicios.ID 
                    and   rutinas.IDUsuario = :idUsuario";
    if(isset($input["idUsuario"])){
        $stmt = $dbConn->prepare($selectQuery);
        $stmt = $stmt->bindParam(":idUsuario", $input["idUsuario"]);
        $stmt->execute();
        $response = $stmt->fetch();
        
    }
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){

}