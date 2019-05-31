<?php
include 'ConexionDB.php';
header ('Content-type: text/html; charset=iso8859-15');
function get(PDO $dbConn){
    $selectQuery = "Select * from ejercicios";
    $stmt = $dbConn->prepare($selectQuery);
    $stmt->execute();
    $prefix = '';
    echo '[';
    while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        print_r(json_encode($row));
        echo $prefix, '{"ID":', $row['ID'];
        echo ', "Nombre":"', $row['Nombre'], '"';
        echo ', "Instrucciones":"', $row['Instrucciones'], '"';
        echo ', "Dificultad":', $row['Dificultad'];
        echo ', "Zona":"', $row['Zona'], '"}';
        $prefix = ',';
    }
    echo ']';

}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "GET"){
    get($dbConn);
}