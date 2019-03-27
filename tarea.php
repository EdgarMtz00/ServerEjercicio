<?php
include 'ConexionDB.php';
$ID = 15;
$nombre = "nombre";
$instruccion = "instruccion";
$dif = 2;
$otroNombre = "otro";

$sql = "INSERT INTO ejercicios(id, nombre, instrucciones, dificultad) VALUES(:id, :nombre, :inst: :dif)";
        $query = $dbConn->prepare($sql);
        $query->bindparam(':id', $ID);
        $query->bindparam(':nombre', $nombre);
        $query->bindparam(':inst', $instruccion);
        $query->bindparam(':dif', $dif);
        $query->execute();

$query = 'SELECT nombre FROM ejercicios WHERE id = ?';
$result = $dbConn->prepare($query);
$result->bindParam(1, $ID);
echo $result->queryString;


$sql = "UPDATE ejercicios SET nombre=:name WHERE id=:id";
        $query = $dbConn->prepare($sql);
                
        $query->bindparam(':id', $ID);
        $query->bindparam(':name', $nombre);
        $query->execute();

$sql = "DELETE FROM ejercicios WHERE id=:id";
$query = $dbConn->prepare($sql);
$query->execute(array(':id' => $ID));?>