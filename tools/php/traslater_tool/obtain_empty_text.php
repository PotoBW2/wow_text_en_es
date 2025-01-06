<?php
error_reporting(E_ERROR | E_PARSE);
$data = json_decode(file_get_contents('php://input'), true);
$hostname = $data['hostname'];
$username = $data['username'];
$password = $data['password'];
$database = "text";

$is_correct = true;
$resp = [
    "type" => "",
    "data" => "",
    "mensage" => ""
];
try {
    $conn = mysqli_connect($hostname, $username, $password, $database);
    $query = 'SELECT id_text, text_en FROM text WHERE text_es = "" AND text_en != "";';
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
            array_push($lista, ["id_text"=>$row["id_text"],"text_en"=>$row["text_en"]]);
        }
        $resp["type"] = "success";
        $resp["data"] = $lista;
    }
}
$json = json_encode($resp);
echo $json;
