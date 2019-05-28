<?php
include "ConexionDB.php";

function post(PDO $dbConn, $input){
    $insertMeta = "Update usuario set meta = :meta, promedio = 0, record = 0, ultimo = 0, contador = 0, total = 0 where id = :id";
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
    $query = "Select record, promedio, contador, total from usuario where ID = :id";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam(":id", $input['idUsuario']);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    if($input['repeticiones'] > $result['record']){
        $updateRecord = ", record = " . $input['repeticiones'];
    }else{
        $updateRecord = "";
    }
    $result['contador']++;
    $result['total'] += $input['repeticiones'];
    $promedio = $result['total'] / $result['contador'];
    $update = "Update usuario set total = :t, ultimo = :u, promedio = :p, contador = :c" . $updateRecord . " where ID = :id";
    $stmt = $dbConn->prepare($update);
    $stmt->bindParam(':u', $input['repeticiones']);
    $stmt->bindParam(':p', $promedio);
    $stmt->bindParam(':c', $result['contador']);
    $stmt->bindParam(':id', $input['idUsuario']);
    $stmt->bindParam(':t', $result['total']);
    $stmt->execute();
    return '{"mensaje": "ok"}';
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