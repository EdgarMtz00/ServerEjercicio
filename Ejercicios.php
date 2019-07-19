<?php
include 'ConexionDB.php';
header ('Content-type: text/html; charset=iso8859-15');
function get(PDO $dbConn){
    $selectQuery = "Select * from ejercicios";
    $userExerciseQuery = "Select Nombre, ID from ejercicios_creados WHERE IDusuario = :id";
    $stmt = $dbConn->prepare($selectQuery);
    $stmt->execute();
    $stmt2 = $dbConn->prepare($userExerciseQuery);
    $stmt2->bindParam(':id', $_GET['idUsuario']);
    $stmt2->execute();
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
    while($row = $stmt2->fetch(PDO::FETCH_ASSOC)) {
        echo ', {"ID":', $row['ID'];
        echo ', "Nombre":"', $row['Nombre'], '"';
        echo ', "Instrucciones":""';
        echo ', "Dificultad":""';
        echo ', "Zona":"Brazos"}';
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
    $stmt->bindParam(":id", $input['id']);
    $stmt->execute();
    $result = $stmt->fetch();
    if($input['repeticiones'] >= $result['Repeticiones']){
        $result['logrado']++;
        $update = "Update ejercicios_creados set Logrado = :logrado where ID = :id";
        $stmt = $dbConn->prepare($update);
        $stmt->bindParam(":logrado", $result['logrado']);
        $stmt->bindParam(":id", $input['id']);
        $stmt->execute();
        if($result['logrado'] >= $objetivo[$input['nivel']-1]){
            $update = "Update ejercicios_creados set Repeticiones = :rep, Logrado = 0 where ID = :id";
            $stmt = $dbConn->prepare($update);
            $result['Repeticiones'] += $input['nivel'];
            $stmt->bindParam(":rep", $result['Repeticiones']);
            $stmt->bindParam(":id", $input['id']);
            $stmt->execute();
            if ($result['Repeticiones'] + $input['nivel'] >= $input['nivel']*30){
                $subirNivel = "Update Usuario set Nivel = :nivel where (Select idUsuario from rutinas where id = :id) = ID";
                $stmt = $dbConn->prepare($subirNivel);
                $input['nivel']++;
                $stmt->bindParam(":nivel", $input['nivel']);
                $stmt->bindParam(":id", $input['id']);
                $stmt->execute();
                $response['nivel'] = $input['nivel'];
            }
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
}elseif ($_SERVER["REQUEST_METHOD"] == "PUT"){
    echo put($dbConn, $input);
}