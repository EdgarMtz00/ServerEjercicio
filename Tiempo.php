<?php
include "ConexionDB.php";
$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
$foo = "TiempoEjercicio";
if(isset($input['Correr']))
    $foo = "TiempoCorrer";
$insertMeta = "Update usuario set ". $foo. " = :t where id = :id";
$stmt = $dbConn->prepare($insertMeta);
$stmt->bindParam(':t',$input['tiempo']);
$stmt->bindParam(':id', $input{'idUsuario'});
$stmt->execute();
echo '{"mensaje": "ok"}';