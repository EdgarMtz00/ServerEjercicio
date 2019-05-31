<?php
include "ConexionDB.php";
header ('Content-type: text/html; charset=iso8859-15');
function post(PDO $dbConn, $input){
    $reset = "Delete From rutinas where IDUsuario = :idUsuario and dia = :dia";
    $insertQuery = "INSERT INTO rutinas (idusuario, idejercicio, dia, repeticiones) VALUES  (:idUsuario, :idEjercicio, :dia, :repeticiones)";
    $stmt = $dbConn->prepare($reset);
    $stmt->bindParam(":idUsuario", $input[0]["idUsuario"]);
    $stmt->bindParam(":dia", $input[0]["dia"]);
    $stmt->execute();
    foreach ($input as $ejercicio) {
        if (isset($ejercicio["idUsuario"]) && isset($ejercicio["idEjercicio"])) {
            $msg = true;
            $stmt = $dbConn->prepare($insertQuery);
            $stmt->bindParam(":idUsuario", $ejercicio["idUsuario"]);
            $stmt->bindParam(":idEjercicio", $ejercicio["idEjercicio"]);
            $stmt->bindParam(":dia", $ejercicio["dia"]);
            $stmt->bindParam(":repeticiones", $ejercicio["repeticiones"]);
            $stmt->execute();
        } else {
            $msg = false;
        }
    }
    if($msg){
        $response['msg'] = "exito";
    } else {
        $response['msg'] = "Fallo";
    }
    return json_encode(array($response));
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
        $prefix = '';
        echo '[';
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            echo $prefix, '{"Dia":"', $row['dia'], '"';
            echo ', "Nombre":"', $row['nombre'], '"';
            echo ', "Instrucciones":"', $row['instrucciones'], '"';
            echo ', "Dificultad":', $row['dificultad'];
            echo ', "Repeticiones":', $row['repeticiones'], '}';
            $prefix = ',';
        }
        echo ']';
    }
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    get($dbConn, $_GET["idUsuario"]);
}