<?php
function get(PDO $dbConn){
    $selectQuery = "Select * from ejercicios";
    if(isset($idUsuario)){
        $stmt = $dbConn->prepare($selectQuery);
        $stmt->execute();
        $response = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return json_encode($response);
    }
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn);
}