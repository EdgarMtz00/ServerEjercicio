<?php
include "ConexionDB.php";
function post(PDO $dbConn, $input){
    $tipo = "TiempoEjercicio";
    if(isset($input['Correr']))
        $tipo = "TiempoCorrer";
    $selectTiempo = "Select ". $tipo. " from usuario where id = :id";
    $insertTiempo = "Update usuario set ". $tipo. " = :t where id = :id";
    $stmt = $dbConn->prepare($selectTiempo);
    $stmt->bindParam(':id', $input['idUsuario']);
    $stmt->execute();
    $result = $stmt->fetch();
    $stmt = $dbConn->prepare($insertTiempo);
    $stmt->bindParam(':t',$input['tiempo']);
    $stmt->bindParam(':id', $input{'idUsuario'});
    $stmt->execute();
    $porcentaje = (($input['tiempo'] - $result[$tipo]) / $result[$tipo] * 100);
    echo '{"tiempo": "'.$result[$tipo].'"';
    echo ', "porcentaje": "'.$porcentaje.'"}';
}

function get(PDO $dbConn, $idUsuario){
    $selectEstatura = "Select estatura from usuario where id = :id";
    $stmt = $dbConn->prepare($selectEstatura);
    $stmt->bindParam(':id',$idUsuario);
    $stmt->execute();
    $result = $stmt->fetch();
    $estatura = $result['estatura'];
    echo '{"estatura":'.$estatura.'}';
}


$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn, $_GET["idUsuario"]);
}