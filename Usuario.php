<?php
include 'ConexionDB.php';
function put(PDO $dbConn)
{
    $inputJSON = file_get_contents('php://input');
    $input = json_decode($inputJSON, TRUE);
    $query = "Select * from usuario where id = :idUsuario";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam(":idUsuario", $input["idUsuario"]);
    $stmt->execute();
    $result = $stmt->fetch();
    if (isset($input["correo"])) {
        $result["Correo"] = $input["correo"];
    }
    if (isset($input["edad"])) {
        $result["Edad"] = $input["edad"];
    }
    if (isset($input["peso"])) {
        $result["Peso"] = $input["peso"];
    }
    if (isset($input["estatura"])) {
        $result["Estatura"] = $input["estatura"];
    }
    $updateQuery = "UPDATE usuario 
                    set Correo = :correo, Edad = :edad, 
                    Peso = :peso, Estatura = :estatura 
                    where ID = :idUsuario";
    $stmt = $dbConn->prepare($updateQuery);
    $stmt->bindParam(':correo', $result["Correo"]);
    $stmt->bindParam(':edad', $result["Edad"]);
    $stmt->bindParam(':peso', $result["Peso"]);
    $stmt->bindParam(':estatura', $result["Estatura"]);
    $stmt->bindParam(':idUsuario', $result["ID"]);
    $stmt->execute();
    $response["msg"] = "exito";
    return json_encode($response);
}

function get(PDO $dbConn){
    $query = "Select * from usuario where id = :idUsuario";
    $stmt = $dbConn->prepare($query);
    $stmt->bindParam("idUsuario", $_GET["id"]);
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);
    return json_encode($result);
}

if ($_SERVER["REQUEST_METHOD"] == "PUT"){
    echo put($dbConn);
}elseif ($_SERVER["REQUEST_METHOD"] == "GET"){
    echo get($dbConn);
}