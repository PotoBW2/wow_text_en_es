<?php
error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);
$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = $data['database'];

$is_correct = true;
$resp = [
    "type" => "",
    "data" => "",
    "mensage" => ""
];
try {
    $conn = mysqli_connect($hostname, $username, $password,$database);
    $query = "SELECT table_name FROM information_schema.tables WHERE table_schema = '".$database."';";
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
            $name = $row["table_name"];
            array_push($lista, $name);
        }
        $resp["type"] = "success";
        $resp["data"] = $lista;
    }
}
$json = json_encode($resp);
echo $json;
?>