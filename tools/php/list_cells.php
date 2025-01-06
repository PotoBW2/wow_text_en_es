<?php

error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);
$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = $data['database'];
$table = $data['table'];

$is_correct = true;
$resp = [
    "type" => "",
    "data" => "",
    "mensage" => ""
];
try {
    $conn = mysqli_connect($hostname, $username, $password, $database);
    $query = "SHOW COLUMNS FROM ".$table.";";
    $result = mysqli_query($conn, $query);
} catch (mysqli_sql_exception $e) {
    $resp["type"] = "error";
    $resp["mensage"] = $e->getMessage();
    $is_correct = false;
}
if ($is_correct) {
    if ($result) {
        $lista = [];
        while ($row = mysqli_fetch_array($result)) {
            $Field = ["Field"=>$row["Field"],"Type"=>$row["Type"]];
            array_push($lista, $Field);
        }
        $resp["type"] = "success";
        $resp["data"] = $lista;
    }
}
$json = json_encode($resp);
echo $json;
