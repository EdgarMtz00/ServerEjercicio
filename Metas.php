<?php
include "ConexionDB.php";

function post(PDO $dbConn, $input){
    $insertMeta = "Update usuario set meta = :meta, promedio = 0, record = 0, ultimo = 0, contador = 0 where id = :id";
    $stmt = $dbConn->prepare($insertMeta);
    $stmt->bindParam(':meta',$input['meta']);
    $stmt->bindParam(':id', $input{'idUsuario'});
    $stmt->execute();
    return '{"mensaje": "ok"}';
}

function get(PDO $dbConn, $idUsuario){
    $query = "Select meta, record, promedio, ultimo from usuario where id = :id";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam(":id",$idUsuario);
    $stmt->execute();
    return json_encode( $stmt->fetch(PDO::FETCH_ASSOC));
}

function put(PDO $dbConn, $input){
    $query = "Select record, promedio, contador from usuario where ID = :id";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam(":id", $input['idUsuario']);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn, $_GET["idUsuario"]);
}elseif ($_SERVER["REQUEST_METHOD"] == "PUT"){
    echo put($dbConn, $input);
}