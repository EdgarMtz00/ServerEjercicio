<?php
include "ConexionDB.php";

function post(PDO $dbConn, $input){
    $insertMeta = "Update usuario set meta = :meta, repeticionesmeta = :rep, promedio = 0, record = 0, ultimo = 0, contador = 0, total = 0 where id = :id";
    $stmt = $dbConn->prepare($insertMeta);
    $stmt->bindParam(':meta',$input['meta']);
    $stmt->bindParam(':id', $input{'idUsuario'});
    $stmt->bindParam(':rep', $input['repeticiones']);
    $stmt->execute();
    return '{"mensaje": "ok"}';
}

function get(PDO $dbConn, $idUsuario){
    $query = "Select meta, record, promedio, ultimo, RepeticionesMeta from usuario where id = :id";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam(":id",$idUsuario);
    $stmt->execute();
    return json_encode( $stmt->fetch(PDO::FETCH_ASSOC));
}

function put(PDO $dbConn, $input){
    if(!isset($input['nuevaMeta'])) {
        $query = "Select record, promedio, contador, total, meta, RepeticionesMeta  from usuario where ID = :id";
        $stmt = $dbConn->prepare($query);
        $stmt->bindParam(":id", $input['idUsuario']);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        $meta = $result['meta'];
        if ($input['repeticiones'] > $result['record']) {
            $updateRecord = ", record = " . $input['repeticiones'];
        } else {
            $updateRecord = "";
        }
        $result['contador']++;
        $result['total'] += $input['repeticiones'];
        $promedio = $result['total'] / $result['contador'];
        $update = "Update usuario set total = :t, ultimo = :u, promedio = :p, contador = :c" . $updateRecord . " where ID = :id";
        $stmt = $dbConn->prepare($update);
        $stmt->bindParam(':u', $input['repeticiones']);
        $stmt->bindParam(':p', $promedio);
        $stmt->bindParam(':c', $result['contador']);
        $stmt->bindParam(':id', $input['idUsuario']);
        $stmt->bindParam(':t', $result['total']);
        $stmt->execute();
        if ($result['RepeticionesMeta'] <= $input['repeticiones']) {
            $query = "Select nivel from usuario where  ID = :id";
            $stmt = $dbConn->prepare($query);
            $stmt->bindParam(":id", $input['idUsuario']);
            $stmt->execute();
            $result = $stmt->fetch(PDO::FETCH_ASSOC);
            if($result["nivel"] * 25 <= $input['repeticiones'] && $result["nivel"] < 3){
                $subirNivel = "Update usuario set Nivel = nivel +1  where ID = :id";
                $stmt = $dbConn->prepare($subirNivel);
                $stmt->bindParam(":id", $input['idUsuario']);
                $stmt->execute();
                $updateRutina =  "Update rutinas set repeticiones = :rep
                where IDEjercicio in (Select IDEjercicio from ejercicios where  Zona = :zona) and IDUsuario = :id";
                $stmt = $dbConn->prepare($updateRutina);
                $stmt->bindParam(":id", $input['idUsuario']);
                $stmt->bindParam(":rep",$input['repeticiones']);
                $zona = ($meta == "Push up")? "Brazos" : ($meta == "Sentadillas")? "Pierna" : "Abdomen";
                $stmt->bindParam(":zona", $zona);
                $stmt->execute();
            }else{
                $input['repeticiones'] = ($input['repeticiones'] * .1 < 1)? 1 : $input['repeticiones'] * .1;
                $updateRutina =  "Update rutinas set repeticiones = Repeticiones + :rep 
                where IDEjercicio in (Select ID from ejercicios where  Zona = :zona) and IDUsuario = :id";
                $stmt = $dbConn->prepare($updateRutina);
                $stmt->bindParam(":id", $input['idUsuario']);
                $stmt->bindParam(":rep",$input['repeticiones']);
                $zona = ($meta == "Push up")? "Brazos" : ($meta == "Sentadillas")? "Pierna" : "Abdomen";
                $stmt->bindParam(":zona", $zona);
                $stmt->execute();
            }
            return '{"msg": "Meta Alcanzada"}';
        } else {
            return '{"msg": "Meta No Alcanzada"}';
        }
    }else{
        if(isset($input['req'])) {
            $input['nuevaMeta'] = $input['req'];
        }else{
            $input['nuevaMeta'] += $input['nivel'] * 5;
        }
        $aumentarMeta = "Update usuario set RepeticionesMeta = :rep where ID = :id";
        $stmt = $dbConn->prepare($aumentarMeta);
        $stmt->bindParam(":rep", $input['nuevaMeta']);
        $stmt->bindParam(":id", $input['idUsuario']);
        $stmt->execute();
        $response['meta'] = $input['nuevaMeta'];
        return json_encode($response);
    }
}

$inputJSON = file_get_contents('php://input');
$input = json_decode($inputJSON, TRUE);
if($_SERVER["REQUEST_METHOD"] == "POST"){
    echo post($dbConn, $input);
}elseif($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn, $_GET["idUsuario"]);
}elseif ($_SERVER["REQUEST_METHOD"] == "PUT"){
    echo put($dbConn, $input);
}