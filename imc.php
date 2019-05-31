<?php
include "ConexionDB.php";
$quey = "Select peso, estatura from usuario where ID = :id";
$stmt = $dbConn->prepare($quey);
$stmt->bindParam(':id', $_GET['idUsuario']);
$stmt->execute();
$result = $stmt->fetch();
$estatura = $result['estatura']/100.0;
$imc = $result['peso'] / ($estatura * $estatura);
$estado = "bueno";
if($imc < 18.5){
    $estado = "bajo";
}elseif ($imc > 25 && $imc < 30){
    $estado = "Alto";
}elseif ($imc > 30){
    $estado = "Muy alto";
}
echo '{"estado":"'.$estado.'", "imc":'.$imc.'}';