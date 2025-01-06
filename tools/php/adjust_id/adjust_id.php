<?php
error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);

$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = "text";
$ant = $data['ant'];
$des = $data['des'];

$is_correct = true;
$resp = [
    "type" => "",
    "data" => "",
    "mensage" => ""
];
try {
    $conn = mysqli_connect($hostname, $username, $password,$database);
    $conn->set_charset("utf8");
    $query = "UPDATE text SET id_text = ".$des." WHERE id_text = ".$ant.";";
    $result = mysqli_query($conn, $query);
} catch (mysqli_sql_exception $e) {
    $resp["type"] = "error";
    $resp["mensage"] = $e->getMessage();
    $is_correct = false;
}
if ($is_correct) {
    if ($result) {
        $resp["type"] = "success";
        $resp["data"] = ["accion" => "Arreglados"];
    }
}
$json = json_encode($resp);
echo $json;
?>