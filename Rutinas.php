<?php
include "ConexionDB.php";

function post(PDO $dbConn, $input){
    $msg = true;
    foreach ($input as $ejercicio) {
        $insertQuery = "INSERT INTO rutinas (idusuario, idejercicio, dia, repeticiones) VALUES  (:idUsuario, :idEjercicio, :dia, :repeticiones)";
        if (isset($ejercicio["idUsuario"]) && isset($ejercicio["idEjercicio"])) {
            $stmt = $dbConn->prepare($insertQuery);
            $stmt->bindParam(":idUsuario", $ejercicio["idUsuario"]);
            $stmt->bindParam("idEjercicio", $ejercicio["idEjercicio"]);
            $stmt->bindParam("dia", $ejercicio["dia"]);
            $stmt->bindParam("repeticiones", $ejercicio["repeticiones"]);
            $stmt->execute();
        } else {
            $response['msg'] = "Fallo";
        }
    }
    if($msg){
        $response['msg'] = "exito";
    } else {
        $response['msg'] = "Fallo";
    }
    return json_encode($response);
}

function get(PDO $dbConn, $idUsuario){
    $selectQuery = "Select rutinas.dia, ejercicios.nombre, ejercicios.instrucciones, ejercicios.dificultad, rutinas.repeticiones 
                    from rutinas inner join ejercicios
                    on rutinas.IDEjercicio = ejercicios.ID 
                    and   rutinas.IDUsuario = :idUsuario";
    if(isset($idUsuario)){
        $stmt = $dbConn->prepare($selectQuery);
        $stmt->bindParam(":idUsuario", $idUsuario);
        $stmt->execute();
        $response = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return json_encode($response);
    }
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn, $_GET["idUsuario"]);
}