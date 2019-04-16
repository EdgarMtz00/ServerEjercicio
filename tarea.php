<?php
include 'ConexionDB.php';
$ID = 3;
$nombre = "nombre";
$instruccion = "instruccion";
$dif = 2;
$otroNombre = "otro";

$sql = "INSERT INTO ejercicios(id, nombre, instrucciones, dificultad) VALUES(:id, :nombre, :inst, :dif)";
        $query = $dbConn->prepare($sql);
        $query->bindparam(':id', $ID);
        $query->bindparam(':nombre', $nombre);
        $query->bindparam(':inst', $instruccion);
        $query->bindparam(':dif', $dif);
        $query->execute();



$sql = "UPDATE ejercicios SET nombre=:name WHERE id=:id";
        $query = $dbConn->prepare($sql);
        $query->bindparam(':id', $ID);
        $query->bindparam(':name', $otroNombre);
        $query->execute();

$sql = 'SELECT * FROM ejercicios WHERE id = ?';
        $query = $dbConn->prepare($sql);
        $query->bindParam(1, $ID);
        $query->execute();
        $result = $query->fetch();
        echo json_encode($result);

$sql = "DELETE FROM ejercicios WHERE id=:id";
$query = $dbConn->prepare($sql);
$query->execute(array(':id' => $ID));
