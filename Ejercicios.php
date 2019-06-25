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

function post(PDO $dbConn, $input){
    $crearEjercicio = "Insert into ejercicios_creados (Dia, IDusuario, Nombre, Repeticiones) values (:dia, :id, :nombre, :rep)";
    $stmt = $dbConn->prepare($crearEjercicio);
    $stmt->bindParam(":dia", $input['dia']);
    $stmt->bindParam(":id", $input['idUsuario']);
    $stmt->bindParam(":nombre", $input['nombre']);
    $stmt->bindParam(":rep", $input['repeticiones']);
    $stmt->execute();
    $response['msg'] = "OK";
    return json_encode($response);
}

function put(PDO $dbConn, $input){
    $objetivo = array(10, 7, 5);
    $query = "Select logrado, Repeticiones from ejercicios_creados where ID = :id";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam(":id", $input['idUsuario']);
    $stmt->execute();
    $result = $stmt->fetch();
    if($input['repetciones'] >= $result['Repeticiones']){
        $result['logrado']++;
        $update = "Update ejercicios_creados set Logrado = :logrado";
        $stmt = $dbConn->prepare($update);
        $stmt->bindParam(":logrado", $result['logrado']);
        $stmt->execute();
        if($result['logrado'] >= $objetivo[$input['nivel']] && $result['Repeticiones'] + $input['nivel'] <= $input['nivel']*30){
            $update = "Update ejercicios_creados set Repeticiones = :rep";
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
if($_SERVER["REQUEST_METHOD"] == "GET"){
    get($dbConn);
}elseif ($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}