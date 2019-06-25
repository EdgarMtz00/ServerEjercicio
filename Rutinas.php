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
    $selectQuery = "Select rutinas.id, rutinas.dia, ejercicios.nombre, ejercicios.instrucciones, ejercicios.dificultad,
                    rutinas.repeticiones, ejercicios.zona 
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
            echo $prefix.'{"Dia":"'. $row['dia']. '"';
            echo ', "Id":"'. $row['id']. '"';
            echo ', "Nombre":"'. $row['nombre']. '"';
            echo ', "Instrucciones":"'. $row['instrucciones']. '"';
            echo ', "Zona":"'. $row['zona']. '"';
            echo ', "Dificultad":'. $row['dificultad'];
            echo ', "Repeticiones":'. $row['repeticiones']. '}';
            $prefix = ',';
        }
        $createdQuery = "Select * from ejercicios_creados where IDusuario = :idUsuario";
        $stmt = $dbConn->prepare($createdQuery);
        $stmt->bindParam(":idUsuario", $idUsuario);
        $stmt->execute();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)){
            echo $prefix.'{"Dia":"'. $row['Dia']. '"';
            echo ', "Id":"'. $row['ID']. '"';
            echo ', "Instrucciones":"Realice el ejercicio"';
            echo ', "Zona":"Ejercicio Creado"';
            echo ', "Dificultad":0';
            echo ', "Nombre":"'. $row['Nombre']. '"';
            echo ', "Repeticiones":'. $row['Repeticiones']. '}';
        }
        echo ']';
    }
}

function put(PDO $dbConn, $input){
    $objetivo = array(10, 7, 5);
    $query = "Select logrado, Repeticiones from rutinas where ID = :id";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam(":id", $input['idUsuario']);
    $stmt->execute();
    $result = $stmt->fetch();
    if($input['repetciones'] >= $result['Repeticiones']){
        $result['logrado']++;
        $update = "Update rutinas set Logrado = :logrado";
        $stmt = $dbConn->prepare($update);
        $stmt->bindParam(":logrado", $result['logrado']);
        $stmt->execute();
        if($result['logrado'] >= $objetivo[$input['nivel']] && $result['Repeticiones'] + $input['nivel'] <= $input['nivel']*30){
            $update = "Update rutinas set Repeticiones = :rep";
            $stmt = $dbConn->prepare($update);
            $result['Repeticiones'] += $input['nivel'];
            $stmt->bindParam(":rep", $result['Repeticiones']);
            $stmt->execute();
        }
    }
    $response['msg'] = "ok";
    return json_encode($response);
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    get($dbConn, $_GET["idUsuario"]);
}